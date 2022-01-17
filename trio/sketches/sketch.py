import abjad
import evans
import trinton
import trio
from abjadext import rmakers
from abjadext import microtones

# score

score = trio.score

# time signatures

trinton.write_time_signatures(
    [
        (3, 2),
        (1, 4),
    ],
    score["Global Context"],
)

# test

# rhythms

for voice in ["contrabass 1 voice", "cello 1 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r1."),
        ],
    )

for voice in ["piano 1 voice", "piano 2 voice", "cello 2 voice", "contrabass 2 voice"]:
    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice,
        stack=rmakers.stack(
            rmakers.note(),
        ),
        durations=[(1, 2), (1, 2)],
    )

for voice in ["piano 1 voice", "piano 2 voice"]:
    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice,
        stack=rmakers.stack(
            rmakers.note(),
        ),
        durations=[(1, 2)],
    )

for voice in ["cello 2 voice", "contrabass 2 voice"]:
    trio.matter_broken_rhythms(score=score, voice=voice, stack=1, durations=[(1, 2)])

for voice in trio.all_voices:
    trinton.append_rests(score=score, voice=voice, rests=[abjad.Rest("r4")])

trio.standard_cleffing(score=score)

trio.write_startmarkups(score=score)

# rewrite meter

trinton.rewrite_meter(score)
trinton.beam_score(score)
# trinton.annotate_leaves(score)

# whiteout empty staves

for voice in trio.all_voices:
    trinton.whiteout_empty_staves(score=score, voice=voice, cutaway=True)

# fermate

trinton.populate_fermata_measures(
    score=score,
    voices=trio.all_voices_include_ts_context,
    leaves=[1, 3, 3, 2, 9, 2, 9],
    fermata_measures=None,
)

# pitching

for chord, partials, leaf in zip(
    [1, 3, 5],
    [
        [
            7,
            5,
            4,
        ],
        [6, 5, 4, 3],
        [
            5,
            4,
            3,
        ],
    ],
    [0, 1, 2],
):

    trio.pitch_matter(
        score=score,
        voice="piano 1 voice",
        leaves=[leaf],
        chord=chord,
        partials=partials,
        transpose=0,
        markup=False,
    )

for chord, partials, leaf in zip(
    [1, 3, 5],
    [
        [2, 3],
        [1, 2],
        [
            1,
            2,
        ],
    ],
    [0, 1, 2],
):

    trio.pitch_matter(
        score=score,
        voice="piano 2 voice",
        leaves=[leaf],
        chord=chord,
        partials=partials,
        transpose=0,
        markup=False,
    )

for voice in ["cello 2 voice", "contrabass 2 voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[
            1,
        ],
        attachment=abjad.Tie(),
    )

trinton.attach(voice=score["cello 2 voice"], leaves=[1], attachment=abjad.Clef("tenor"))

for chord, partials, leaf in zip(
    [
        1,
        3,
        5,
        5,
        5,
        5,
    ],
    [
        [2, 3],
        [3, 4],
        [3, 4],
        [3, 4],
        [3, 4],
        [3, 4],
    ],
    [
        0,
        1,
        3,
        5,
        7,
        8,
    ],
):
    trio.pitch_matter(
        score=score,
        voice="cello 2 voice",
        leaves=[leaf],
        chord=chord,
        partials=partials,
        transpose=-12,
        markup=True,
    )

for chord, partials, leaf in zip(
    [
        1,
        3,
        5,
        5,
        5,
        5,
    ],
    [
        [1],
        [1],
        [1],
        [1],
        [1],
        [1],
    ],
    [
        0,
        1,
        3,
        5,
        7,
        8,
    ],
):
    trio.pitch_matter(
        score=score,
        voice="contrabass 2 voice",
        leaves=[leaf],
        chord=chord,
        partials=partials,
        transpose=-12,
        markup=True,
    )

# attachments

for voice in ["piano 1 voice", "piano 2 voice"]:
    trinton.unmeasured_stem_tremolo(
        trinton.make_leaf_selection(
            score=score,
            voice=voice,
            leaves=[0, 1],
        )
    )

for voice in ["piano 1 voice", "piano 2 voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[
            0,
            1,
        ],
        attachment=abjad.Arpeggio(),
    )

for leaf, attachments in zip(
    [0, 1, 2],
    [
        [abjad.Dynamic("ff"), abjad.StartHairpin("|>")],
        [
            abjad.Dynamic("p"),
            abjad.StartHairpin("<"),
        ],
        [
            abjad.Dynamic("mf"),
            abjad.Articulation("tenuto"),
        ],
    ],
):
    trinton.attach_multiple(
        score=score, voice="piano 1 voice", leaves=[leaf], attachments=attachments
    )

trinton.attach(
    voice=score["piano 2 voice"], leaves=[2], attachment=abjad.Articulation("tenuto")
)

for voice in ["cello 2 voice", "contrabass 2 voice"]:

    for leaf, attachments in zip(
        [
            0,
            1,
            3,
            7,
            8,
        ],
        [
            [
                abjad.Dynamic("ff"),
                abjad.StartHairpin("|>"),
            ],
            [
                abjad.Dynamic("p"),
                abjad.StartHairpin("<|"),
            ],
            [
                abjad.Dynamic("f"),
                abjad.StartHairpin(">o"),
            ],
            [abjad.Articulation("staccato")],
            [abjad.StopHairpin(), abjad.Articulation("staccato")],
        ],
    ):
        trinton.attach_multiple(
            score=score, voice=voice, leaves=[leaf], attachments=attachments
        )

    trio.ritardando_beams(score=score, voice=voice, leaves=[2])

# global attachments

trinton.attach(
    voice=score["Global Context"], leaves=[0], attachment=trio.rehearsal_mark2
)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/sketches",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="sketch",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)

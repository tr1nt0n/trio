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
        (8, 8),
        (1, 4),
    ],
    score["Global Context"],
)

# test

for voice, durations in zip(
    ["cello 2 voice", "piano 1 voice", "contrabass 2 voice"],
    [
        [(3, 8), (1, 8), (2, 4)],
        [
            (1, 8),
            (1, 8),
            (1, 8),
            (1, 8),
            (1, 8),
            (1, 8),
            (1, 8),
            (1, 8),
        ],
        [(3, 4), (1, 4)],
    ],
):
    trio.cello_gliss(
        score=score,
        voice=voice,
        durations=durations,
        seed=7,
        index=35,
        string="II",
        notation="tuplet",
    )

# trinton.annotate_leaves(score)

trio.pitch_cello_gliss_piano(
    score=score, voice="piano 1 voice", leaves=list(range(0, 26)), string="II"
)

trio.pitch_contrabass_glissandi(
    score=score,
    voice="contrabass 2 voice",
    leaves=list(range(0, 7)),
    strings="II and III",
)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[
        abjad.Skip("r1"),
    ],
)

trio.small_knee(score=score, voice="piano 1 voice", start=0, stop=25)

trio.change_staff(
    score=score,
    voice="piano 1 voice",
    rh=[
        1,
        3,
        5,
        7,
        9,
        11,
        13,
        15,
        17,
        19,
        21,
        23,
        25,
    ],
    lh=[0, 2, 4, 6, 8, 10, 12, 14, 16, 18, 20, 22, 24, 26],
)


for voice in ["cello 1 voice", "contrabass 1 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r1"),
        ],
    )

    trinton.attach(voice=score[voice], leaves=[0], attachment=abjad.Clef("percussion"))

    trinton.attach(
        voice=score[voice],
        leaves=[0],
        attachment=abjad.LilyPondLiteral(
            r"\staff-line-count 1",
            format_slot="absolute_before",
        ),
    )

trinton.attach(
    voice=score["contrabass 2 voice"], leaves=[0], attachment=abjad.Clef("bass")
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=list(range(0, 6)),
    attachment=abjad.Glissando(),
)

trinton.attach(
    voice=score["cello 2 voice"], leaves=list(range(0, 9)), attachment=abjad.Glissando()
)

trinton.ficta(
    score=score,
    voice="cello 2 voice",
    start_ficta=[
        3,
    ],
    stop_ficta=[
        7,
    ],
)

trinton.ficta(
    score=score,
    voice="contrabass 2 voice",
    start_ficta=[
        3,
    ],
    stop_ficta=[
        6,
    ],
)

trinton.write_slur(
    voice=score["cello 2 voice"],
    start_slur=[
        0,
        3,
        8,
    ],
    stop_slur=[
        2,
        7,
        9,
    ],
)

trinton.write_slur(
    voice=score["contrabass 2 voice"],
    start_slur=[
        0,
        4,
    ],
    stop_slur=[3, 6],
)

for voice, leaves in zip(
    [
        "piano 1 voice",
        "cello 2 voice",
        "contrabass 2 voice",
    ],
    [
        [
            0,
            1,
            3,
            5,
            7,
            11,
            13,
            17,
            19,
            23,
        ],
        [
            0,
            3,
            8,
        ],
        [
            0,
            4,
        ],
    ],
):
    trinton.attach(
        voice=score[voice], leaves=leaves, attachment=abjad.Articulation(">")
    )

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        0,
        1,
        3,
        5,
        7,
        11,
        13,
        17,
        19,
        23,
    ],
    attachment=abjad.Dynamic("fp"),
)

trinton.attach_multiple(
    score=score,
    voice="cello 2 voice",
    leaves=[0, 3, 8],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        9,
    ],
    attachment=abjad.StopHairpin(),
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    leaves=[0, 4],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        6,
    ],
    attachment=abjad.StopHairpin(),
)

for staff, markup in zip(trio.all_staves, trio.all_startmarkups):
    trinton.attach(voice=score[staff], leaves=[0], attachment=markup)

trio.attach_string_markup(score=score, voice="cello 2 voice", leaves=[0], string="II")

trinton.attach(
    voice=score["Global Context"], leaves=[0], attachment=trio.rehearsal_mark3
)

for voice in trio.all_voices:
    trinton.append_rests(score=score, voice=voice, rests=[abjad.Rest("r4")])

trinton.rewrite_meter(score)
trinton.beam_score(score)

for voice in trio.all_voices:
    trinton.whiteout_empty_staves(score=score, voice=voice, cutaway=True)


trinton.populate_fermata_measures(
    score=score,
    voices=trio.all_voices_include_ts_context,
    leaves=[1, 26, 1, 2, 10, 2, 7],
    fermata_measures=None,
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

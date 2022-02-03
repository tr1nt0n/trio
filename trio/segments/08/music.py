import abjad
import baca
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
        (1, 4),
        (1, 12),
        (3, 8),
        (2, 12),
        (3, 8),
        (1, 4),
        (1, 12),
        (3, 8),
        (1, 6),
        (3, 8),
        (1, 4),
    ],
    score["Global Context"],
)

# rhythms

for voice_name in trio.all_voices:
    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        stack=rmakers.stack(
            rmakers.tuplet(
                [
                    (1,),
                    (1,),
                    (
                        1,
                        1,
                        1,
                    ),
                    (
                        1,
                        1,
                    ),
                    (
                        1,
                        1,
                        1,
                    ),
                    (1,),
                    (1,),
                    (2, 1),
                    (1,),
                    (1, 2),
                    (1,),
                ],
            ),
            rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
            rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_dots(),
            rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
        ),
        durations=[
            (1, 4),
            (1, 12),
            (3, 8),
            (2, 12),
            (3, 8),
            (1, 4),
            (1, 12),
            (3, 8),
            (1, 6),
            (3, 8),
            (1, 4),
        ],
    )

# meter rewriting and beaming

trinton.beam_score(score)

trinton.annotate_leaves(score)

# margin markups and standard cleffing

trio.write_marginmarkups(score=score)

# global attachments

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[0],
    attachments=[abjad.MetronomeMark((1, 4), 47), trio.rehearsal_mark10],
)

trinton.write_text_span(
    voice=score["Global Context"],
    begin_text=r"\markup \italic \halign #-1 \abs-fontsize #8.5 { Accel. }",
    end_text=r"\markup { . }",
    start_leaf=[
        4,
        9,
    ],
    stop_leaf=[
        5,
        10,
    ],
    padding=3,
)

for leaf, met in zip(
    [5, 10],
    [
        abjad.MetronomeMark((1, 4), 60),
        abjad.MetronomeMark((1, 4), 69),
    ],
):

    trinton.attach(
        voice=score["Global Context"],
        leaves=[
            leaf,
        ],
        attachment=met,
    )

# piano pitching/attachments

for octave, measure in zip(
    [
        3,
        4,
        2,
        5,
        3,
        2,
        4,
        3,
        5,
        3,
        4,
    ],
    [
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
    ],
):

    trio.piano_climax_chords(
        voice=score["piano 1 voice"],
        measures=[measure],
        selector=baca.selectors.pleaves(),
        octave=octave,
        index=0,
        seed=13,
    )

trio.piano_climax_chords(
    voice=score["piano 2 voice"],
    measures=[
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        10,
        11,
    ],
    selector=baca.selectors.pleaves(),
    octave=1,
    index=0,
    seed=12,
)

for voice_name in trio.all_voices:
    for tuplet in abjad.select(score[voice_name]).tuplets():
        abjad.override(tuplet).TupletNumber.text = abjad.Markup(
            r"\markup \italic { 3:2 }"
        )
    for leaf in abjad.select(score[voice_name]).leaves():
        abjad.attach(abjad.Articulation("marcato"), leaf)
        abjad.attach(abjad.Articulation("staccato"), leaf)

for voice_name in ["piano 1 voice", "cello 1 voice", "contrabass 1 voice"]:

    trinton.attach(voice=score[voice_name], leaves=[0], attachment=abjad.Dynamic("f"))

    trinton.attach(
        voice=score[voice_name],
        leaves=[
            5,
            15,
        ],
        attachment=abjad.StartHairpin("<"),
    )

    trinton.attach(
        voice=score[voice_name],
        leaves=[
            10,
        ],
        attachment=abjad.Dynamic("ff"),
    )

    trinton.attach(
        voice=score[voice_name],
        leaves=[
            17,
        ],
        attachment=abjad.Dynamic("fff"),
    )

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        2,
        10,
    ],
    stop_ottava=[4, 10],
    octave=-1,
)

# cello pitching/attachments

for voice_name in ["cello 2 voice", "contrabass 2 voice"]:
    for leaf in abjad.select(score[voice_name]).leaves():
        abjad.attach(abjad.Articulation("snappizzicato"), leaf)

# contrabass pitching/attachments


# fill empty staves with skips

# for voice in [
#     score["piano 1 voice"],
#     score["piano 2 voice"],
#     score["cello 1 voice"],
#     score["cello 2 voice"],
#     score["contrabass 1 voice"],
#     score["contrabass 2 voice"],
# ]:
#     trinton.fill_empty_staves_with_skips(voice=voice)

# extract parts

# trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/segments/08",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)

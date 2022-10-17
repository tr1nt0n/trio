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
        (2, 12),
        (3, 8),
        (1, 4),
    ],
    score["Global Context"],
)

# piano

for voice_name in ["piano 1 voice", "piano 2 voice"]:

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (1, 4),
                (1, 12),
                (3, 8),
            ],
            [
                (1,),
                (1,),
                (
                    1,
                    1,
                    1,
                ),
            ],
        ),
        rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
    )

    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip(
                (1, 1),
                multiplier=abjad.Multiplier(
                    1,
                    6,
                ),
            )
        ],
    )

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (3, 8),
                (1, 4),
                (1, 12),
                (3, 8),
            ],
            [
                (
                    1,
                    -1,
                    1,
                ),
                (1,),
                (1,),
                (2, -1),
            ],
        ),
        rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
    )

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (1, 6),
                (3, 8),
                (1, 4),
            ],
            [
                (1,),
                (-1, 2),
                (1,),
            ],
        ),
        rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
    )

# cello

for voice_name in ["cello 1 voice", "cello 2 voice"]:

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (1, 4),
            ],
            [
                (1,),
            ],
        ),
        rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
    )

    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip(
                (1, 1),
                multiplier=abjad.Multiplier(
                    1,
                    12,
                ),
            )
        ],
    )

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (3, 8),
                (2, 12),
                (3, 8),
                (1, 4),
            ],
            [
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
                    -2,
                ),
                (1,),
            ],
        ),
        rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
    )

    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip(
                (1, 1),
                multiplier=abjad.Multiplier(
                    1,
                    12,
                ),
            )
        ],
    )

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (3, 8),
            ],
            [
                (2, 1),
            ],
        ),
        rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
    )

    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip(
                (1, 1),
                multiplier=abjad.Multiplier(
                    1,
                    6,
                ),
            )
        ],
    )

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (3, 8),
                (1, 4),
            ],
            [
                (
                    1,
                    2,
                ),
                (1,),
            ],
        ),
        rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
    )

# bass

for voice_name in ["contrabass 1 voice", "contrabass 2 voice"]:

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (1, 4),
            ],
            [
                (1,),
            ],
        ),
        rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
    )

    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip(
                (1, 1),
                multiplier=abjad.Multiplier(
                    1,
                    12,
                ),
            )
        ],
    )

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (3, 8),
                (1, 6),
                (3, 8),
            ],
            [
                (
                    -1,
                    1,
                    1,
                ),
                (
                    -1,
                    1,
                ),
                (
                    -1,
                    1,
                    1,
                ),
            ],
        ),
        rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
    )

    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip("r4"),
            abjad.Skip(
                (1, 1),
                multiplier=abjad.Multiplier(
                    1,
                    12,
                ),
            ),
        ],
    )

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (3, 8),
            ],
            [
                (
                    2,
                    -1,
                ),
            ],
        ),
        rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
    )

    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[
            abjad.Skip(
                (1, 1),
                multiplier=abjad.Multiplier(
                    1,
                    6,
                ),
            )
        ],
    )

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (3, 8),
                (1, 4),
            ],
            [
                (
                    1,
                    -2,
                ),
                (1,),
            ],
        ),
        rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
    )


# meter rewriting and beaming

trinton.beam_score(score)

# trinton.annotate_leaves(score)

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
        3,
        2,
        5,
        3,
        5,
        3,
        4,
    ],
    [
        1,
        2,
        3,
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
        selector=trinton.pleaves(),
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
        5,
        6,
        7,
        8,
        9,
        10,
        11,
    ],
    selector=trinton.pleaves(),
    octave=1,
    index=0,
    seed=12,
)

for voice_name in trio.all_voices:
    for tuplet in abjad.select.tuplets(score[voice_name]):
        abjad.override(tuplet).TupletNumber.text = r"\markup \italic { 3:2 }"
    for leaf in abjad.select.leaves(score[voice_name], pitched=True):
        abjad.attach(abjad.Articulation("marcato"), leaf)
        abjad.attach(abjad.Articulation("staccato"), leaf)

for voice_name in ["piano 1 voice", "cello 1 voice", "contrabass 1 voice"]:
    trinton.attach(voice=score[voice_name], leaves=[0], attachment=abjad.Dynamic("f"))

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        6,
        15,
    ],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        9,
    ],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        16,
    ],
    attachment=abjad.Dynamic("fff"),
)

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        2,
        9,
    ],
    stop_ottava=[4, 9],
    octave=-1,
)

# # cello pitching/attachments

for voice_name in ["cello 1 voice", "contrabass 1 voice"]:
    handler = evans.PitchHandler(
        pitch_list=[
            [
                trio._open_strings_to_pitches["III"],
                trio._open_strings_to_pitches["IV"],
            ]
        ],
        forget=False,
    )

    handler(abjad.select.leaves(score[voice_name], pitched=True))

    abjad.attach(
        abjad.LilyPondLiteral(r"\override Accidental.transparent = ##t"),
        abjad.select.leaf(score[voice_name], 0),
    )

    abjad.attach(
        abjad.LilyPondLiteral(r'\boxed-markup "Arco sempre" 1', "after"),
        abjad.select.leaf(score[voice_name], 0),
    )

handler = evans.PitchHandler(
    pitch_list=[-24],
    forget=False,
)

handler(abjad.select.leaves(score["cello 2 voice"], pitched=True))

trinton.attach(voice=score["cello 2 voice"], leaves=[0], attachment=abjad.Clef("bass"))

for voice_name in ["cello 2 voice", "contrabass 2 voice"]:
    abjad.attach(
        abjad.LilyPondLiteral(r'\boxed-markup "Pizz." 1', "after"),
        abjad.select.leaf(score[voice_name], 0),
    )

    abjad.attach(
        abjad.Articulation("snappizzicato"), abjad.select.leaf(score[voice_name], 0)
    )

selections = trio.select_periodic_ties_2_4_7_8_of_10(
    abjad.select.leaves(score["cello 2 voice"], pitched=True)
)
for tie in selections:
    for leaf in tie:
        abjad.attach(abjad.Articulation("snappizzicato"), leaf)

trinton.attach(
    voice=score["cello 1 voice"],
    leaves=[
        14,
    ],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach(
    voice=score["cello 1 voice"],
    leaves=[
        9,
    ],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["cello 1 voice"],
    leaves=[
        16,
    ],
    attachment=abjad.Dynamic("fff"),
)

# contrabass pitching/attachments

handler = evans.PitchHandler(
    pitch_list=[-20],
    forget=False,
)

handler(abjad.select.leaves(score["contrabass 2 voice"]))

selections = trio.select_periodic_ties_2_4_7_8_of_10(
    abjad.select.leaves(score["contrabass 2 voice"], pitched=True)
)
for tie in selections:
    for leaf in tie:
        abjad.attach(abjad.Articulation("snappizzicato"), leaf)

abjad.attach(
    abjad.Articulation("snappizzicato"),
    abjad.select.leaf(score["cello 2 voice"], 15),
)

trinton.attach(
    voice=score["contrabass 1 voice"],
    leaves=[
        6,
    ],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach(
    voice=score["contrabass 1 voice"],
    leaves=[
        9,
    ],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["contrabass 1 voice"],
    leaves=[
        17,
    ],
    attachment=abjad.Dynamic("fff"),
)

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/segments/08",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="08",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

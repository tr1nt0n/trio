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
        (1, 4),
        (1, 4),
        (1, 6),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 6),
        (1, 4),
        (1, 6),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
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
                (1, 12),
                (3, 8),
                (1, 6),
                (3, 8),
            ],
            [
                (1,),
                (
                    1,
                    2,
                ),
                (1,),
                (
                    2,
                    1,
                ),
            ],
        ),
        rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
    )

trio.toccata_rhythms(
    score=score,
    voice="piano 1 voice",
    durations=[(1, 4)],
    division=16,
    extra_counts=[1],
    notation="tuplet",
)

trinton.append_rests(score=score, voice="piano 2 voice", rests=[abjad.Skip("r4")])

trinton.make_and_append_rhythm_selections(
    score=score,
    voice_name="piano 1 voice",
    rmaker=rmakers.tuplet(
        [
            (1, 12),
            (3, 8),
            (1, 6),
            (3, 8),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 6),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 6),
            (1, 4),
            (1, 6),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
        ],
        [
            (1,),
            (
                2,
                1,
            ),
            (1,),
            (1, 2),
            (1,),
            (1,),
            (1,),
            (1,),
            (1,),
            (1,),
            (1,),
            (1,),
            (1,),
            (1,),
            (1,),
            (1,),
            (1,),
            (1,),
            (1,),
            (1,),
        ],
    ),
    rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
)

trinton.make_and_append_rhythm_selections(
    score=score,
    voice_name="piano 2 voice",
    rmaker=rmakers.tuplet(
        [
            (1, 12),
            (3, 8),
            (1, 6),
            (3, 8),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 6),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 6),
            (1, 4),
            (1, 6),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
            (1, 4),
        ],
        [
            (1,),
            (
                2,
                1,
            ),
            (1,),
            (1, 2),
            (
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
            ),
            (
                1,
                1,
                1,
                1,
                1,
                1,
            ),
        ],
    ),
    rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
)

for tuplet in [
    abjad.select.tuplet(score["piano 2 voice"], _)
    for _ in [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
    ]
]:
    abjad.override(tuplet).TupletNumber.text = r"\markup \italic { 3:2 }"

# cello

for voice_name in [
    "cello 1 voice",
    "cello 2 voice",
]:

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (1, 12),
            ],
            [
                (1,),
            ],
        ),
        rmaker_commands=[
            trinton.treat_tuplets(),
            rmakers.beam,
        ],
    )

trio.toccata_rhythms(
    score=score,
    voice="cello 2 voice",
    durations=[(3, 8)],
    division=16,
    extra_counts=[1],
    notation="tuplet",
)

trinton.append_rests(score=score, voice="cello 1 voice", rests=[abjad.Skip("r4.")])

for voice_name in [
    "cello 1 voice",
    "cello 2 voice",
]:

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (1, 6),
                (3, 8),
                (1, 4),
                (1, 12),
            ],
            [
                (1,),
                (
                    2,
                    1,
                ),
                (1,),
                (1,),
            ],
        ),
        rmaker_commands=[
            trinton.treat_tuplets(),
            rmakers.beam,
        ],
    )

trinton.append_rests(score=score, voice="cello 2 voice", rests=[abjad.Rest("r8")])

trio.toccata_rhythms(
    score=score,
    voice="cello 2 voice",
    durations=[(1, 4)],
    division=16,
    extra_counts=[1],
    notation="tuplet",
)

trinton.append_rests(score=score, voice="cello 1 voice", rests=[abjad.Skip("r4.")])

trinton.make_and_append_rhythm_selections(
    score=score,
    voice_name="cello 2 voice",
    rmaker=rmakers.tuplet(
        [
            (1, 6),
        ],
        [
            (
                1,
                1,
                1,
                1,
                1,
                1,
            )
        ],
    ),
    rmaker_commands=[
        trinton.treat_tuplets(),
        rmakers.beam,
    ],
)

skip = abjad.Skip((1, 1), multiplier=abjad.Multiplier(1, 6))
score["cello 1 voice"].append(skip)

for voice_name in ["cello 1 voice", "cello 2 voice"]:

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (3, 8),
            ],
            [
                (
                    1,
                    2,
                ),
            ],
        ),
        rmaker_commands=[
            trinton.treat_tuplets(),
            rmakers.beam,
        ],
    )

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 6),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 6),
        (1, 4),
        (1, 6),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
    ],
    tuplets=trio.collapsing_tuplets_1,
    notation="tuplet",
)

for tuplet in [
    abjad.select.tuplet(score["cello 1 voice"], _)
    for _ in [
        0,
        1,
        2,
        3,
        4,
        5,
    ]
]:
    abjad.override(tuplet).TupletNumber.text = r"\markup \italic { 3:2 }"

for tuplet in [
    abjad.select.tuplet(score["cello 2 voice"], _)
    for _ in [
        0,
        1,
        3,
        4,
        5,
        6,
    ]
]:
    abjad.override(tuplet).TupletNumber.text = r"\markup \italic { 3:2 }"

# contrabass

for voice_name in [
    "contrabass 1 voice",
    "contrabass 2 voice",
]:

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (1, 12),
                (3, 8),
                (1, 6),
            ],
            [
                (1,),
                (
                    1,
                    2,
                ),
                (1,),
            ],
        ),
        rmaker_commands=[
            trinton.treat_tuplets(),
            rmakers.beam,
        ],
    )

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (5, 8),
    ],
    seed=1,
    index=0,
    string="IV",
    notation="tuplet",
)

trinton.append_rests(
    score=score, voice="contrabass 1 voice", rests=[abjad.Skip("r4."), abjad.Skip("r4")]
)

for voice_name in [
    "contrabass 1 voice",
    "contrabass 2 voice",
]:

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        rmaker=rmakers.tuplet(
            [
                (1, 12),
                (3, 8),
                (1, 6),
            ],
            [
                (1,),
                (
                    2,
                    1,
                ),
                (1,),
            ],
        ),
        rmaker_commands=[
            trinton.treat_tuplets(),
            rmakers.beam,
        ],
    )

for pair in [
    (3, 8),
    (1, 4),
    (1, 4),
    (1, 4),
    (1, 6),
    (1, 4),
    (1, 4),
    (1, 4),
    (1, 4),
    (1, 6),
    (1, 4),
    (1, 6),
    (1, 4),
    (1, 4),
    (1, 4),
    (1, 4),
    (1, 4),
]:
    skip = abjad.Skip((1, 1), multiplier=abjad.Multiplier(pair))
    score["contrabass 1 voice"].append(skip)

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (3, 8),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 6),
        (1, 4),
        (1, 4),
        (1, 2),
        (1, 6),
        (1, 4),
        (1, 6),
        (5, 4),
    ],
    seed=1,
    index=1,
    string="IV",
    notation="tuplet",
)


for tuplet in abjad.select.tuplets(score["contrabass 1 voice"]):
    abjad.override(tuplet).TupletNumber.text = r"\markup \italic { 3:2 }"

for tuplet in [
    abjad.select.tuplet(score["contrabass 2 voice"], _)
    for _ in [
        0,
        1,
        2,
        3,
        5,
        6,
        7,
        8,
    ]
]:
    abjad.override(tuplet).TupletNumber.text = r"\markup \italic { 3:2 }"

for tuplet in [abjad.select.tuplet(score["contrabass 2 voice"], _) for _ in [4, -1]]:
    abjad.override(tuplet).TupletNumber.text = r"\markup \italic { 6:5 }"

# annotate leaves

# trinton.annotate_leaves(score)

# margin markups and standard cleffing

trio.write_marginmarkups(score=score)

# global attachments

trinton.write_text_span(
    voice=score["Global Context"],
    begin_text=r"\markup \italic \halign #-1 \abs-fontsize #8.5 { Accel. }",
    end_text=r"\markup { . }",
    start_leaf=[
        2,
        7,
    ],
    stop_leaf=[
        4,
        9,
    ],
    padding=10.5,
)

for leaf, met in zip(
    [
        4,
        9,
    ],
    [
        abjad.MetronomeMark((1, 4), 105),
        abjad.MetronomeMark((1, 4), 130),
    ],
):

    trinton.attach(
        voice=score["Global Context"],
        leaves=[
            leaf,
        ],
        attachment=met,
    )

for leaf, bar in zip(
    [8, -1],
    [abjad.BarLine(".|:"), abjad.BarLine(":|.")],
):

    trinton.attach(
        voice=score["Global Context"],
        leaves=[
            leaf,
        ],
        attachment=bar,
    )

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[8, -1],
    attachments=[
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "after"
        ),
    ],
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        9,
    ],
    attachment=abjad.Markup(r"\markup \abs-fontsize #22 { ×6 }"),
    direction=abjad.UP,
)

# piano pitching/attachments

trio.piano_climax_chords(
    voice=score["piano 1 voice"],
    measures=[
        1,
        2,
        3,
        4,
        6,
        8,
        9,
    ],
    selector=trinton.pleaves(),
    octave=2,
    index=0,
    seed=2,
)

trio.piano_climax_chords(
    voice=score["piano 2 voice"],
    measures=[
        1,
        2,
        3,
        4,
        6,
        8,
        9,
    ],
    selector=trinton.pleaves(),
    octave=0,
    index=0,
    seed=2,
)

trio.pitch_toccata_by_measure(
    voice=score["piano 1 voice"],
    measures=[
        5,
    ],
    selector=trinton.pleaves(),
    octave=5,
    seed=2,
    index=6,
    random_walk=True,
)

trio.pitch_toccata_by_measure(
    voice=score["piano 2 voice"],
    measures=[
        10,
        12,
        14,
        16,
        18,
        20,
        22,
        24,
    ],
    selector=trinton.pleaves(),
    octave=1,
    seed=3,
    index=0,
    random_walk=True,
)

trio.pitch_toccata_by_measure(
    voice=score["piano 2 voice"],
    measures=[
        11,
        13,
        15,
        17,
        19,
        21,
        23,
        25,
    ],
    selector=trinton.pleaves(),
    octave=1,
    seed=2,
    index=11,
    random_walk=True,
)

for leaf, chord, in zip(
    [
        12,
        13,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24,
        25,
        26,
        27,
        28,
        29,
        30,
        31,
        32,
    ],
    [
        1,
        2,
        3,
        4,
        5,
        6,
        1,
        2,
        3,
        4,
        5,
        6,
        1,
        2,
        3,
        4,
        5,
        6,
    ],
):
    trio.pitch_matter(
        score=score,
        voice="piano 1 voice",
        leaves=[leaf],
        chord=chord,
        partials=[
            3,
            4,
            5,
            6,
        ],
        transpose=0,
        markup=False,
    )

for leaf, chord, in zip(
    [
        8,
        9,
    ],
    [
        1,
        2,
    ],
):
    trio.pitch_matter(
        score=score,
        voice="piano 2 voice",
        leaves=[leaf],
        chord=chord,
        partials=[
            1,
            2,
        ],
        transpose=0,
        markup=False,
    )

for voice_name in ["piano 1 voice", "piano 2 voice"]:
    measures = abjad.select.group_by_measure(abjad.select.leaves(score[voice_name]))
    for n in [
        0,
        1,
        2,
        3,
        5,
        6,
        7,
        8,
    ]:
        for leaf in abjad.select.leaves(measures[n]):
            abjad.attach(abjad.Articulation("marcato"), leaf)

    for n in [
        9,
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24,
    ]:
        abjad.attach(abjad.Articulation("marcato"), abjad.select.leaf(measures[n], 0))

    for n in [
        6,
    ]:
        for leaf in abjad.select.leaves(measures[n]):
            abjad.attach(abjad.Arpeggio(), leaf)
            trinton.unmeasured_stem_tremolo([leaf])

piano_1_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["piano 1 voice"])
)

for n in [
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
]:
    for leaf in abjad.select.leaves(piano_1_measures[n]):
        abjad.attach(abjad.Arpeggio(), leaf)
        trinton.unmeasured_stem_tremolo([leaf])

piano_2_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["piano 2 voice"])
)

for n in [
    9,
    10,
    11,
    12,
    13,
    14,
    15,
    16,
    17,
    18,
    19,
    20,
    21,
    22,
    23,
    24,
]:
    abjad.attach(abjad.StartPhrasingSlur(), abjad.select.leaf(piano_2_measures[n], 0))
    abjad.attach(abjad.StopPhrasingSlur(), abjad.select.leaf(piano_2_measures[n], -1))

abjad.attach(
    abjad.Articulation("marcato"), abjad.select.leaf(score["piano 1 voice"], 6)
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        0,
        11,
        14,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        6,
        12,
        17,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        0,
        7,
        10,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        6,
        8,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.ottava(
    score=score,
    voice="piano 2 voice",
    start_ottava=[
        0,
        7,
        10,
    ],
    stop_ottava=[
        5,
        7,
        12,
    ],
    octave=-1,
)

trinton.ottava(
    score=score,
    voice="piano 2 voice",
    start_ottava=[
        6,
    ],
    stop_ottava=[
        6,
    ],
    octave=1,
)

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        6,
        12,
        17,
    ],
    stop_ottava=[
        10,
        13,
        32,
    ],
    octave=1,
)

trio.change_staff(
    score=score,
    voice="piano 1 voice",
    lh=[
        7,
        9,
    ],
    rh=[
        8,
        10,
    ],
)

# for tuplet in abjad.select.tuplets(score["piano 1 voice"]):
#     abjad.tweak(tuplet).direction = abjad.UP

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        8,
        10,
    ],
    attachment=abjad.Articulation(">"),
)

for voice_name in ["piano 1 voice", "cello 1 voice", "contrabass 1 voice"]:
    measures = abjad.select.group_by_measure(abjad.select.leaves(score[voice_name]))
    for n in [
        2,
        7,
    ]:
        abjad.attach(abjad.StartHairpin("<"), abjad.select.leaf(measures[n], 0))

    abjad.attach(abjad.Dynamic("ffff"), abjad.select.leaf(measures[4], 0))

    abjad.attach(abjad.Dynamic("fffff"), abjad.select.leaf(measures[9], 0))

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        17,
    ],
    attachment=abjad.StartHairpin("|>o"),
)

for voice_name in ["piano 1 voice", "cello 1 voice"]:
    measures = abjad.select.group_by_measure(abjad.select.leaves(score[voice_name]))
    for n in [
        10,
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
    ]:
        abjad.attach(abjad.Dynamic("fffff"), abjad.select.leaf(measures[n], 0))
        abjad.attach(abjad.StartHairpin("|>o"), abjad.select.leaf(measures[n], 0))

    abjad.attach(abjad.Dynamic("fffff"), abjad.select.leaf(measures[-1], 0))

# cello pitching/attachments

cello_1_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["cello 1 voice"])
)

double_stop_handler = evans.PitchHandler(
    pitch_list=[
        [
            trio._open_strings_to_pitches["III"],
            trio._open_strings_to_pitches["IV"],
        ]
    ]
)

I_II_handler = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["I"],
        trio._open_strings_to_pitches["II"],
    ],
    forget=False,
)

III_IV_handler = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["III"],
        trio._open_strings_to_pitches["IV"],
    ],
    forget=False,
)

for n in [
    0,
    2,
    3,
    4,
    5,
    8,
]:
    double_stop_handler(cello_1_measures[n])

for n in [
    9,
    10,
    11,
    13,
    14,
    15,
    16,
    18,
    20,
    21,
    22,
    23,
    24,
]:
    III_IV_handler(cello_1_measures[n])

for n in [
    12,
    17,
    19,
]:
    I_II_handler(cello_1_measures[n])

cello_2_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["cello 2 voice"])
)

IV_handler = evans.PitchHandler(
    pitch_list=[-24],
)

for n in [
    0,
    2,
    3,
    4,
    5,
    8,
]:
    IV_handler(cello_2_measures[n])

trio.pitch_toccata_by_measure(
    voice=score["cello 2 voice"],
    measures=[
        2,
        7,
        8,
    ],
    selector=trinton.pleaves(),
    octave=4,
    seed=18,
    index=0,
    random_walk=False,
)

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["cello 2 voice"],
    measures=[
        10,
        11,
        12,
        14,
        15,
        16,
        17,
        19,
        21,
        22,
        23,
        24,
        25,
    ],
    selector=trinton.pleaves(),
    strings="III and IV",
    index=0,
)

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["cello 2 voice"],
    measures=[
        13,
        18,
        20,
    ],
    selector=trinton.pleaves(),
    strings="I and II",
    index=0,
)

cello_1_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["cello 1 voice"])
)

for n in [
    0,
    2,
    3,
    4,
    5,
    8,
]:
    for leaf in abjad.select.leaves(cello_1_measures[n], pitched=True):
        abjad.attach(abjad.Articulation("marcato"), leaf)

for n in [9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24]:
    abjad.attach(
        abjad.Articulation("marcato"), abjad.select.leaf(cello_1_measures[n], 0)
    )
    abjad.attach(abjad.StartPhrasingSlur(), abjad.select.leaf(cello_1_measures[n], 0))
    abjad.attach(abjad.StopPhrasingSlur(), abjad.select.leaf(cello_1_measures[n], -1))

trinton.attach(
    voice=score["cello 1 voice"],
    leaves=[
        11,
    ],
    attachment=abjad.StartHairpin("|>o"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        1,
        14,
        28,
        30,
        32,
        35,
        37,
        42,
        44,
        46,
        49,
        52,
        58,
        60,
        62,
        65,
        69,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        0,
        8,
        25,
        29,
        31,
        33,
        36,
        38,
        43,
        45,
        47,
        53,
        59,
        61,
        63,
        66,
        70,
    ],
    attachment=abjad.Clef("bass"),
)

for leaf in abjad.select.leaves(score["cello 2 voice"], pitched=True):
    if isinstance(leaf, abjad.Chord):
        pass
    else:
        if leaf.written_pitch.number == -24:
            abjad.attach(abjad.Articulation("marcato"), leaf)

cello_2_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["cello 2 voice"])
)

leaves = []

for number in [0, 2, 3, 4, 5, 8]:
    for leaf in cello_2_measures[number]:
        leaves.append(leaf)

selection = trio.select_periodic_ties_2_4_7_8_of_10(leaves[:])
for tie in selection:
    for leaf in tie:
        abjad.attach(abjad.Articulation("snappizzicato"), leaf)


for measure in cello_2_measures:
    pleaves = abjad.select.leaves(measure, pitched=True)
    abjad.attach(abjad.Articulation("marcato"), pleaves[0])

for tuplet in abjad.select.tuplets(score["cello 2 voice"]):
    if abjad.get.annotation(tuplet, trio.harmonic_gliss) is True:
        abjad.attach(abjad.StartPhrasingSlur(), tuplet[0])
        abjad.attach(abjad.StopPhrasingSlur(), tuplet[-1])
        for leaf in abjad.select.exclude(abjad.select.leaves(tuplet), [-1]):
            abjad.attach(abjad.Glissando(), leaf)
        for chord in tuplet:
            for head in chord.note_heads:
                abjad.tweak(head, r"\tweak style #'harmonic-mixed")
    elif abjad.get.annotation(tuplet, trio.toccata) is True:
        for leaf in tuplet:
            abjad.tweak(leaf.note_head, r"\tweak style #'triangle")

for leaf1, leaf2 in zip(
    trinton.make_leaf_selection(
        score=score,
        voice="cello 2 voice",
        leaves=[
            1,
            14,
        ],
    ),
    trinton.make_leaf_selection(
        score=score,
        voice="cello 2 voice",
        leaves=[
            7,
            24,
        ],
    ),
):
    trinton.dashed_slur(start_selection=leaf1, stop_selection=leaf2)

trinton.ficta(
    score=score,
    voice="cello 2 voice",
    start_ficta=[
        27,
    ],
    stop_ficta=[
        -1,
    ],
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        8,
        25,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "NB., Pizz." 1', "after"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        1,
        14,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Arco, XSB" 1', "after"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        27,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Arco" 1', "after"),
)

# contrabass pitching/attachments

contrabass_1_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["contrabass 1 voice"])
)

double_stop_handler = evans.PitchHandler(
    pitch_list=[
        [
            trio._open_strings_to_pitches["III"],
            trio._open_strings_to_pitches["IV"],
        ]
    ]
)

for n in [
    0,
    1,
    2,
    5,
    6,
    7,
]:
    double_stop_handler(contrabass_1_measures[n])

contrabass_2_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["contrabass 2 voice"])
)

IV_handler = evans.PitchHandler(
    pitch_list=[-20],
)

for n in [
    0,
    1,
    2,
    5,
    6,
    7,
]:
    IV_handler(contrabass_2_measures[n])

trio.pitch_contrabass_glissandi_by_measure(
    voice=score["contrabass 2 voice"],
    measures=[
        0,
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
        12,
        13,
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        22,
        23,
        24,
    ],
    selector=trio.select_tuplets_by_annotation(trio.vib),
    strings="III and IV",
)

trinton.attach(
    voice=score["contrabass 2 voice"], leaves=[0], attachment=abjad.Clef("bass")
)

contrabass_1_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["contrabass 1 voice"])
)

for n in [
    0,
    1,
    2,
    5,
    6,
    7,
]:
    for leaf in abjad.select.leaves(contrabass_1_measures[n]):
        abjad.attach(abjad.Articulation("marcato"), leaf)

contrabass_2_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["contrabass 2 voice"])
)

leaves = []

for number in [
    0,
    1,
    2,
    5,
    6,
    7,
]:
    for leaf in contrabass_2_measures[number]:
        leaves.append(leaf)

selection = trio.select_periodic_ties_2_4_7_8_of_10(leaves[:])
for tie in selection:
    for leaf in tie:
        abjad.attach(abjad.Articulation("snappizzicato"), leaf)

for n in [
    0,
    1,
    2,
    5,
    6,
    7,
]:
    for leaf in abjad.select.leaves(contrabass_2_measures[n]):
        abjad.attach(abjad.Articulation("marcato"), leaf)

for tuplet in abjad.select.tuplets(score["contrabass 2 voice"]):
    if abjad.get.annotation(tuplet, trio.vib) is True:
        abjad.attach(abjad.Articulation("marcato"), tuplet[0])
        abjad.attach(abjad.StartPhrasingSlur(), tuplet[0])
        abjad.attach(abjad.StopPhrasingSlur(), tuplet[-1])
        for leaf in abjad.select.exclude(abjad.select.leaves(tuplet), [-1]):
            abjad.attach(abjad.Glissando(), leaf)

for tuplet in abjad.select.exclude(
    abjad.select.tuplets(score["contrabass 2 voice"]),
    [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
        8,
        9,
        -1,
    ],
):
    abjad.attach(abjad.Dynamic("fffff"), tuplet[0]),
    abjad.attach(abjad.StartHairpin("|>o"), tuplet[0])

trinton.attach(
    voice=score["contrabass 2 voice"], leaves=[80], attachment=abjad.Dynamic("fffff")
)

trinton.ficta(
    score=score,
    voice="contrabass 2 voice",
    start_ficta=[
        4,
        14,
    ],
    stop_ficta=[
        9,
        85,
    ],
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        4,
        14,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Arco" 1', "after"),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        10,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Pizz." 1', "after"),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        21,
    ],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "low string portamento" 1', "after"
    ),
)

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/segments/09",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

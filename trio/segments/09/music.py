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
        (1, 6),
        (3, 8),
        (1, 4),
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
    score["Global Context"],
)

# piano

for voice_name in ["piano 1 voice", "piano 2 voice"]:
    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        stack=rmakers.stack(
            rmakers.tuplet(
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
            rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
            rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_dots(),
            rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
        ),
        durations=[
            (1, 12),
            (3, 8),
            (1, 6),
            (3, 8),
        ],
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
    stack=rmakers.stack(
        rmakers.tuplet(
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
        rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
        rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_dots(),
        rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
    ),
    durations=[
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
)

trinton.make_and_append_rhythm_selections(
    score=score,
    voice_name="piano 2 voice",
    stack=rmakers.stack(
        rmakers.tuplet(
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
        rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
        rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_dots(),
        rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
    ),
    durations=[
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
)

for tuplet in [
    abjad.select(score["piano 1 voice"]).tuplet(_)
    for _ in [
        0,
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
        12,
        13,
        14,
    ]
]:
    abjad.override(tuplet).TupletNumber.text = abjad.Markup(r"\markup \italic { 3:2 }")

for tuplet in [
    abjad.Selection(score["piano 2 voice"]).tuplet(_)
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
    abjad.override(tuplet).TupletNumber.text = abjad.Markup(r"\markup \italic { 3:2 }")

# cello

for voice_name in [
    "cello 1 voice",
    "cello 2 voice",
]:
    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        stack=rmakers.stack(
            rmakers.tuplet(
                [
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
            (1, 12),
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
        stack=rmakers.stack(
            rmakers.tuplet(
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
            rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
            rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_dots(),
            rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
        ),
        durations=[
            (1, 6),
            (3, 8),
            (1, 4),
            (1, 12),
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
    stack=rmakers.stack(
        rmakers.tuplet(
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
        rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
        rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_dots(),
        rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
    ),
    durations=[
        (1, 6),
    ],
)

skip = abjad.Skip((1, 1), multiplier=abjad.Multiplier(1, 6))
score["cello 1 voice"].append(skip)

for voice_name in ["cello 1 voice", "cello 2 voice"]:
    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        stack=rmakers.stack(
            rmakers.tuplet(
                [
                    (
                        1,
                        2,
                    ),
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
            (3, 8),
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
    abjad.select(score["cello 1 voice"]).tuplet(_)
    for _ in [
        0,
        1,
        2,
        3,
        4,
        5,
    ]
]:
    abjad.override(tuplet).TupletNumber.text = abjad.Markup(r"\markup \italic { 3:2 }")

for tuplet in [
    abjad.Selection(score["cello 2 voice"]).tuplet(_)
    for _ in [
        0,
        1,
        3,
        4,
        5,
        6,
    ]
]:
    abjad.override(tuplet).TupletNumber.text = abjad.Markup(r"\markup \italic { 3:2 }")

# contrabass

for voice_name in [
    "contrabass 1 voice",
    "contrabass 2 voice",
]:
    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        stack=rmakers.stack(
            rmakers.tuplet(
                [
                    (1,),
                    (
                        1,
                        2,
                    ),
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
            (1, 12),
            (3, 8),
            (1, 6),
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
        stack=rmakers.stack(
            rmakers.tuplet(
                [
                    (1,),
                    (
                        2,
                        1,
                    ),
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
            (1, 12),
            (3, 8),
            (1, 6),
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


for tuplet in abjad.select(score["contrabass 1 voice"]).tuplets():
    abjad.override(tuplet).TupletNumber.text = abjad.Markup(r"\markup \italic { 3:2 }")

for tuplet in [
    abjad.Selection(score["contrabass 2 voice"]).tuplet(_)
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
    abjad.override(tuplet).TupletNumber.text = abjad.Markup(r"\markup \italic { 3:2 }")

for tuplet in [abjad.Selection(score["contrabass 2 voice"]).tuplet(_) for _ in [4, -1]]:
    abjad.override(tuplet).TupletNumber.text = abjad.Markup(r"\markup \italic { 6:5 }")

# annotate leaves

trinton.annotate_leaves(score)

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
    padding=3,
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

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        9,
    ],
    attachment=abjad.Markup(r"\markup \abs-fontsize #8.5 { X6 }"),
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
    selector=baca.selectors.pleaves(),
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
    selector=baca.selectors.pleaves(),
    octave=0,
    index=0,
    seed=2,
)

trio.pitch_toccata_by_measure(
    voice=score["piano 1 voice"],
    measures=[
        5,
    ],
    selector=baca.selectors.pleaves(),
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
    selector=baca.selectors.pleaves(),
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
    selector=baca.selectors.pleaves(),
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
    measures = abjad.Selection(score[voice_name]).leaves().group_by_measure()
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
        for leaf in abjad.Selection(measures[n]).leaves():
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
        abjad.attach(
            abjad.Articulation("marcato"), abjad.Selection(measures[n]).leaf(0)
        )

    for n in [
        6,
    ]:
        for leaf in abjad.Selection(measures[n]).leaves():
            abjad.attach(abjad.Arpeggio(), leaf)
            trinton.unmeasured_stem_tremolo([leaf])

piano_1_measures = abjad.Selection(score["piano 1 voice"]).leaves().group_by_measure()

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
    for leaf in abjad.Selection(piano_1_measures[n]).leaves():
        abjad.attach(abjad.Arpeggio(), leaf)
        trinton.unmeasured_stem_tremolo([leaf])

piano_2_measures = abjad.Selection(score["piano 2 voice"]).leaves().group_by_measure()

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
    abjad.attach(
        abjad.StartPhrasingSlur(), abjad.Selection(piano_2_measures[n]).leaf(0)
    )
    abjad.attach(
        abjad.StopPhrasingSlur(), abjad.Selection(piano_2_measures[n]).leaf(-1)
    )

abjad.attach(
    abjad.Articulation("marcato"), abjad.Selection(score["piano 1 voice"]).leaf(6)
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

for tuplet in abjad.Selection(score["piano 1 voice"]).tuplets():
    abjad.tweak(tuplet).direction = abjad.Up

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        8,
        10,
    ],
    attachment=abjad.Articulation(">"),
)

for voice_name in ["piano 1 voice", "cello 1 voice", "contrabass 1 voice"]:
    measures = abjad.Selection(score[voice_name]).leaves().group_by_measure()
    for n in [
        2,
        7,
    ]:
        abjad.attach(abjad.StartHairpin("<"), abjad.Selection(measures[n]).leaf(0))

    abjad.attach(abjad.Dynamic("ffff"), abjad.Selection(measures[4]).leaf(0))

    abjad.attach(abjad.Dynamic("fffff"), abjad.Selection(measures[9]).leaf(0))

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        17,
    ],
    attachment=abjad.StartHairpin("|>o"),
)

for voice_name in ["piano 1 voice", "cello 1 voice"]:
    measures = abjad.Selection(score[voice_name]).leaves().group_by_measure()
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
        abjad.attach(abjad.Dynamic("fffff"), abjad.Selection(measures[n]).leaf(0))
        abjad.attach(abjad.StartHairpin("|>o"), abjad.Selection(measures[n]).leaf(0))

    abjad.attach(abjad.Dynamic("fffff"), abjad.Selection(measures[-1]).leaf(0))

# cello pitching/attachments


# contrabass pitchin/attachments


# extract parts

# trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/segments/09",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="09",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)

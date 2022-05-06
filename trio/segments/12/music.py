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
        (5, 4),
        (4, 4),
        (3, 8),
        (3, 4),
        (6, 4),
        (3, 8),
        (3, 8),
        (4, 8),
        (5, 8),
        (3, 8),
        (5, 8),
        (4, 8),
        (3, 8),
    ],
    score["Global Context"],
)

# piano

for voice_name in ["piano 1 voice", "piano 2 voice"]:
    trinton.handwrite(
        score=score,
        voice=voice_name,
        durations=[
            (5, 4),
            (1, 1),
            (3, 8),
            (3, 4),
            (6, 4),
        ],
        pitch_list=None,
    )

for pair in [
    (3, 8),
    (3, 8),
    (4, 8),
    (5, 8),
    (3, 8),
    (5, 8),
    (4, 8),
    (3, 8),
]:
    skip = abjad.Skip((1, 1), multiplier=abjad.Multiplier(pair))
    score["piano 2 voice"].append(skip)

trio.toccata_rhythms(
    score=score,
    voice="piano 1 voice",
    durations=[
        (3, 8),
        (3, 8),
        (4, 8),
        (5, 8),
        (3, 8),
        (5, 8),
        (4, 8),
        (3, 8),
    ],
    division=16,
    extra_counts=[
        1,
        2,
    ],
    notation="absolute_bracket",
)

trinton.reduce_tuplets(score=score, voice="piano 1 voice", tuplets="all")

# cello

for voice_name in ["cello 2 voice", "contrabass 2 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice_name,
        rests=[abjad.Skip((1, 1), multiplier=abjad.Multiplier(5, 4))],
    )

    trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice_name,
        stack=rmakers.stack(
            rmakers.tuplet(
                [
                    (
                        1,
                        1,
                    ),
                ]
            ),
            rmakers.trivialize(lambda _: abjad.select.tuplets(_)),
            rmakers.extract_trivial(lambda _: abjad.select.tuplets(_)),
            rmakers.rewrite_rest_filled(lambda _: abjad.select.tuplets(_)),
            rmakers.rewrite_sustained(lambda _: abjad.select.tuplets(_)),
            rmakers.rewrite_dots(),
            rmakers.beam(lambda _: abjad.select.tuplets(_)),
        ),
        durations=[
            (4, 4),
            (3, 8),
            (3, 4),
            (6, 4),
        ],
    )

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (3, 8),
    ],
    seed=15,
    index=0,
    string="IV",
    notation="tuplet",
)

trinton.append_rests(
    score=score,
    voice="cello 1 voice",
    rests=[
        abjad.Skip((1, 1), multiplier=abjad.Multiplier(_))
        for _ in [
            (5, 4),
            (4, 4),
            (3, 8),
            (3, 4),
            (6, 4),
            (3, 8),
        ]
    ],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[
        (3, 8),
    ],
    tuplets=trio.collapsing_tuplets_1,
    notation="tuplet",
)

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 2),
    ],
    seed=15,
    index=1,
    string="IV",
    notation="tuplet",
)

trinton.append_rests(
    score=score,
    voice="cello 1 voice",
    rests=[abjad.Skip("r2")],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[
        (5, 8),
    ],
    tuplets=[trio.collapsing_tuplets_1[1]],
    notation="tuplet",
)

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (3, 8),
    ],
    seed=15,
    index=2,
    string="IV",
    notation="tuplet",
)

trinton.append_rests(
    score=score,
    voice="cello 1 voice",
    rests=[abjad.Skip("r4.")],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[
        (5, 8),
    ],
    tuplets=[trio.collapsing_tuplets_1[2]],
    notation="tuplet",
)


trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 2),
    ],
    seed=15,
    index=3,
    string="IV",
    notation="tuplet",
)

trinton.append_rests(
    score=score,
    voice="cello 1 voice",
    rests=[abjad.Skip("r2")],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[
        (3, 8),
    ],
    tuplets=[trio.collapsing_tuplets_1[3]],
    notation="tuplet",
)

abjad.override(
    abjad.select.tuplet(score["cello 2 voice"], 2)
).TupletNumber.text = r"\markup \italic { 6:5 }"

abjad.override(
    abjad.select.tuplet(score["cello 2 voice"], 3)
).TupletNumber.text = r"\markup \italic { 7:10 }"

# bass

trinton.append_rests(
    score=score,
    voice="contrabass 1 voice",
    rests=[
        abjad.Skip((1, 1), multiplier=abjad.Multiplier(_))
        for _ in [
            (5, 4),
            (4, 4),
            (3, 8),
            (3, 4),
            (6, 4),
        ]
    ],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[
        (3, 8),
    ],
    tuplets=[trio.collapsing_tuplets_3[0]],
    notation="tuplet",
)

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (3, 8),
    ],
    seed=11,
    index=0,
    string="IV",
    notation="tuplet",
)

trinton.append_rests(
    score=score,
    voice="contrabass 1 voice",
    rests=[abjad.Skip("r4.")],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[
        (1, 2),
    ],
    tuplets=[trio.collapsing_tuplets_3[1]],
    notation="tuplet",
)

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (5, 8),
    ],
    seed=11,
    index=1,
    string="IV",
    notation="tuplet",
)

trinton.append_rests(
    score=score,
    voice="contrabass 1 voice",
    rests=[abjad.Skip((1, 1), multiplier=abjad.Multiplier(5, 8))],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[
        (3, 8),
    ],
    tuplets=[trio.collapsing_tuplets_3[2]],
    notation="tuplet",
)


trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (5, 8),
    ],
    seed=11,
    index=2,
    string="IV",
    notation="tuplet",
)

trinton.append_rests(
    score=score,
    voice="contrabass 1 voice",
    rests=[abjad.Skip((1, 1), multiplier=abjad.Multiplier(5, 8))],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[
        (1, 2),
    ],
    tuplets=[trio.collapsing_tuplets_3[3]],
    notation="tuplet",
)

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (3, 8),
    ],
    seed=11,
    index=2,
    string="IV",
    notation="tuplet",
)

trinton.append_rests(
    score=score,
    voice="contrabass 1 voice",
    rests=[abjad.Skip("r4.")],
)

abjad.override(
    abjad.select.tuplet(score["contrabass 2 voice"], 2)
).TupletNumber.text = r"\markup \italic { 7:10 }"

abjad.override(
    abjad.select.tuplet(score["contrabass 2 voice"], 3)
).TupletNumber.text = r"\markup \italic { 6:5 }"

# beaming

trinton.rewrite_meter_by_voice(
    score=score,
    voice_indeces=[
        1,
        3,
        4,
        5,
    ],
)
trinton.beam_score(score)

# trinton.annotate_leaves(score)

# margin markups

trio.write_marginmarkups(score=score)

# global attachments

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[0],
    attachments=[abjad.MetronomeMark((1, 4), 105), trio.rehearsal_mark13],
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        -1,
    ],
    attachments=[
        abjad.LilyPondLiteral(r"\override Score.BarLine.transparent = ##f", "after"),
    ],
)

trinton.attach(
    voice=score["Global Context"], leaves=[-1], attachment=abjad.BarLine("|.")
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        7,
    ],
    attachment=abjad.LilyPondLiteral(r"\pageBreak", "absolute_after"),
)

# piano pitching/attachments

for voice, leaf, partials, transpose in zip(
    [
        "piano 1 voice",
        "piano 2 voice",
        "piano 1 voice",
        "piano 2 voice",
        "piano 1 voice",
        "piano 2 voice",
        "piano 1 voice",
        "piano 2 voice",
        "piano 1 voice",
        "piano 2 voice",
    ],
    [
        0,
        0,
        2,
        2,
        3,
        3,
        4,
        4,
        5,
        5,
    ],
    [
        [
            4,
            5,
            6,
            7,
        ],
        [
            2,
            3,
        ],
        [
            2,
            3,
            4,
            5,
        ],
        [
            2,
            3,
        ],
        [
            2,
            3,
            4,
            5,
            6,
        ],
        [
            1,
            2,
            3,
        ],
        [
            2,
            3,
            5,
        ],
        [
            1,
            2,
            3,
        ],
        [
            3,
            4,
            5,
            6,
            7,
        ],
        [
            1,
            2,
            3,
        ],
    ],
    [
        -52,
        -48,
        -36,
        -48,
        -24,
        -36,
        -6,
        -36,
        0,
        -36,
    ],
):
    trio.pitch_matter(
        score=score,
        voice=voice,
        leaves=[leaf],
        chord=1,
        partials=partials,
        transpose=transpose,
        markup=False,
    )

for measure, octave, seed in zip(
    [
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
    ],
    [
        0,
        1,
        2,
        3,
        4,
        5,
        6,
        7,
    ],
    [
        11,
        12,
        13,
        14,
        15,
        16,
        17,
        18,
    ],
):
    trio.pitch_toccata_by_measure(
        voice=score["piano 1 voice"],
        measures=[measure],
        selector=baca.selectors.pleaves(),
        octave=octave,
        seed=seed,
        index=0,
        random_walk=False,
    )

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        0,
        6,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.attach(voice=score["piano 2 voice"], leaves=[0], attachment=abjad.Clef("bass"))

trinton.attach(
    voice=score["piano 1 voice"], leaves=[4, 30], attachment=abjad.Clef("treble")
)

trinton.attach(
    voice=score["piano 2 voice"], leaves=[9], attachment=abjad.Clef("treble")
)

trio.octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="piano 1 voice",
        leaves=[
            49,
            61,
            13,
            21,
        ],
    )
)

trio.change_staff(
    score=score,
    voice="piano 1 voice",
    lh=[
        11,
        19,
        24,
        35,
        40,
        46,
        51,
        61,
        67,
        70,
        74,
    ],
    rh=[
        16,
        21,
        27,
        38,
        42,
        49,
        55,
        65,
        68,
        71,
        75,
    ],
)

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        51,
    ],
    stop_ottava=[
        60,
    ],
    octave=1,
)

trinton.ottava(
    score=score,
    voice="piano 2 voice",
    start_ottava=[
        12,
    ],
    stop_ottava=[
        13,
    ],
    octave=1,
)

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        65,
    ],
    stop_ottava=[
        77,
    ],
    octave=2,
)

trinton.ottava(
    score=score,
    voice="piano 2 voice",
    start_ottava=[
        14,
    ],
    stop_ottava=[
        15,
    ],
    octave=2,
)

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        6,
    ],
    stop_ottava=[
        18,
    ],
    octave=-1,
)

trinton.ottava(
    score=score,
    voice="piano 2 voice",
    start_ottava=[
        0,
    ],
    stop_ottava=[
        7,
    ],
    octave=-1,
)

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[
        0,
        6,
    ],
    stop_slur=[
        5,
        -1,
    ],
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=[
        0,
    ],
    stop_slur=[
        5,
    ],
)

for voice_name in ["piano 1 voice", "piano 2 voice"]:
    for chord in abjad.select.chords(score[voice_name]):
        trinton.unmeasured_stem_tremolo([chord])
        chord_ties = abjad.select.logical_ties(chord)
        for tie in chord_ties:
            abjad.attach(abjad.Arpeggio(), tie[0])
    for tuplet in abjad.select.exclude(abjad.select.tuplets(score[voice_name]), [-2]):
        abjad.override(tuplet).TupletBracket.padding = 3
    for tuplet in abjad.select.tuplets(score[voice_name]):
        abjad.tweak(tuplet).direction = abjad.DOWN

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[
        0,
    ],
    attachments=[abjad.Dynamic("fp"), abjad.StartHairpin("<")],
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        5,
    ],
    attachment=abjad.Dynamic("fff"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        6,
    ],
    attachment=abjad.StartHairpin(">o"),
    direction=abjad.UP,
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        -1,
    ],
    attachment=abjad.StopHairpin(),
)

# cello pitching/attachments

for leaf, chord, partials in zip(
    [
        2,
        3,
        4,
        5,
        6,
        8,
        10,
        11,
    ],
    [
        2,
        3,
        4,
        5,
        6,
        1,
        2,
        3,
    ],
    [
        [
            2,
            3,
        ],
        [
            3,
            4,
        ],
        [
            2,
            3,
        ],
        [
            3,
            4,
        ],
        [
            3,
            4,
        ],
        [
            2,
            3,
        ],
        [
            3,
            4,
        ],
        [
            2,
            3,
        ],
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

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["cello 2 voice"],
    measures=[
        6,
        7,
        8,
        9,
        10,
        11,
        12,
    ],
    selector=trio.select_tuplets_by_annotation(trio.harmonic_gliss),
    strings="III and IV",
    index=2,
)

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["cello 2 voice"],
    measures=[
        13,
    ],
    selector=baca.selectors.pleaves(),
    strings="III and IV",
    index=2,
)

III_IV_handler = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["IV"],
        trio._open_strings_to_pitches["III"],
    ],
    forget=False,
)

III_IV_handler(abjad.select.leaves(score["cello 1 voice"], pitched=True))

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        19,
        28,
        30,
        37,
        40,
        48,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        18,
        27,
        29,
        36,
        38,
        47,
        49,
    ],
    attachment=abjad.Clef("bass"),
)

cello_2_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["cello 2 voice"])
)

for n in [
    7,
    9,
    11,
    13,
]:
    sel = abjad.select.leaves(cello_2_measures[n - 1])
    for leaf in sel:
        for head in leaf.note_heads:
            abjad.tweak(head).style = r"#'harmonic-mixed"

cello_1_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["cello 1 voice"])
)

for n in [7, 9, 11, 13]:
    sel = abjad.select.leaves(cello_1_measures[n - 1])
    abjad.attach(abjad.StartPhrasingSlur(), sel[0])
    abjad.attach(abjad.StopPhrasingSlur(), sel[-1])

trinton.write_hooked_spanner(
    voice=score["cello 2 voice"],
    string=r"\markup { IV }",
    start_leaf=[
        12,
        20,
        30,
        40,
    ],
    stop_leaf=[
        17,
        26,
        35,
        46,
    ],
    padding=8,
)


# contrabass pitching/attachments

for leaf, chord, in zip(
    [
        2,
        3,
        4,
        5,
        6,
        8,
        10,
        11,
    ],
    [
        2,
        3,
        4,
        5,
        6,
        1,
        2,
        3,
    ],
):
    trio.pitch_matter(
        score=score,
        voice="contrabass 2 voice",
        leaves=[leaf],
        chord=chord,
        partials=[1],
        transpose=0,
        markup=True,
    )

trio.pitch_contrabass_glissandi_by_measure(
    voice=score["contrabass 2 voice"],
    measures=[
        7,
        9,
        11,
        13,
    ],
    selector=baca.selectors.pleaves(),
    strings="II and III",
)

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["contrabass 2 voice"],
    measures=[
        6,
        8,
        10,
        12,
    ],
    selector=baca.selectors.pleaves(),
    strings="I and II",
    index=0,
)

I_II_handler = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["I"],
        trio._open_strings_to_pitches["II"],
    ],
    forget=False,
)

I_II_handler(abjad.select.leaves(score["contrabass 1 voice"], pitched=True))

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        8,
        13,
        21,
        29,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        6,
        12,
        14,
        22,
        32,
    ],
    attachment=abjad.Clef("bass"),
)

contrabass_2_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["contrabass 2 voice"])
)

for n in [
    6,
    8,
    10,
    12,
]:
    sel = abjad.select.leaves(contrabass_2_measures[n - 1])
    for leaf in sel:
        for head in leaf.note_heads:
            abjad.tweak(head).style = r"#'harmonic-mixed"

contrabass_1_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["contrabass 1 voice"])
)

for n in [
    6,
    8,
    10,
    12,
]:
    sel = abjad.select.leaves(contrabass_1_measures[n - 1])
    abjad.attach(abjad.StartPhrasingSlur(), sel[0])
    abjad.attach(abjad.StopPhrasingSlur(), sel[-1])

for voice in ["contrabass 2 voice", "cello 2 voice"]:
    measures = abjad.select.group_by_measure(abjad.select.leaves(score[voice]))
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            2,
        ],
        attachments=[
            abjad.LilyPondLiteral(r'\boxed-markup "NB, Ord." 1', "after"),
            abjad.StartHairpin("o<"),
        ],
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            10,
        ],
        attachment=abjad.Dynamic("fff"),
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            12,
        ],
        attachment=abjad.StartHairpin(">o"),
        direction=abjad.UP,
    )

    trinton.attach(voice=score[voice], leaves=[-1], attachment=abjad.StopHairpin())

    trinton.ficta(
        score=score,
        voice=voice,
        start_ficta=[
            12,
        ],
        stop_ficta=[
            -1,
        ],
    )

    for n in [
        6,
        7,
        8,
        9,
        10,
        11,
        12,
        13,
    ]:
        sel = abjad.select.exclude(abjad.select.leaves(measures[n - 1]), [-1])
        for leaf in sel:
            abjad.attach(abjad.Glissando(), leaf)
        abjad.attach(abjad.StartPhrasingSlur(), abjad.select.leaf(measures[n - 1], 0))
        abjad.attach(abjad.StopPhrasingSlur(), abjad.select.leaf(measures[n - 1], -1))

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/segments/12",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="12",
    includes=[
        "../../build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily",
    ],
)

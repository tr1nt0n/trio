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
        (9, 8),
        (1, 4),
        (6, 4),
        (11, 8),
        (12, 8),
        (7, 8),
        (13, 8),
        (3, 8),
    ],
    score["Global Context"],
)

# piano

for voice in ["piano 1 voice", "piano 2 voice"]:

    for pair in [
        (5, 4),
        (9, 8),
        (1, 4),
        (6, 4),
        (11, 8),
        (12, 8),
        (7, 8),
        (13, 8),
        (3, 8),
    ]:
        rest = abjad.Rest((1, 1), multiplier=abjad.Multiplier(pair))
        trinton.append_rests(score=score, voice=voice, rests=[rest])

# cello

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[
        (1, 2),
        (1, 4),
        (3, 16),
        (5, 16),
        (3, 16),
        (1, 4),
        (1, 2),
        (3, 16),
        (1, 8),
        (1, 8),
    ],
    tuplets=trio.collapsing_tuplets_1,
    notation="tuplet",
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[
        (3, 2),
        (1, 1),
        (3, 8),
        (5, 8),
        (3, 8),
        (7, 16),
        (1, 16),
        (1, 8),
        (1, 4),
        (1, 2),
    ],
    tuplets=trio.collapsing_tuplets_3,
    notation="tuplet",
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[
        (1, 2),
        (5, 8),
        (1, 4),
        (1, 4),
        (1, 8),
        (1, 4),
    ],
    tuplets=trio.collapsing_tuplets_2,
    notation="tuplet",
)

abjad.override(
    abjad.select.tuplet(score["cello 2 voice"], 3)
).TupletNumber.text = r"\markup \italic { 6:5 }"

# contrbass

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[
        (5, 16),
        (3, 16),
        (1, 4),
        (1, 2),
        (3, 16),
        (1, 2),
        (1, 4),
        (3, 16),
        (1, 4),
    ],
    tuplets=trio.collapsing_tuplets_2,
    notation="tuplet",
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[
        (3, 2),
        (3, 8),
        (1, 1),
        (1, 16),
        (7, 16),
        (3, 8),
        (5, 8),
        (1, 2),
        (1, 4),
        (1, 8),
    ],
    tuplets=trio.collapsing_tuplets_1,
    notation="tuplet",
)
#
trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[
        (1, 4),
        (1, 4),
        (5, 8),
        (1, 2),
        (1, 4),
        (1, 8),
    ],
    tuplets=trio.collapsing_tuplets_3,
    notation="tuplet",
)

for tuplet, string in zip(
    [
        0,
        10,
    ],
    [r"\markup \italic { 13:10 }", r"\markup \italic { 6:5 }"],
):
    abjad.override(
        abjad.select.tuplet(score["contrabass 2 voice"], tuplet)
    ).TupletNumber.text = string

# meter rewriting/beaming

trinton.rewrite_meter_by_voice(
    score=score,
    voice_indeces=[
        1,
        3,
    ],
)

trinton.beam_runs_by_selection(
    score=score,
    voice="cello 2 voice",
    start_beam=[
        32,
        41,
        43,
        52,
    ],
    stop_beam=[
        33,
        42,
        51,
        53,
    ],
    beam_rests=True,
)

trinton.beam_runs_by_selection(
    score=score,
    voice="contrabass 2 voice",
    start_beam=[
        13,
        34,
        56,
        66,
        78,
        94,
    ],
    stop_beam=[
        16,
        38,
        59,
        67,
        79,
        95,
    ],
    beam_rests=True,
)

# trinton.annotate_leaves(score)

# global attachments

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        0,
    ],
    attachments=[abjad.MetronomeMark((1, 4), 69), trio.rehearsal_mark5],
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[-1],
    attachments=[
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "after"
        ),
        abjad.BarLine("||"),
    ],
)


trio.write_marginmarkups(score)

# cello pitching/attachments

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        1,
        3,
        5,
        8,
        13,
        15,
        17,
        20,
        24,
        26,
        29,
        33,
        38,
        40,
        43,
        47,
        49,
        51,
        53,
        55,
        62,
        64,
        66,
        69,
        73,
        75,
        77,
        80,
        84,
        86,
        88,
        91,
        95,
        99,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        0,
        2,
        4,
        6,
        9,
        14,
        16,
        18,
        21,
        25,
        27,
        31,
        36,
        39,
        41,
        42,
        44,
        46,
        48,
        50,
        52,
        54,
        56,
        63,
        65,
        67,
        70,
        74,
        76,
        78,
        81,
        85,
        87,
        89,
        92,
        96,
        100,
    ],
    attachment=abjad.Clef("bass"),
)

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["cello 2 voice"],
    measures=[
        2,
        4,
        7,
    ],
    selector=trinton.pleaves(),
    strings="I and II",
    index=0,
)

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["cello 2 voice"],
    measures=[1, 6, 9],
    selector=trinton.pleaves(),
    strings="II and III",
    index=0,
)

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["cello 2 voice"],
    measures=[
        3,
        5,
        8,
    ],
    selector=trinton.pleaves(),
    strings="III and IV",
    index=0,
)

handler_I = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["I"],
        trio._open_strings_to_pitches["II"],
    ],
    forget=False,
)

handler_II = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["II"],
        trio._open_strings_to_pitches["III"],
    ],
    forget=False,
)

handler_III = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["III"],
        trio._open_strings_to_pitches["IV"],
    ],
    forget=False,
)

cello_1_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["cello 1 voice"])
)

I_measures = [
    cello_1_measures[1],
    cello_1_measures[3],
    cello_1_measures[6],
]

II_measures = [
    cello_1_measures[0],
    cello_1_measures[5],
    cello_1_measures[8],
]

III_measures = [
    cello_1_measures[2],
    cello_1_measures[4],
    cello_1_measures[7],
]

handler_I(I_measures[:])

handler_II(II_measures[:])

handler_III(III_measures[:])

cello_1_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["cello 1 voice"])
)

for measure, dynamic in zip(
    cello_1_measures[1:],
    [
        abjad.Dynamic("f"),
        abjad.Dynamic("p"),
        abjad.Dynamic("mf"),
        abjad.Dynamic("p"),
        abjad.Dynamic("f"),
        abjad.Dynamic("mp"),
    ],
):
    abjad.attach(dynamic, abjad.select.leaf(measure, 0))

abjad.attach(abjad.StartHairpin("<"), abjad.select.leaf(cello_1_measures[6], 0))

glissandi = []

for l in [
    list(range(30, 33)),
    [
        35,
    ],
    list(range(38, 51)),
    list(range(52, 57)),
]:
    for leaf in l:
        glissandi.append(leaf)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=glissandi,
    attachment=abjad.Glissando(),
)

cello_2_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["cello 2 voice"])
)

for measure in [cello_2_measures[_] for _ in [0, 1, 2, 3, 7, 8]]:
    for leaf in abjad.select.exclude(abjad.select.leaves(measure), [-1]):
        abjad.attach(abjad.Glissando(), leaf)

trinton.glissando(
    score=score,
    voice="cello 2 voice",
    start_gliss=[
        36,
    ],
    stop_gliss=[
        38,
    ],
)

trinton.ficta(
    score=score,
    voice="cello 2 voice",
    start_ficta=[0],
    stop_ficta=[-1],
)

trinton.ficta(
    score=score,
    voice="contrabass 2 voice",
    start_ficta=[0],
    stop_ficta=[-1],
)

trinton.write_slur(
    voice=score["cello 2 voice"],
    start_slur=[
        32,
        35,
        41,
        52,
    ],
    stop_slur=[
        34,
        37,
        51,
        53,
    ],
)

trinton.write_slur(
    voice=score["cello 1 voice"],
    start_slur=[
        0,
        2,
        4,
        6,
        10,
        12,
        14,
        16,
        18,
        20,
        22,
        24,
        26,
        28,
        32,
        34,
        38,
        40,
        42,
        44,
        46,
        50,
        52,
        54,
        56,
    ],
    stop_slur=[
        1,
        3,
        5,
        9,
        11,
        13,
        15,
        17,
        19,
        21,
        23,
        25,
        27,
        31,
        33,
        37,
        39,
        41,
        43,
        45,
        49,
        51,
        53,
        55,
        57,
    ],
)

trinton.attach(
    voice=score["cello 1 voice"],
    leaves=[
        0,
        2,
        4,
        6,
        10,
        12,
        14,
        16,
        18,
        20,
        22,
        24,
        26,
        28,
        32,
        34,
        38,
        40,
        42,
        44,
        46,
        50,
        52,
        54,
        56,
    ],
    attachment=abjad.Articulation(">"),
)

trio.make_angle_spanner(
    score=score,
    voice="cello 1 voice",
    leaves=[
        0,
    ],
    direction="counterclockwise",
    left_text="-45",
    position="start",
    padding=5.5,
)

trio.make_angle_spanner(
    score=score,
    voice="cello 1 voice",
    leaves=[
        4,
        10,
        14,
        18,
        22,
        26,
        32,
        38,
        42,
        46,
        52,
    ],
    direction="counterclockwise",
    left_text="-45",
    position="center",
    padding=5.5,
)

trio.make_angle_spanner(
    score=score,
    voice="cello 1 voice",
    leaves=[
        2,
        6,
        12,
        16,
        20,
        24,
        28,
        34,
        40,
        44,
        50,
        54,
    ],
    direction="clockwise",
    left_text="45",
    position="center",
    padding=5.5,
)

trio.make_angle_spanner(
    score=score,
    voice="cello 1 voice",
    leaves=[
        56,
        57,
    ],
    direction="counterclockwise",
    left_text="-45",
    position="termination",
    padding=3.5,
)

# contrabass pitching/attachments

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        1,
        3,
        8,
        12,
        14,
        19,
        23,
        25,
        30,
        35,
        38,
        40,
        43,
        47,
        49,
        51,
        54,
        58,
        61,
        63,
        66,
        68,
        71,
        74,
        79,
        83,
        85,
        87,
        90,
        96,
        98,
        100,
        102,
        104,
        107,
        111,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        0,
        2,
        6,
        9,
        13,
        17,
        20,
        24,
        28,
        31,
        36,
        39,
        41,
        44,
        48,
        50,
        52,
        55,
        59,
        62,
        65,
        67,
        69,
        72,
        75,
        80,
        84,
        86,
        88,
        91,
        97,
        99,
        101,
        103,
        105,
        108,
        112,
    ],
    attachment=abjad.Clef("bass"),
)

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["contrabass 2 voice"],
    measures=[
        1,
        4,
        7,
    ],
    selector=trinton.pleaves(),
    strings="I and II",
    index=0,
)

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["contrabass 2 voice"],
    measures=[
        3,
        6,
        9,
    ],
    selector=trinton.pleaves(),
    strings="II and III",
    index=0,
)

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["contrabass 2 voice"],
    measures=[
        2,
        5,
        8,
    ],
    selector=trinton.pleaves(),
    strings="III and IV",
    index=0,
)

handler_I = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["II"],
        trio._open_strings_to_pitches["I"],
    ],
    forget=False,
)

handler_II = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["II"],
        trio._open_strings_to_pitches["III"],
    ],
    forget=False,
)

handler_III = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["III"],
        trio._open_strings_to_pitches["IV"],
    ],
    forget=False,
)

contrabass_1_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["contrabass 1 voice"])
)

I_measures = [
    contrabass_1_measures[0],
    contrabass_1_measures[3],
    contrabass_1_measures[6],
]

II_measures = [
    contrabass_1_measures[2],
    contrabass_1_measures[5],
    contrabass_1_measures[8],
]

III_measures = [
    contrabass_1_measures[1],
    contrabass_1_measures[4],
    contrabass_1_measures[7],
]

handler_I(I_measures[:])

handler_II(II_measures[:])

handler_III(III_measures[:])

contrabass_1_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["contrabass 1 voice"])
)

for measure, dynamic in zip(
    contrabass_1_measures[1:],
    [
        abjad.Dynamic("f"),
        abjad.Dynamic("p"),
        abjad.Dynamic("mf"),
        abjad.Dynamic("p"),
        abjad.Dynamic("f"),
        abjad.Dynamic("mp"),
    ],
):
    abjad.attach(dynamic, abjad.select.leaf(measure, 0))

abjad.attach(abjad.StartHairpin("<"), abjad.select.leaf(contrabass_1_measures[6], 0))

contrabass_2_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["contrabass 2 voice"])
)

for measure in [contrabass_2_measures[_] for _ in [0, 2, 3, 4, 6, 7, 8]]:
    for leaf in abjad.select.exclude(abjad.select.leaves(measure), [-1]):
        abjad.attach(abjad.Glissando(), leaf)

glissandi = []

for l in [
    list(range(34, 36)),
    list(range(38, 59)),
    list(range(73, 76)),
    list(range(79, 84)),
]:
    for leaf in l:
        glissandi.append(leaf)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=glissandi,
    attachment=abjad.Glissando(),
)

trinton.glissando(
    score=score,
    voice="contrabass 2 voice",
    start_gliss=[
        36,
        76,
    ],
    stop_gliss=[
        38,
        79,
    ],
)

trinton.write_slur(
    voice=score["contrabass 2 voice"],
    start_slur=[
        13,
        34,
        56,
        66,
        76,
        94,
    ],
    stop_slur=[
        16,
        38,
        59,
        68,
        79,
        95,
    ],
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        13,
        34,
        56,
        66,
        76,
        94,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.write_slur(
    voice=score["contrabass 1 voice"],
    start_slur=[
        0,
        4,
        6,
        8,
        10,
        12,
        14,
        16,
        18,
        20,
        22,
        24,
        26,
        28,
        30,
        32,
        36,
        38,
        40,
        42,
        44,
        46,
        50,
        52,
        54,
    ],
    stop_slur=[
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
        27,
        29,
        31,
        35,
        37,
        39,
        41,
        43,
        45,
        49,
        51,
        53,
        55,
    ],
)

trinton.attach(
    voice=score["contrabass 1 voice"],
    leaves=[
        0,
        4,
        6,
        8,
        10,
        12,
        14,
        16,
        18,
        20,
        22,
        24,
        26,
        28,
        30,
        32,
        36,
        38,
        40,
        42,
        44,
        46,
        50,
        52,
        54,
    ],
    attachment=abjad.Articulation(">"),
)

trio.make_angle_spanner(
    score=score,
    voice="contrabass 1 voice",
    leaves=[
        0,
    ],
    direction="clockwise",
    left_text="45",
    position="start",
    padding=5.5,
)

trio.make_angle_spanner(
    score=score,
    voice="contrabass 1 voice",
    leaves=[
        4,
        8,
        12,
        16,
        20,
        24,
        28,
        32,
        38,
        42,
        46,
        52,
    ],
    direction="counterclockwise",
    left_text="-45",
    position="center",
    padding=5.5,
)

trio.make_angle_spanner(
    score=score,
    voice="contrabass 1 voice",
    leaves=[
        6,
        10,
        14,
        18,
        22,
        26,
        30,
        36,
        40,
        44,
        50,
    ],
    direction="clockwise",
    left_text="45",
    position="center",
    padding=5.5,
)

trio.make_angle_spanner(
    score=score,
    voice="contrabass 1 voice",
    leaves=[
        54,
        55,
    ],
    direction="clockwise",
    left_text="45",
    position="termination",
    padding=3.5,
)

for voice in ["cello 1 voice", "contrabass 1 voice"]:
    trinton.transparent_accidentals(
        score=score,
        voice=voice,
        leaves=all,
    )

for voice in ["cello 2 voice", "contrabass 2 voice"]:
    for tuplet in abjad.select.tuplets(score[voice]):
        abjad.attach(abjad.StartPhrasingSlur(), tuplet[0])
        abjad.attach(abjad.StopPhrasingSlur(), tuplet[-1])
        abjad.attach(abjad.Articulation(">"), tuplet[0])
    for leaf in abjad.select.leaves(score[voice], pitched=True):
        for head in leaf.note_heads:
            abjad.tweak(head, r"\tweak style #'harmonic-mixed")

# fill empty staves with skips

for voice in [
    score["piano 1 voice"],
    score["piano 2 voice"],
    score["cello 1 voice"],
    score["cello 2 voice"],
    score["contrabass 1 voice"],
    score["contrabass 2 voice"],
]:
    trinton.fill_empty_staves_with_skips(voice=voice)

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/segments/05",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

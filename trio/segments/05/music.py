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
    abjad.select(score["cello 2 voice"]).tuplet(3)
).TupletNumber.text = abjad.Markup(r"\markup \italic { 6:5 }")

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
        abjad.select(score["contrabass 2 voice"]).tuplet(tuplet)
    ).TupletNumber.text = abjad.Markup(string)

# meter rewriting/beaming

trinton.rewrite_meter_by_voice(
    score=score,
    voice_indeces=[
        3,
        5,
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

trinton.annotate_leaves(score)

# global attachments

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[
        0,
    ],
    attachments=[abjad.MetronomeMark((1, 4), 69), trio.rehearsal_mark5],
)

trinton.attach(
    voice=score["Global Context"], leaves=[-1], attachment=abjad.BarLine("||")
)

trio.write_marginmarkups(score)

# piano pitching/attachments


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
    selector=baca.selectors.pleaves(),
    strings="I and II",
    index=0,
)

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["cello 2 voice"],
    measures=[1, 6, 9],
    selector=baca.selectors.pleaves(),
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
    selector=baca.selectors.pleaves(),
    strings="III and IV",
    index=0,
)


glissandi = []

for l in [
    list(range(0, 11)),
    list(range(12, 22)),
    list(range(23, 27)),
    [
        28,
    ],
    list(range(30, 33)),
    [
        35,
    ],
    list(range(38, 51)),
    list(range(52, 57)),
    list(range(59, 92)),
    list(range(93, 100)),
]:
    for leaf in l:
        glissandi.append(leaf)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=glissandi,
    attachment=abjad.Glissando(),
)

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

cello_1_measures = abjad.Selection(score["cello 1 voice"]).leaves().group_by_measure()

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

# contrabass pitching/attachments


for voice in ["cello 1 voice", "contrabass 1 voice"]:
    trinton.transparent_accidentals(
        score=score,
        voice=voice,
        leaves=all,
    )

# for voice in ["cello 2 voice", "contrabass 2 voice"]:
#     for leaf in abjad.select(score[voice]).leaves(pitched=True):
#         for head in leaf.note_heads:
#             abjad.tweak(head).style = r"#'harmonic-mixed"

# whiteout empty staves

# for voice in trio.all_voices:
#     trinton.whiteout_empty_staves(score=score, voice=voice, cutaway=True)

# extract parts

# trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/segments/05",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="05",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)

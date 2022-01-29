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
        (4, 2),
        (4, 2),
        (4, 2),
        (4, 2),
        (3, 2),
    ],
    score["Global Context"],
)

# piano

trio.cello_gliss(
    score=score,
    voice="piano 1 voice",
    durations=[
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
    ],
    seed=15,
    index=24,
    string="I",
    notation="duration_bracket",
)

trinton.append_rests(score=score, voice="piano 2 voice", rests=[abjad.Skip("r1..")])

for voice_name in ["piano 1 voice", "piano 2 voice"]:

    trinton.handwrite(
        score=score, voice=voice_name, durations=[(1, 4), (3, 2)], pitch_list=None
    )

    trio.harmonic_glissandi_rhythms(
        score=score,
        voices=[voice_name],
        durations=[(7, 16), (7, 16), (7, 16), (7, 16)],
        tuplets=trio.collapsing_tuplets_2,
        notation="duration_bracket",
    )

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[
        abjad.Skip("r1.."),
        abjad.Skip("r1.."),
    ],
)

trio.toccata_rhythms(
    score=score,
    voice="piano 1 voice",
    durations=[(7, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trio.cello_gliss(
    score=score,
    voice="piano 1 voice",
    durations=[
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
    ],
    seed=15,
    index=24,
    string="II",
    notation="duration_bracket",
)

for voice_name in ["piano 1 voice", "piano 2 voice"]:

    trinton.handwrite(
        score=score, voice=voice_name, durations=[(3, 4)], pitch_list=None
    )

for voice_name, leaf in zip(["piano 1 voice", "piano 2 voice"], [41, 1]):
    trinton.attach(voice=score[voice_name], leaves=[leaf], attachment=abjad.Tie())

# cello

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[
        (5, 16),
        (5, 16),
        (5, 16),
        (5, 16),
    ],
    tuplets=trio.collapsing_tuplets_1,
    notation="duration_bracket",
)

trio.toccata_rhythms(
    score=score,
    voice="cello 2 voice",
    durations=[(5, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trinton.handwrite(
    score=score, voice="cello 2 voice", durations=[(5, 4)], pitch_list=None
)

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
    ],
    seed=15,
    index=24,
    string="IV",
    notation="duration_bracket",
)

trinton.append_rests(
    score=score,
    voice="cello 1 voice",
    rests=[
        abjad.Rest("r2."),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
    ],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[
        (5, 16),
        (5, 16),
        (5, 16),
        (5, 16),
    ],
    tuplets=trio.collapsing_tuplets_3,
    notation="duration_bracket",
)

trio.toccata_rhythms(
    score=score,
    voice="cello 2 voice",
    durations=[(5, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trinton.handwrite(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 2),
        (3, 4),
    ],
    pitch_list=None,
)

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 4),
        (1, 4),
        (1, 4),
    ],
    seed=13,
    index=30,
    string="II",
    notation="duration_bracket",
)

trinton.append_rests(
    score=score, voice="cello 1 voice", rests=[abjad.Rest("r1.."), abjad.Rest("r1.")]
)

trinton.attach(voice=score["cello 2 voice"], leaves=[102], attachment=abjad.Tie())

# bass

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[(3, 4)],
    pitch_list=None,
)

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (3, 4),
    ],
    seed=13,
    index=29,
    string="II",
    notation="duration_bracket",
)

trinton.append_rests(score=score, voice="contrabass 1 voice", rests=[abjad.Rest("r1.")])

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
    ],
    tuplets=trio.collapsing_tuplets_2,
    notation="duration_bracket",
)

trio.toccata_rhythms(
    score=score,
    voice="contrabass 2 voice",
    durations=[(3, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[(3, 4)],
    pitch_list=None,
)

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (3, 4),
    ],
    seed=13,
    index=30,
    string="II",
    notation="duration_bracket",
)

trinton.append_rests(
    score=score,
    voice="contrabass 1 voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r1"), abjad.Rest("r2")],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
    ],
    tuplets=trio.collapsing_tuplets_1,
    notation="duration_bracket",
)

trio.toccata_rhythms(
    score=score,
    voice="contrabass 2 voice",
    durations=[(3, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[(3, 4)],
    pitch_list=None,
)

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (3, 4),
    ],
    seed=13,
    index=31,
    string="II",
    notation="duration_bracket",
)

trinton.append_rests(
    score=score,
    voice="contrabass 1 voice",
    rests=[
        abjad.Rest("r2."),
        abjad.Rest("r1."),
    ],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
    ],
    tuplets=trio.collapsing_tuplets_3,
    notation="duration_bracket",
)

trio.toccata_rhythms(
    score=score,
    voice="contrabass 2 voice",
    durations=[(3, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[(1, 2)],
    pitch_list=None,
)

trinton.append_rests(
    score=score,
    voice="contrabass 1 voice",
    rests=[
        abjad.Rest("r4"),
        abjad.Rest("r1"),
    ],
)

# annotate leaves

# trinton.annotate_leaves(score)

# margin markups and standard cleffing

trio.write_marginmarkups(score=score)


# global attachments

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[0],
    attachments=[abjad.MetronomeMark((1, 2), 65), trio.rehearsal_mark6],
)

trinton.attach(
    voice=score["Global Context"], leaves=[-1], attachment=abjad.BarLine("||")
)

# piano pitching/attachments

trio.pitch_cello_gliss_piano_by_measure(
    voice=score["piano 1 voice"],
    measures=[
        1,
        2,
        3,
        4,
        5,
    ],
    selector=trio.select_tuplets_by_annotation(trio.vib),
    string="I",
)

trio.pitch_toccata_by_measure(
    voice=score["piano 1 voice"],
    measures=[
        3,
    ],
    selector=trio.select_tuplets_by_annotation(trio.toccata),
    octave=4,
    seed=11,
    index=0,
    random_walk=False,
)

for voice_name in ["piano 1 voice", "piano 2 voice"]:
    trio.pitch_harmonic_gliss_piano(
        voice=score[voice_name],
        measures=[
            2,
            3,
        ],
        selector=trio.select_tuplets_by_annotation(trio.harmonic_gliss),
        string="IV",
    )

for voice, leaf, chord, partials in zip(
    [
        "piano 1 voice",
        "piano 2 voice",
        "piano 1 voice",
        "piano 2 voice",
    ],
    [
        41,
        1,
        150,
        39,
    ],
    [
        6,
        6,
        5,
        5,
    ],
    [
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
        ],
    ],
):
    trio.pitch_matter(
        score=score,
        voice=voice,
        leaves=[leaf],
        chord=chord,
        partials=partials,
        transpose=0,
        markup=False,
    )

for voice_name in ["piano 1 voice", "piano 2 voice"]:
    for tuplet in abjad.select(score[voice_name]).tuplets():

        for annotation in [trio.toccata, trio.vib]:
            if abjad.get.annotation(tuplet, annotation) is True:
                abjad.tweak(tuplet).direction = abjad.Up

    chords = abjad.select(score[voice_name]).chords()
    trinton.unmeasured_stem_tremolo(chords)
    chord_ties = chords.logical_ties()
    for tie in chord_ties:
        abjad.attach(abjad.Arpeggio(), tie[0])

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        38,
        81,
        85,
        97,
        107,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        78,
        83,
        94,
        102,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        1,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        0,
        41,
        43,
        77,
        109,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[
        26,
        42,
        61,
        97,
        134,
    ],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["piano 1 voice"], leaves=[150], attachment=abjad.Dynamic("p")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        149,
    ],
    attachment=abjad.StopHairpin(),
)

trio.double_octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="piano 1 voice",
        leaves=[
            78,
            79,
            80,
            83,
            84,
            94,
            95,
            96,
            102,
            103,
            104,
            105,
            106,
        ],
    )
)

trio.double_octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="piano 1 voice",
        leaves=[
            78,
            79,
            80,
            83,
            84,
            94,
            95,
            96,
            102,
            103,
            104,
            105,
            106,
        ],
    )
)

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        0,
        109,
    ],
    stop_ottava=[
        76,
        150,
    ],
    octave=1,
)

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        78,
        83,
        94,
        102,
    ],
    stop_ottava=[
        80,
        84,
        96,
        106,
    ],
    octave=-1,
)

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[
        43,
        81,
        85,
        97,
        107,
    ],
    stop_slur=[
        76,
        82,
        93,
        101,
        108,
    ],
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=[
        3,
    ],
    stop_slur=[
        36,
    ],
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        0,
        3,
        8,
        15,
        18,
        23,
        30,
        33,
        38,
        113,
        116,
        121,
        128,
        131,
        136,
        143,
        146,
    ],
    attachment=abjad.Articulation(">"),
)

marcato = []

for l in [
    list(range(78, 81)),
    list(range(83, 85)),
    list(range(94, 97)),
    list(range(102, 107)),
]:
    for n in l:
        marcato.append(n)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=marcato,
    attachment=abjad.Articulation("marcato"),
)

for tuplet in abjad.select(score["piano 2 voice"]).tuplets():
    if abjad.get.annotation(tuplet, trio.harmonic_gliss) is True:
        abjad.tweak(tuplet).direction = abjad.Down

for leaf in abjad.select(score["piano 2 voice"]).leaves():
    if isinstance(leaf, abjad.Skip):
        abjad.attach(
            abjad.LilyPondLiteral(
                r"\staff-line-count 1",
                format_slot="absolute_before",
            ),
            leaf,
        )
    else:
        abjad.attach(
            abjad.LilyPondLiteral(
                r"\staff-line-count 5",
                format_slot="absolute_before",
            ),
            leaf,
        )

# cello pitching/attachments

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["cello 2 voice"],
    measures=[
        1,
        3,
        4,
    ],
    selector=trio.select_tuplets_by_annotation(trio.harmonic_gliss),
    strings="III and IV",
    index=2,
)

trio.pitch_toccata_by_measure(
    voice=score["cello 2 voice"],
    measures=[
        1,
        2,
        4,
    ],
    selector=trio.select_tuplets_by_annotation(trio.toccata),
    octave=2,
    seed=12,
    index=45,
    random_walk=True,
)

for chord, partials, leaf, trans in zip(
    [
        5,
        6,
    ],
    [
        [2, 3],
        [3, 4],
    ],
    [
        36,
        102,
    ],
    [
        0,
        -12,
    ],
):

    trio.pitch_matter(
        score=score,
        voice="cello 2 voice",
        leaves=[leaf],
        chord=chord,
        partials=partials,
        transpose=trans,
        markup=True,
    )

handler = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["IV"],
        trio._open_strings_to_pitches["III"],
    ],
    forget=False,
)

handler(abjad.select(score["cello 1 voice"]).leaves(pitched=True))

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        1,
        3,
        6,
        10,
        36,
        72,
        75,
        77,
        102,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        2,
        4,
        7,
        11,
        71,
        73,
        76,
        78,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.ficta(
    score=score,
    voice="cello 2 voice",
    start_ficta=[
        0,
        38,
        104,
    ],
    stop_ficta=[
        11,
        77,
        118,
    ],
)

trio.finger_pressure(
    score=score,
    voice="cello 2 voice",
    half=[
        20,
        21,
        22,
        23,
        24,
        25,
        26,
        27,
        58,
        59,
        60,
        61,
        62,
        63,
        64,
        65,
        66,
        67,
        68,
        69,
        78,
        79,
        80,
        81,
        82,
        83,
        84,
        94,
        95,
        96,
        97,
        98,
        99,
        100,
        101,
        104,
        105,
        106,
        107,
        108,
        109,
    ],
    harm=[
        28,
        29,
        30,
        31,
        32,
        33,
        34,
        35,
    ],
)

for annotation, grouping in zip(
    [trio.harmonic_gliss, trio.vib],
    [
        [
            12,
            8,
        ],
        [
            32,
            15,
        ],
    ],
):
    annotation_selector = trio.select_tuplets_by_annotation(annotation)
    annotation_leaves = annotation_selector(
        abjad.Selection(score["cello 2 voice"])
    ).leaves(pitched=True)
    annotation_leaves_groups = evans.Sequence(annotation_leaves).grouper(grouping)
    for group in annotation_leaves_groups:
        for leaf in abjad.select(group).leaves().exclude([-1]):
            abjad.attach(abjad.Glissando(), leaf)

trinton.write_slur(
    voice=score["cello 2 voice"],
    start_slur=[
        38,
        41,
        46,
        53,
        56,
        61,
        68,
        105,
        110,
        117,
    ],
    stop_slur=[
        40,
        45,
        52,
        55,
        60,
        67,
        69,
        109,
        116,
        118,
    ],
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        38,
        41,
        46,
        53,
        56,
        61,
        68,
        105,
        110,
        117,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.write_slur(
    voice=score["cello 1 voice"],
    start_slur=[
        0,
        4,
        8,
        12,
        20,
        24,
        28,
        32,
    ],
    stop_slur=[
        3,
        7,
        11,
        15,
        23,
        27,
        31,
        35,
    ],
)

trinton.attach(
    voice=score["cello 1 voice"],
    leaves=[
        0,
        4,
        8,
        12,
        20,
        24,
        28,
        32,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.ottava(
    score=score,
    voice="cello 2 voice",
    start_ottava=[
        104,
    ],
    stop_ottava=[
        118,
    ],
    octave=1,
)

trinton.write_hooked_spanner(
    voice=score["cello 2 voice"],
    string=r"\markup { IV }",
    start_leaf=[38],
    stop_leaf=[69],
    padding=7.5,
)

trinton.write_hooked_spanner(
    voice=score["cello 2 voice"],
    string=r"\markup { II }",
    start_leaf=[104],
    stop_leaf=[118],
    padding=10.5,
)

trinton.write_text_span(
    voice=score["cello 2 voice"],
    begin_text=r"\markup \italic { XFB }",
    end_text=r"\markup \italic { XSB }",
    start_leaf=[
        12,
        78,
    ],
    stop_leaf=[
        21,
        87,
    ],
    padding=9.5,
)

trinton.write_text_span(
    voice=score["cello 2 voice"],
    begin_text=r"\markup \italic { XSB }",
    end_text=r"\markup \italic { XFB }",
    start_leaf=[
        27,
        92,
    ],
    stop_leaf=[
        33,
        99,
    ],
    padding=9.5,
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        36,
        102,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "NB" 1', format_slot="after"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        12,
        36,
        38,
        78,
        102,
        104,
    ],
    attachment=abjad.StartHairpin("o<", direction=abjad.Down),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        70,
    ],
    attachment=abjad.StartHairpin("o<", direction=abjad.Up),
)

trinton.attach_multiple(
    score=score,
    voice="cello 2 voice",
    leaves=[0],
    attachments=[
        abjad.Dynamic("fp", direction=abjad.Up),
        abjad.StartHairpin("<", direction=abjad.Up),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="cello 2 voice",
    leaves=[
        21,
        37,
        53,
        90,
        103,
        110,
    ],
    attachments=[
        abjad.Dynamic("f", direction=abjad.Down),
        abjad.StartHairpin(">o", direction=abjad.Down),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="cello 2 voice",
    leaves=[
        5,
        74,
    ],
    attachments=[
        abjad.Dynamic("f", direction=abjad.Up),
        abjad.StartHairpin(">o", direction=abjad.Up),
    ],
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        118,
    ],
    attachment=abjad.StopHairpin(),
)

# contrabass pitching/attachments

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["contrabass 2 voice"],
    measures=[
        1,
        2,
        3,
        4,
        5,
    ],
    selector=trio.select_tuplets_by_annotation(trio.harmonic_gliss),
    strings="I and II",
    index=4,
)

handler = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["I"],
        trio._open_strings_to_pitches["II"],
    ],
    forget=False,
)

handler(abjad.select(score["contrabass 1 voice"]).leaves(pitched=True))

trio.pitch_toccata_by_measure(
    voice=score["contrabass 2 voice"],
    measures=[
        1,
        2,
        3,
        4,
        5,
    ],
    selector=trio.select_tuplets_by_annotation(trio.toccata),
    octave=1,
    seed=9,
    index=42,
    random_walk=True,
)

trio.pitch_contrabass_glissandi_by_measure(
    voice=score["contrabass 2 voice"],
    measures=[
        1,
        2,
        3,
        4,
        5,
    ],
    selector=trio.select_tuplets_by_annotation(trio.vib),
    strings="III and IV",
)

for leaf, chord in zip(
    [
        0,
        56,
        89,
        120,
    ],
    [
        6,
        5,
        4,
        2,
    ],
):
    trio.pitch_matter(
        score=score,
        voice="contrabass 2 voice",
        leaves=[leaf],
        chord=chord,
        partials=[1],
        transpose=12,
        markup=True,
    )

toccata_selector = trio.select_tuplets_by_annotation(trio.toccata)

trio.octave_up(toccata_selector(abjad.Selection(score["contrabass 2 voice"]).leaves()))

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        7,
        10,
        14,
        16,
        18,
        21,
        23,
        25,
        28,
        32,
        34,
        36,
        39,
        56,
        64,
        66,
        68,
        71,
        89,
        97,
        99,
        103,
        120,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        8,
        11,
        15,
        17,
        19,
        22,
        24,
        26,
        29,
        33,
        35,
        37,
        40,
        57,
        65,
        67,
        69,
        72,
        90,
        98,
        100,
        104,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.ficta(
    score=score,
    voice="contrabass 2 voice",
    start_ficta=[
        6,
        61,
        95,
    ],
    stop_ficta=[
        39,
        72,
        103,
    ],
)

trio.finger_pressure(
    score=score,
    voice="contrabass 2 voice",
    half=[
        40,
        41,
        42,
        43,
        44,
        79,
        80,
        81,
        82,
        83,
        84,
        109,
        110,
        111,
        112,
        113,
        114,
    ],
    harm=[
        45,
        46,
        47,
        48,
        49,
        50,
        85,
        86,
        87,
        88,
        104,
        105,
        106,
        107,
        108,
    ],
)

trinton.write_slur(
    voice=score["contrabass 1 voice"],
    start_slur=[
        1,
        3,
        5,
        7,
        12,
        14,
        16,
        18,
        22,
        24,
        26,
        28,
    ],
    stop_slur=[
        2,
        4,
        6,
        8,
        13,
        15,
        17,
        19,
        23,
        25,
        27,
        29,
    ],
)

trinton.attach(
    voice=score["contrabass 1 voice"],
    leaves=[
        1,
        3,
        5,
        7,
        12,
        14,
        16,
        18,
        22,
        24,
        26,
        28,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.write_text_span(
    voice=score["contrabass 2 voice"],
    begin_text=r"\markup \italic { XFB }",
    end_text=r"\markup \italic { XSB }",
    start_leaf=[
        40,
        73,
        104,
    ],
    stop_leaf=[
        45,
        78,
        109,
    ],
    padding=7.5,
)

trinton.write_text_span(
    voice=score["contrabass 2 voice"],
    begin_text=r"\markup \italic { XSB }",
    end_text=r"\markup \italic { XFB }",
    start_leaf=[
        50,
        83,
        113,
    ],
    stop_leaf=[
        54,
        86,
        117,
    ],
    padding=7.5,
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        56,
        89,
        120,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "NB" 1', format_slot="after"),
)

for annotation, grouping in zip(
    [trio.harmonic_gliss, trio.vib],
    [
        [
            34,
            12,
            9,
        ],
        [
            5,
            4,
            5,
        ],
    ],
):
    annotation_selector = trio.select_tuplets_by_annotation(annotation)
    annotation_leaves = annotation_selector(
        abjad.Selection(score["contrabass 2 voice"])
    ).leaves(pitched=True)
    annotation_leaves_groups = evans.Sequence(annotation_leaves).grouper(grouping)
    for group in annotation_leaves_groups:
        for leaf in abjad.select(group).leaves().exclude([-1]):
            abjad.attach(abjad.Glissando(), leaf)

for tuplet in abjad.select(score["contrabass 2 voice"]).tuplets():
    if abjad.get.annotation(tuplet, trio.vib) is True:
        abjad.attach(abjad.StartPhrasingSlur(), tuplet[0])
        abjad.attach(abjad.StopPhrasingSlur(), tuplet[-1])

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        0,
        56,
        89,
        120,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        1,
        40,
        57,
        73,
        90,
        104,
    ],
    attachment=abjad.StartHairpin("o<", direction=abjad.Down),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        6,
        61,
        95,
    ],
    attachment=abjad.StartHairpin("o<", direction=abjad.Up),
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        3,
        47,
        59,
        81,
        92,
        112,
    ],
    attachments=[
        abjad.Dynamic("f", direction=abjad.Down),
        abjad.StartHairpin(">o", direction=abjad.Down),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        23,
        66,
        99,
    ],
    attachments=[
        abjad.Dynamic("f", direction=abjad.Up),
        abjad.StartHairpin(">o", direction=abjad.Up),
    ],
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[],
    attachment=abjad.StopHairpin(),
)

for voice_name in ["cello 1 voice", "contrabass 1 voice"]:
    trinton.transparent_accidentals(score=score, voice=voice_name, leaves=all)

    for leaf in abjad.Selection(score[voice_name]).leaves():
        if isinstance(leaf, abjad.Rest):
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\staff-line-count 1",
                    format_slot="absolute_before",
                ),
                leaf,
            )
        else:
            abjad.attach(
                abjad.LilyPondLiteral(
                    r"\staff-line-count 4",
                    format_slot="absolute_before",
                ),
                leaf,
            )

    transparent_fp = abjad.Dynamic("fp")

    abjad.tweak(transparent_fp).transparent = True

    trinton.attach(voice=score[voice_name], leaves=[0], attachment=transparent_fp)

for voice_name in ["cello 2 voice", "contrabass 2 voice"]:
    for tuplet in abjad.Selection(score[voice_name]).tuplets():
        if abjad.get.annotation(tuplet, trio.harmonic_gliss) is True:
            for chord in tuplet:
                for head in chord.note_heads:
                    abjad.tweak(head).style = r"#'harmonic-mixed"
            abjad.attach(abjad.StartPhrasingSlur(), tuplet[0])
            abjad.attach(abjad.Articulation(">"), tuplet[0])
            abjad.attach(abjad.StopPhrasingSlur(), tuplet[-1])
        if abjad.get.annotation(tuplet, trio.toccata) is True:
            abjad.attach(abjad.StartPhrasingSlur(), tuplet[0])
            abjad.attach(abjad.StopPhrasingSlur(), tuplet[-1])

for voice_name in [
    "piano 1 voice",
    "piano 2 voice",
    "cello 2 voice",
    "contrabass 2 voice",
]:
    for tuplet in abjad.Selection(score[voice_name]).tuplets():
        trio.noteheads_only(tuplet)

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/segments/06",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)

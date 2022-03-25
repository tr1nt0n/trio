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
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (3, 4),
    ],
    score["Global Context"],
)

# piano

for voice_name in ["piano 1 voice", "piano 2 voice"]:

    trio.harmonic_glissandi_rhythms(
        score=score,
        voices=[voice_name],
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
    voice="piano 1 voice",
    durations=[(3, 4)],
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
    ],
    seed=8,
    index=41,
    string="I",
    notation="duration_bracket",
)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[
        abjad.Skip("r2."),
        abjad.Skip("r2."),
    ],
)

for voice_name in ["piano 1 voice", "piano 2 voice"]:

    trinton.handwrite(
        score=score, voice=voice_name, durations=[(3, 4)], pitch_list=None
    )

    trio.harmonic_glissandi_rhythms(
        score=score,
        voices=[voice_name],
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
    voice="piano 1 voice",
    durations=[(3, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[
        abjad.Skip("r2."),
    ],
)

# cello

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
    ],
    seed=12,
    index=41,
    string="II",
    notation="duration_bracket",
)

trinton.append_rests(
    score=score,
    voice="cello 1 voice",
    rests=[
        abjad.Skip("r1"),
    ],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[
        (7, 16),
        (7, 16),
        (7, 16),
        (7, 16),
    ],
    tuplets=trio.collapsing_tuplets_1,
    notation="duration_bracket",
)

trio.toccata_rhythms(
    score=score,
    voice="cello 2 voice",
    durations=[(7, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trinton.append_rests(
    score=score,
    voice="cello 1 voice",
    rests=[
        abjad.Skip("r4"),
        abjad.Skip("r1."),
    ],
)

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
        (5, 4),
    ],
    seed=19,
    index=25,
    string="II",
    notation="duration_bracket",
)

trinton.append_rests(
    score=score, voice="contrabass 1 voice", rests=[abjad.Skip("r1."), abjad.Skip("r2")]
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
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
    voice="contrabass 2 voice",
    durations=[(5, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trinton.append_rests(
    score=score, voice="contrabass 1 voice", rests=[abjad.Skip("r4"), abjad.Skip("r1")]
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
    attachments=[abjad.MetronomeMark((1, 4), 130), trio.rehearsal_mark9],
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
        6,
    ],
    selector=trio.select_tuplets_by_annotation(trio.vib),
    string="II",
)

trio.pitch_toccata_by_measure(
    voice=score["piano 1 voice"],
    measures=[
        1,
        2,
        3,
        4,
        5,
        6,
    ],
    selector=trio.select_tuplets_by_annotation(trio.toccata),
    octave=2,
    seed=12,
    index=0,
    random_walk=False,
)

for voice_name in ["piano 1 voice", "piano 2 voice"]:
    trio.pitch_harmonic_gliss_piano(
        voice=score[voice_name],
        measures=[
            1,
            2,
            3,
            4,
            5,
            6,
        ],
        selector=trio.select_tuplets_by_annotation(trio.harmonic_gliss),
        string="III",
    )

for voice, leaf, chord, partials in zip(
    [
        "piano 1 voice",
        "piano 2 voice",
        "piano 1 voice",
        "piano 2 voice",
    ],
    [
        44,
        14,
    ],
    [
        4,
        4,
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

trio.double_octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="piano 1 voice",
        leaves=[
            15,
            16,
            18,
            19,
            20,
            21,
            22,
            84,
            85,
            86,
            91,
            92,
            93,
            94,
        ],
    )
)

trio.double_octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="piano 1 voice",
        leaves=[
            15,
            16,
            18,
            19,
            20,
            21,
            22,
            84,
            85,
            86,
            91,
            92,
            93,
            94,
        ],
    )
)

trio.octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="piano 1 voice",
        leaves=[
            12,
            13,
            14,
            17,
            23,
            24,
            25,
            26,
            27,
            79,
            80,
            81,
            82,
            83,
            87,
            88,
            89,
            90,
            91,
            92,
            93,
            94,
        ],
    )
)

for voice_name in ["piano 1 voice", "piano 2 voice"]:
    for tuplet in abjad.select.tuplets(score[voice_name]):
        for annotation in [trio.toccata, trio.vib]:
            if abjad.get.annotation(tuplet, annotation) is True:
                abjad.tweak(tuplet).direction = abjad.UP

    chords = abjad.select.chords(score[voice_name])
    trinton.unmeasured_stem_tremolo(chords)
    chord_ties = abjad.select.logical_ties(chords)
    for tie in chord_ties:
        abjad.attach(abjad.Arpeggio(), tie[0])

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        15,
        18,
        28,
        84,
        91,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        12,
        17,
        23,
        79,
        87,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        14,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        15,
    ],
    attachment=abjad.Clef("bass"),
)


trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        0,
        28,
        91,
    ],
    stop_ottava=[
        11,
        78,
        94,
    ],
    octave=1,
)

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        15,
        18,
        84,
    ],
    stop_ottava=[
        16,
        22,
        86,
    ],
    octave=2,
)

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[
        0,
        15,
        18,
        45,
        84,
        91,
    ],
    stop_slur=[
        11,
        16,
        22,
        78,
        86,
        94,
    ],
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=[
        0,
        15,
    ],
    stop_slur=[
        11,
        48,
    ],
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        29,
        36,
        39,
    ],
    attachment=abjad.Articulation(">"),
)

for tuplet in abjad.select.tuplets(score["piano 2 voice"]):
    if abjad.get.annotation(tuplet, trio.harmonic_gliss) is True:
        abjad.tweak(tuplet).direction = abjad.DOWN

toccata_selector = trio.select_tuplets_by_annotation(trio.toccata)

toccata_tuplets = toccata_selector(abjad.select.leaves(score["piano 1 voice"]))

for leaf in toccata_tuplets:
    if leaf.written_pitch.number < 0:
        abjad.attach(abjad.Articulation("marcato"), leaf)

abjad.tweak(abjad.select.tuplet(score["piano 2 voice"], 6)).direction = abjad.DOWN

# cello pitching/attachments

trio.pitch_harmonic_glissandi_by_measure(
    voice=score["cello 2 voice"],
    measures=[
        1,
        2,
        3,
        4,
        5,
        6,
    ],
    selector=trio.select_tuplets_by_annotation(trio.harmonic_gliss),
    strings="II and III",
    index=5,
)

trio.pitch_toccata_by_measure(
    voice=score["cello 2 voice"],
    measures=[
        1,
        2,
        3,
        4,
        5,
        6,
    ],
    selector=trio.select_tuplets_by_annotation(trio.toccata),
    octave=3,
    seed=16,
    index=31,
    random_walk=True,
)

handler = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["II"],
        trio._open_strings_to_pitches["III"],
    ],
    forget=False,
)

handler(abjad.select.leaves(score["cello 1 voice"], pitched=True))

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        0,
        26,
        28,
        30,
        33,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        23,
        27,
        29,
        31,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.ficta(
    score=score,
    voice="cello 2 voice",
    start_ficta=[
        0,
    ],
    stop_ficta=[
        33,
    ],
)

trio.finger_pressure(
    score=score,
    voice="cello 2 voice",
    half=[
        14,
        15,
        16,
        17,
        18,
        19,
        20,
        21,
        34,
        35,
        36,
        37,
        38,
        39,
        40,
        41,
        42,
        50,
        51,
        52,
        53,
        54,
        55,
        56,
        57,
        58,
    ],
    harm=[
        43,
        44,
        45,
        46,
        47,
        48,
        49,
    ],
)

for annotation in [trio.harmonic_gliss, trio.vib]:
    annotation_selector = trio.select_tuplets_by_annotation(annotation)
    annotation_leaves = (
        abjad.select.exclude(annotation_selector(abjad.select.leaves(score["cello 2 voice"], pitched=True)), [-1])
    )
    for leaf in annotation_leaves:
        abjad.attach(abjad.Glissando(), leaf)

trinton.write_slur(
    voice=score["cello 2 voice"],
    start_slur=[
        1,
        6,
        13,
        16,
    ],
    stop_slur=[
        5,
        12,
        15,
        20,
    ],
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        1,
        6,
        13,
        16,
        21,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.write_slur(
    voice=score["cello 1 voice"],
    start_slur=[
        1,
        3,
        5,
        7,
    ],
    stop_slur=[
        2,
        4,
        6,
        8,
    ],
)

trinton.attach(
    voice=score["cello 1 voice"],
    leaves=[
        1,
        3,
        5,
        7,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.ottava(
    score=score,
    voice="cello 2 voice",
    start_ottava=[
        0,
    ],
    stop_ottava=[
        21,
    ],
    octave=1,
)

trinton.write_hooked_spanner(
    voice=score["cello 2 voice"],
    string=r"\markup { II }",
    start_leaf=[0],
    stop_leaf=[21],
    padding=10.5,
)

trinton.write_text_span(
    voice=score["cello 2 voice"],
    begin_text=r"\markup \italic { XFB }",
    end_text=r"\markup \italic { XSB }",
    start_leaf=[
        34,
    ],
    stop_leaf=[
        44,
    ],
    padding=9.5,
)

trinton.write_text_span(
    voice=score["cello 2 voice"],
    begin_text=r"\markup \italic { XSB }",
    end_text=r"\markup \italic { XFB }",
    start_leaf=[
        51,
    ],
    stop_leaf=[
        63,
    ],
    padding=9.5,
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
        6,
    ],
    selector=trio.select_tuplets_by_annotation(trio.harmonic_gliss),
    strings="III and IV",
    index=4,
)

handler = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["IV"],
        trio._open_strings_to_pitches["III"],
    ],
    forget=False,
)

handler(abjad.select.leaves(score["contrabass 1 voice"], pitched=True))

trio.pitch_toccata_by_measure(
    voice=score["contrabass 2 voice"],
    measures=[
        1,
        2,
        3,
        4,
        5,
        6,
    ],
    selector=trio.select_tuplets_by_annotation(trio.toccata),
    octave=0,
    seed=17,
    index=23,
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
        6,
    ],
    selector=trio.select_tuplets_by_annotation(trio.vib),
    strings="I and II",
)

trio.pitch_matter(
    score=score,
    voice="contrabass 2 voice",
    leaves=[0],
    chord=2,
    partials=[1],
    transpose=12,
    markup=True,
)

toccata_selector = trio.select_tuplets_by_annotation(trio.toccata)

trio.double_octave_up(
    toccata_selector(abjad.select.leaves(score["contrabass 2 voice"]))
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        0,
        10,
        14,
        16,
        18,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        1,
        11,
        15,
        17,
        19,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.ficta(
    score=score,
    voice="contrabass 2 voice",
    start_ficta=[
        8,
    ],
    stop_ficta=[
        19,
    ],
)

trio.finger_pressure(
    score=score,
    voice="contrabass 2 voice",
    half=[
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
    harm=[],
)

trinton.write_slur(
    voice=score["contrabass 1 voice"],
    start_slur=[
        2,
        6,
        10,
        14,
    ],
    stop_slur=[
        5,
        9,
        13,
        17,
    ],
)

trinton.attach(
    voice=score["contrabass 1 voice"],
    leaves=[
        2,
        6,
        10,
        14,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.write_text_span(
    voice=score["contrabass 2 voice"],
    begin_text=r"\markup \italic { XFB }",
    end_text=r"\markup \italic { XSB }",
    start_leaf=[
        20,
    ],
    stop_leaf=[
        29,
    ],
    padding=7.5,
)

trinton.write_text_span(
    voice=score["contrabass 2 voice"],
    begin_text=r"\markup \italic { XSB }",
    end_text=r"\markup \italic { XFB }",
    start_leaf=[
        35,
    ],
    stop_leaf=[
        41,
    ],
    padding=7.5,
)

for annotation in [trio.harmonic_gliss, trio.vib]:
    annotation_selector = trio.select_tuplets_by_annotation(annotation)
    annotation_leaves = (
        abjad.select.exclude(annotation_selector(abjad.select.leaves(score["contrabass 2 voice"], pitched=True)), [-1])
    )
    for leaf in annotation_leaves:
        abjad.attach(abjad.Glissando(), leaf)

for voice_name in ["cello 1 voice", "contrabass 1 voice"]:
    trinton.transparent_accidentals(score=score, voice=voice_name, leaves=all)

for voice_name in ["cello 2 voice", "contrabass 2 voice"]:
    for tuplet in abjad.select.tuplets(score[voice_name]):
        if abjad.get.annotation(tuplet, trio.harmonic_gliss) is True:
            for chord in tuplet:
                for head in chord.note_heads:
                    abjad.tweak(head).style = r"#'harmonic-mixed"
            abjad.attach(abjad.StartPhrasingSlur(), tuplet[0])
            abjad.attach(abjad.Articulation(">"), tuplet[0])
            abjad.attach(abjad.StopPhrasingSlur(), tuplet[-1])
            abjad.tweak(tuplet).direction = abjad.DOWN
        if abjad.get.annotation(tuplet, trio.toccata) is True:
            trinton.dashed_slur(start_selection=tuplet[0], stop_selection=tuplet[-1])

for tuplet in abjad.select.tuplets(score["contrabass 2 voice"]):
    if abjad.get.annotation(tuplet, trio.vib) is True:
        abjad.attach(abjad.StartPhrasingSlur(), tuplet[0])
        abjad.attach(abjad.Articulation(">"), tuplet[0])
        abjad.attach(abjad.StopPhrasingSlur(), tuplet[-1])

for voice_name in [
    "piano 1 voice",
    "piano 2 voice",
    "cello 2 voice",
    "contrabass 2 voice",
]:
    for tuplet in abjad.select.tuplets(score[voice_name]):
        trio.noteheads_only(tuplet)

for voice_name in [
    "piano 1 voice",
    "cello 1 voice",
    "contrabass 1 voice",
]:
    trinton.attach_multiple(
        score=score,
        voice=voice_name,
        leaves=[0],
        attachments=[abjad.Dynamic("mp"), abjad.StartHairpin("<")],
    )

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
    segment_path="/Users/trintonprater/scores/trio/trio/segments/07",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="07",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily",
    ],
)

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

trinton.annotate_leaves(score)

# margin markups and standard cleffing

trio.write_marginmarkups(score=score)


# global attachments

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[0],
    attachments=[abjad.MetronomeMark((1, 2), 65), trio.rehearsal_mark6],
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
        trio.noteheads_only(tuplet)

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


# contrabass pitching/attachments


# whiteout empty staves

# for voice in trio.all_voices:
#     trinton.whiteout_empty_staves(score=score, voice=voice, cutaway=True)

# extract parts

# trinton.extract_parts(score=score)

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

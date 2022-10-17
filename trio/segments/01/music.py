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
        (2, 4),
        (2, 6),
        (1, 4),
    ],
    score["Global Context"],
)

# piano

trio.cello_gliss(
    score=score,
    voice="piano 1 voice",
    durations=[(1, 4)],
    seed=3,
    index=25,
    string="I",
    notation="tuplet",
)

trinton.handwrite(
    score=score, voice="piano 1 voice", durations=[(1, 4)], pitch_list=None
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["piano 1 voice"],
    durations=[(2, 6)],
    tuplets=trio.collapsing_tuplets_2,
    notation="tuplet",
)

trio.cello_gliss(
    score=score,
    voice="piano 1 voice",
    durations=[(1, 4)],
    seed=3,
    index=26,
    string="I",
    notation="tuplet",
)

trinton.append_rests(score=score, voice="piano 2 voice", rests=[abjad.Skip((1, 4))])

trinton.handwrite(
    score=score, voice="piano 2 voice", durations=[(1, 4)], pitch_list=None
)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[abjad.Skip((1, 1), multiplier=abjad.Multiplier((2, 6))), abjad.Skip((1, 4))],
)

# cello

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=[
        "cello 2 voice",
    ],
    durations=[(1, 4)],
    tuplets=trio.collapsing_tuplets_1,
    notation="tuplet",
)

trio.toccata_rhythms(
    score=score,
    voice="cello 2 voice",
    durations=[(1, 4)],
    division=32,
    extra_counts=[1],
    notation="tuplet",
)

trinton.handwrite(
    score=score, voice="cello 2 voice", durations=[(1, 6), (1, 6)], pitch_list=None
)

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[(1, 4)],
    seed=3,
    index=27,
    string="I",
    notation="tuplet",
)

trinton.append_rests(
    score=score,
    voice="cello 1 voice",
    rests=[
        abjad.Rest("r2"),
        abjad.Rest((1, 1), multiplier=abjad.Multiplier((2, 6))),
        abjad.Rest("r4"),
    ],
)

# bass

trinton.handwrite(
    score=score, voice="contrabass 2 voice", durations=[(1, 4)], pitch_list=None
)

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[(1, 4)],
    seed=3,
    index=37,
    string="I",
    notation="tuplet",
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=[
        "contrabass 2 voice",
    ],
    durations=[(2, 6)],
    tuplets=[trio.collapsing_tuplets_3[4]],
    notation="tuplet",
)

trio.toccata_rhythms(
    score=score,
    voice="contrabass 2 voice",
    durations=[(1, 4)],
    division=32,
    extra_counts=[2],
    notation="tuplet",
)

trinton.append_rests(score=score, voice="contrabass 1 voice", rests=[abjad.Rest("r2")])

trinton.handwrite(
    score=score,
    voice="contrabass 1 voice",
    durations=[
        (1, 6),
        (1, 6),
    ],
    pitch_list=[trio._open_strings_to_pitches["III"]],
)

trinton.append_rests(score=score, voice="contrabass 1 voice", rests=[abjad.Rest("r4")])

# beaming

# trinton.rewrite_meter(score)
trinton.beam_score(score)
# trinton.annotate_leaves(score)

# margin markups and standard cleffing

trio.write_startmarkups(score=score)
trio.write_marginmarkups(score=score)
trio.standard_cleffing(score=score)

# global attachments

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[0],
    attachments=[
        abjad.MetronomeMark((1, 4), 60),
        trio.rehearsal_mark1,
    ],
)

trinton.attach(
    voice=score["Global Context"], leaves=[-1], attachment=abjad.BarLine("||")
)

# piano pitching/attachments

handler = evans.PitchHandler(
    pitch_list=trinton.transpose(
        l=[trio.end_row[0]],
        m=13,
    ),
    forget=False,
)

handler(
    trinton.make_leaf_selection(
        score=score, voice="piano 1 voice", leaves=list(range(0, 5))
    )
)

handler = evans.PitchHandler(
    pitch_list=[
        trinton.transpose(
            l=[
                trio.end_row[1],
                trio.end_row[2],
                trio.end_row[3],
                trio.end_row[4],
            ],
            m=-23,
        ),
    ],
    forget=False,
)

handler(abjad.select.leaf(score["piano 1 voice"], 5))

handler = evans.PitchHandler(
    pitch_list=[
        trinton.transpose(
            l=[
                trio.end_row[5],
                trio.end_row[6],
                trio.end_row[7],
                trio.end_row[8],
            ],
            m=-35,
        ),
    ],
    forget=False,
)

handler(abjad.select.leaf(score["piano 2 voice"], 1))

handler = evans.PitchHandler(
    pitch_list=trinton.rotated_sequence(
        pitch_list=trinton.transpose(
            l=trio.end_row,
            m=13,
        ),
        start_index=9,
    ),
    forget=False,
)

handler(
    trinton.make_leaf_selection(
        score=score,
        voice="piano 1 voice",
        leaves=[
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
        ],
    )
)

handler = evans.PitchHandler(
    pitch_list=trinton.transpose(
        l=[trio.end_row[10]],
        m=13,
    ),
    forget=False,
)

handler(
    trinton.make_leaf_selection(
        score=score, voice="piano 1 voice", leaves=list(range(19, 23))
    )
)

trio.double_octave_up(
    trinton.make_leaf_selection(
        score=score, voice="piano 1 voice", leaves=list(range(6, 13))
    )
)

trio.double_octave_down(
    trinton.make_leaf_selection(
        score=score, voice="piano 1 voice", leaves=list(range(13, 19))
    )
)

trio.octave_down(
    trinton.make_leaf_selection(
        score=score, voice="piano 1 voice", leaves=list(range(13, 19))
    )
)

trio.octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="piano 1 voice",
        leaves=[
            14,
            15,
            17,
        ],
    )
)


for leaf, attachment in zip([1, 3], [abjad.Clef("bass"), abjad.Clef("treble")]):
    trinton.attach(voice=score["piano 2 voice"], leaves=[leaf], attachment=attachment)

for leaf, attachment in zip([5, 6], [abjad.Clef("bass"), abjad.Clef("treble")]):
    trinton.attach(voice=score["piano 1 voice"], leaves=[leaf], attachment=attachment)

trio.change_staff(
    score=score,
    voice="piano 1 voice",
    lh=[
        1,
        3,
        13,
        20,
        22,
    ],
    rh=[
        2,
        4,
        5,
        19,
        21,
    ],
)

for voice, leaf in zip(
    ["piano 1 voice", "piano 2 voice"],
    [
        5,
        1,
    ],
):
    trinton.ottava(
        score=score, voice=voice, start_ottava=[leaf], stop_ottava=[leaf], octave=-1
    )

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        6,
    ],
    stop_ottava=[
        12,
    ],
    octave=2,
)

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[
        6,
        13,
    ],
    attachments=[abjad.Dynamic("ffff"), abjad.Articulation("marcato")],
)

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[0, 19],
    attachments=[abjad.Dynamic("fp"), abjad.Articulation("marcato")],
)

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[5],
    attachments=[abjad.Dynamic("ffff"), abjad.StartHairpin("|>o")],
)

for voice, leaf in zip(["piano 1 voice", "piano 2 voice"], [5, 1]):

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[leaf],
        attachments=[abjad.Articulation("marcato"), abjad.Arpeggio()],
    )

trinton.unmeasured_stem_tremolo(
    [
        abjad.select.leaf(score["piano 1 voice"], 5),
        abjad.select.leaf(score["piano 2 voice"], 1),
    ]
)

trinton.attach(
    voice=score["piano 1 voice"], leaves=[8, 15], attachment=abjad.Dynamic("ff")
)

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[
        6,
        13,
    ],
    stop_slur=[
        12,
        18,
    ],
)

# cello pitching/attachments

for voice in ["cello 1 voice", "contrabass 1 voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[0],
        attachment=abjad.LilyPondLiteral(
            r"\staff-line-count 4",
            "absolute_before",
        ),
    )

handler = evans.PitchHandler(
    pitch_list=trinton.rotated_sequence(
        pitch_list=trinton.transpose(
            l=trio.end_row,
            m=-14,
        ),
        start_index=3,
    )
)

handler(abjad.select.leaves(score["cello 2 voice"], pitched=True))

trio.octave_down(
    trinton.make_leaf_selection(
        score=score, voice="cello 2 voice", leaves=[1, 2, 7, 10]
    )
)

trio.octave_up(
    trinton.make_leaf_selection(score=score, voice="cello 2 voice", leaves=[4, 16])
)

trio.double_octave_up(
    trinton.make_leaf_selection(
        score=score, voice="cello 2 voice", leaves=list(range(13, 18))
    )
)

trinton.attach(
    voice=score["cello 2 voice"], leaves=[13], attachment=abjad.Clef("treble")
)

for voice, half, harm in zip(
    ["cello 2 voice", "contrabass 2 voice"],
    [
        [
            4,
            5,
            6,
            7,
            13,
            14,
            15,
            16,
            17,
        ],
        [
            1,
            2,
            3,
            4,
            5,
            6,
            7,
            14,
            15,
            16,
            17,
        ],
    ],
    [
        [
            0,
            1,
            8,
            9,
            10,
        ],
        [
            8,
            9,
            10,
            18,
            19,
            20,
        ],
    ],
):

    trio.finger_pressure(
        score=score,
        voice=voice,
        half=half,
        harm=harm,
    )

for tuplet in abjad.select.tuplets(score["cello 2 voice"]):
    abjad.attach(abjad.Articulation("marcato"), tuplet[0])

for tuplet in [abjad.select.tuplet(score["cello 2 voice"], _) for _ in [0, 4]]:
    abjad.attach(abjad.StartPhrasingSlur(), tuplet[0])
    abjad.attach(abjad.StopPhrasingSlur(), tuplet[-1])

dashed_tuplet = abjad.select.tuplet(score["cello 2 voice"], 1)
trinton.dashed_slur(start_selection=dashed_tuplet[0], stop_selection=dashed_tuplet[-1])

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        0,
        13,
        14,
        15,
        16,
    ],
    attachment=abjad.Glissando(),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        2,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "XFB" 1', "after"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        6,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "XSB" 1', "after"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        11,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "NB" 1', "after"),
)

trinton.attach_multiple(
    score=score,
    voice="cello 2 voice",
    leaves=[
        0,
        2,
        11,
        12,
        13,
    ],
    attachments=[
        abjad.Dynamic("fff"),
    ],
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        0,
        11,
        12,
    ],
    attachment=abjad.StartHairpin("|>o"),
)

trinton.attach(
    voice=score["cello 2 voice"], leaves=[4, 14], attachment=abjad.Dynamic("ff")
)

# contrabass pitching/attachments

handler = evans.PitchHandler(
    pitch_list=trinton.transpose(
        l=trinton.rotated_sequence(
            pitch_list=trio.end_row,
            start_index=7,
        ),
        m=-15,
    ),
    forget=False,
)

handler(abjad.select.leaves(score["contrabass 2 voice"], pitched=True))

trio.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="contrabass 2 voice",
        leaves=[
            5,
            7,
            12,
        ],
    )
)

trio.octave_down(
    trinton.make_leaf_selection(score=score, voice="contrabass 2 voice", leaves=[18])
)

for voice, half, harm in zip(
    ["cello 2 voice", "contrabass 2 voice"],
    [
        [
            4,
            5,
            6,
            7,
            13,
            14,
            15,
            16,
            17,
        ],
        [
            1,
            2,
            3,
            4,
            5,
            6,
            7,
            14,
            15,
            16,
            17,
        ],
    ],
    [
        [
            0,
            1,
            8,
            9,
            10,
        ],
        [
            8,
            9,
            10,
            18,
            19,
            20,
        ],
    ],
):

    trio.finger_pressure(
        score=score,
        voice=voice,
        half=half,
        harm=harm,
    )

for tuplet in abjad.select.exclude(
    abjad.select.tuplets(score["contrabass 2 voice"]), [-1]
):
    abjad.attach(abjad.StartPhrasingSlur(), tuplet[0])
    abjad.attach(abjad.StopPhrasingSlur(), tuplet[-1])

dashed_tuplet = abjad.select.tuplet(score["contrabass 2 voice"], -1)
trinton.dashed_slur(start_selection=dashed_tuplet[0], stop_selection=dashed_tuplet[-1])

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        1,
        2,
        3,
        4,
        5,
        6,
        8,
        9,
    ],
    attachment=abjad.Glissando(),
)

trinton.ficta(
    score=score,
    voice="contrabass 2 voice",
    start_ficta=[
        1,
    ],
    stop_ficta=[
        7,
    ],
)

for leaf, attachment in zip(
    [11, 16],
    [
        abjad.LilyPondLiteral(r'\boxed-markup "XSB" 1', "after"),
        abjad.LilyPondLiteral(r'\boxed-markup "XFB" 1', "after"),
    ],
):
    trinton.attach(
        voice=score["contrabass 2 voice"], leaves=[leaf], attachment=attachment
    )

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        0,
        1,
        11,
    ],
    attachments=[
        abjad.Dynamic("ffff"),
        abjad.StartHairpin("|>o"),
        abjad.Articulation("marcato"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 1 voice",
    leaves=[
        1,
        2,
    ],
    attachments=[
        abjad.Dynamic("ffff"),
        abjad.StartHairpin("|>o"),
        abjad.Articulation("marcato"),
    ],
)

for voice, leaf in zip(
    [
        "contrabass 1 voice",
        "contrabass 2 voice",
        "contrabass 2 voice",
    ],
    [3, 7, 20],
):
    trinton.attach(voice=score[voice], leaves=[leaf], attachment=abjad.StopHairpin())

trinton.transparent_accidentals(score=score, voice="contrabass 1 voice", leaves=all)

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
    segment_path="/Users/trintonprater/scores/trio/trio/segments/01",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="01",
    includes=[
        "../../build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

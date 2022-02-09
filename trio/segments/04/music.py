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
        (12, 8),
        (2, 8),
        (11, 8),
        (3, 16),
        (9, 8),
        (1, 8),
        (8, 8),
        (3, 8),
        (12, 8),
        (11, 8),
        (9, 8),
        (8, 8),
        (7, 8),
        (2, 8),
        (3, 4),
    ],
    score["Global Context"],
)

# piano

trio.toccata_rhythms(
    score=score,
    voice="piano 1 voice",
    durations=[(12, 8)],
    division=32,
    extra_counts=[4],
    notation="tuplet",
)

trinton.append_rests(
    score=score,
    voice="piano 1 voice",
    rests=[
        abjad.Rest("r4"),
        abjad.Rest("r2."),
        abjad.Rest("r4."),
        abjad.Rest("r4"),
        abjad.Rest("r8."),
        abjad.Rest("r2."),
    ],
)

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[
        abjad.Skip("r1."),
        abjad.Rest("r4"),
        abjad.Rest("r2."),
        abjad.Rest("r4."),
        abjad.Rest("r4"),
        abjad.Rest("r8."),
        abjad.Rest("r2."),
    ],
)

for voice in ["piano 1 voice", "piano 2 voice"]:

    trinton.handwrite(score=score, voice=voice, durations=[(3, 8)], pitch_list=None)

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r8"),
            abjad.Rest("r1"),
            abjad.Rest("r4."),
        ],
    )

for pair in [
    (12, 8),
    (11, 8),
    (9, 8),
    (8, 8),
    (7, 8),
]:
    rest = abjad.Skip((1, 1), multiplier=abjad.Multiplier(pair))
    trinton.append_rests(score=score, voice="piano 2 voice", rests=[rest])

trio.toccata_rhythms(
    score=score,
    voice="piano 1 voice",
    durations=[(12, 8), (11, 8), (9, 8)],
    division=32,
    extra_counts=[4, 8, 4],
    notation="tuplet",
)

trio.toccata_rhythms(
    score=score,
    voice="piano 1 voice",
    durations=[
        (8, 8),
        (7, 8),
    ],
    division=64,
    extra_counts=[
        16,
        8,
    ],
    notation="absolute_bracket",
)

for voice in ["piano 1 voice", "piano 2 voice"]:
    trinton.append_rests(score=score, voice=voice, rests=[abjad.Rest("r4")])

trinton.append_rests(score=score, voice="piano 2 voice", rests=[abjad.Skip("r2.")])

trio.toccata_rhythms(
    score=score,
    voice="piano 1 voice",
    durations=[(3, 4)],
    division=16,
    extra_counts=[0],
    notation="tuplet",
)

# cello

for voice in ["cello 1 voice", "contrabass 1 voice"]:
    for pair in [
        (12, 8),
        (2, 8),
        (11, 8),
        (3, 16),
        (9, 8),
        (1, 8),
        (8, 8),
        (3, 8),
        (12, 8),
        (11, 8),
        (9, 8),
        (8, 8),
        (7, 8),
        (2, 8),
    ]:
        rest = abjad.Rest((1, 1), multiplier=abjad.Multiplier(pair))
        trinton.append_rests(score=score, voice=voice, rests=[rest])

for voice in ["cello 2 voice", "contrabass 2 voice"]:

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r1."),
            abjad.Rest("r4"),
        ],
    )

    trio.toccata_rhythms(
        score=score,
        voice=voice,
        durations=[(11, 8)],
        division=32,
        extra_counts=[8],
        notation="tuplet",
    )

trinton.append_rests(
    score=score,
    voice="cello 2 voice",
    rests=[
        abjad.Rest("r8."),
        abjad.Rest("r2."),
        abjad.Rest("r4."),
        abjad.Rest("r8"),
        abjad.Rest("r2"),
    ],
)

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 8),
        (1, 4),
        (1, 8),
    ],
    seed=37,
    index=24,
    string="IV",
    notation="tuplet",
)

trinton.append_rests(score=score, voice="cello 2 voice", rests=[abjad.Rest("r4.")])

trio.toccata_rhythms(
    score=score,
    voice="cello 2 voice",
    durations=[(12, 8), (11, 8), (9, 8)],
    division=32,
    extra_counts=[0],
    notation="tuplet",
)

trio.toccata_rhythms(
    score=score,
    voice="cello 2 voice",
    durations=[
        (8, 8),
        (7, 8),
    ],
    division=64,
    extra_counts=[0],
    notation="tuplet",
)

trinton.append_rests(
    score=score, voice="cello 2 voice", rests=[abjad.Rest("r4"), abjad.Rest("r4")]
)

trinton.append_rests(score=score, voice="cello 1 voice", rests=[abjad.Rest("r4")])

# bass

trinton.append_rests(score=score, voice="contrabass 2 voice", rests=[abjad.Rest("r8.")])

trio.toccata_rhythms(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (9, 8),
    ],
    division=64,
    extra_counts=[8],
    notation="tuplet",
)

trinton.append_rests(score=score, voice="contrabass 2 voice", rests=[abjad.Rest("r8")])

trio.toccata_rhythms(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (8, 8),
    ],
    division=16,
    extra_counts=[4],
    notation="tuplet",
)

trinton.append_rests(
    score=score,
    voice="contrabass 2 voice",
    rests=[
        abjad.Rest("r4."),
        abjad.Rest("r1."),
        abjad.Rest("r2."),
        abjad.Rest("r4."),
        abjad.Rest("r4"),
        abjad.Rest("r2."),
        abjad.Rest("r4."),
        abjad.Rest("r1"),
    ],
)

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (7, 8),
    ],
    seed=1,
    index=0,
    string="I",
    notation="tuplet",
)

trinton.append_rests(
    score=score, voice="contrabass 2 voice", rests=[abjad.Rest("r4"), abjad.Rest("r4")]
)

trinton.append_rests(score=score, voice="contrabass 1 voice", rests=[abjad.Rest("r4")])

for voices, tuplet in zip(
    [["cello 1 voice", "cello 2 voice"], ["contrabass 1 voice", "contrabass 2 voice"]],
    [
        trio.collapsing_tuplets_1[1],
        trio.collapsing_tuplets_1[2],
    ],
):
    trio.harmonic_glissandi_rhythms(
        score=score,
        voices=voices,
        durations=[(1, 2)],
        tuplets=[tuplet],
        notation="tuplet",
    )

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

# trinton.annotate_leaves(score)

trinton.beam_runs_by_selection(
    score=score,
    voice="piano 1 voice",
    start_beam=[
        351,
    ],
    stop_beam=[362],
    beam_rests=True,
)

trinton.beam_runs_by_selection(
    score=score,
    voice="cello 2 voice",
    start_beam=[
        59,
        75,
    ],
    stop_beam=[
        60,
        322,
    ],
    beam_rests=True,
)

# margin markups and standard cleffing

trio.write_marginmarkups(score=score)


# global attachments

for tempo, leaf in zip(
    [
        abjad.MetronomeMark((1, 8), 130),
        abjad.MetronomeMark((1, 8), 69),
        abjad.MetronomeMark((1, 8), 105),
        abjad.MetronomeMark((1, 8), 60),
        abjad.MetronomeMark((1, 8), 69),
        abjad.MetronomeMark((1, 4), 130),
    ],
    [
        0,
        1,
        6,
        7,
        8,
        14,
    ],
):
    trinton.attach(voice=score["Global Context"], leaves=[leaf], attachment=tempo)

trinton.attach(
    voice=score["Global Context"], leaves=[0], attachment=trio.rehearsal_mark4
)

trinton.attach(
    voice=score["Global Context"], leaves=[-1], attachment=abjad.BarLine("||")
)

trinton.write_hooked_spanner(
    voice=score["Global Context"],
    string=r"\markup \italic \halign #-1.5 \abs-fontsize #8.5 { Accel. poco a poco (to approx. 135 BPM) }",
    start_leaf=[9],
    stop_leaf=[11],
    padding=3,
)

trinton.attach(
    score["Global Context"],
    [
        11,
    ],
    abjad.Markup(
        r"\markup \italic \abs-fontsize #8.5 { a tempo }",
    ),
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        2,
    ],
    attachment=abjad.LilyPondLiteral(r"\pageBreak", format_slot="absolute_after"),
)

for voice in trio.all_voices:
    trinton.reduce_tuplets(score=score, voice=voice, tuplets="all")

# piano pitching/attachments

trio.pitch_toccata(
    score=score,
    voice="piano 1 voice",
    leaves=list(range(0, 7)),
    octave=5,
    seed=3,
    index=0,
    random_walk=False,
)

trio.pitch_toccata(
    score=score,
    voice="piano 1 voice",
    leaves=list(range(7, 14)),
    octave=5,
    seed=7,
    index=28,
    random_walk=True,
)

trio.pitch_toccata(
    score=score,
    voice="piano 1 voice",
    leaves=list(range(14, 19)),
    octave=6,
    seed=8,
    index=6,
    random_walk=False,
)

trio.pitch_toccata(
    score=score,
    voice="piano 1 voice",
    leaves=list(range(19, 30)),
    octave=6,
    seed=2,
    index=35,
    random_walk=True,
)

trio.pitch_toccata(
    score=score,
    voice="piano 1 voice",
    leaves=list(
        range(
            30,
            33,
        )
    ),
    octave=3,
    seed=4,
    index=2,
    random_walk=True,
)

trio.pitch_toccata(
    score=score,
    voice="piano 1 voice",
    leaves=list(
        range(
            33,
            46,
        )
    ),
    octave=5,
    seed=5,
    index=0,
    random_walk=False,
)

trio.pitch_toccata(
    score=score,
    voice="piano 1 voice",
    leaves=list(range(46, 52)),
    octave=5,
    seed=6,
    index=1,
    random_walk=True,
)

for voice, leaf, partials in zip(
    [
        "piano 1 voice",
        "piano 2 voice",
    ],
    [
        58,
        7,
    ],
    [
        [3, 4, 5, 6],
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
        chord=1,
        partials=partials,
        transpose=0,
        markup=False,
    )

for leaves, seed in zip(
    [
        [
            list(range(61, 65)),
            list(range(67, 82)),
            list(range(85, 96)),
            list(range(101, 117)),
            list(range(119, 132)),
            list(range(139, 153)),
        ],
        [
            list(range(156, 180)),
            list(range(204, 212)),
            list(range(217, 230)),
        ],
        [
            list(range(237, 249)),
            list(range(258, 269)),
            list(range(280, 290)),
            list(range(303, 312)),
            list(range(329, 337)),
        ],
    ],
    [
        7,
        13,
        17,
    ],
):

    high_leaves = []

    for l in leaves:
        for leaf in l:
            high_leaves.append(leaf)

    trio.pitch_toccata(
        score=score,
        voice="piano 1 voice",
        leaves=high_leaves,
        octave=6,
        seed=seed,
        index=0,
        random_walk=True,
    )

for leaves, seed, octave, index in zip(
    [
        list(range(65, 67)),
        list(range(82, 85)),
        list(range(96, 101)),
        list(
            range(
                117,
                119,
            )
        ),
        list(range(132, 139)),
        list(range(153, 156)),
        list(range(180, 204)),
        list(range(212, 217)),
        list(range(230, 237)),
        list(range(249, 258)),
        list(range(269, 280)),
        list(range(290, 303)),
        list(range(312, 329)),
        list(range(337, 350)),
    ],
    list(range(1, 16)),
    [
        1,
        1,
        1,
        5,
        4,
        3,
        2,
        4,
        4,
        4,
        3,
        3,
        2,
        1,
    ],
    list(range(0, 14)),
):

    trio.pitch_toccata(
        score=score,
        voice="piano 1 voice",
        leaves=leaves,
        octave=octave,
        seed=seed,
        index=index,
        random_walk=False,
    )

for leaves, seed in zip(
    [
        [
            351,
            352,
            353,
        ],
        [
            354,
            355,
            356,
        ],
        [357, 358, 359],
        [360, 361, 362],
    ],
    [
        1,
        7,
        13,
        23,
    ],
):

    trio.pitch_toccata(
        score=score,
        voice="piano 1 voice",
        leaves=leaves,
        octave=7,
        seed=seed,
        index=0,
        random_walk=False,
    )

trio.change_staff(
    score=score,
    voice="piano 1 voice",
    lh=[
        7,
        10,
        12,
        16,
        19,
        25,
        27,
        29,
        33,
        42,
        45,
        48,
        50,
        65,
        82,
        96,
        117,
        132,
        153,
        180,
        212,
        230,
        249,
        269,
        290,
        312,
        337,
        352,
        356,
        358,
        360,
    ],
    rh=[
        9,
        11,
        14,
        17,
        20,
        26,
        28,
        30,
        36,
        43,
        46,
        49,
        51,
        61,
        67,
        85,
        101,
        119,
        139,
        156,
        204,
        217,
        237,
        258,
        280,
        303,
        329,
        350,
        353,
        357,
        359,
        361,
    ],
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        11,
        15,
        18,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        12,
        17,
        20,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        0,
        36,
        62,
        351,
    ],
    stop_ottava=[
        28,
        51,
        336,
        362,
    ],
    octave=2,
)

trinton.ottava(
    score=score,
    voice="piano 2 voice",
    start_ottava=[
        0,
        20,
    ],
    stop_ottava=[
        0,
        20,
    ],
    octave=2,
)

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[
        0,
        14,
        17,
        20,
        30,
        33,
        36,
        62,
        67,
        85,
        101,
        119,
        139,
        156,
        204,
        217,
        237,
        258,
        280,
        303,
        329,
        353,
        361,
    ],
    stop_slur=[
        6,
        15,
        18,
        23,
        32,
        35,
        39,
        64,
        81,
        95,
        116,
        131,
        152,
        179,
        211,
        229,
        248,
        268,
        289,
        311,
        336,
        355,
        362,
    ],
)

accent_leaves = []

for l in [
    [
        16,
        19,
        33,
        65,
        66,
        117,
        118,
        352,
        356,
        358,
        360,
    ],
    list(range(7, 14)),
    list(range(24, 30)),
    list(range(40, 52)),
    list(range(82, 85)),
    list(range(96, 101)),
    list(range(132, 139)),
    list(range(153, 156)),
    list(range(180, 204)),
    list(range(212, 217)),
    list(range(230, 237)),
    list(range(249, 258)),
    list(range(269, 280)),
    list(range(290, 303)),
    list(range(312, 329)),
    list(range(337, 350)),
]:
    for leaf in l:
        accent_leaves.append(leaf)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=accent_leaves,
    attachment=abjad.Articulation("marcato"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        0,
        14,
        17,
        20,
        30,
        36,
        204,
        217,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        62,
        67,
        85,
        101,
        119,
        139,
        237,
        258,
    ],
    attachment=abjad.Dynamic("p"),
)

trinton.attach(
    voice=score["piano 1 voice"], leaves=[280, 303], attachment=abjad.Dynamic("pp")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        156,
        329,
        351,
        353,
        357,
        359,
        361,
    ],
    attachment=abjad.Dynamic("ppp"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        65,
        82,
        96,
        117,
        132,
        153,
        212,
        230,
    ],
    attachment=abjad.Dynamic("mf"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        7,
        16,
        19,
        24,
        25,
        33,
        40,
        42,
        249,
        269,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        290,
        312,
    ],
    attachment=abjad.Dynamic("ff"),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        180,
        337,
        352,
        356,
        358,
        360,
    ],
    attachment=abjad.Dynamic("fff"),
)

for voice, leaf, attachments in zip(
    ["piano 1 voice", "piano 2 voice"],
    [
        58,
        7,
    ],
    [[abjad.Arpeggio(), abjad.Dynamic("mp")], [abjad.Arpeggio()]],
):

    trinton.attach_multiple(
        score=score, voice=voice, leaves=[leaf], attachments=attachments
    )

trinton.unmeasured_stem_tremolo(
    [
        abjad.select(score["piano 1 voice"]).leaf(58),
        abjad.select(score["piano 2 voice"]).leaf(7),
    ]
)

for voice_name in ["piano 1 voice", "piano 2 voice"]:
    for tuplet in abjad.Selection(score[voice_name]).tuplets().exclude([-1]):
        abjad.override(tuplet).TupletBracket.padding = 3

abjad.override(
    abjad.Selection(score["piano 1 voice"]).tuplet(-1)
).TupletBracket.direction = abjad.Down

# cello pitching/attachments

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        127,
        212,
        245,
        282,
        327,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        98,
        156,
        326,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[89, 115, 143, 202, 229, 263],
    attachment=abjad.Clef("tenor"),
)

for voice, seed, octave in zip(
    ["cello 2 voice", "contrabass 2 voice"],
    [19, 21],
    [
        4,
        3,
    ],
):
    trio.pitch_toccata(
        score=score,
        voice=voice,
        leaves=list(range(2, 54)),
        octave=octave,
        seed=seed,
        index=0,
        random_walk=True,
    )

for leaves, octave, seed, index in zip(
    [
        list(range(75, 89)),
        list(range(89, 98)),
        list(range(98, 115)),
        list(range(115, 127)),
        list(range(127, 143)),
        list(range(143, 156)),
        list(range(156, 202)),
        list(range(202, 212)),
        list(range(212, 229)),
        list(range(229, 246)),
        list(range(246, 263)),
        list(range(263, 282)),
        list(range(282, 305)),
        list(range(305, 323)),
    ],
    [
        4,
        3,
        4,
        3,
        2,
        3,
        4,
        3,
        2,
        3,
        2,
        3,
        2,
        1,
    ],
    [
        15,
        13,
        15,
        13,
        7,
        13,
        15,
        13,
        7,
        13,
        7,
        23,
        7,
        16,
    ],
    [
        12,
        57,
        26,
        6,
        0,
        18,
        43,
        32,
        17,
        42,
        34,
        0,
        52,
        0,
    ],
):

    trio.pitch_toccata(
        score=score,
        voice="cello 2 voice",
        leaves=leaves,
        octave=octave,
        seed=seed,
        index=index,
        random_walk=True,
    )

trio.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="cello 2 voice",
        leaves=[
            309,
            311,
            313,
            314,
            320,
            322,
        ],
    )
)

trio.pitch_harmonic_glissandi(
    score=score,
    voice="cello 2 voice",
    leaves=[
        325,
        326,
        327,
    ],
    strings="II and III",
    index=2,
)

handler = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["III"],
        trio._open_strings_to_pitches["II"],
    ]
)

handler(abjad.Selection(score["cello 1 voice"]).leaves(pitched=True))

trinton.write_slur(
    voice=score["cello 2 voice"],
    start_slur=[
        # 2,
        59,
        67,
        # 75,
        # 89,
        # 98,
        # 115,
        # 127,
        # 143,
        # 156,
        # 202,
        # 212,
        # 229,
        # 245,
        # 263,
        # 282,
        # 304,
        325,
    ],
    stop_slur=[
        # 53,
        66,
        73,
        # 88,
        # 97,
        # 114,
        # 126,
        # 142,
        # 155,
        # 201,
        # 211,
        # 228,
        # 244,
        # 262,
        # 281,
        # 303,
        # 322,
        327,
    ],
)

for leaf1, leaf2 in zip(
    trinton.make_leaf_selection(
        score=score,
        voice="cello 2 voice",
        leaves=[
            2,
            75,
            89,
            98,
            115,
            127,
            143,
            156,
            202,
            212,
            229,
            245,
            263,
            282,
            304,
        ],
    ),
    trinton.make_leaf_selection(
        score=score,
        voice="cello 2 voice",
        leaves=[
            53,
            88,
            97,
            114,
            126,
            142,
            155,
            201,
            211,
            228,
            244,
            262,
            281,
            303,
            322,
        ],
    ),
):
    trinton.dashed_slur(start_selection=leaf1, stop_selection=leaf2)

trinton.write_slur(
    voice=score["cello 1 voice"],
    start_slur=[
        15,
    ],
    stop_slur=[
        16,
    ],
)

harm = []

for l in [
    list(range(2, 54)),
    list(range(75, 98)),
    list(range(167, 186)),
    list(range(267, 295)),
]:
    for leaf in l:
        harm.append(leaf)

half = []

for l in [
    list(range(67, 74)),
    list(range(98, 123)),
    list(range(143, 167)),
    list(range(186, 203)),
    list(range(235, 267)),
    list(range(295, 323)),
]:
    for leaf in l:
        half.append(leaf)

trio.finger_pressure(
    score=score,
    voice="cello 2 voice",
    half=half,
    harm=harm,
)

for leaf in trinton.make_leaf_selection(
    score=score,
    voice="cello 2 voice",
    leaves=[
        325,
        326,
        327,
    ],
):
    for head in leaf.note_heads:
        abjad.tweak(head).style = r"#'harmonic-mixed"

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
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
        70,
        71,
        72,
        325,
        326,
    ],
    attachment=abjad.Glissando(),
)

trinton.ficta(
    score=score,
    voice="cello 2 voice",
    start_ficta=[
        59,
        325,
    ],
    stop_ficta=[
        73,
        327,
    ],
)

for voice in ["cello 2 voice", "contrabass 2 voice"]:

    trinton.attach(
        voice=score[voice],
        leaves=[
            2,
        ],
        attachment=abjad.LilyPondLiteral(
            r'\boxed-markup "Ord., FB" 1', format_slot="after"
        ),
    )

trinton.attach(
    voice=score["cello 1 voice"],
    leaves=[
        15,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "NB" 1', format_slot="after"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        59,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "NB" 1', format_slot="after"),
)

trinton.write_hooked_spanner(
    voice=score["cello 2 voice"],
    string=r"\markup { IV }",
    start_leaf=[
        59,
    ],
    stop_leaf=[
        73,
    ],
    padding=11.5,
)

trinton.write_text_span(
    voice=score["cello 2 voice"],
    begin_text=r"\markup \italic { XFB }",
    end_text=r"\markup \italic { XSB }",
    start_leaf=[
        75,
        107,
        155,
    ],
    stop_leaf=[
        84,
        121,
        170,
    ],
    padding=9,
)

trinton.write_text_span(
    voice=score["cello 2 voice"],
    begin_text=r"\markup \italic { XSB }",
    end_text=r"\markup \italic { XFB }",
    start_leaf=[
        88,
        132,
        177,
    ],
    stop_leaf=[
        98,
        148,
        186,
    ],
    padding=9,
)

trinton.write_text_span(
    voice=score["cello 2 voice"],
    begin_text=r"\markup \italic { XFB }",
    end_text=r"\markup \italic { XSB }",
    start_leaf=[
        193,
        224,
        293,
    ],
    stop_leaf=[
        206,
        244,
        310,
    ],
    padding=10.5,
)

trinton.write_text_span(
    voice=score["cello 2 voice"],
    begin_text=r"\markup \italic { XSB }",
    end_text=r"\markup \italic { XFB }",
    start_leaf=[
        212,
        256,
    ],
    stop_leaf=[
        220,
        268,
    ],
    padding=10.5,
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        2,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        75,
        89,
        98,
        115,
        127,
        143,
        156,
        202,
        212,
        229,
        245,
        263,
        282,
        304,
    ],
    attachment=abjad.StartHairpin("o<|"),
)

trinton.attach_multiple(
    score=score,
    voice="cello 2 voice",
    leaves=[
        81,
        93,
        107,
        120,
        133,
        149,
        206,
        220,
    ],
    attachments=[
        abjad.Dynamic("mf"),
        abjad.StartHairpin("|>o"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="cello 2 voice",
    leaves=[
        59,
        238,
        256,
    ],
    attachments=[
        abjad.Dynamic("f"),
        abjad.StartHairpin("|>o"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="cello 2 voice",
    leaves=[
        273,
        293,
    ],
    attachments=[
        abjad.Dynamic("ff"),
        abjad.StartHairpin("|>o"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="cello 2 voice",
    leaves=[
        188,
        309,
    ],
    attachments=[
        abjad.Dynamic("fff"),
        abjad.StartHairpin("|>o"),
    ],
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        73,
        322,
    ],
    attachment=abjad.StopHairpin(),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        59,
        67,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["cello 1 voice"],
    leaves=[
        15,
    ],
    attachment=abjad.Dynamic("p"),
)

trio.make_angle_spanner(
    score=score,
    voice="cello 1 voice",
    leaves=[
        15,
    ],
    direction="clockwise",
    left_text="45",
    position="termination",
    padding=5.5,
)


trio.stop_angle_spanner(
    score=score,
    voice="cello 1 voice",
    leaves=[
        16,
    ],
)

# contrabass pitching/attachments

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        2,
        136,
        173,
        175,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        55,
        164,
        174,
    ],
    attachment=abjad.Clef("bass"),
)

for leaves, seed in zip(
    [
        list(range(55, 68)),
        list(range(68, 81)),
        list(range(81, 94)),
        list(range(94, 107)),
        list(range(107, 120)),
        list(range(120, 135)),
    ],
    [
        40,
        41,
        42,
        43,
        44,
        45,
    ],
):
    trio.pitch_toccata(
        score=score,
        voice="contrabass 2 voice",
        leaves=leaves,
        octave=2,
        seed=seed,
        index=0,
        random_walk=True,
    )

trio.pitch_toccata(
    score=score,
    voice="contrabass 2 voice",
    leaves=list(range(136, 156)),
    octave=3,
    seed=46,
    index=0,
    random_walk=True,
)

trio.pitch_contrabass_glissandi(
    score=score,
    voice="contrabass 2 voice",
    leaves=list(range(164, 170)),
    strings="III and IV",
)

trio.pitch_harmonic_glissandi(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        172,
        173,
        174,
        175,
    ],
    strings="I and II",
    index=0,
)

handler = evans.PitchHandler(
    pitch_list=[
        trio._open_strings_to_pitches["I"],
        trio._open_strings_to_pitches["II"],
    ],
    forget=False,
)

handler(abjad.Selection(score["contrabass 1 voice"]).leaves(pitched=True))

for voice in ["cello 1 voice", "contrabass 1 voice"]:
    trinton.transparent_accidentals(score=score, voice=voice, leaves=all)

trinton.write_slur(
    voice=score["contrabass 2 voice"],
    start_slur=[
        164,
        166,
    ],
    stop_slur=[
        165,
        168,
    ],
)

for tuplet in [
    abjad.Selection(score["contrabass 2 voice"]).tuplet(_)
    for _ in [
        0,
        1,
        2,
    ]
]:
    trinton.dashed_slur(start_selection=tuplet[0], stop_selection=tuplet[-1])

solid_tuplet = abjad.Selection(score["contrabass 2 voice"]).tuplet(4)
abjad.attach(abjad.StartPhrasingSlur(), solid_tuplet[0])
abjad.attach(abjad.StopPhrasingSlur(), solid_tuplet[-1])

trinton.write_slur(
    voice=score["contrabass 1 voice"],
    start_slur=[
        15,
    ],
    stop_slur=[
        16,
    ],
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        164,
        165,
        166,
        167,
        168,
        172,
        173,
        174,
    ],
    attachment=abjad.Glissando(),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        164,
        166,
        169,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.ficta(
    score=score,
    voice="contrabass 2 voice",
    start_ficta=[
        172,
    ],
    stop_ficta=[
        175,
    ],
)

harm = []

for l in [
    list(range(2, 54)),
    list(range(55, 80)),
    list(range(152, 155)),
]:
    for leaf in l:
        harm.append(leaf)

half = []

for l in [
    list(range(80, 112)),
    list(range(144, 152)),
]:
    for leaf in l:
        half.append(leaf)

trio.finger_pressure(
    score=score,
    voice="contrabass 2 voice",
    half=half,
    harm=harm,
)

for leaf in trinton.make_leaf_selection(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        172,
        173,
        174,
        175,
    ],
):
    for head in leaf.note_heads:
        abjad.tweak(head).style = r"#'harmonic-mixed"

trinton.write_text_span(
    voice=score["contrabass 2 voice"],
    begin_text=r"\markup \italic { XFB }",
    end_text=r"\markup \italic { XSB }",
    start_leaf=[
        55,
        136,
    ],
    stop_leaf=[
        86,
        144,
    ],
    padding=9,
)

trinton.write_text_span(
    voice=score["contrabass 2 voice"],
    begin_text=r"\markup \italic { XSB }",
    end_text=r"\markup \italic { XFB }",
    start_leaf=[
        105,
        149,
    ],
    stop_leaf=[
        134,
        155,
    ],
    padding=9,
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        164,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "NB" 1', format_slot="after"),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        55,
        164,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        95,
    ],
    attachments=[abjad.Dynamic("f"), abjad.StartHairpin(">o")],
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        136,
    ],
    attachments=[abjad.Dynamic("fp"), abjad.StartHairpin("<")],
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        146,
    ],
    attachments=[abjad.Dynamic("mf"), abjad.StartHairpin(">o")],
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        134,
        155,
    ],
    attachment=abjad.StopHairpin(),
)

for leaf, dynamic in zip(
    [
        2,
        169,
        172,
    ],
    [abjad.Dynamic("mp"), abjad.Dynamic("ff"), abjad.Dynamic("p", direction=abjad.Up)],
):
    trinton.attach(voice=score["contrabass 2 voice"], leaves=[leaf], attachment=dynamic)

trio.make_angle_spanner(
    score=score,
    voice="contrabass 1 voice",
    leaves=[
        15,
    ],
    direction="counterclockwise",
    left_text="-45",
    position="termination",
    padding=2.5,
)


trio.stop_angle_spanner(
    score=score,
    voice="contrabass 1 voice",
    leaves=[
        16,
    ],
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
    segment_path="/Users/trintonprater/scores/trio/trio/segments/04",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily",
    ],
)

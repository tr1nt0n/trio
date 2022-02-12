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
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
    ],
    score["Global Context"],
)

# rhythm canon

for voice_name, index in zip(
    ["piano 1 voice", "piano 2 voice", "contrabass 2 voice", "cello 2 voice"],
    [
        0,
        2,
        6,
        12,
    ],
):
    trio.rhythm_canon(
        score=score,
        voice=voice_name,
        durations=[
            (13, 1),
        ],
        index=index,
    )

# fill empty voices with skips

for voice_name in ["contrabass 1 voice", "cello 1 voice"]:
    for pair in [
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
    ]:
        skip = abjad.Skip((1, 1), multiplier=abjad.Multiplier(pair))
        score[voice_name].append(skip)

# beaming

trinton.rewrite_meter(score)
trinton.beam_score(score)
# trinton.annotate_leaves(score)

# margin markups and standard cleffing

trio.write_marginmarkups(score=score)

# global attachments

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[0],
    attachments=[abjad.MetronomeMark((1, 4), 60), trio.rehearsal_mark12],
)

trinton.attach(
    voice=score["Global Context"], leaves=[-1], attachment=abjad.BarLine("||")
)

# piano pitching/attachments

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        0,
        13,
        29,
        43,
        57,
        66,
        94,
        113,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        11,
        24,
        41,
        54,
        64,
        92,
        110,
    ],
    attachment=abjad.Clef("bass"),
)

start = [
    1,
    17,
    31,
    38,
    49,
    59,
    68,
    83,
    99,
    106,
]
stop = [
    7,
    23,
    35,
    40,
    51,
    65,
    74,
    89,
    103,
    108,
]
trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=start,
    stop_ottava=stop,
    octave=2,
)

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=start,
    stop_slur=stop,
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=start,
    attachment=abjad.Dynamic("ppp"),
)

start = [
    0,
    15,
    29,
    36,
    47,
    57,
    66,
    81,
    97,
    104,
]
stop = [
    5,
    21,
    33,
    38,
    49,
    63,
    72,
    87,
    101,
    106,
]
trinton.ottava(
    score=score,
    voice="piano 2 voice",
    start_ottava=start,
    stop_ottava=stop,
    octave=2,
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=start,
    stop_slur=stop,
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=start,
    attachment=abjad.Dynamic("ppp"),
)

trio.octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="piano 1 voice",
        leaves=[
            4,
            34,
            63,
            70,
            73,
            74,
            88,
            89,
            99,
            102,
            103,
        ],
    )
)

trio.octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="piano 2 voice",
        leaves=[
            3,
            15,
            27,
            28,
            31,
            32,
            49,
            72,
            85,
            101,
        ],
    )
)

trio.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="piano 1 voice",
        leaves=[
            94,
            95,
            113,
        ],
    )
)

trio.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="piano 2 voice",
        leaves=[
            48,
            59,
        ],
    )
)

for voice_name in [
    "piano 1 voice",
    "piano 2 voice",
    "cello 2 voice",
    "contrabass 2 voice",
]:
    for tie in abjad.Selection(score[voice_name]).logical_ties():
        if tie.written_duration == abjad.Duration(3, 16):
            abjad.attach(abjad.Articulation("tenuto"), tie[0])
        elif tie.written_duration == abjad.Duration(5, 16):
            abjad.attach(abjad.Articulation("tenuto"), tie[0])
        elif tie.written_duration == abjad.Duration(7, 16):
            abjad.attach(abjad.Articulation("tenuto"), tie[0])
        elif tie.written_duration == abjad.Duration(1, 4):
            abjad.attach(abjad.Articulation("tenuto"), tie[0])

for voice_name in ["piano 1 voice", "cello 2 voice", "contrabass 2 voice"]:
    trinton.attach(
        voice=score[voice_name],
        leaves=[0],
        attachment=abjad.Markup(
            r"\markup \italic { Dolcissimo }", direction=abjad.Down
        ),
    )

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        0,
        8,
        24,
        36,
        41,
        52,
        66,
        75,
        90,
        104,
        109,
    ],
    attachment=abjad.Dynamic("p"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        6,
        22,
        34,
        39,
        50,
        64,
        73,
        88,
        102,
        107,
    ],
    attachment=abjad.Dynamic("p"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        113,
    ],
    attachment=abjad.Dynamic("ppp"),
)

# cello pitching/attachments

start = [
    0,
    14,
    21,
    32,
    42,
    51,
    66,
    82,
    89,
    100,
    112,
]
stop = [
    6,
    18,
    23,
    34,
    48,
    57,
    72,
    86,
    91,
    102,
    114,
]

trinton.attach_multiple(
    score=score,
    voice="cello 2 voice",
    leaves=start,
    attachments=[
        abjad.Clef("treble"),
        abjad.Dynamic("ppp"),
        abjad.LilyPondLiteral(r'\boxed-markup "FB, MST" 1', format_slot="after"),
    ],
)

for start_sel, stop_sel in zip(
    trinton.make_leaf_selection(score=score, voice="cello 2 voice", leaves=start),
    trinton.make_leaf_selection(
        score=score,
        voice="cello 2 voice",
        leaves=stop,
    ),
):
    trinton.dashed_slur(
        start_selection=start_sel,
        stop_selection=stop_sel,
    )

trinton.attach_multiple(
    score=score,
    voice="cello 2 voice",
    leaves=[
        7,
        19,
        24,
        35,
        49,
        58,
        73,
        87,
        92,
        103,
    ],
    attachments=[
        abjad.Clef("bass"),
        abjad.Dynamic("p"),
        abjad.LilyPondLiteral(r'\boxed-markup "NB, Ord." 1', format_slot="after"),
    ],
)

trio.octave_up(
    trinton.make_leaf_selection(
        score=score,
        voice="cello 2 voice",
        leaves=[
            95,
        ],
    )
)

trio.octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="cello 2 voice",
        leaves=[
            0,
            1,
            5,
            6,
            14,
            15,
            31,
            32,
            41,
            42,
            46,
            49,
            50,
            51,
            62,
            66,
            71,
            72,
            79,
            80,
            81,
            84,
            85,
            86,
            91,
            98,
            99,
            108,
            109,
            110,
            111,
        ],
    )
)

# contrabass pitching/attachments

trinton.attach(
    voice=score["contrabass 2 voice"], leaves=[0], attachment=abjad.Clef("bass")
)

trio.octave_down(
    trinton.make_leaf_selection(
        score=score,
        voice="contrabass 2 voice",
        leaves=[
            16,
            34,
            45,
            46,
            47,
            56,
            59,
            68,
            98,
            99,
        ],
    )
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        0,
        11,
        25,
        32,
        43,
        53,
        62,
        77,
        93,
        100,
        111,
    ],
    attachments=[
        abjad.Dynamic("ppp"),
        abjad.LilyPondLiteral(r'\boxed-markup "FB, MST" 1', format_slot="after"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        2,
        18,
        30,
        35,
        46,
        60,
        69,
        84,
        98,
        103,
    ],
    attachments=[
        abjad.Dynamic("p"),
        abjad.LilyPondLiteral(r'\boxed-markup "NB, Ord." 1', format_slot="after"),
    ],
)

for start_sel, stop_sel in zip(
    trinton.make_leaf_selection(
        score=score,
        voice="contrabass 2 voice",
        leaves=[
            0,
            11,
            25,
            32,
            43,
            53,
            62,
            77,
            93,
            100,
            111,
        ],
    ),
    trinton.make_leaf_selection(
        score=score,
        voice="contrabass 2 voice",
        leaves=[
            1,
            17,
            29,
            34,
            45,
            59,
            68,
            83,
            97,
            102,
            112,
        ],
    ),
):
    trinton.dashed_slur(
        start_selection=start_sel,
        stop_selection=stop_sel,
    )

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/segments/11",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="11",
    includes=[
        "../../build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily",
    ],
)

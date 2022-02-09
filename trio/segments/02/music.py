import abjad
import evans
import trinton
import baca
import trio
from abjadext import rmakers
from abjadext import microtones

# score

score = trio.score

# time signatures

trinton.write_time_signatures(
    [
        (9, 4),
        (1, 4),
        (1, 4),
        (1, 8),
        (3, 8),
        (1, 4),
        (1, 8),
        (3, 8),
        (11, 8),
        (1, 4),
        (1, 8),
        (3, 8),
        (11, 8),
        (9, 8),
        (7, 8),
        (1, 4),
        (1, 8),
        (5, 8),
        (1, 8),
        (5, 4),
        (6, 4),
        (7, 4),
        (9, 4),
        (9, 4),
        (7, 4),
        (6, 4),
        (5, 4),
        (2, 4),
        (5, 4),
    ],
    score["Global Context"],
)

# piano

for voice in ["piano 1 voice", "piano 2 voice"]:
    string = "r2. r2. r2. c4 r4 c2 r4 c8 c4."
    score[voice].extend(string)

trinton.handwrite(
    score=score,
    voice="piano 1 voice",
    durations=[(9, 8)],
    pitch_list=None,
)


trio.toccata_rhythms(
    score=score,
    voice="piano 1 voice",
    durations=[(1, 4)],
    division=32,
    extra_counts=[1],
    notation="duration_bracket",
)

trinton.handwrite(
    score=score,
    voice="piano 2 voice",
    durations=[
        (11, 8),
    ],
    pitch_list=None,
)

for voice in ["piano 1 voice", "piano 2 voice"]:

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r4"),
        ],
    )

trinton.handwrite(
    score=score,
    voice="piano 1 voice",
    durations=[
        (1, 8),
        (3, 8),
    ],
    pitch_list=None,
)

trio.toccata_rhythms(
    score=score,
    voice="piano 1 voice",
    durations=[(3, 8)],
    division=32,
    extra_counts=[1],
    notation="duration_bracket",
)

trinton.append_rests(
    score=score, voice="piano 1 voice", rests=[abjad.Rest("r2."), abjad.Rest("r4")]
)

trinton.handwrite(
    score=score,
    voice="piano 2 voice",
    durations=[
        (1, 8),
        (3, 8),
        (11, 8),
    ],
    pitch_list=None,
)

for voice in ["piano 1 voice", "piano 2 voice"]:
    trinton.handwrite(
        score=score,
        voice=voice,
        durations=[
            (9, 8),
            (7, 8),
        ],
        pitch_list=None,
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r4"),
            abjad.Rest("r8"),
        ],
    )

    trinton.handwrite(
        score=score,
        voice=voice,
        durations=[
            (3, 8),
            (1, 4),
        ],
        pitch_list=None,
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r8"),
        ],
    )

    trinton.handwrite(
        score=score,
        voice=voice,
        durations=[
            (5, 4),
            (13, 4),
        ],
        pitch_list=None,
    )

trio.toccata_rhythms(
    score=score,
    voice="piano 1 voice",
    durations=[(9, 4)],
    division=16,
    extra_counts=[4],
    notation="tuplet",
)

trinton.handwrite(
    score=score,
    voice="piano 2 voice",
    durations=[
        (9, 4),
    ],
    pitch_list=None,
)

for voice in ["piano 1 voice", "piano 2 voice"]:
    trinton.handwrite(
        score=score,
        voice=voice,
        durations=[
            (16, 4),
            (6, 4),
            (5, 4),
            (1, 4),
            (1, 4),
            (5, 4),
        ],
        pitch_list=None,
    )

# cello

for voice in ["cello 2 voice", "contrabass 2 voice"]:
    trinton.handwrite(
        score=score,
        voice=voice,
        durations=[
            (9, 8),
        ],
        pitch_list=None,
    )

    trio.matter_broken_rhythms(score=score, voice=voice, stack=1, durations=[(9, 8)])

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r4"),
            abjad.Rest("r4"),
            abjad.Rest("r8"),
            abjad.Rest("r4."),
            abjad.Rest("r4"),
            abjad.Rest("r8"),
            abjad.Rest("r4."),
            abjad.Rest("r2."),
        ],
    )

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
    ],
    seed=13,
    index=24,
    string="I",
    notation="duration_bracket",
)

trinton.append_rests(score=score, voice="cello 2 voice", rests=[abjad.Rest("r4")])

trinton.handwrite(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 8),
        (1, 2),
    ],
    pitch_list=None,
)

trinton.append_rests(
    score=score,
    voice="cello 2 voice",
    rests=[
        abjad.Rest("r2."),
        abjad.Rest("r2"),
        abjad.Rest("r2."),
        abjad.Rest("r4."),
        abjad.Rest("r8"),
    ],
)

for pair in [
    (9, 4),
    (1, 4),
    (1, 4),
    (1, 8),
    (3, 8),
    (1, 4),
    (1, 8),
    (3, 8),
    (11, 8),
    (1, 4),
    (1, 8),
    (3, 8),
    (11, 8),
    (9, 8),
]:
    rest = abjad.Rest((1, 1), multiplier=abjad.Multiplier(pair))
    trinton.append_rests(score=score, voice="cello 1 voice", rests=[rest])

trinton.append_rests(score=score, voice="cello 1 voice", rests=[abjad.Rest("r8")])

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=[
        "cello 1 voice",
        "cello 2 voice",
    ],
    durations=[
        (3, 8),
        (3, 8),
    ],
    tuplets=trio.collapsing_tuplets_2,
    notation="duration_bracket",
)

for pair in [
    (1, 4),
    (1, 8),
]:
    rest = abjad.Rest((1, 1), multiplier=abjad.Multiplier(pair))
    trinton.append_rests(score=score, voice="cello 1 voice", rests=[rest])

trinton.append_rests(
    score=score,
    voice="cello 2 voice",
    rests=[
        abjad.Rest("r4"),
    ],
)

trinton.handwrite(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 8),
    ],
    pitch_list=None,
)

for voice in ["cello 1 voice", "cello 2 voice"]:

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r4"), abjad.Rest("r4."), abjad.Rest("r8"), abjad.Rest("r4")],
    )

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=[
        "cello 1 voice",
        "cello 2 voice",
    ],
    durations=[
        (1, 4),
    ],
    tuplets=[trio.collapsing_tuplets_2[2]],
    notation="duration_bracket",
)

for pair in [
    (3, 4),
    (6, 4),
    (7, 4),
    (9, 4),
    (9, 4),
    (7, 4),
    (6, 4),
    (5, 4),
    (2, 4),
    (5, 4),
]:
    rest = abjad.Rest((1, 1), multiplier=abjad.Multiplier(pair))
    trinton.append_rests(score=score, voice="cello 1 voice", rests=[rest])

trinton.append_rests(
    score=score,
    voice="cello 2 voice",
    rests=[
        abjad.Rest("r2."),
        abjad.Rest("r1."),
        abjad.Rest("r8"),
    ],
)

trio.matter_broken_rhythms(
    score=score,
    voice="cello 2 voice",
    stack=2,
    durations=[
        (3, 2),
    ],
)

trinton.append_rests(
    score=score,
    voice="cello 2 voice",
    rests=[
        abjad.Rest("r8"),
    ],
)

trio.matter_broken_rhythms(
    score=score,
    voice="cello 2 voice",
    stack=2,
    durations=[
        (9, 4),
    ],
)

# bass

for pair in [
    (9, 4),
    (1, 4),
    (1, 4),
    (1, 8),
    (3, 8),
    (1, 4),
    (1, 8),
    (3, 8),
    (11, 8),
    (1, 4),
    (1, 8),
    (3, 8),
    (11, 8),
    (9, 8),
    (7, 8),
    (1, 4),
    (1, 8),
    (5, 8),
    (1, 8),
    (5, 4),
    (6, 4),
    (7, 4),
    (9, 4),
    (9, 4),
    (7, 4),
    (6, 4),
    (5, 4),
    (2, 4),
    (5, 4),
]:
    rest = abjad.Rest((1, 1), multiplier=abjad.Multiplier(pair))
    trinton.append_rests(score=score, voice="contrabass 1 voice", rests=[rest])

string = "r4. r4 r4 r8 r4. r2. r4. r4 r8 c1"

score["contrabass 2 voice"].extend(string)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (7, 8),
    ],
    pitch_list=None,
)

string = "r4 c8 r4. r4 r8 r2"

score["contrabass 2 voice"].extend(string)

trio.matter_broken_rhythms(
    score=score,
    voice="contrabass 2 voice",
    stack=2,
    durations=[
        (3, 4),
        (3, 4),
    ],
)

trio.toccata_rhythms(
    score=score,
    voice="contrabass 2 voice",
    durations=[(1, 4)],
    division=64,
    extra_counts=[1],
    notation="duration_bracket",
)

trinton.append_rests(
    score=score,
    voice="contrabass 2 voice",
    rests=[
        abjad.Rest("r2"),
    ],
)

trio.matter_broken_rhythms(
    score=score,
    voice="contrabass 2 voice",
    stack=1,
    durations=[
        (5, 4),
    ],
)

trinton.append_rests(
    score=score,
    voice="contrabass 2 voice",
    rests=[
        abjad.Rest("r2"),
    ],
)

trio.matter_broken_rhythms(
    score=score,
    voice="contrabass 2 voice",
    stack=1,
    durations=[
        (9, 4),
    ],
)

for voice in ["cello 2 voice", "contrabass 2 voice"]:
    trinton.handwrite(
        score=score,
        voice=voice,
        durations=[
            (16, 4),
            (6, 4),
            (5, 4),
            (1, 4),
            (1, 4),
            (5, 4),
        ],
        pitch_list=None,
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
trinton.annotate_leaves(score)

# margin markups and standard cleffing

trio.write_marginmarkups(score=score)


# global attachments

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[0],
    attachments=[abjad.MetronomeMark((1, 4), 47), trio.rehearsal_mark2],
)

for leaf, attachment in zip(
    [3, 19, 22, 23, 28],
    [
        abjad.MetronomeMark((1, 8), 138),
        abjad.MetronomeMark((1, 4), 47),
        abjad.MetronomeMark((1, 4), 105),
        abjad.MetronomeMark((1, 4), 130),
        abjad.MetronomeMark((1, 4), 60),
    ],
):
    trinton.attach(
        voice=score["Global Context"],
        leaves=[leaf],
        attachment=attachment,
    )

trinton.attach(
    voice=score["Global Context"], leaves=[-1], attachment=abjad.BarLine("||")
)

trinton.reduce_tuplets(score=score, voice="piano 1 voice", tuplets=[2])

trinton.attach(
    voice=score["Global Context"],
    leaves=[
        6,
        27,
    ],
    attachment=abjad.LilyPondLiteral(r"\pageBreak", format_slot="absolute_after"),
)

# piano pitching/attachments

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        7,
        22,
        47,
        93,
        96,
    ],
    attachment=abjad.Clef("treble"),
)


trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        2,
        21,
        45,
        92,
        95,
        97,
    ],
    attachment=abjad.Clef("bass"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        7,
        14,
        18,
        23,
        28,
        32,
        36,
        39,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        2,
        8,
        15,
        20,
        26,
        30,
        35,
        38,
        40,
    ],
    attachment=abjad.Clef("bass"),
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[2],
    chord=6,
    partials=[
        5,
        6,
        7,
    ],
    transpose=-57,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[2],
    chord=6,
    partials=[
        5,
        7,
    ],
    transpose=-67,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[4],
    chord=5,
    partials=[
        5,
        6,
        7,
    ],
    transpose=-48,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[4],
    chord=5,
    partials=[3, 4],
    transpose=-48,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        7,
    ],
    chord=5,
    partials=[
        4,
        5,
        6,
        7,
    ],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        7,
    ],
    chord=5,
    partials=[
        1,
        2,
        3,
    ],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        8,
    ],
    chord=4,
    partials=[
        4,
        5,
        6,
        7,
    ],
    transpose=-36,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        8,
    ],
    chord=4,
    partials=[
        1,
        2,
        3,
    ],
    transpose=-36,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        9,
    ],
    chord=2,
    partials=[3, 4, 5, 6, 7],
    transpose=-12,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        9,
    ],
    chord=2,
    partials=[
        1,
        2,
    ],
    transpose=-12,
    markup=False,
)

trio.pitch_toccata(
    score=score,
    voice="piano 1 voice",
    leaves=list(
        range(
            11,
            20,
        )
    ),
    octave=6,
    seed=3,
    index=0,
    random_walk=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        21,
    ],
    chord=4,
    partials=[
        6,
        7,
    ],
    transpose=-48,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        13,
    ],
    chord=4,
    partials=[4, 5],
    transpose=-46,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        22,
    ],
    chord=1,
    partials=[
        5,
        6,
    ],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        14,
    ],
    chord=1,
    partials=[
        4,
    ],
    transpose=-12,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        15,
    ],
    chord=5,
    partials=[
        5,
        6,
        7,
    ],
    transpose=-65,
    markup=False,
)

trio.pitch_toccata(
    score=score,
    voice="piano 1 voice",
    leaves=list(
        range(
            23,
            36,
        )
    ),
    octave=5,
    seed=5,
    index=1,
    random_walk=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        37,
    ],
    chord=6,
    partials=[4, 5, 6, 7],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        18,
    ],
    chord=6,
    partials=[
        2,
        3,
    ],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        39,
    ],
    chord=2,
    partials=[3, 5, 6, 7],
    transpose=-13,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        20,
    ],
    chord=2,
    partials=[
        2,
        3,
    ],
    transpose=-24,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        43,
    ],
    chord=2,
    partials=[3, 5, 6, 7],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        24,
    ],
    chord=2,
    partials=[1, 2],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        42,
    ],
    chord=4,
    partials=[3, 4, 5, 6, 7],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        23,
    ],
    chord=4,
    partials=[
        1,
        2,
    ],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        45,
    ],
    chord=5,
    partials=[5, 6, 7],
    transpose=-60,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        26,
    ],
    chord=5,
    partials=[
        3,
        4,
    ],
    transpose=-57,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        47,
    ],
    chord=4,
    partials=[3, 4, 5, 6, 7],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        28,
    ],
    chord=4,
    partials=[1, 2],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        30,
    ],
    chord=6,
    partials=[
        4,
        5,
        6,
        7,
    ],
    transpose=-63,
    markup=False,
)

trio.pitch_toccata(
    score=score,
    voice="piano 1 voice",
    leaves=list(
        range(
            49,
            65,
        )
    ),
    octave=5,
    seed=5,
    index=6,
    random_walk=False,
)

trio.pitch_toccata(
    score=score,
    voice="piano 1 voice",
    leaves=list(range(65, 77)),
    octave=6,
    seed=3,
    index=6,
    random_walk=False,
)

trio.pitch_toccata(
    score=score,
    voice="piano 1 voice",
    leaves=list(range(77, 82)),
    octave=5,
    seed=13,
    index=5,
    random_walk=False,
)

trio.pitch_toccata(
    score=score,
    voice="piano 1 voice",
    leaves=list(range(82, 89)),
    octave=4,
    seed=2,
    index=0,
    random_walk=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        89,
    ],
    chord=3,
    partials=[
        3,
        4,
        5,
        6,
        7,
    ],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        32,
    ],
    chord=3,
    partials=[
        1,
        2,
    ],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        92,
    ],
    chord=1,
    partials=[
        5,
        6,
        7,
    ],
    transpose=-48,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        35,
    ],
    chord=1,
    partials=[
        3,
        4,
    ],
    transpose=-48,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        93,
    ],
    chord=5,
    partials=[
        5,
        6,
        7,
    ],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        36,
    ],
    chord=5,
    partials=[
        3,
        4,
    ],
    transpose=0,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        95,
    ],
    chord=5,
    partials=[
        5,
        6,
        7,
    ],
    transpose=-60,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        38,
    ],
    chord=5,
    partials=[
        3,
        4,
    ],
    transpose=-60,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        96,
    ],
    chord=3,
    partials=[
        5,
        6,
        7,
    ],
    transpose=7,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        39,
    ],
    chord=3,
    partials=[
        3,
        4,
    ],
    transpose=2,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 1 voice",
    leaves=[
        97,
    ],
    chord=1,
    partials=[
        5,
        6,
        7,
    ],
    transpose=-49,
    markup=False,
)

trio.pitch_matter(
    score=score,
    voice="piano 2 voice",
    leaves=[
        40,
    ],
    chord=1,
    partials=[
        3,
        4,
    ],
    transpose=-49,
    markup=False,
)

for voice in ["piano 1 voice", "piano 2 voice"]:

    trinton.ottava(
        score=score,
        voice=voice,
        start_ottava=[
            2,
            8,
        ],
        stop_ottava=[
            2,
            8,
        ],
        octave=-1,
    )

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        45,
        92,
        95,
    ],
    stop_ottava=[
        46,
        92,
        95,
    ],
    octave=-1,
)

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        7,
        11,
        23,
        37,
        42,
        47,
        49,
        93,
        96,
    ],
    stop_ottava=[
        7,
        19,
        35,
        38,
        43,
        48,
        91,
        94,
        96,
    ],
    octave=1,
)

trinton.ottava(
    score=score,
    voice="piano 2 voice",
    start_ottava=[
        15,
        26,
        30,
        35,
        38,
        40,
    ],
    stop_ottava=[
        17,
        27,
        31,
        35,
        38,
        41,
    ],
    octave=-1,
)

trinton.ottava(
    score=score,
    voice="piano 2 voice",
    start_ottava=[
        36,
        39,
    ],
    stop_ottava=[
        37,
        39,
    ],
    octave=1,
)

for voice in ["piano 1 voice", "piano 2 voice"]:
    chords = abjad.select(score[voice]).chords()
    trinton.unmeasured_stem_tremolo(chords)
    chord_ties = chords.logical_ties()
    for tie in chord_ties:
        abjad.attach(abjad.Arpeggio(), tie[0])

for number in [0, 1]:
    tuplet = abjad.select(score["piano 1 voice"]).tuplet(number)
    trio.noteheads_only(tuplet)

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[
        42,
    ],
    stop_slur=[
        43,
    ],
)

trinton.write_slur(
    voice=score["piano 2 voice"],
    start_slur=[
        23,
    ],
    stop_slur=[
        24,
    ],
)

for voice, leaves in zip(
    ["piano 1 voice", "piano 2 voice"],
    [
        [
            95,
            96,
        ],
        [
            38,
            39,
        ],
    ],
):
    trinton.attach(
        voice=score[voice], leaves=leaves, attachment=abjad.Articulation("marcato")
    )

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        2,
        4,
    ],
    attachment=abjad.Dynamic("mp"),
)

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[
        7,
    ],
    attachments=[abjad.Dynamic("mp"), abjad.StartHairpin(">")],
)

for voice in ["piano 1 voice", "piano 2 voice"]:
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[9],
        attachments=[abjad.Dynamic("ppp"), abjad.StartHairpin("--")],
    )

for voice, attachment in zip(
    ["piano 1 voice", "piano 2 voice"], [abjad.Dynamic("p"), abjad.StopHairpin()]
):
    trinton.attach(
        voice=score[voice],
        leaves=[11],
        attachment=attachment,
    )

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[21],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--")],
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[23, 38],
    attachment=abjad.Dynamic("f"),
)

trinton.attach_multiple(
    score=score,
    voice="piano 2 voice",
    leaves=[15],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin("--")],
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[
        17,
    ],
    attachment=abjad.StopHairpin(),
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        40,
    ],
    attachment=abjad.StopHairpin(),
)

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[37, 97],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<|")],
)

trinton.attach(
    voice=score["piano 1 voice"], leaves=[39], attachment=abjad.Dynamic("fp")
)

trinton.attach(
    voice=score["piano 1 voice"], leaves=[42], attachment=abjad.Dynamic("pp")
)

trinton.attach_multiple(
    score=score,
    voice="piano 1 voice",
    leaves=[
        45,
        89,
    ],
    attachments=[abjad.Dynamic("fp"), abjad.StartHairpin("<")],
)

trinton.attach(
    voice=score["piano 1 voice"], leaves=[95], attachment=abjad.Dynamic("fff")
)

# cello pitching/attachments

for voice in ["cello 2 voice", "contrabass 2 voice"]:
    trinton.attach(voice=score[voice], leaves=[0], attachment=abjad.Clef("bass"))

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        66,
        68,
        70,
        73,
        77,
        79,
        81,
        28,
        145,
        149,
        152,
        89,
        91,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        57,
        148,
        151,
        153,
        67,
        69,
        71,
        74,
        78,
        80,
        83,
        90,
        95,
    ],
    attachment=abjad.Clef("bass"),
)

trio.pitch_matter_with_selector(
    voice=score["cello 2 voice"],
    measures=[1],
    selector=baca.selectors.pleaves(),
    chord=1,
    partials=[
        2,
        3,
    ],
    transpose=-12,
    markup=True
)

trio.pitch_matter(
    score=score,
    voice="cello 2 voice",
    leaves=[57],
    chord=3,
    partials=[1, 2],
    transpose=-12,
    markup=True,
)

trio.pitch_matter(
    score=score,
    voice="cello 2 voice",
    leaves=[58],
    chord=1,
    partials=[
        1,
    ],
    transpose=0,
    markup=True,
)

for l, strings in zip(
    [
        list(range(65, 78)),
        list(range(78, 82)),
        list(
            range(
                88,
                92,
            )
        ),
    ],
    ["II and III", "I and II", "III and IV"],
):

    trio.pitch_harmonic_glissandi(
        score=score, voice="cello 2 voice", leaves=l, strings=strings, index=0
    )

for l, strings in zip(
    [list(range(15, 17)), list(range(17, 19)), list(range(25, 27))],
    [
        [
            trio._open_strings_to_pitches["II"],
            trio._open_strings_to_pitches["III"],
        ],
        [
            trio._open_strings_to_pitches["I"],
            trio._open_strings_to_pitches["II"],
        ],
        [trio._open_strings_to_pitches["IV"], trio._open_strings_to_pitches["III"]],
    ],
):

    handler = evans.PitchHandler(pitch_list=strings, forget=False)

    handler(trinton.make_leaf_selection(score=score, voice="cello 1 voice", leaves=l))

trio.pitch_matter(
    score=score,
    voice="cello 2 voice",
    leaves=[83],
    chord=4,
    partials=[6, 7],
    transpose=-48,
    markup=True,
)

for leaf in [
    95,
    96,
    98,
    100,
    101,
    102,
    103,
    104,
    106,
    108,
    109,
    110,
    111,
    112,
    114,
]:

    trio.pitch_matter(
        score=score,
        voice="cello 2 voice",
        leaves=[leaf],
        chord=6,
        partials=[3, 4],
        transpose=-24,
        markup=True,
    )

for leaf in [
    116,
    117,
    119,
    121,
    122,
    123,
    124,
    125,
    127,
    129,
    130,
    131,
    132,
    133,
    135,
    137,
    138,
    139,
    140,
    141,
    143,
]:

    trio.pitch_matter(
        score=score,
        voice="cello 2 voice",
        leaves=[leaf],
        chord=6,
        partials=[6, 7],
        transpose=-48,
        markup=True,
    )

trio.pitch_matter(
    score=score,
    voice="cello 2 voice",
    leaves=[
        145,
    ],
    chord=3,
    partials=[2, 3],
    transpose=0,
    markup=True,
)

trio.pitch_matter(
    score=score,
    voice="cello 2 voice",
    leaves=[
        148,
    ],
    chord=1,
    partials=[7],
    transpose=-48,
    markup=True,
)

trio.pitch_matter(
    score=score,
    voice="cello 2 voice",
    leaves=[
        149,
    ],
    chord=5,
    partials=[
        2,
        3,
    ],
    transpose=0,
    markup=True,
)

trio.pitch_matter(
    score=score,
    voice="cello 2 voice",
    leaves=[
        151,
    ],
    chord=5,
    partials=[
        2,
        3,
    ],
    transpose=-36,
    markup=True,
)

trio.pitch_matter(
    score=score,
    voice="cello 2 voice",
    leaves=[
        152,
    ],
    chord=3,
    partials=[
        2,
        3,
    ],
    transpose=0,
    markup=True,
)

trio.pitch_matter(
    score=score,
    voice="cello 2 voice",
    leaves=[
        153,
    ],
    chord=1,
    partials=[
        4,
        5,
    ],
    transpose=-36,
    markup=True,
)

for tuplet in abjad.select(score["cello 2 voice"]).tuplets():
    if abjad.get.annotation(tuplet, trio.accelerando) is True:
        pleaves = abjad.select(tuplet).leaves(pitched=True)
        abjad.override(pleaves[0]).Beam.grow_direction = abjad.Left
        abjad.attach(abjad.StartPhrasingSlur(), pleaves[0])
        abjad.attach(abjad.StopPhrasingSlur(), pleaves[-1])
        for pleaf in pleaves:
            abjad.attach(abjad.Articulation("staccato"), pleaf)
    elif abjad.get.annotation(tuplet, trio.harmonic_gliss) is True:
        leaves = abjad.select(tuplet).leaves()
        abjad.attach(abjad.StartPhrasingSlur(), leaves[0])
        abjad.attach(abjad.StopPhrasingSlur(), leaves[-1])
        for leaf in leaves:
            for head in leaf.note_heads:
                abjad.tweak(head).Stem.transparent = True
                abjad.tweak(head).Beam.transparent = True
                abjad.tweak(head).Flag.transparent = True
                abjad.tweak(head).Dots.transparent = True
                abjad.tweak(head).style = r"#'harmonic-mixed"
    elif abjad.get.annotation(tuplet, trio.vib) is True:
        leaves = abjad.select(tuplet).leaves()
        trio.noteheads_only(leaves)

for l in [
    list(range(28, 55)),
    list(range(65, 77)),
    list(range(78, 81)),
    list(range(88, 91)),
]:
    trinton.attach(voice=score["cello 2 voice"], leaves=l, attachment=abjad.Glissando())

trinton.ficta(
    score=score,
    voice="cello 2 voice",
    start_ficta=[
        28,
        65,
    ],
    stop_ficta=[
        55,
        77,
    ],
)

trinton.write_slur(
    voice=score["cello 1 voice"],
    start_slur=[
        15,
        17,
        25,
    ],
    stop_slur=[
        16,
        18,
        26,
    ],
)

trinton.write_slur(
    voice=score["cello 2 voice"],
    start_slur=[
        28,
        33,
        37,
        41,
        46,
        53,
    ],
    stop_slur=[
        32,
        36,
        40,
        45,
        52,
        55,
    ],
)

trinton.ottava(
    score=score, voice="cello 2 voice", start_ottava=[28], stop_ottava=[55], octave=1
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        28,
        33,
        37,
        41,
        46,
        53,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        83,
        151,
        152,
    ],
    attachment=abjad.Articulation("marcato"),
)

trinton.write_hooked_spanner(
    voice=score["cello 2 voice"],
    string=r"\markup { I }",
    start_leaf=[28],
    stop_leaf=[55],
    padding=12.5,
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        28,
        116,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        55,
        58,
    ],
    attachment=abjad.Dynamic("p"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        58,
    ],
    attachment=abjad.StartHairpin("<"),
)

trinton.attach(
    voice=score["cello 2 voice"], leaves=[59, 95], attachment=abjad.Dynamic("f")
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        81,
    ],
    attachment=abjad.Dynamic("f", direction=abjad.Up),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[65],
    attachment=abjad.StartHairpin("o<", direction=abjad.Up),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        83,
        151,
    ],
    attachment=abjad.Dynamic("fff"),
)

trinton.attach(
    voice=score["cello 1 voice"],
    leaves=[
        25,
    ],
    attachment=abjad.Dynamic("mf"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        95,
    ],
    attachment=abjad.StartHairpin(">o"),
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        115,
    ],
    attachment=abjad.StopHairpin(),
)

trinton.attach_multiple(
    score=score,
    voice="cello 2 voice",
    leaves=[
        145,
    ],
    attachments=[
        abjad.Dynamic("fp"),
        abjad.StartHairpin("<"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="cello 2 voice",
    leaves=[
        153,
    ],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<|")],
)

# contrabass pitching/attachments

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        37,
        44,
        129,
        133,
        136,
    ],
    attachment=abjad.Clef("treble"),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        39,
        64,
        132,
        135,
        137,
    ],
    attachment=abjad.Clef("bass"),
)

for leaf in [
    0,
    3,
    4,
    6,
    8,
    9,
    12,
    13,
    14,
    16,
]:
    trio.pitch_matter(
        score=score,
        voice="contrabass 2 voice",
        leaves=[
            leaf,
        ],
        chord=6,
        partials=[
            1,
        ],
        transpose=0,
        markup=True,
    )

trio.pitch_matter(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        35,
    ],
    chord=6,
    partials=[
        1,
    ],
    transpose=12,
    markup=True,
)

trio.pitch_matter(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        37,
    ],
    chord=2,
    partials=[
        2,
    ],
    transpose=0,
    markup=True,
)

trio.pitch_matter(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        39,
    ],
    chord=2,
    partials=[
        4,
    ],
    transpose=-36,
    markup=True,
)

for leaf in [
    44,
    45,
    47,
    49,
    50,
    51,
    52,
    53,
    55,
    57,
    58,
    59,
    60,
    61,
    63,
]:

    trio.pitch_matter(
        score=score,
        voice="contrabass 2 voice",
        leaves=[
            leaf,
        ],
        chord=6,
        partials=[
            5,
            6,
        ],
        transpose=-24,
        markup=True,
    )

trio.pitch_toccata(
    score=score,
    voice="contrabass 2 voice",
    leaves=list(range(64, 81)),
    octave=2,
    seed=2,
    index=34,
    random_walk=True,
)

for leaf in [
    82,
    83,
    85,
    87,
    88,
    91,
    92,
    93,
    95,
    97,
    98,
]:

    trio.pitch_matter(
        score=score,
        voice="contrabass 2 voice",
        leaves=[
            leaf,
        ],
        chord=1,
        partials=[
            5,
            6,
        ],
        transpose=-24,
        markup=True,
    )

for leaf in [
    100,
    101,
    103,
    105,
    106,
    109,
    110,
    111,
    113,
    115,
    116,
    119,
    120,
    121,
    123,
    125,
    126,
]:

    trio.pitch_matter(
        score=score,
        voice="contrabass 2 voice",
        leaves=[
            leaf,
        ],
        chord=6,
        partials=[
            4,
        ],
        transpose=-24,
        markup=True,
    )

trio.pitch_matter(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        129,
    ],
    chord=3,
    partials=[
        1,
    ],
    transpose=12,
    markup=True,
)

trio.pitch_matter(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        132,
    ],
    chord=1,
    partials=[
        6,
    ],
    transpose=-36,
    markup=True,
)

trio.pitch_matter(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        133,
    ],
    chord=1,
    partials=[
        1,
    ],
    transpose=12,
    markup=True,
)

trio.pitch_matter(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        135,
    ],
    chord=2,
    partials=[
        4,
    ],
    transpose=-36,
    markup=True,
)

trio.pitch_matter(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        136,
    ],
    chord=3,
    partials=[
        1,
    ],
    transpose=12,
    markup=True,
)

trio.pitch_matter(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        137,
    ],
    chord=3,
    partials=[
        3,
        4,
    ],
    transpose=-36,
    markup=True,
)

trio.finger_pressure(
    score=score,
    voice="contrabass 2 voice",
    half=list(range(70, 77)),
    harm=list(range(64, 70)),
)


for tuplet in abjad.select(score["contrabass 2 voice"]).tuplets():
    if abjad.get.annotation(tuplet, trio.accelerando) is True:
        leaves = abjad.select(tuplet).leaves()
        pleaves = abjad.select(tuplet).leaves(pitched=True)
        abjad.override(leaves[0]).Beam.grow_direction = abjad.Left
        for pleaf in pleaves:
            abjad.attach(abjad.Articulation("staccato"), pleaf)
    elif abjad.get.annotation(tuplet, trio.toccata) is True:
        leaves = abjad.select(tuplet).leaves()
        trio.noteheads_only(leaves)


for voice in ["cello 2 voice", "contrabass 2 voice"]:
    leaves = abjad.select(score[voice]).leaves()
    trinton.unmeasured_stem_tremolo([leaves[-1]])

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            0,
        ],
        attachments=[
            abjad.Dynamic("fp"),
            abjad.StartHairpin("<"),
            abjad.Articulation("upbow"),
        ],
    )

    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[
            3,
        ],
        attachments=[
            abjad.Dynamic("ff"),
            abjad.StartHairpin("|>o"),
            abjad.Articulation("downbow"),
        ],
    )

    trinton.attach(
        voice=score[voice],
        leaves=[
            17,
        ],
        attachment=abjad.StopHairpin(),
    )

for voice in ["cello 1 voice", "contrabass 1 voice"]:
    trinton.transparent_accidentals(
        score=score,
        voice=voice,
        leaves=all,
    )

for voice in ["contrabass 2 voice", "piano 1 voice"]:
    for tuplet in abjad.select(score[voice]).tuplets():
        pleaves = abjad.select(tuplet).leaves(pitched=True)
        abjad.attach(abjad.StartPhrasingSlur(), pleaves[0])
        abjad.attach(abjad.StopPhrasingSlur(), pleaves[-1])

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "NB" 1', format_slot="after"),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        39,
        135,
        136,
    ],
    attachment=abjad.Articulation("marcato"),
)

trinton.attach(
    voice=score["contrabass 2 voice"], leaves=[35], attachment=abjad.StartHairpin("o<|")
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        44,
    ],
    attachments=[abjad.StartHairpin("|>o"), abjad.Dynamic("f")],
)

trinton.attach(
    voice=score["contrabass 2 voice"], leaves=[37], attachment=abjad.Dynamic("fp")
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        38,
        99,
    ],
    attachment=abjad.StopHairpin(),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        39,
        135,
    ],
    attachment=abjad.Dynamic("fff"),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        64,
    ],
    attachment=abjad.Dynamic("f"),
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        82,
    ],
    attachments=[abjad.StartHairpin(">o"), abjad.Dynamic("f")],
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        100,
    ],
    attachment=abjad.StartHairpin("o<"),
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        129,
    ],
    attachments=[abjad.StartHairpin("<"), abjad.Dynamic("fp")],
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        137,
    ],
    attachments=[abjad.Dynamic("p"), abjad.StartHairpin("<|")],
)

# fermate

trinton.populate_fermata_measures(
    score=score,
    voices=trio.all_voices_include_ts_context,
    leaves=[
        [
            2,
            5,
            9,
            15,
        ],
        [
            3,
            6,
            20,
            40,
        ],
        [
            3,
            6,
            12,
            21,
        ],
        [
            2,
            5,
            9,
            19,
        ],
        [
            19,
            22,
            56,
            82,
        ],
        [
            2,
            5,
            9,
            15,
        ],
        [
            19,
            22,
            28,
            38,
        ],
    ],
    fermata_measures=[
        2,
        5,
        9,
        15,
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
    segment_path="/Users/trintonprater/scores/trio/trio/segments/02",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily",
    ],
)

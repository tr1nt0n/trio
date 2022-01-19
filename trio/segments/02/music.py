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

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r2."),
            abjad.Rest("r2."),
            abjad.Rest("r2."),
        ],
    )

    trinton.handwrite(
        score=score,
        voice=voice,
        durations=[
            (1, 4),
        ],
        pitch_list=None,
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r4"),
        ],
    )

    trinton.handwrite(
        score=score,
        voice=voice,
        durations=[(4, 8)],
        pitch_list=None,
    )

    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[
            abjad.Rest("r4"),
        ],
    )

    trinton.handwrite(
        score=score,
        voice=voice,
        durations=[(1, 8), (3, 8)],
        pitch_list=None,
    )

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

trinton.append_rests(
    score=score,
    voice="contrabass 2 voice",
    rests=[
        abjad.Rest("r4."),
        abjad.Rest("r4"),
        abjad.Rest("r4"),
        abjad.Rest("r8"),
        abjad.Rest("r4."),
        abjad.Rest("r2."),
        abjad.Rest("r4."),
        abjad.Rest("r4"),
        abjad.Rest("r8"),
    ],
)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (1, 1),
        (7, 8),
    ],
    pitch_list=None,
)

trinton.append_rests(
    score=score,
    voice="contrabass 2 voice",
    rests=[
        abjad.Rest("r4"),
    ],
)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (1, 8),
    ],
    pitch_list=None,
)

trinton.append_rests(
    score=score,
    voice="contrabass 2 voice",
    rests=[abjad.Rest("r4."), abjad.Rest("r4"), abjad.Rest("r8"), abjad.Rest("r2")],
)

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
        0,
        1,
        3,
        5,
    ],
)
# trinton.beam_score(score)
trinton.annotate_leaves(score)

# margin markups and standard cleffing
#
trio.write_marginmarkups(score=score)
# trio.standard_cleffing(score=score)

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
        97,
    ],
    stop_ottava=[
        46,
        92,
        95,
        98,
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

for voice, leaves in zip(
    ["piano 1 voice", "piano 2 voice"],
    [
        [
            2,
            4,
            5,
            7,
            8,
            9,
            10,
            21,
            22,
            37,
            38,
            39,
            42,
            43,
            45,
            46,
            47,
            48,
            89,
            90,
            91,
            92,
            93,
            94,
            97,
            98,
        ],
        [
            2,
            4,
            5,
            7,
            8,
            9,
            10,
            11,
            13,
            14,
            15,
            16,
            17,
            18,
            19,
            20,
            23,
            24,
            26,
            27,
            28,
            29,
            30,
            31,
            32,
            33,
            34,
            35,
            36,
            37,
            40,
            41,
        ],
    ],
):
    trinton.unmeasured_stem_tremolo(
        trinton.make_leaf_selection(score=score, voice=voice, leaves=leaves)
    )


for voice, leaves in zip(
    [
        "piano 1 voice",
        "piano 2 voice",
    ],
    [
        [
            2,
            4,
            7,
            8,
            9,
            21,
            22,
            37,
            39,
            42,
            43,
            45,
            47,
            89,
            92,
            93,
            97,
        ],
        [
            2,
            4,
            7,
            8,
            9,
            13,
            15,
            18,
            20,
            23,
            24,
            26,
            28,
            30,
            32,
            35,
            36,
            40,
        ],
    ],
):
    trinton.attach(
        voice=score[voice],
        leaves=leaves,
        attachment=abjad.Arpeggio(),
    )

for l in [list(range(11, 20)), list(range(23, 36))]:

    trio.noteheads_only(
        trinton.make_leaf_selection(score=score, voice="piano 1 voice", leaves=l)
    )

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[
        11,
        23,
        42,
        49,
    ],
    stop_slur=[
        19,
        35,
        43,
        88,
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
    segment_path="/Users/trintonprater/scores/trio/trio/segments/02",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="02",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)

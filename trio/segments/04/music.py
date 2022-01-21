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
        0,
        3,
        5,
    ],
)

trinton.annotate_leaves(score)

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

for leaf, markup in zip(
    [9, 11],
    [
        abjad.Markup(r"\markup \italic \abs-fontsize #8.5 { Accel. poco a poco }"),
        abjad.Markup(r"\markup \italic \abs-fontsize #8.5 { a tempo }"),
    ],
):

    trinton.attach(voice=score["Global Context"], leaves=[leaf], attachment=markup)

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
    ],
    rh=[
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
        351,
    ],
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
    segment_path="/Users/trintonprater/scores/trio/trio/segments/04",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="04",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)

import abjad
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones

# score

score = trinton.make_score_template(
    instruments=[abjad.Piano(),],
    groups=[1,]
)

# time signatures

trinton.write_time_signatures(
    [
    (6, 8),
    (6, 8),
    (6, 8),
    (6, 8),
    (6, 8),
    (6, 8),
    (6, 8),
    (6, 8),
    ],
    score["Global Context"],
)

# test

def tocatta(score, voice, durations, division, index, seed):
    stack = rmakers.stack(
        rmakers.even_division([division]),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
        rmakers.beam(abjad.select().tuplets()),
    )

    rhythms = trinton.make_rhythm_selections(
        stack=stack,
        durations=durations
    )

    container = abjad.Container(rhythms)

    seq = list(range(-39, 49))

    groups = evans.Sequence(seq).grouper([13, 12, 13, 11, 13, 10, 13, 3,])

    new_groups = []
    for group in groups:
        if len(group) == 13:
            sequence = abjad.Sequence(group).permute([12, 0, 11, 1, 10, 2, 9, 3, 8, 4, 7, 5, 6,])
            new_sequence = evans.Sequence(sequence[:]).mirror(sequential_duplicates=False)
            for l in new_sequence:
                new_groups.append(l)
        elif len(group) == 12:
            sequence = abjad.Sequence(group).permute([0, 11, 1, 10, 2, 9, 3, 8, 4, 7, 5, 6,])
            new_sequence = evans.Sequence(sequence[:]).mirror(sequential_duplicates=False)
            for l in new_sequence:
                new_groups.append(l)
        elif len(group) == 11:
            sequence = abjad.Sequence(group).permute([0, 1, 10, 2, 9, 3, 8, 4, 7, 5, 6,])
            new_sequence = evans.Sequence(sequence[:]).mirror(sequential_duplicates=False)
            for l in new_sequence:
                new_groups.append(l)
        elif len(group) == 10:
            sequence = abjad.Sequence(group).permute([0, 1, 2, 9, 3, 8, 4, 7, 5, 6,])
            new_sequence = evans.Sequence(sequence[:]).mirror(sequential_duplicates=False)
            for l in new_sequence:
                new_groups.append(l)
        elif len(group) == 3:
            sequence = abjad.Sequence(group).permute([2, 0, 1])
            new_sequence = evans.Sequence(sequence[:]).mirror(sequential_duplicates=False)
            for l in new_sequence:
                new_groups.append(l)

    new_seq = evans.Sequence(new_groups).grouper([24, 22, 24, 20, 24, 18, 24, 4,])

    pitches = trinton.random_walk(chord=new_seq[index], seed=seed)

    handler = evans.PitchHandler(
        pitch_list=pitches,
        forget=False
    )
    handler(container)

    trinton.append_rhythm_selections(
        score=score,
        voice=voice,
        selections=container[:],
    )


tocatta(
    score=score,
    voice="piano voice",
    durations=[(6, 8)],
    division=64,
    index=0,
    seed=7
)

tocatta(
    score=score,
    voice="piano voice",
    durations=[(6, 8)],
    division=64,
    index=1,
    seed=1
)

tocatta(
    score=score,
    voice="piano voice",
    durations=[(6, 8)],
    division=64,
    index=2,
    seed=2
)

tocatta(
    score=score,
    voice="piano voice",
    durations=[(6, 8)],
    division=64,
    index=3,
    seed=3
)

tocatta(
    score=score,
    voice="piano voice",
    durations=[(6, 8)],
    division=64,
    index=4,
    seed=4
)

tocatta(
    score=score,
    voice="piano voice",
    durations=[(6, 8)],
    division=64,
    index=5,
    seed=5
)

tocatta(
    score=score,
    voice="piano voice",
    durations=[(6, 8)],
    division=64,
    index=6,
    seed=6
)

tocatta(
    score=score,
    voice="piano voice",
    durations=[(6, 8)],
    division=64,
    index=7,
    seed=8
)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/sketches",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="sketch",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ]
)

import abjad
import trinton
import evans
import quartet
from abjadext import rmakers
from abjadext import microtones

score = trinton.make_score_template(
    [abjad.Piano(),
    abjad.Piano(),
    abjad.Cello(),
    abjad.Contrabass(),
    ],
    [2, 1, 1,]
)

# pitch

end_row = [0, 10, 5, 8, 3, 11, 6, 1, 9, 4, 7, 2,]

# material functions

def rhythm_canon(score, voice, durations, talea, index,):
    pitches = trinton.rotated_sequence(
        pitch_list=trio.end_row,
        start_index=index,
    )

    rhythms = trinton.rotated_sequence(
        pitch_list=[3, 1, 1, 1, 1, 1, 1, 1, 5, 7, 3, 7, 1, 1, 1, 1, 1, 1, 1, 5, 5, 3, 7, 1, 1, 1, 1, 1, 5, 1, 1, 1, 7, 3, 7, 3, 1, 1, 1, 5, 7, 5, 3, 1, 1, 1, 1, 1, 1, 1,],
        start_index=index,
    )

    stack = rmakers.stack(
        rmakers.talea(rhythms, talea),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
    )

    sel = trinton.make_rhythm_selections(
        stack=stack,
        durations=durations
    )

    container = abjad.Container(sel)

    if voice == "piano 1 voice":
        trinton.durational_pitch_association(
            selection=abjad.select(container[:]).logical_ties(),
            durations=[
                abjad.Duration(7, 16),
                abjad.Duration(5, 16),
                abjad.Duration(3, 16),
                abjad.Duration(1, 16),
            ],
            pitch_lists=[
                trinton.transpose(
                    l=pitches,
                    m=15,
                ),
                trinton.transpose(
                    l=pitches,
                    m=14,
                ),
                trinton.transpose(
                    l=pitches,
                    m=4,
                ),
                trinton.transpose(
                    l=pitches,
                    m=37
                )
            ],
            forget=False,
        )

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:]
        )

    elif voice == "piano 2 voice":
        trinton.durational_pitch_association(
            selection=abjad.select(container[:]).logical_ties(),
            durations=[
                abjad.Duration(7, 16),
                abjad.Duration(5, 16),
                abjad.Duration(3, 16),
                abjad.Duration(1, 16),
            ],
            pitch_lists=[
                trinton.transpose(
                    l=pitches,
                    m=1,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-2,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-12,
                ),
                trinton.transpose(
                    l=pitches,
                    m=26
                )
            ],
            forget=False,
        )

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:]
        )

    elif voice == "cello voice":
        trinton.durational_pitch_association(
            selection=abjad.select(container[:]).logical_ties(),
            durations=[
                abjad.Duration(7, 16),
                abjad.Duration(5, 16),
                abjad.Duration(3, 16),
                abjad.Duration(1, 16),
            ],
            pitch_lists=[
                trinton.transpose(
                    l=pitches,
                    m=-14,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-16,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-14,
                ),
                trinton.transpose(
                    l=pitches,
                    m=8
                )
            ],
            forget=False,
        )

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:]
        )

    elif voice == "contrabass voice":
        trinton.durational_pitch_association(
            selection=abjad.select(container[:]).logical_ties(),
            durations=[
                abjad.Duration(7, 16),
                abjad.Duration(5, 16),
                abjad.Duration(3, 16),
                abjad.Duration(1, 16),
            ],
            pitch_lists=[
                trinton.transpose(
                    l=pitches,
                    m=-15,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-5,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-3,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-5
                )
            ],
            forget=False,
        )

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:]
        )

def toccata(score, voice, durations, division, index, seed, duration_bracket_notation):
    if duration_bracket_notation == True:
        stack = rmakers.stack(
            rmakers.even_division([division]),
            rmakers.duration_bracket(),
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
            sequence = trinton.primes_odds_evens(group)
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

        for tuplet in container:
            for leaf in tuplet:
                abjad.tweak(leaf.note_head).Stem.transparent=True
                abjad.tweak(leaf.note_head).Beam.transparent=True
                abjad.tweak(leaf.note_head).Flag.transparent=True

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:],
        )

    else:
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
            sequence = trinton.primes_odds_evens(group)
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

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
    (3, 8),
    (3, 8),
    (3, 8),
    (3, 8),
    (3, 8),
    (3, 8),
    (3, 8),
    (3, 8),
    ],
    score["Global Context"],
)

# test

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

for number in [0, 1, 2, 3, 4, 5, 6, 7]:
    toccata(
        score=score,
        voice="piano voice",
        durations=[(3, 8)],
        division=64,
        index=number,
        seed=number,
        duration_bracket_notation=False
    )

trinton.rewrite_meter_without_splitting(score)
trinton.beam_score_without_splitting(score)
# trinton.annotate_leaves(score)

trinton.attach(
    voice=score["piano voice"],
    leaves=[0],
    attachment=abjad.Clef("bass")
)

trinton.attach(
    voice=score["piano voice"],
    leaves=[72],
    attachment=abjad.Clef("treble")
)

sel = list(range(120, 168))

selection = trinton.make_leaf_selection(score=score, voice="piano voice", leaves=sel)

abjad.ottava(selection)

ottava = abjad.Ottava(n=-1)
abjad.attach(ottava, abjad.select(score["piano voice"]).leaf(0))
ottava = abjad.Ottava(n=0, format_slot="after")
abjad.attach(ottava, abjad.select(score["piano voice"]).leaf(23))

ottava = abjad.Ottava(n=2)
abjad.attach(ottava, abjad.select(score["piano voice"]).leaf(168))
ottava = abjad.Ottava(n=0, format_slot="after")
abjad.attach(ottava, abjad.select(score["piano voice"]).leaf(191))

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

import abjad
import evans
import trinton
import trio
from abjadext import rmakers
from abjadext import microtones

# score

score = trinton.make_score_template(
    instruments=[
        abjad.Piano(),
    ],
    groups=[1,]
)

# time signatures

trinton.write_time_signatures(
    [
        (12, 8),
        (12, 8),
    ],
    score["Global Context"],
)

# test

def piano_climax_chords(score, voice, leaves, octave, index):
    seq = list(range(-39, 49))

    groups = evans.Sequence(seq).grouper([13, 12, 13, 11, 13, 10, 13, 3,])

    new_groups = []
    for group in groups:
        sequence = trinton.primes_odds_evens(group)
        for l in sequence:
            new_groups.append(l)

    new_new_groups = evans.Sequence(new_groups).grouper([13, 12, 13, 11, 13, 10, 13, 3,])

    chords = []
    for group in new_new_groups:
        chord = evans.Sequence(group).grouper([5, 3, 5])
        chords.append(chord)

    handler = evans.PitchHandler(
        pitch_list=trinton.rotated_sequence(chords[octave], index),
        forget=False
    )

    handler(
        trinton.make_leaf_selection(
            score=score,
            voice=voice,
            leaves=leaves
        )
    )

trinton.handwrite(
    score=score,
    voice="piano voice",
    durations=[(1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8),],
    pitch_list=None
)

for octave, leaf, index in zip([0, 0, 0, 1, 1, 1, 2, 2, 2, 3, 3, 3, 4, 4, 4, 5, 5, 5, 6, 6, 6, 7, 7, 7,], [0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23,], [0, 1, 2, 0, 1, 2, 0, 1, 2, 0, 1, 2, 0, 1, 2, 0, 1, 2, 0, 1, 2, 0, 1, 2, ]):
    piano_climax_chords(
        score=score,
        voice="piano voice",
        leaves=[leaf],
        octave=octave,
        index=index
    )

trinton.attach(
    voice=score["piano voice"],
    leaves=[0],
    attachment=abjad.Clef("bass")
)

trinton.attach(
    voice=score["piano voice"],
    leaves=[9],
    attachment=abjad.Clef("treble")
)

trinton.ottava(
    score=score,
    voice="piano voice",
    start_ottava=[0],
    stop_ottava=[5,],
    octave=-1
)

trinton.ottava(
    score=score,
    voice="piano voice",
    start_ottava=[18],
    stop_ottava=[-1],
    octave=2
)

#\set glissandoMap = #'((2 . 0) (1 . 0) (0 . 1))

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

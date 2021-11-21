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
        abjad.Piano(),
        abjad.Cello(),
        abjad.Contrabass(),
    ],
    groups=[2, 1, 1,]
)

# time signatures

trinton.write_time_signatures(
    [
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
    ],
    score["Global Context"],
)

# test

for octave, index in zip([0, 1, 2, 3, 4,], [5, 10, 15, 20, 25,]):
    trio.toccata(
        score=score,
        voice="piano 2 voice",
        durations=[(3, 8),],
        division=64,
        octave=octave,
        index=index,
        seed=7,
        duration_bracket_notation=False
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

import abjad
import evans
import trinton
import trio
from abjadext import rmakers
from abjadext import microtones

# score

score = trinton.make_score_template(
    instruments=[
        abjad.Cello(),
    ],
    groups=[1,]
)

# time signatures

trinton.write_time_signatures(
    [
        (7, 32),
        (6, 16),
        (5, 8),
        (4, 4),
        (3, 2),
        (4, 4),
        (5, 8),
    ],
    score["Global Context"],
)

# test

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello voice"],
    durations=[(7, 32), (6, 16), (5, 8), (4, 4), (3, 2), (4, 4), (5, 8),],
    tuplets=[(1, 7), (1, 6), (1, 5), (1, 4), (1, 1, 3), (3, 1, 1, 1, 2, 2, 2, 2), (6, 1, 1)],
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

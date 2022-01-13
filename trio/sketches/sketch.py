import abjad
import evans
import trinton
import trio
from abjadext import rmakers
from abjadext import microtones

# score

score = trinton.make_score_template(
    instruments=[
        abjad.Contrabass(),
        abjad.Contrabass(),
    ],
    groups=[
        2,
    ],
)

# time signatures

trinton.write_time_signatures(
    [
        (4, 4),
        (9, 4),
    ],
    score["Global Context"],
)

# test

trio.rhythm_canon(
    score=score,
    voice="contrabass 2 voice",
    durations=[(4, 4), (9, 4)],
    talea=16,
    index=2,
)

# \set glissandoMap = #'((2 . 0) (1 . 0) (0 . 1))

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/sketches",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="sketch",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)

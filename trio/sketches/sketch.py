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
        abjad.Cello(),
        abjad.Contrabass(),
        abjad.Contrabass(),
    ],
    groups=[
        2,
        2,
    ],
)

# time signatures

trinton.write_time_signatures(
    [
        (3, 8),
    ],
    score["Global Context"],
)

# test

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=[
        "cello 1 voice",
        "cello 2 voice",
        "contrabass 1 voice",
        "contrabass 2 voice",
    ],
    durations=[(3, 8)],
    tuplets=trio.collapsing_tuplets_1,
    notation="tuplet_bracket",
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

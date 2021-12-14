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
        (12, 8),
        (12, 8),
    ],
    score["Global Context"],
)

# test

trio.cello_gliss(
    score=score,
    voice="cello voice",
    durations=[(3, 8), (3, 8), (3, 8), (3, 8),],
    seed=1,
    index=34,
    string="IV",
    duration_bracket_notation=False
)

trio.cello_gliss(
    score=score,
    voice="cello voice",
    durations=[(6, 8), (6, 8),],
    seed=1,
    index=38,
    string="II",
    duration_bracket_notation=True
)

trinton.ficta(
    score=score,
    voice="cello voice",
    start_ficta=[0],
    stop_ficta=[16]
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

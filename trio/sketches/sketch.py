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
    ],
    score["Global Context"],
)

# test

trinton.handwrite(score=score, voice="contrabass 2 voice", durations=[(1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8), (1, 8),], pitch_list=None)

trio.piano_climax_chords(score=score, voice="contrabass 2 voice", leaves=list(range(0, 8)), octave=4, index=0, seed=3)

trinton.rewrite_meter_by_voice(score=score, voices=[abjad.select(score["contrabass 2 voice"])])

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

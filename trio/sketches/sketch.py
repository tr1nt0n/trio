import abjad
import evans
import baca
import trinton
import trio
from abjadext import rmakers
from abjadext import microtones

# score

score = trio.score

# time signatures

trinton.write_time_signatures(
    [
        (3, 2),
        (1, 4),
    ],
    score["Global Context"],
)

# test

# rhythms

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (1, 2),
        (1, 2),
        (1, 2),
    ],
    pitch_list=None,
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 2 voice"],
    durations=[(1, 4)],
    tuplets=trio.collapsing_tuplets_1,
    notation="tuplet",
)

trio.pitch_matter_new(
    voice=score["contrabass 2 voice"],
    measures=[1, 2],
    selector=trinton.exclude_tuplets(),
    chord=1,
    partials=[
        2,
        3,
    ],
    transpose=0,
    markup=True,
)

# global attachments

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

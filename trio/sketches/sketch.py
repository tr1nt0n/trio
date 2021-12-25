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
    groups=[2, 2,]
)

# time signatures

trinton.write_time_signatures(
    [
        (9, 4),
    ],
    score["Global Context"],
)

# test

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 2 voice"],
    durations=[(3, 4), (4, 4), (1, 2)],
    tuplets=trio.collapsing_rhythm_1,
    duration_bracket_notation=False
)

# trinton.annotate_leaves(score)

trio.pitch_harmonic_glissandi(
    score=score,
    voice="contrabass 2 voice",
    leaves=[0, 1, 2, 3, 4, 5, 6, 7],
    strings="III and IV",
    index=0
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    attachment=abjad.Clef("bass"),
    leaves=[0]
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    attachment=abjad.Glissando(),
    leaves=all
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 2 voice",
    attachments=[abjad.Dynamic("ff"), abjad.StartHairpin(">"),],
    leaves=[1, 3, 5, 7,],
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    attachment=abjad.Dynamic("pp"),
    leaves=[0, 2, 4, 6, 8]
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    attachment=abjad.StartHairpin("<"),
    leaves=[0, 2, 4, 6]
)

trio.make_angle_spanner(
    score=score,
    voice="contrabass 2 voice",
    leaves=[0],
    direction="counterclockwise",
    left_text=0,
    position="start"
)

trio.make_angle_spanner(
    score=score,
    voice="contrabass 2 voice",
    leaves=[4],
    direction="counterclockwise",
    left_text=-45,
    position="center"
)

trio.make_angle_spanner(
    score=score,
    voice="contrabass 2 voice",
    leaves=[5],
    direction="clockwise",
    left_text=45,
    position="termination"
)

trio.stop_angle_spanner(
    score=score,
    voice="contrabass 2 voice",
    leaves=[6]
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

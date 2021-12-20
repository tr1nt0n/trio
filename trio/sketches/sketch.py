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
        (9, 4),
    ],
    score["Global Context"],
)

# test

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello voice"],
    durations=[(3, 4), (4, 4), (1, 2)],
    tuplets=trio.collapsing_rhythm_1,
    duration_bracket_notation=False
)

# trinton.annotate_leaves(score)

handler = evans.PitchHandler(
    pitch_list=[-16, 7, -16, -12, -16, 14],
    forget=False,
)

handler(abjad.select(score["cello voice"]).leaves(pitched=True))

trinton.attach(
    voice=score["cello voice"],
    attachment=abjad.Clef("bass"),
    leaves=[0, 2, 6, 8]
)

trinton.attach(
    voice=score["cello voice"],
    attachment=abjad.Clef("treble"),
    leaves=[1, 5, 7,]
)

trinton.attach(
    voice=score["cello voice"],
    attachment=abjad.Glissando(),
    leaves=all
)

for leaf in abjad.select(score["cello voice"]).leaves(pitched=True):
    abjad.tweak(leaf.note_head).style = "#'harmonic-mixed"

trinton.attach_multiple(
    score=score,
    voice="cello voice",
    attachments=[abjad.Dynamic("ff"), abjad.StartHairpin(">"),],
    leaves=[1, 3, 5, 7,],
)

trinton.attach(
    voice=score["cello voice"],
    attachment=abjad.Dynamic("pp"),
    leaves=[0, 2, 4, 6, 8]
)

trinton.attach(
    voice=score["cello voice"],
    attachment=abjad.StartHairpin("<"),
    leaves=[0, 2, 4, 6]
)

trio.write_bow_angle_span(
    score=score,
    voice="cello voice",
    markups=[-45, 45, 0],
    leaves=[0, 1, 2, 3, 4, 5, 6, 7],
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

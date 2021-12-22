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

# trinton.attach(
#     voice=score["cello voice"],
#     leaves=[0],
#     attachment=abjad.LilyPondLiteral(
#                 [
#                     r"- \abjad-dashed-line-with-arrow",
#                     rf"- \evans-counterclockwise-BAD-spanner-left-text #0",
#                     r"- \tweak bound-details.right.padding 1.4",
#                     r"- \tweak staff-padding #4.5",
#                     r"\evansStartTextSpanBAD",
#                 ],
#                 format_slot="absolute_after",
#             ),
# )
#
# trinton.attach(
#     voice=score["cello voice"],
#     leaves=[4],
#     attachment=abjad.LilyPondLiteral(
#                 [
#                     r"\evansStopTextSpanBAD",
#                     r"- \abjad-dashed-line-with-arrow",
#                     rf"- \evans-counterclockwise-BAD-spanner-left-text #-45",
#                     rf"- \evans-BAD-spanner-right-text #0",
#                     r"- \tweak bound-details.right.padding 1.4",
#                     r"- \tweak staff-padding #4.5",
#                     r"\evansStartTextSpanBAD",
#                 ],
#                 format_slot="absolute_after",
#             ),
# )
#
# trinton.attach(
#     voice=score["cello voice"],
#     leaves=[5],
#     attachment=abjad.LilyPondLiteral(
#                 [
#                     r"\evansStopTextSpanBAD",
#                 ],
#                 format_slot="absolute_after",
#             ),
# )

def make_angle_spanner(score, voice, leaves, direction, left_text, position):
    if position == "start":
        literal = abjad.LilyPondLiteral(
            [
                r"- \abjad-dashed-line-with-arrow",
                rf"- \evans-{direction}-BAD-spanner-left-text #{left_text}",
                r"- \tweak bound-details.right.padding 1.4",
                r"- \tweak staff-padding #4.5",
                r"\evansStartTextSpanBAD",
            ],
            format_slot="absolute_after",
        ),

        trinton.attach(
            voice=score[voice],
            leaves=leaves,
            attachment=literal
        )

    elif position == "center":
        literal = abjad.LilyPondLiteral(
            [
                r"\evansStopTextSpanBAD",
                r"- \abjad-dashed-line-with-arrow",
                rf"- \evans-{direction}-BAD-spanner-left-text #{left_text}",
                r"- \tweak bound-details.right.padding 1.4",
                r"- \tweak staff-padding #4.5",
                r"\evansStartTextSpanBAD",
            ],
            format_slot="absolute_after",
        ),

        trinton.attach(
            voice=score[voice],
            leaves=leaves,
            attachment=literal
        )

    elif position == "termination":
        literal = abjad.LilyPondLiteral(
            [
                r"\evansStopTextSpanBAD",
                r"- \abjad-dashed-line-with-arrow",
                rf"- \evans-{direction}-BAD-spanner-left-text #{left_text}",
                rf"- \evans-BAD-spanner-right-text #0",
                r"- \tweak bound-details.right.padding 1.4",
                r"- \tweak staff-padding #5",
                r"\evansStartTextSpanBAD",
            ],
            format_slot="absolute_after",
        ),

        trinton.attach(
            voice=score[voice],
            leaves=leaves,
            attachment=literal
        )

    else:
        pass

def stop_angle_spanner(score, voice, leaves):
    trinton.attach(
        voice=score[voice],
        leaves=leaves,
        attachment=abjad.LilyPondLiteral(
                    [
                        r"\evansStopTextSpanBAD",
                    ],
                    format_slot="absolute_after",
                ),
    )

make_angle_spanner(
    score=score,
    voice="cello voice",
    leaves=[0],
    direction="counterclockwise",
    left_text=0,
    position="start"
)

make_angle_spanner(
    score=score,
    voice="cello voice",
    leaves=[4],
    direction="counterclockwise",
    left_text=-45,
    position="center"
)

make_angle_spanner(
    score=score,
    voice="cello voice",
    leaves=[5],
    direction="clockwise",
    left_text=45,
    position="termination"
)

stop_angle_spanner(
    score=score,
    voice="cello voice",
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

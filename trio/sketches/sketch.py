import abjad
import evans
import trinton
import trio
from abjadext import rmakers
from abjadext import microtones

# score

score = trio.score

# time signatures

trinton.write_time_signatures(
    [
        (4, 4),
    ],
    score["Global Context"],
)

# test

# for voice in ["cello 2 voice", "piano 1 voice", "contrabass 2 voice",]:
#
#     for string, index in zip(["I", "II", "III", "IV"], [0, 9, 2, 13]):
#         trio.cello_gliss(
#             score=score,
#             voice=voice,
#             durations=[(1, 4),],
#             seed=4,
#             index=index,
#             string=string,
#             notation="tuplet_bracket",
#         )
#
#     trinton.beam_runs_by_selection(
#         score=score,
#         voice=voice,
#         start_beam=[9],
#         stop_beam=[12],
#         beam_rests=False
#     )
#
# for string, leaves in zip(["I", "II", "III", "IV"], [list(range(0, 6)), list(range(6, 9)), list(range(9, 13)), list(range(13, 20))]):
#     trio.pitch_cello_gliss_piano(score=score, voice="piano 1 voice", leaves=leaves, string=string)
#
# for string, leaves in zip(["I and II", "II and III", "III and IV", "II and III"], [list(range(0, 6)), list(range(6, 9)), list(range(9, 13)), list(range(13, 20))]):
#     trio.pitch_contrabass_glissandi(score=score, voice="contrabass 2 voice", leaves=leaves, strings=string)
#
# trinton.append_rests(
#     score=score,
#     voice="piano 2 voice",
#     rests=[abjad.Skip("r1")]
# )
#
# trinton.attach(
#     voice=score["contrabass 2 voice"],
#     leaves=[0],
#     attachment=abjad.Clef("bass")
# )
#
# trinton.handwrite(
#     score=score,
#     voice="contrabass 1 voice",
#     durations=[(1, 4), (1, 4), (1, 4), (1, 4),],
#     pitch_list=[-5, -1, 2, 5,],
# )
#
# trinton.attach_multiple(
#     score=score,
#     voice="contrabass 1 voice",
#     leaves=[0],
#     attachments=[
#         abjad.LilyPondLiteral(
#             r"\staff-line-count 4",
#             format_slot="absolute_before",
#             ),
#         abjad.Clef("percussion")
#         ]
# )
#
# trinton.annotate_leaves(score)
#
# trio.small_knee(score=score, voice="piano 1 voice", start=0, stop=19)
#
# trio.change_staff(score=score, voice="piano 1 voice", lh=[1, 3, 5, 7, 9, 11, 13, 15, 17, 19,], rh=[0, 2, 4, 6, 8, 10, 12, 14, 16, 18],)

trio.contrabass_beating_rhythms(
    score=score,
    voice="contrabass 2 voice",
    durations=[(1, 4), (1, 4), (1, 4), (1, 4),],
    seed=1,
    index=0,
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

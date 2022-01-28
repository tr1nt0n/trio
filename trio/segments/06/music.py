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
        (4, 2),
        (4, 2),
        (4, 2),
        (4, 2),
        (3, 2),
    ],
    score["Global Context"],
)

# piano

trio.cello_gliss(
    score=score,
    voice="piano 1 voice",
    durations=[
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
    ],
    seed=15,
    index=24,
    string="I",
    notation="duration_bracket",
)

trinton.append_rests(score=score, voice="piano 2 voice", rests=[abjad.Skip("r1..")])

for voice_name in ["piano 1 voice", "piano 2 voice"]:

    trinton.handwrite(
        score=score, voice=voice_name, durations=[(1, 4), (3, 2)], pitch_list=None
    )

    trio.harmonic_glissandi_rhythms(
        score=score,
        voices=[voice_name],
        durations=[(7, 16), (7, 16), (7, 16), (7, 16)],
        tuplets=trio.collapsing_tuplets_2,
        notation="duration_bracket",
    )

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[
        abjad.Skip("r1.."),
        abjad.Skip("r1.."),
    ],
)

trio.toccata_rhythms(
    score=score,
    voice="piano 1 voice",
    durations=[(7, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trio.cello_gliss(
    score=score,
    voice="piano 1 voice",
    durations=[
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
    ],
    seed=15,
    index=24,
    string="II",
    notation="duration_bracket",
)

for voice_name in ["piano 1 voice", "piano 2 voice"]:

    trinton.handwrite(
        score=score, voice=voice_name, durations=[(3, 4)], pitch_list=None
    )

for voice_name, leaf in zip(["piano 1 voice", "piano 2 voice"], [41, 1]):
    trinton.attach(voice=score[voice_name], leaves=[leaf], attachment=abjad.Tie())

# cello

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[
        (5, 16),
        (5, 16),
        (5, 16),
        (5, 16),
    ],
    tuplets=trio.collapsing_tuplets_1,
    notation="duration_bracket",
)

trio.toccata_rhythms(
    score=score,
    voice="cello 2 voice",
    durations=[(5, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trinton.handwrite(
    score=score, voice="cello 2 voice", durations=[(5, 4)], pitch_list=None
)

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
        (1, 4),
    ],
    seed=15,
    index=24,
    string="IV",
    notation="duration_bracket",
)

trinton.append_rests(
    score=score,
    voice="cello 1 voice",
    rests=[
        abjad.Rest("r2."),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
        abjad.Rest("r1"),
    ],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[
        (5, 16),
        (5, 16),
        (5, 16),
        (5, 16),
    ],
    tuplets=trio.collapsing_tuplets_3,
    notation="duration_bracket",
)

trio.toccata_rhythms(
    score=score,
    voice="cello 2 voice",
    durations=[(5, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trinton.handwrite(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 2),
        (3, 4),
    ],
    pitch_list=None,
)

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 4),
        (1, 4),
        (1, 4),
    ],
    seed=13,
    index=30,
    string="II",
    notation="duration_bracket",
)

trinton.append_rests(
    score=score, voice="cello 1 voice", rests=[abjad.Rest("r1.."), abjad.Rest("r1.")]
)

trinton.attach(voice=score["cello 2 voice"], leaves=[102], attachment=abjad.Tie())

# bass

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[(3, 4)],
    pitch_list=None,
)

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (3, 4),
    ],
    seed=13,
    index=29,
    string="II",
    notation="duration_bracket",
)

trinton.append_rests(score=score, voice="contrabass 1 voice", rests=[abjad.Rest("r1.")])

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
    ],
    tuplets=trio.collapsing_tuplets_2,
    notation="duration_bracket",
)

trio.toccata_rhythms(
    score=score,
    voice="contrabass 2 voice",
    durations=[(3, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[(3, 4)],
    pitch_list=None,
)

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (3, 4),
    ],
    seed=13,
    index=30,
    string="II",
    notation="duration_bracket",
)

trinton.append_rests(
    score=score,
    voice="contrabass 1 voice",
    rests=[abjad.Rest("r2."), abjad.Rest("r1"), abjad.Rest("r2")],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
    ],
    tuplets=trio.collapsing_tuplets_1,
    notation="duration_bracket",
)

trio.toccata_rhythms(
    score=score,
    voice="contrabass 2 voice",
    durations=[(3, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[(3, 4)],
    pitch_list=None,
)

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (3, 4),
    ],
    seed=13,
    index=31,
    string="II",
    notation="duration_bracket",
)

trinton.append_rests(
    score=score,
    voice="contrabass 1 voice",
    rests=[
        abjad.Rest("r2."),
        abjad.Rest("r1."),
    ],
)

trio.harmonic_glissandi_rhythms(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[
        (3, 16),
        (3, 16),
        (3, 16),
        (3, 16),
    ],
    tuplets=trio.collapsing_tuplets_3,
    notation="duration_bracket",
)

trio.toccata_rhythms(
    score=score,
    voice="contrabass 2 voice",
    durations=[(3, 4)],
    division=16,
    extra_counts=[4],
    notation="duration_bracket",
)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[(1, 2)],
    pitch_list=None,
)

trinton.append_rests(
    score=score,
    voice="contrabass 1 voice",
    rests=[
        abjad.Rest("r4"),
        abjad.Rest("r1"),
    ],
)

# annotate leaves

trinton.annotate_leaves(score)

# margin markups and standard cleffing

trio.write_marginmarkups(score=score)


# global attachments

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[0],
    attachments=[abjad.MetronomeMark((1, 2), 65), trio.rehearsal_mark6],
)

# piano pitching/attachments

# trio.pitch_cello_gliss_piano(
#     voice=score["piano 1 voice"],
#     measures=[1, 2, 3, 4, 5,],
#     selector=trio.select_tuplets_by_annotation(trio.vib),
#     string="I"
# )

# cello pitching/attachments


# contrabass pitching/attachments


# whiteout empty staves

# for voice in trio.all_voices:
#     trinton.whiteout_empty_staves(score=score, voice=voice, cutaway=True)

# extract parts

# trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/segments/06",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="06",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)

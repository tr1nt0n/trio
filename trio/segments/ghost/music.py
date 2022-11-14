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
        (2, 4),
        (3, 4),
    ],
    score["Global Context"],
)

# piano

for voice in [
    "piano 1 voice",
    "piano 2 voice",
    "contrabass 1 voice",
    "contrabass 2 voice",
    "cello 1 voice",
]:
    trinton.append_rests(score=score, voice=voice, rests=[abjad.Rest("r2")])


trinton.make_and_append_rhythm_selections(
    score=score,
    voice_name="piano 1 voice",
    rmaker=rmakers.tuplet([(1, 4), (1, 4), (1, 4)], [(1, 1, 1, 1, 1, 1)]),
    rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
)

trinton.handwrite(
    score=score,
    voice="piano 2 voice",
    durations=[(1, 2), (1, 4)],
    pitch_list=[[-39, -38, -37, -36, -35], -34],
)

handler = evans.PitchHandler(
    pitch_list=trinton.transpose(
        l=[
            9,
            13,
            16,
            21,
            16,
            13,
            7,
            13,
            16,
            19,
            16,
            13,
            6,
            9,
            14,
            18,
            14,
            9,
        ],
        m=24,
    ),
    forget=False,
)

handler(abjad.select.leaves(score["piano 1 voice"], pitched=True))

# cello

trinton.handwrite(
    score=score,
    voice="cello 2 voice",
    durations=[
        (
            1,
            16,
        ),
        (1, 16),
    ],
    pitch_list=[
        -13,
        -8,
    ],
)

trinton.append_rests(score=score, voice="cello 2 voice", rests=[abjad.Rest("r16.")])

trinton.handwrite(
    score=score,
    voice="cello 2 voice",
    durations=[
        (
            1,
            32,
        ),
        (1, 32),
        (
            1,
            32,
        ),
        (1, 32),
    ],
    pitch_list=[
        -13,
        -8,
    ],
)

trinton.append_rests(score=score, voice="cello 2 voice", rests=[abjad.Rest("r16")])

trinton.handwrite(
    score=score,
    voice="cello 2 voice",
    durations=[
        (
            1,
            64,
        ),
        (1, 64),
    ],
    pitch_list=[
        -15,
        -7,
    ],
)

trinton.append_rests(score=score, voice="cello 2 voice", rests=[abjad.Rest("r16")])

trinton.handwrite(
    score=score,
    voice="cello 2 voice",
    durations=[
        (7, 16),
        (1, 16),
        (1, 4),
    ],
    pitch_list=[-5, -3, -6],
)

for voice, pitch in zip(["cello 1 voice", "contrabass 1 voice"], [2, 5]):

    trinton.handwrite(score=score, voice=voice, durations=[(3, 4)], pitch_list=[pitch])

trio.standard_cleffing(score)

# bass

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[(1, 2), (1, 4)],
    pitch_list=[1, 2],
)

trinton.rewrite_meter(score)
trinton.beam_score(score)
# trinton.annotate_leaves(score)

trio.write_marginmarkups(score=score)

# global attachments

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[0, -1],
    attachments=[
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "absolute_after"
        ),
        abjad.BarLine("||"),
    ],
)

for leaf, attachments in zip(
    [
        0,
        1,
    ],
    [[abjad.MetronomeMark((1, 4), 35), trio.rehearsal_mark7], [trio.rehearsal_mark8]],
):
    trinton.attach_multiple(
        score=score, voice="Global Context", leaves=[leaf], attachments=attachments
    )

# piano attachments

trinton.attach(voice=score["piano 2 voice"], attachment=abjad.Clef("bass"), leaves=[1])

trinton.ottava(
    score=score, voice="piano 1 voice", start_ottava=[1], stop_ottava=[18], octave=2
)

trinton.ottava(
    score=score, voice="piano 2 voice", start_ottava=[1], stop_ottava=[2], octave=-2
)

for voice_name in [
    "piano 1 voice",
    "piano 2 voice",
]:
    measures = abjad.select.group_by_measure(abjad.select.leaves(score[voice_name]))
    measure_2_leaves = abjad.select.leaves(measures[1])
    abjad.attach(abjad.StartPhrasingSlur(), measure_2_leaves[0])
    abjad.attach(abjad.StopPhrasingSlur(), measure_2_leaves[-1])

for voice_name in ["cello 2 voice", "contrabass 2 voice"]:
    measures = abjad.select.group_by_measure(abjad.select.leaves(score[voice_name]))
    measure_2_leaves = abjad.select.leaves(measures[1])
    trinton.dashed_slur(measure_2_leaves[0], measure_2_leaves[-1])

for attachments, leaf in zip(
    [
        [abjad.Dynamic("ppp"), abjad.StartHairpin("--")],
        [abjad.StopHairpin()],
    ],
    [1, 18],
):
    trinton.attach_multiple(
        score=score, voice="piano 1 voice", leaves=[leaf], attachments=attachments
    )

for attachments, leaf in zip(
    [
        [abjad.Dynamic("ppp")],
        [abjad.Dynamic("pp"), abjad.Articulation("tenuto")],
    ],
    [
        1,
        2,
    ],
):
    trinton.attach_multiple(
        score=score, voice="piano 2 voice", leaves=[leaf], attachments=attachments
    )

# cello attachments

for leaf, dynamic in zip(
    [0, 3, 9], [abjad.Dynamic("f"), abjad.Dynamic("p"), abjad.Dynamic("mp")]
):
    trinton.attach(voice=score["cello 2 voice"], leaves=[leaf], attachment=dynamic)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "1/2 CLT" 1', "after"),
)

trinton.attach(
    voice=score["cello 1 voice"],
    leaves=[1],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Crine" 1', "after"),
)

for voice in ["cello 1 voice", "contrabass 1 voice"]:
    trinton.unmeasured_stem_tremolo(abjad.select.leaves(score[voice], pitched=True))

    trinton.attach(
        voice=score[voice],
        leaves=[1],
        attachment=abjad.LilyPondLiteral(r"- \baca-circle-fast-markup", "after"),
    )

    trinton.attach(voice=score[voice], leaves=[1], attachment=abjad.Dynamic("p"))

    trinton.transparent_accidentals(
        score=score,
        voice=voice,
        leaves=all,
    )

# fill empty staves with skips

for voice in [
    score["piano 1 voice"],
    score["piano 2 voice"],
    score["cello 1 voice"],
    score["cello 2 voice"],
    score["contrabass 1 voice"],
    score["contrabass 2 voice"],
]:
    trinton.fill_empty_staves_with_skips(voice=voice)

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/segments/ghost",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="ghost",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

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
        (5, 4),
        (5, 4),
        (5, 4),
        (3, 4),
        (3, 4),
        (1, 8),
        (1, 4),
    ],
    score["Global Context"],
)

# piano

for pair in [
    (5, 4),
    (5, 4),
    (5, 4),
]:
    rest = abjad.Skip((1, 1), multiplier=abjad.Multiplier(pair))
    trinton.append_rests(score=score, voice="piano 2 voice", rests=[rest])

trio.cello_gliss(
    score=score,
    voice="piano 1 voice",
    durations=[
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 4),
        (1, 8),
        (3, 8),
        (3, 8),
        (1, 8),
        (1, 4),
        (1, 4),
        (1, 4),
        (5, 8),
        (1, 4),
        (3, 8),
    ],
    seed=7,
    index=26,
    string="I",
    notation="tuplet",
)


for voice in ["piano 1 voice", "piano 2 voice"]:
    trinton.append_rests(
        score=score,
        voice=voice,
        rests=[abjad.Rest("r2."), abjad.Rest("r2."), abjad.Rest("r8")],
    )

abjad.override(
    abjad.Selection(score["piano 1 voice"]).tuplet(7)
).TupletNumber.text = abjad.Markup(r"\markup \italic { 4:5 }")

# cello

for voice in ["cello 1 voice", "contrabass 1 voice"]:
    for pair in [
        (5, 4),
        (5, 4),
        (5, 4),
        (3, 4),
        (3, 4),
        (1, 8),
    ]:
        rest = abjad.Rest((1, 1), multiplier=abjad.Multiplier(pair))
        trinton.append_rests(score=score, voice=voice, rests=[rest])

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 8),
        (1, 4),
        (1, 8),
        (3, 8),
        (3, 8),
    ],
    seed=3,
    index=26,
    string="I",
    notation="tuplet",
)

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 8),
        (1, 4),
        (1, 4),
        (1, 4),
        (5, 8),
    ],
    seed=2,
    index=35,
    string="III",
    notation="tuplet",
)

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[
        (1, 4),
        (3, 8),
        (1, 8),
        (1, 4),
        (3, 8),
    ],
    seed=7,
    index=24,
    string="II",
    notation="tuplet",
)

trio.cello_gliss(
    score=score,
    voice="cello 2 voice",
    durations=[(3, 4), (1, 8)],
    seed=2,
    index=3,
    string="IV",
    notation="tuplet",
)

abjad.override(
    abjad.Selection(score["cello 2 voice"]).tuplet(7)
).TupletNumber.text = abjad.Markup(r"\markup \italic { 6:5 }")

# bass

trio.cello_gliss(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (1, 8),
        (1, 8),
        (3, 8),
        (3, 8),
        (1, 8),
        (1, 8),
        (1, 4),
        (3, 4),
    ],
    seed=15,
    index=27,
    string="I",
    notation="tuplet",
)

trinton.append_rests(
    score=score,
    voice="contrabass 2 voice",
    rests=[
        abjad.Rest("r4"),
        abjad.Rest("r2."),
        abjad.Rest("r2"),
        abjad.Rest("r2."),
        abjad.Rest("r2."),
        abjad.Rest("r8"),
    ],
)

for voice in trio.all_voices:

    trinton.append_rests(score=score, voice=voice, rests=[abjad.Rest("r4")])

# beaming

trinton.rewrite_meter(score)
trinton.beam_score(score)

trinton.annotate_leaves(score)

# margin markups and standard cleffing

trio.write_marginmarkups(score=score)


# global attachments

trinton.attach(
    voice=score["Global Context"], leaves=[0], attachment=trio.rehearsal_mark3
)

trinton.attach(
    voice=score["Global Context"], leaves=[-1], attachment=abjad.BarLine("||")
)

# piano pitching/attachments

for voice in ["piano 1 voice", "piano 2 voice", "cello 2 voice"]:
    trinton.attach(voice=score[voice], leaves=[0], attachment=abjad.Clef("treble"))

for voice in [
    "piano 1 voice",
    "cello 2 voice",
    "contrabass 2 voice",
]:
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[0],
        attachments=[
            abjad.Dynamic("fff"),
            abjad.Articulation(">"),
            abjad.StartHairpin(">o"),
        ],
    )

for voice, leaf in zip(
    [
        "piano 1 voice",
        "cello 2 voice",
        "contrabass 2 voice",
    ],
    [
        61,
        98,
        42,
    ],
):
    trinton.attach(voice=score[voice], leaves=[leaf], attachment=abjad.StopHairpin())

for leaves, string in zip(
    [list(range(0, 40)), list(range(40, 56)), list(range(56, 62))],
    ["I", "III", "II", "IV"],
):
    trio.pitch_cello_gliss_piano(
        score=score, voice="piano 1 voice", leaves=leaves, string=string
    )

# cello pitching/attachments


# contrabass pitching/attachments

trinton.attach(
    voice=score["contrabass 2 voice"], leaves=[0], attachment=abjad.Clef("bass")
)

for leaves, string in zip(
    [list(range(0, 15)), list(range(15, 36)), list(range(36, 42))],
    ["I and II", "II and III", "III and IV"],
):
    trio.pitch_contrabass_glissandi(
        score=score, voice="contrabass 2 voice", leaves=leaves, strings=string
    )

# fermate

trinton.populate_fermata_measures(
    score=score,
    voices=trio.all_voices_include_ts_context,
    leaves=[
        [
            9,
        ],
        [65],
        [
            9,
        ],
        [
            9,
        ],
        [
            99,
        ],
        [
            9,
        ],
        [
            48,
        ],
    ],
    fermata_measures=None,
)

# whiteout empty staves

# for voice in trio.all_voices:
#     trinton.whiteout_empty_staves(score=score, voice=voice, cutaway=True)

# extract parts

# trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/segments/03",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)

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

# trinton.annotate_leaves(score)

# margin markups and standard cleffing

trio.write_marginmarkups(score=score)


# global attachments

trinton.attach(
    voice=score["Global Context"], leaves=[0], attachment=trio.rehearsal_mark3
)

# piano pitching/attachments

for voice in ["piano 1 voice", "piano 2 voice", "cello 2 voice"]:
    trinton.attach(voice=score[voice], leaves=[0], attachment=abjad.Clef("treble"))

for voice in [
    "piano 2 voice",
    "cello 2 voice",
    "contrabass 2 voice",
]:
    trinton.attach_multiple(
        score=score,
        voice=voice,
        leaves=[0],
        attachments=[
            abjad.Dynamic("fff"),
            abjad.StartHairpin(">o"),
        ],
    )

trinton.attach(
    voice=score["piano 2 voice"], leaves=[5], attachment=abjad.Dynamic("ppp")
)

invisible_fff = abjad.Dynamic("fff")

abjad.tweak(invisible_fff).transparent = True

trinton.attach(voice=score["piano 1 voice"], leaves=[0], attachment=invisible_fff)


for leaves, string in zip(
    [list(range(0, 40)), list(range(40, 56)), list(range(56, 62))],
    ["I", "III", "II", "IV"],
):
    trio.pitch_cello_gliss_piano(
        score=score, voice="piano 1 voice", leaves=leaves, string=string
    )

trio.change_staff(
    score=score,
    voice="piano 1 voice",
    lh=[
        1,
        3,
        5,
        7,
        9,
        11,
        13,
        15,
        17,
        19,
        21,
        23,
        25,
        27,
        29,
        31,
        32,
        33,
        35,
        37,
        39,
        41,
        43,
        45,
        46,
        47,
        49,
        51,
        53,
        57,
        59,
    ],
    rh=[
        2,
        4,
        6,
        8,
        10,
        12,
        14,
        16,
        18,
        20,
        22,
        24,
        26,
        28,
        30,
        32,
        34,
        36,
        38,
        40,
        42,
        44,
        46,
        48,
        50,
        52,
        54,
        58,
        61,
    ],
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[
        0,
        3,
        8,
        14,
        18,
        22,
        30,
        34,
        38,
        45,
        46,
        50,
        53,
        55,
        59,
    ],
    attachment=abjad.Articulation(">"),
)

for tuplet in [abjad.select(score["piano 1 voice"]).tuplet(_) for _ in [0, 2, 3, 5, 8]]:
    abjad.tweak(tuplet).direction = abjad.Up

# cello attachments

for voice, leaf in zip(
    [
        "cello 2 voice",
        "contrabass 2 voice",
    ],
    [
        98,
        42,
    ],
):
    trinton.attach(voice=score[voice], leaves=[leaf], attachment=abjad.StopHairpin())

trinton.ottava(
    score=score,
    voice="cello 2 voice",
    start_ottava=[
        0,
        60,
    ],
    stop_ottava=[
        34,
        85,
    ],
    octave=1,
)

trinton.glissando(
    score=score,
    voice="cello 2 voice",
    start_gliss=[
        25,
        81,
        83,
    ],
    stop_gliss=[
        27,
        83,
        85,
    ],
)

for l in [
    list(range(0, 25)),
    list(range(27, 34)),
    list(range(35, 59)),
    list(range(60, 81)),
    list(range(86, 98)),
]:

    trinton.attach(voice=score["cello 2 voice"], leaves=l, attachment=abjad.Glissando())

trinton.ficta(
    score=score,
    voice="cello 2 voice",
    start_ficta=[
        0,
    ],
    stop_ficta=[
        98,
    ],
)

trinton.attach(
    voice=score["cello 2 voice"],
    leaves=[
        0,
        5,
        11,
        15,
        17,
        20,
        27,
        30,
        38,
        46,
        49,
        55,
        58,
        62,
        69,
        72,
        77,
        85,
        90,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.write_slur(
    voice=score["cello 2 voice"],
    start_slur=[
        0,
        5,
        11,
        15,
        17,
        20,
        27,
        30,
        38,
        46,
        49,
        55,
        58,
        62,
        69,
        72,
        77,
        85,
        90,
    ],
    stop_slur=[
        4,
        10,
        14,
        16,
        19,
        26,
        29,
        37,
        45,
        48,
        54,
        57,
        61,
        68,
        71,
        76,
        84,
        89,
        98,
    ],
)

for leaf, string in zip(
    [
        0,
        35,
        60,
        86,
    ],
    ["I", "III", "II", "IV"],
):
    trio.attach_string_markup(
        score=score, voice="cello 2 voice", leaves=[leaf], string=string
    )

trinton.write_text_span(
    voice=score["cello 2 voice"],
    begin_text=r"\markup \italic { MSP }",
    end_text=r"\markup \italic { ST }",
    start_leaf=[
        0,
    ],
    stop_leaf=[
        58,
    ],
    padding=15.5,
)

trinton.write_text_span(
    voice=score["cello 2 voice"],
    begin_text=r"\markup \italic { ST }",
    end_text=r"\markup \italic { MSP }",
    start_leaf=[
        72,
    ],
    stop_leaf=[
        85,
    ],
    padding=10,
)

trinton.write_text_span(
    voice=score["cello 2 voice"],
    begin_text=r"\markup \italic { MSP }",
    end_text=r"\markup \italic { MST }",
    start_leaf=[
        87,
    ],
    stop_leaf=[
        98,
    ],
    padding=8,
)

trio.finger_pressure(
    score=score,
    voice="cello 2 voice",
    half=[
        5,
        6,
        7,
        8,
        9,
        10,
        15,
        16,
        20,
        21,
        22,
        23,
        24,
        25,
        58,
        59,
        60,
        61,
        69,
        70,
        71,
        90,
        91,
        92,
        93,
    ],
    harm=[
        94,
        95,
        96,
        97,
        98,
    ],
)

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[
        0,
    ],
    stop_ottava=[
        52,
    ],
    octave=1,
)

trinton.ottava(
    score=score,
    voice="piano 2 voice",
    start_ottava=[
        0,
    ],
    stop_ottava=[
        3,
    ],
    octave=1,
)


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

trinton.ficta(score=score, voice="contrabass 2 voice", start_ficta=[0], stop_ficta=[41])

trinton.glissando(
    score=score,
    voice="contrabass 2 voice",
    start_gliss=[
        19,
        21,
        37,
        39,
    ],
    stop_gliss=[
        21,
        23,
        39,
        41,
    ],
)

for l in [
    list(
        range(
            0,
            14,
        )
    ),
    list(range(15, 19)),
    list(range(23, 35)),
    list(
        range(
            36,
            37,
        )
    ),
]:
    trinton.attach(
        voice=score["contrabass 2 voice"], leaves=l, attachment=abjad.Glissando()
    )

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        0,
        15,
        24,
        36,
    ],
    attachment=abjad.Articulation(">"),
)

trinton.write_slur(
    voice=score["contrabass 2 voice"],
    start_slur=[
        0,
        15,
        24,
        36,
    ],
    stop_slur=[
        14,
        23,
        35,
        41,
    ],
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "low string portamento" 1', format_slot="after"
    ),
)

trinton.write_text_span(
    voice=score["contrabass 2 voice"],
    begin_text=r"\markup \italic { MSP }",
    end_text=r"\markup \italic { MST }",
    start_leaf=[
        0,
    ],
    stop_leaf=[
        41,
    ],
    padding=15.5,
)

# fermate

trinton.populate_fermata_measures(
    score=score,
    voices=trio.all_voices_include_ts_context,
    leaves=[
        [
            9,
        ],
        [
            65,
        ],
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

trinton.attach(
    voice=score["Global Context"], leaves=[-1], attachment=abjad.BarLine("||")
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
    segment_path="/Users/trintonprater/scores/trio/trio/segments/03",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="03",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ],
)

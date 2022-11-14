import abjad
import baca
import evans
import trinton
import trio
import fractions
from abjadext import rmakers
from abjadext import microtones

# score

score = trio.score

# time signatures

trinton.write_time_signatures(
    [
        (5, 4),
        (9, 4),
        (3, 4),
        (5, 4),
        (6, 8),
        (5, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (5, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (1, 4),
    ],
    score["Global Context"],
)

# fill voices with rests

for voice_name in ["piano 1 voice", "piano 2 voice", "cello 1 voice", "cello 2 voice"]:
    for pair in [
        (5, 4),
        (9, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (3, 4),
        (3, 4),
        (5, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (5, 4),
        (3, 4),
        (1, 4),
    ]:
        skip = abjad.Skip((1, 1), multiplier=abjad.Multiplier(pair))
        score[voice_name].append(skip)

# contrabass rhythms

trio.toccata_rhythms(
    score=score,
    voice="contrabass 1 voice",
    durations=[
        (5, 4),
        (9, 4),
        (3, 4),
    ],
    division=8,
    extra_counts=[1, 8, 4],
    notation="tuplet",
)

trio.toccata_rhythms(
    score=score,
    voice="contrabass 1 voice",
    durations=[
        (5, 4),
    ],
    division=2,
    extra_counts=[0],
    notation="tuplet",
)

trio.toccata_rhythms(
    score=score,
    voice="contrabass 1 voice",
    durations=[
        (3, 4),
    ],
    division=4,
    extra_counts=[-1],
    notation="tuplet",
)

trinton.make_and_append_rhythm_selections(
    score=score,
    voice_name="contrabass 1 voice",
    rmaker=rmakers.accelerando(
        [
            (3, 4),
        ],
        [(1, 20), (1, 8), (1, 32)],
    ),
    rmaker_commands=[rmakers.beam, rmakers.duration_bracket],
)

trinton.make_and_append_rhythm_selections(
    score=score,
    voice_name="contrabass 1 voice",
    rmaker=rmakers.tuplet(
        [
            (1, 2),
            (1, 4),
            (1, 8),
            (3, 8),
            (1, 4),
            (1, 2),
            (3, 8),
        ],
        trio.collapsing_tuplets_3,
    ),
    rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
)

trio.matter_broken_rhythms(
    score=score,
    voice="contrabass 1 voice",
    stack=1,
    durations=[
        (3, 8),
    ],
)

trinton.append_rests(score=score, voice="contrabass 1 voice", rests=[abjad.Rest("r2.")])

trio.matter_broken_rhythms(
    score=score,
    voice="contrabass 1 voice",
    stack=1,
    durations=[
        (1, 2),
    ],
)

trinton.append_rests(
    score=score, voice="contrabass 1 voice", rests=[abjad.Rest("r2"), abjad.Rest("r8")]
)

trio.matter_broken_rhythms(
    score=score,
    voice="contrabass 1 voice",
    stack=2,
    durations=[
        (5, 8),
    ],
)

trinton.append_rests(
    score=score,
    voice="contrabass 1 voice",
    rests=[
        abjad.Rest("r4"),
    ],
)

trinton.make_and_append_rhythm_selections(
    score=score,
    voice_name="contrabass 1 voice",
    rmaker=rmakers.tuplet(
        [
            (1, 4),
            (1, 4),
            (5, 8),
        ],
        trinton.rotated_sequence(pitch_list=trio.collapsing_tuplets_2, start_index=1),
    ),
    rmaker_commands=[trinton.treat_tuplets(), rmakers.beam],
)

for pair in [
    (5, 8),
    (3, 4),
    (5, 4),
    (3, 4),
    (1, 4),
]:
    skip = abjad.Skip((1, 1), multiplier=abjad.Multiplier(pair))
    score["contrabass 1 voice"].append(skip)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (1, 4),
    ],
    pitch_list=None,
)

trinton.append_rests(
    score=score,
    voice="contrabass 2 voice",
    rests=[abjad.Skip("r1"), abjad.Skip("r1."), abjad.Skip("r2."), abjad.Skip("r2.")],
)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (1, 4),
    ],
    pitch_list=None,
)

trinton.append_rests(
    score=score, voice="contrabass 2 voice", rests=[abjad.Skip("r1"), abjad.Skip("r2.")]
)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (19, 16),
        (1, 16),
        (3, 16),
        (1, 16),
        (3, 32),
        (1, 32),
        (5, 16),
        (1, 16),
        (3, 16),
        (1, 16),
        (7, 16),
        (1, 16),
        (5, 16),
        (1, 16),
        (5, 16),
        (1, 16),
    ],
    pitch_list=None,
)

trio.contrabass_glissandi_rhythms(
    score=score,
    voice_name="contrabass 2 voice",
    durations=[
        (3, 4),
    ],
)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (7, 16),
        (1, 16),
    ],
    pitch_list=None,
)

trio.contrabass_glissandi_rhythms(
    score=score,
    voice_name="contrabass 2 voice",
    durations=[
        (5, 8),
    ],
)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (9, 16),
        (1, 16),
        # (3, 16),
        # (1, 16),
        # (3, 16),
        # (1, 16),
        # (3, 16),
        # (1, 16),
        # (9, 16),
        # (1, 16),
    ],
    pitch_list=None,
)

trio.contrabass_glissandi_rhythms(
    score=score,
    voice_name="contrabass 2 voice",
    durations=[
        (1, 4),
    ],
)

trinton.handwrite(
    score=score,
    voice="contrabass 2 voice",
    durations=[
        (3, 16),
        (1, 16),
        (3, 16),
        (1, 16),
        (9, 16),
        (1, 16),
    ],
    pitch_list=None,
)

trio.contrabass_glissandi_rhythms(
    score=score,
    voice_name="contrabass 2 voice",
    durations=[
        (5, 8),
        (3, 4),
        (5, 4),
        (3, 4),
    ],
)

trinton.append_rests(score=score, voice="contrabass 2 voice", rests=[abjad.Skip("r4")])

for tuplet in abjad.select.tuplets(score["contrabass 2 voice"]):
    abjad.override(tuplet).TupletNumber.text = r"\markup \italic { 4:5 }"

abjad.override(
    abjad.select.tuplet(score["contrabass 1 voice"], -1)
).TupletNumber.text = r"\markup \italic { 13:10 }"

trinton.reduce_tuplets(
    score=score,
    voice="contrabass 1 voice",
    tuplets=[
        1,
        2,
    ],
)


# meter rewriting and beaming

trinton.rewrite_meter_by_voice(
    score=score,
    voice_indeces=[
        3,
    ],
)

# trinton.beam_score(score)

trinton.beam_score_by_voice(score=score, voices=[score["contrabass 2 voice"]])

# margin markups

trio.write_marginmarkups(score=score)

# annotate leaves

# trinton.annotate_leaves(score)

# global attachments

# trinton.attach(
#     voice=score["Global Context"],
#     leaves=[
#         11,
#     ],
#     attachment=abjad.LilyPondLiteral(r"\pageBreak", "absolute_after"),
# )

trinton.attach(
    voice=score["Global Context"],
    leaves=[-2],
    attachment=abjad.MetronomeMark((1, 4), 47),
)

trinton.write_text_span(
    voice=score["Global Context"],
    begin_text=r"\markup \italic \halign #-1.3 \abs-fontsize #8.5 { Rit. poco a poco }",
    end_text=r"\markup { . }",
    start_leaf=[0],
    stop_leaf=[-2],
    padding=10.5,
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[0],
    attachments=[
        trio.rehearsal_mark11,
    ],
)

# contrabass pitching/attachments

trinton.attach(
    voice=score["contrabass 2 voice"], leaves=[0], attachment=abjad.Clef("bass")
)

III_IV_handler = evans.PitchHandler(
    pitch_list=[
        [trio._open_strings_to_pitches["III"], trio._open_strings_to_pitches["IV"]]
    ],
    forget=False,
)

III_IV_handler(abjad.select.leaves(score["contrabass 1 voice"], pitched=True))

detune_handler = evans.PitchHandler(
    pitch_list=[
        -20,
        -25,
    ],
    forget=False,
)

detune_handler(
    trinton.make_leaf_selection(
        score=score,
        voice="contrabass 2 voice",
        leaves=[
            0,
            5,
        ],
    )
)

pull_handler = evans.PitchHandler(
    pitch_list=[
        0,
        1,
        0,
        0.5,
        0,
        fractions.Fraction(1, 4),
        0,
        0.5,
        0,
        fractions.Fraction(1, 4),
    ],
    forget=False,
)

contrabass_2_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["contrabass 2 voice"])
)

for n in list(range(6, 17)):
    selections = []

    for leaf in abjad.select.leaves(contrabass_2_measures[n - 1], pitched=True):
        if abjad.get.annotation(leaf, trio.vib) is True:
            pass
        else:
            selections.append(leaf)

    pull_handler(selections)

contrabass_2_measures = abjad.select.group_by_measure(
    abjad.select.leaves(score["contrabass 2 voice"])
)

for n in list(range(6, 17)):

    selections = []

    for leaf in abjad.select.leaves(contrabass_2_measures[n - 1], pitched=True):
        if abjad.get.annotation(leaf, trio.vib) is True:
            pass
        else:
            selections.append(leaf)

    for leaf in selections:
        leaf.note_head.is_forced = True


trio.pitch_contrabass_glissandi(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        30,
        32,
        37,
        38,
        43,
        44,
        54,
        56,
    ],
    strings="II and III",
)

trio.pitch_contrabass_glissandi(
    score=score,
    voice="contrabass 2 voice",
    leaves=[
        52,
        53,
        58,
        59,
        60,
        62,
    ],
    strings="I and II",
)

trio.noteheads_only(
    trinton.make_leaf_selection(
        score=score,
        voice="contrabass 2 voice",
        leaves=[
            0,
            5,
        ],
    )
)

trinton.glissando(
    score=score,
    voice="contrabass 2 voice",
    start_gliss=[
        0,
        8,
        12,
        14,
        16,
        19,
        21,
        24,
        27,
        30,
        34,
        37,
        39,
        43,
        45,
        47,
        49,
        52,
        54,
        58,
        59,
        60,
    ],
    stop_gliss=[
        5,
        11,
        13,
        15,
        18,
        20,
        23,
        26,
        29,
        32,
        36,
        38,
        42,
        44,
        46,
        48,
        51,
        53,
        56,
        59,
        60,
        62,
    ],
)

trio.ritardando_beams(
    score=score,
    voice="contrabass 1 voice",
    leaves=[
        51,
        84,
        91,
        100,
    ],
)

trinton.write_slur(
    voice=score["contrabass 2 voice"],
    start_slur=[
        30,
        37,
        43,
        52,
        54,
    ],
    stop_slur=[
        33,
        38,
        44,
        53,
        57,
    ],
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[30, 37, 43, 52, 54, 58],
    attachment=abjad.Articulation(">"),
)

trinton.dashed_slur(
    start_selection=abjad.select.leaf(score["contrabass 2 voice"], 58),
    stop_selection=abjad.select.leaf(score["contrabass 2 voice"], 63),
)

for tie in abjad.select.logical_ties(score["contrabass 2 voice"]):
    if tie.written_duration == abjad.Duration(1, 16):
        abjad.attach(abjad.Articulation("snappizzicato"), tie[0])
    elif tie.written_duration == abjad.Duration(1, 32):
        abjad.attach(abjad.Articulation("snappizzicato"), tie[0])

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        8,
        12,
        14,
        16,
        19,
        21,
        24,
        27,
        34,
        39,
        45,
        47,
        49,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Pull" 1', "after"),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        30,
        37,
        43,
        52,
    ],
    attachment=abjad.LilyPondLiteral(r'\boxed-markup "Arco" 1', "after"),
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 1 voice",
    leaves=[0],
    attachments=[
        abjad.LilyPondLiteral(r'\boxed-markup "Full bows as possible" 1', "after"),
    ],
)

trinton.attach_multiple(
    score=score,
    voice="contrabass 1 voice",
    leaves=[0],
    attachments=[
        abjad.Markup(
            r"\markup \italic { Con Fuoco, Con Licenza }",
        ),
        abjad.Markup(
            r"\markup \bold \italic { as loud as possible }",
        ),
    ],
    direction=abjad.DOWN,
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Detune IV ( until string rattles against the fingerboard )" 1',
        "after",
    ),
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        39,
    ],
    attachment=abjad.StartHairpin(">o"),
    direction=abjad.UP,
)

trinton.attach(
    voice=score["contrabass 2 voice"],
    leaves=[
        63,
    ],
    attachment=abjad.StopHairpin(),
)


trinton.write_hooked_spanner(
    voice=score["contrabass 2 voice"],
    string=r"\markup { III }",
    start_leaf=[
        8,
        34,
        39,
        45,
    ],
    stop_leaf=[
        29,
        36,
        42,
        51,
    ],
    padding=12.5,
)

#  fermate

trinton.populate_fermata_measures(
    score=score,
    voices=trio.all_voices_include_ts_context,
    leaves=[
        [
            -1,
        ],
        [
            -1,
        ],
        [
            -1,
        ],
        [
            -1,
        ],
        [
            -1,
        ],
        [
            -1,
        ],
        [
            -1,
        ],
    ],
    fermata_measures=None,
)

trinton.attach(
    voice=score["Global Context"],
    leaves=[-1],
    attachment=abjad.Markup(
        r'\markup \halign #-0.1 \fontsize #6.5 { "37\"" }',
    ),
)

trinton.attach_multiple(
    score=score,
    voice="Global Context",
    leaves=[-1],
    attachments=[
        abjad.LilyPondLiteral(
            r"\once \override Score.BarLine.transparent = ##f", "absolute_after"
        ),
        abjad.BarLine("||"),
    ],
)

# extract parts

trinton.extract_parts(score=score)

# render file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/trio/trio/segments/10",
    build_path="/Users/trintonprater/scores/trio/trio/build",
    segment_name="10",
    includes=[
        "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily",
        "/Users/trintonprater/abjad/abjad/scm/abjad.ily",
    ],
)

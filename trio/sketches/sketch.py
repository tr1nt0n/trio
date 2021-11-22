import abjad
import evans
import trinton
import trio
from abjadext import rmakers
from abjadext import microtones

# score

score = trinton.make_score_template(
    instruments=[
        abjad.Piano(),
        abjad.Piano(),
        abjad.Cello(),
        abjad.Contrabass(),
    ],
    groups=[2, 1, 1,]
)

# time signatures

trinton.write_time_signatures(
    [
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
        (3, 8),
    ],
    score["Global Context"],
)

# test

for octave, index in zip([4, 3, 5, 7, 6,], [5, 10, 15, 20, 25,]):
    trio.toccata(
        score=score,
        voice="piano 1 voice",
        durations=[(3, 8),],
        division=64,
        octave=octave,
        index=index,
        seed=7,
        duration_bracket_notation=False
    )

trio.toccata(
    score=score,
    voice="contrabass voice",
    durations=[(3, 8), (13, 64), (11, 64), (5, 64), (19, 64), (23, 64), (1, 64), (3, 8)],
    division=32,
    octave=2,
    seed=3,
    index=14,
    duration_bracket_notation=False
)

trio.toccata(
    score=score,
    voice="cello voice",
    durations=[(11, 64), (13, 64), (3, 8), (1, 64), (23, 64), (3, 8), (19, 64), (5, 64),],
    division=32,
    octave=3,
    seed=3,
    index=14,
    duration_bracket_notation=False
)

trinton.beam_runs_by_selection(
    score=score,
    voice="piano 1 voice",
    start_beam=[0,],
    stop_beam=[119,],
    beam_rests=True,
)

trinton.attach(
    voice=score["contrabass voice"],
    leaves=[0],
    attachment=abjad.Clef("bass")
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[0],
    attachment=abjad.Clef("tenor")
)

for voice in ["contrabass voice", "cello voice"]:

    trinton.beam_runs_by_selection(
        score=score,
        voice=voice,
        start_beam=[0,],
        stop_beam=[57,],
        beam_rests=True,
    )

    trinton.change_notehead(
        voice=score[voice],
        leaves=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 49, 50, 51, 52, 53, 54, 55, 56, 57,],
        notehead=r"#'harmonic-mixed"
    )

    trinton.change_notehead(
        voice=score[voice],
        leaves=list(range(17, 37)),
        notehead=r"#'triangle"
    )

    trinton.write_slur(
        voice=score[voice],
        start_slur=[0, 7, 15, 23, 31, 39, 47,],
        stop_slur=[6, 14, 22, 30, 38, 46, 57,],
    )

    trinton.attach(
        voice=score[voice],
        leaves=[0, 7, 15, 23, 31, 39, 47,],
        attachment=abjad.Articulation(">")
    )

    trinton.write_text_span(
        voice=score[voice],
        begin_text="XFB",
        end_text="XSB",
        start_leaf=[0,],
        stop_leaf=[23,],
        padding=7.5
    )

    trinton.write_text_span(
        voice=score[voice],
        begin_text="XSB",
        end_text="XFB",
        start_leaf=[39,],
        stop_leaf=[57,],
        padding=7.5
    )

    trinton.attach(
        voice=score[voice],
        leaves=[0, 49,],
        attachment=abjad.Dynamic("pp")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[0,],
        attachment=abjad.StartHairpin("<")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[23,],
        attachment=abjad.Dynamic("fff")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[39,],
        attachment=abjad.StartHairpin(">")
    )

trinton.append_rests(
    score=score,
    voice="piano 2 voice",
    rests=[abjad.Skip((3, 8)), abjad.Skip((3, 8)), abjad.Rest((3, 8)), abjad.Skip((3, 8)), abjad.Rest((3, 8)),]
)

trinton.ottava(
    score=score,
    voice="piano 1 voice",
    start_ottava=[48],
    stop_ottava=[119],
    octave=2
)

# put this in the library later

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[6, 14, 16, 18, 25, 33, 35, 37, 72, 78, 80, 82, 83, 85, 87, 90, 92, 94,],
    attachment=abjad.LilyPondLiteral(r'\change Staff = "piano 2 staff"', format_slot="absolute_before")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[13, 15, 17, 19, 32, 34, 36, 48, 77, 79, 81, 84, 86, 88, 91, 93, 95,],
    attachment=abjad.LilyPondLiteral(r'\change Staff = "piano 1 staff"', format_slot="absolute_before")
)

# put this in the library later ^^^

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(r'\override Beam.auto-knee-gap = #0', format_slot="before")
)

trinton.ottava(
    score=score,
    voice="piano 2 voice",
    start_ottava=[3,],
    stop_ottava=[3,],
    octave=2
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[13, 15, 17, 24, 32, 34, 36, 77, 79, 81, 84, 86, 88, 89, 91, 93, 95,],
    attachment=abjad.Articulation("marcato")
)

trinton.attach(
    voice=score["piano 1 voice"],
    leaves=[0],
    attachment=abjad.Dynamic("ff", direction=abjad.Up)
)

trinton.write_slur(
    voice=score["piano 1 voice"],
    start_slur=[0, 6, 25, 37, 48, 72, 96,],
    stop_slur=[5, 12, 31, 47, 71, 76, 119,],
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

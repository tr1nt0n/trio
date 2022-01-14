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
    ],
    groups=[
        2,
    ],
)

# time signatures

trinton.write_time_signatures(
    [
        (12, 8),
        (11, 8),
        (9, 8),
        (8, 8),
        (7, 8),
    ],
    score["Global Context"],
)

# test

for voice in ["piano 1 voice", "piano 2 voice"]:
    trio.toccata_rhythms(
        score=score,
        voice=voice,
        durations=[(12, 8)],
        division=32,
        extra_count=4,
        notation="tuplet",
    )

    trio.toccata_rhythms(
        score=score,
        voice=voice,
        durations=[(11, 8)],
        division=32,
        extra_count=8,
        notation="tuplet",
    )

    trio.toccata_rhythms(
        score=score,
        voice=voice,
        durations=[(9, 8)],
        division=32,
        extra_count=4,
        notation="tuplet",
    )

    trio.toccata_rhythms(
        score=score,
        voice=voice,
        durations=[(8, 8)],
        division=32,
        extra_count=8,
        notation="tuplet",
    )

    trio.toccata_rhythms(
        score=score,
        voice=voice,
        durations=[(7, 8)],
        division=32,
        extra_count=8,
        notation="tuplet",
    )

for octave, selection, seed, index in zip(
    [7, 6, 7, 5, 6],
    [
        list(range(0, 52)),
        list(range(52, 104)),
        list(range(104, 144)),
        list(range(144, 184)),
        list(range(184, 220)),
    ],
    list(range(0, 6)),
    list(range(0, 6)),
):
    trio.pitch_toccata(
        score=score,
        voice="piano 1 voice",
        leaves=selection,
        octave=octave,
        seed=seed,
        index=index,
        random_walk=True,
    )

for octave, selection, seed, index in zip(
    [5, 4, 3, 2, 1],
    [
        list(range(0, 52)),
        list(range(52, 104)),
        list(range(104, 144)),
        list(range(144, 184)),
        list(range(184, 220)),
    ],
    list(range(5, 11)),
    list(range(5, 11)),
):
    trio.pitch_toccata(
        score=score,
        voice="piano 2 voice",
        leaves=selection,
        octave=octave,
        seed=seed,
        index=index,
        random_walk=False,
    )

trinton.attach(
    voice=score["Global Context"],
    leaves=[0],
    attachment=abjad.MetronomeMark((1, 8), 47),
)

trinton.attach(
    voice=score["piano 2 voice"], leaves=[144], attachment=abjad.Clef("bass")
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

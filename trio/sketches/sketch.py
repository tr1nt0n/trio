import abjad
import evans
import trinton
import trio
from abjadext import rmakers
from abjadext import microtones

# score

score = trinton.make_score_template(
    instruments=[abjad.Cello(),],
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

def cello_gliss(score, voice, durations, seed, index, duration_bracket_notation):
    if duration_bracket_notation == True:
        tuplets = trinton.random_walk(chord=[(1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1), (1, 1, 1, 1), (1, 1, 1), (1, 1)], seed=seed)

        rhythms = trinton.rotated_sequence(
            tuplets,
            index,
        )

        stack = rmakers.stack(
            rmakers.tuplet(rhythms),
            rmakers.rewrite_dots(),
            rmakers.duration_bracket(),
        )

        selections = trinton.make_rhythm_selections(
            stack=stack,
            durations=durations,
        )

        container = abjad.Container(selections)

        handler = evans.PitchHandler(
            pitch_list=[17, 19, 17.5, 21, 19.5, 21.5,],
            forget=False,
        )

        handler(container[:])

        for tuplet in container:
            for leaf in tuplet:
                abjad.tweak(leaf.note_head).Stem.transparent=True
                abjad.tweak(leaf.note_head).Beam.transparent=True
                abjad.tweak(leaf.note_head).Flag.transparent=True

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:]
        )

    else:
        tuplets = trinton.random_walk(chord=[(1, 1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1, 1), (1, 1, 1, 1, 1), (1, 1, 1, 1), (1, 1, 1), (1, 1)], seed=seed)

        rhythms = trinton.rotated_sequence(
            tuplets,
            index,
        )

        stack = rmakers.stack(
            rmakers.tuplet(rhythms),
            rmakers.trivialize(abjad.select().tuplets()),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
            rmakers.rewrite_dots()
        )

        selections = trinton.make_rhythm_selections(
            stack=stack,
            durations=durations,
        )

        container = abjad.Container(selections)

        handler = evans.PitchHandler(
            pitch_list=[17, 19, 17.5, 21, 19.5, 21.5,],
            forget=False,
        )

        handler(container[:])

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:]
        )

cello_gliss(
    score=score,
    voice="cello voice",
    durations=[(1, 4), (1, 2), (1, 16), (3, 16), (1, 16), (1, 16), (1, 16), (1, 16),],
    seed=3,
    index=16,
    duration_bracket_notation=False,
)

cello_gliss(
    score=score,
    voice="cello voice",
    durations=[(3, 4), (3, 16), (1, 16)],
    seed=7,
    index=19,
    duration_bracket_notation=True,
)

# trinton.annotate_leaves(score)

trinton.beam_runs_by_selection(
    score=score,
    voice="cello voice",
    start_beam=[0, 6, 13, 24,],
    stop_beam=[5, 12, 23, 39,],
    beam_rests=True
)

trinton.write_slur(
    voice=score["cello voice"],
    start_slur=[0, 7, 13, 17, 25, 31, 35, 41, 48,],
    stop_slur=[6, 12, 16, 24, 30, 34, 40, 48, 55,],
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[0, 7, 13, 17, 25, 31, 35, 41, 48,],
    attachment=abjad.Articulation(">")
)

trinton.attach(
    voice=score["cello voice"],
    leaves=list(range(0, 55)),
    attachment=abjad.Glissando()
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[0],
    attachment=abjad.LilyPondLiteral(
        r'\boxed-markup "Sempre sul C, Portamento" 3', format_slot="after"
    ),
)

trinton.ficta(
    score=score,
    voice="cello voice",
    start_ficta=[0, 13, 49,],
    stop_ficta=[5, 40, 55]
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

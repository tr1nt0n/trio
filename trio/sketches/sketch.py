import abjad
import evans
import trinton
import trio
from abjadext import rmakers
from abjadext import microtones

# score

score = trinton.make_score_template(
    instruments=[abjad.Cello(), abjad.Cello(), abjad.Contrabass(), abjad.Contrabass(),],
    groups=[2, 2,]
)

# time signatures

trinton.write_time_signatures(
    [
    (3, 4),
    ],
    score["Global Context"],
)

# test

def harmonic_glissandi(score, voices, durations, division, index, duration_bracket_notation):
    if duration_bracket_notation == True:
        stack1 = rmakers.stack(
            rmakers.even_division([division], extra_counts=[0, 0, 1, 0, 1,]),
            rmakers.duration_bracket()
        )

        stack2 = rmakers.stack(
            rmakers.NoteRhythmMaker(),
            rmakers.tremolo_container(4),
        )

        for voice in voices:
            if voice == "cello 1 voice":
                rhythms = trinton.make_rhythm_selections(
                    stack=stack1,
                    durations=durations
                )

                container = abjad.Container(rhythms)

                pitches = [[[-23, -16,], [12, 19,]], [[-16, -9,], [19, 26,]], [[-9, -2,], [26, 33,]]]
                handler = evans.PitchHandler(
                    pitch_list=pitches[index],
                    forget=False,
                )

                handler(container[:])

                for leaf in container[:]:
                    for chord in abjad.select(leaf).chords():
                        heads = chord.note_heads
                        for head in heads:
                            abjad.tweak(head).style = "#'harmonic-mixed"
                            abjad.tweak(head).Stem.transparent=True
                            abjad.tweak(head).Beam.transparent=True
                            abjad.tweak(head).Flag.transparent=True

                trinton.append_rhythm_selections(
                    score=score,
                    voice=voice,
                    selections=container[:]
                )

            elif voice == "contrabass 1 voice":
                rhythms = trinton.make_rhythm_selections(
                    stack=stack1,
                    durations=durations
                )

                container = abjad.Container(rhythms)

                pitches = [[[-19, -14,], [16, 21,]], [[-14, -9,], [21, 26,]], [[-9, -4,], [26, 31,]]]
                handler = evans.PitchHandler(
                    pitch_list=pitches[index],
                    forget=False,
                )

                handler(container[:])

                for leaf in container[:]:
                    for chord in abjad.select(leaf).chords():
                        heads = chord.note_heads
                        for head in heads:
                            abjad.tweak(head).style = "#'harmonic-mixed"
                            abjad.tweak(head).Stem.transparent=True
                            abjad.tweak(head).Beam.transparent=True
                            abjad.tweak(head).Flag.transparent=True

                trinton.append_rhythm_selections(
                    score=score,
                    voice=voice,
                    selections=container[:]
                )

            else:
                rhythms = trinton.make_rhythm_selections(
                    stack=stack2,
                    durations=durations
                )

                container = abjad.Container(rhythms)

                pitches = [[-5, -1], [-1, 2], [2, 5]]
                handler = evans.PitchHandler(
                    pitch_list=pitches[index],
                    forget=False,
                )

                handler(container[:])

                for tremolo in container[:]:
                    for leaf in tremolo:
                        abjad.tweak(leaf.note_head).Accidental.transparent=True

                trinton.append_rhythm_selections(
                    score=score,
                    voice=voice,
                    selections=container[:]
                )

    else:
        stack1 = rmakers.stack(
            rmakers.even_division([division], extra_counts=[0, 0, 1, 0, 1,]),
            rmakers.force_diminution(),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
            rmakers.rewrite_dots(),
            rmakers.beam(abjad.select().tuplets()),
        )

        stack2 = rmakers.stack(
            rmakers.NoteRhythmMaker(),
            rmakers.tremolo_container(4)
        )

        for voice in voices:
            if voice == "cello 1 voice":
                rhythms = trinton.make_rhythm_selections(
                    stack=stack1,
                    durations=durations
                )

                container = abjad.Container(rhythms)

                pitches = [[[-23, -16,], [12, 19,]], [[-16, -9,], [19, 26,]], [[-9, -2,], [26, 33,]]]
                handler = evans.PitchHandler(
                    pitch_list=pitches[index],
                    forget=False,
                )

                handler(container[:])

                for leaf in container[:]:
                    for chord in abjad.select(leaf).chords():
                        heads = chord.note_heads
                        for head in heads:
                            abjad.tweak(head).style = "#'harmonic-mixed"

                trinton.append_rhythm_selections(
                    score=score,
                    voice=voice,
                    selections=container[:]
                )

            elif voice == "contrabass 1 voice":
                rhythms = trinton.make_rhythm_selections(
                    stack=stack1,
                    durations=durations
                )

                container = abjad.Container(rhythms)

                pitches = [[[-19, -14,], [16, 21,]], [[-14, -9,], [21, 26,]], [[-9, -4,], [26, 31,]]]
                handler = evans.PitchHandler(
                    pitch_list=pitches[index],
                    forget=False,
                )

                handler(container[:])

                for leaf in container[:]:
                    for chord in abjad.select(leaf).chords():
                        heads = chord.note_heads
                        for head in heads:
                            abjad.tweak(head).style = "#'harmonic-mixed"

                trinton.append_rhythm_selections(
                    score=score,
                    voice=voice,
                    selections=container[:]
                )

            else:
                rhythms = trinton.make_rhythm_selections(
                    stack=stack2,
                    durations=durations
                )

                container = abjad.Container(rhythms)

                pitches = [[-5, -1], [-1, 2], [2, 5]]
                handler = evans.PitchHandler(
                    pitch_list=pitches[index],
                    forget=False,
                )

                handler(container[:])

                for tremolo in container[:]:
                    for leaf in tremolo:
                        abjad.tweak(leaf.note_head).Accidental.transparent=True

                trinton.append_rhythm_selections(
                    score=score,
                    voice=voice,
                    selections=container[:]
                )


harmonic_glissandi(
    score=score,
    voices=["cello 1 voice", "cello 2 voice"],
    durations=[(1, 4), (1, 8), (3, 8)],
    division=16,
    index=2,
    duration_bracket_notation=True,
)

harmonic_glissandi(
    score=score,
    voices=["contrabass 1 voice", "contrabass 2 voice"],
    durations=[(1, 8), (3, 8), (1, 4)],
    division=16,
    index=0,
    duration_bracket_notation=False,
)

# trinton.annotate_leaves(score)

# trinton.beam_runs_by_selection(
#     score=score,
#     voice="contrabass 1 voice",
#     start_beam=[0],
#     stop_beam=[12],
#     beam_rests=True
# )

trio.rewrite_meter(score)

trinton.beam_score(score)

for voice in ["cello 1 voice", "contrabass 1 voice"]:

    trinton.attach(
        voice=score[voice],
        leaves=[0, 2, 4, 6, 8, 10, 12,],
        attachment=abjad.Clef("bass")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[1, 3, 5, 7, 9, 11,],
        attachment=abjad.Clef("treble")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11,],
        attachment=abjad.Glissando()
    )

trinton.write_slur(
    voice=score["cello 1 voice"],
    start_slur=[0, 4, 6,],
    stop_slur=[3, 5, 12,],
)

trinton.attach(
    voice=score["cello 1 voice"],
    leaves=[0, 4, 6,],
    attachment=abjad.Articulation(">")
)

trinton.write_slur(
    voice=score["cello 2 voice"],
    start_slur=[0, 2, 4,],
    stop_slur=[1, 3, 5,],
)

trinton.write_slur(
    voice=score["contrabass 1 voice"],
    start_slur=[0, 2, 8,],
    stop_slur=[1, 7, 12,],
)

trinton.attach(
    voice=score["contrabass 1 voice"],
    leaves=[0, 2, 8,],
    attachment=abjad.Articulation(">")
)

trinton.write_slur(
    voice=score["contrabass 2 voice"],
    start_slur=[0, 2, 4,],
    stop_slur=[1, 3, 5,],
)

for voice in ["cello 2 voice", "contrabass 2 voice"]:
    trinton.attach(
        voice=score[voice],
        leaves=[0],
        attachment=abjad.Clef("percussion")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[0, 2, 4,],
        attachment=abjad.Articulation(">")
    )

    trinton.attach(
        voice=score[voice],
        leaves=[0],
        attachment=abjad.LilyPondLiteral(
            r"\staff-line-count 4", format_slot="absolute_before",
        )
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

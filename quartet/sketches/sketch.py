import abjad
import evans
import trinton
from abjadext import rmakers
from abjadext import microtones

# score

score = trinton.make_score_template(
    instruments=[abjad.Piano(), abjad.Piano(), abjad.Cello(), abjad.Contrabass()],
    groups=[2, 1, 1,]
)

# time signatures

trinton.write_time_signatures(
    [
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
        (4, 4),
    ],
    score["Global Context"],
)

# test

def rhythm_canon(score, voice, durations, talea, index,):
    pitches = trinton.rotated_sequence(
        pitch_list=[0, 10, 5, 8, 3, 11, 6, 1, 9, 4, 7, 2,],
        start_index=index,
    )

    rhythms = trinton.rotated_sequence(
        pitch_list=[3, 1, 1, 1, 1, 1, 1, 1, 5, 7, 3, 7, 1, 1, 1, 1, 1, 1, 1, 5, 5, 3, 7, 1, 1, 1, 1, 1, 5, 1, 1, 1, 7, 3, 7, 3, 1, 1, 1, 5, 7, 5, 3, 1, 1, 1, 1, 1, 1, 1,],
        start_index=index,
    )

    stack = rmakers.stack(
        rmakers.talea(rhythms, talea),
        rmakers.trivialize(abjad.select().tuplets()),
        rmakers.extract_trivial(abjad.select().tuplets()),
        rmakers.rewrite_rest_filled(abjad.select().tuplets()),
        rmakers.rewrite_sustained(abjad.select().tuplets()),
    )

    sel = trinton.make_rhythm_selections(
        stack=stack,
        durations=durations
    )

    container = abjad.Container(sel)

    if voice == "piano 1 voice":
        trinton.durational_pitch_association(
            selection=abjad.select(container[:]).logical_ties(),
            durations=[
                abjad.Duration(7, 16),
                abjad.Duration(5, 16),
                abjad.Duration(3, 16),
                abjad.Duration(1, 16),
            ],
            pitch_lists=[
                trinton.transpose(
                    l=pitches,
                    m=15,
                ),
                trinton.transpose(
                    l=pitches,
                    m=14,
                ),
                trinton.transpose(
                    l=pitches,
                    m=4,
                ),
                trinton.transpose(
                    l=pitches,
                    m=37
                )
            ],
            forget=False,
        )

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:]
        )

    elif voice == "piano 2 voice":
        trinton.durational_pitch_association(
            selection=abjad.select(container[:]).logical_ties(),
            durations=[
                abjad.Duration(7, 16),
                abjad.Duration(5, 16),
                abjad.Duration(3, 16),
                abjad.Duration(1, 16),
            ],
            pitch_lists=[
                trinton.transpose(
                    l=pitches,
                    m=1,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-2,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-12,
                ),
                trinton.transpose(
                    l=pitches,
                    m=26
                )
            ],
            forget=False,
        )

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:]
        )

    elif voice == "cello voice":
        trinton.durational_pitch_association(
            selection=abjad.select(container[:]).logical_ties(),
            durations=[
                abjad.Duration(7, 16),
                abjad.Duration(5, 16),
                abjad.Duration(3, 16),
                abjad.Duration(1, 16),
            ],
            pitch_lists=[
                trinton.transpose(
                    l=pitches,
                    m=-14,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-16,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-14,
                ),
                trinton.transpose(
                    l=pitches,
                    m=8
                )
            ],
            forget=False,
        )

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:]
        )

    elif voice == "contrabass voice":
        trinton.durational_pitch_association(
            selection=abjad.select(container[:]).logical_ties(),
            durations=[
                abjad.Duration(7, 16),
                abjad.Duration(5, 16),
                abjad.Duration(3, 16),
                abjad.Duration(1, 16),
            ],
            pitch_lists=[
                trinton.transpose(
                    l=pitches,
                    m=-15,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-5,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-3,
                ),
                trinton.transpose(
                    l=pitches,
                    m=-5
                )
            ],
            forget=False,
        )

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:]
        )


rhythm_canon(
    score=score,
    voice="piano 1 voice",
    durations=[(10, 1)],
    talea=16,
    index=0
)

rhythm_canon(
    score=score,
    voice="piano 2 voice",
    durations=[(10, 1)],
    talea=16,
    index=3
)

rhythm_canon(
    score=score,
    voice="cello voice",
    durations=[(10, 1)],
    talea=16,
    index=6
)

rhythm_canon(
    score=score,
    voice="contrabass voice",
    durations=[(10, 1)],
    talea=16,
    index=9
)

trinton.rewrite_meter(score)
trinton.beam_score(score)
# trinton.annotate_leaves(score)

trinton.attach(
    voice=score["cello voice"],
    leaves=[2, 18, 30, 35, 46, 60, 69, 84,],
    attachment=abjad.Clef("bass")
)

trinton.attach(
    voice=score["cello voice"],
    leaves=[0, 11, 25, 32, 43, 53, 62, 77,],
    attachment=abjad.Clef("treble")
)

trinton.attach(
    voice=score["contrabass voice"],
    leaves=[0],
    attachment=abjad.Clef("bass")
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[24, 45, 56, 77,],
    attachment=abjad.Clef("bass")
)

trinton.attach(
    voice=score["piano 2 voice"],
    leaves=[25, 46, 58, 79,],
    attachment=abjad.Clef("treble")
)

sel1 = trinton.make_leaf_selection(
    score=score,
    voice="piano 1 voice",
    leaves=[1, 2, 3, 4, 5, 6, 7]
)

sel2 = trinton.make_leaf_selection(
    score=score,
    voice="piano 1 voice",
    leaves=[17, 18, 19, 20, 21, 22, 23,]
)

sel3 = trinton.make_leaf_selection(
    score=score,
    voice="piano 1 voice",
    leaves=[31, 32, 33, 34, 35,]
)

sel4 = trinton.make_leaf_selection(
    score=score,
    voice="piano 1 voice",
    leaves=[38, 39, 40]
)

sel5 = trinton.make_leaf_selection(
    score=score,
    voice="piano 1 voice",
    leaves=[49, 50, 51,]
)

sel6 = trinton.make_leaf_selection(
    score=score,
    voice="piano 1 voice",
    leaves=[59, 60, 61, 62, 63, 64, 65,]
)

sel7 = trinton.make_leaf_selection(
    score=score,
    voice="piano 1 voice",
    leaves=[68, 69, 70, 71, 72, 73, 74,]
)

sel8 = trinton.make_leaf_selection(
    score=score,
    voice="piano 1 voice",
    leaves=[83, 84, 85, 86, 88,]
)

sel9 = trinton.make_leaf_selection(
    score=score,
    voice="piano 2 voice",
    leaves=[0, 1, 2, 3, 4,]
)

sel10 = trinton.make_leaf_selection(
    score=score,
    voice="piano 2 voice",
    leaves=[13, 14, 15, 16, 17, 18, 19,]
)

sel11 = trinton.make_leaf_selection(
    score=score,
    voice="piano 2 voice",
    leaves=[28, 29, 30, 31, 32,]
)

sel12 = trinton.make_leaf_selection(
    score=score,
    voice="piano 2 voice",
    leaves=[35, 36, 37,]
)

sel13 = trinton.make_leaf_selection(
    score=score,
    voice="piano 2 voice",
    leaves=[46, 47, 48,]
)

sel14 = trinton.make_leaf_selection(
    score=score,
    voice="piano 2 voice",
    leaves=[58, 59, 60, 61, 62, 63, 64]
)

sel15 = trinton.make_leaf_selection(
    score=score,
    voice="piano 2 voice",
    leaves=[66, 67, 68, 69, 70, 71, 72,]
)

sel16 = trinton.make_leaf_selection(
    score=score,
    voice="piano 2 voice",
    leaves=[82, 83, 84, 85, 86, 87, 88,]
)

selections = [sel1, sel2, sel3, sel4, sel5, sel6, sel7, sel8, sel9, sel10, sel11, sel12, sel13, sel14, sel15, sel16,]

for sel in selections:
    abjad.ottava(sel)

# show file

trinton.render_file(
    score=score,
    segment_path="/Users/trintonprater/scores/quartet/quartet/sketches",
    build_path="/Users/trintonprater/scores/quartet/quartet/build",
    segment_name="sketch",
    includes=[
        "/Users/trintonprater/scores/quartet/quartet/build/quartet-stylesheet.ily",
        "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily",
    ]
)

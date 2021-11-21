import abjad
import trinton
import evans
import trio
from abjadext import rmakers
from abjadext import microtones

score = trinton.make_score_template(
    [abjad.Piano(),
    abjad.Piano(),
    abjad.Cello(),
    abjad.Cello(),
    abjad.Contrabass(),
    abjad.Contrabass(),
    ],
    [2, 2, 2,]
)

# pitch

end_row = [0, 10, 5, 8, 3, 11, 6, 1, 9, 4, 7, 2,]

# material functions

def rhythm_canon(score, voice, durations, talea, index,):
    pitches = trinton.rotated_sequence(
        pitch_list=trio.end_row,
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

def toccata(score, voice, durations, division, octave, index, seed, duration_bracket_notation):
    if duration_bracket_notation == True:
        stack = rmakers.stack(
            rmakers.even_division([division]),
            rmakers.duration_bracket(),
        )

        rhythms = trinton.make_rhythm_selections(
            stack=stack,
            durations=durations
        )

        container = abjad.Container(rhythms)

        seq = list(range(-39, 49))

        groups = evans.Sequence(seq).grouper([13, 12, 13, 11, 13, 10, 13, 3,])

        new_groups = []
        for group in groups:
            sequence = trinton.primes_odds_evens(group)
            new_sequence = evans.Sequence(sequence[:]).mirror(sequential_duplicates=False)
            for l in new_sequence:
                new_groups.append(l)

        new_seq = evans.Sequence(new_groups).grouper([24, 22, 24, 20, 24, 18, 24, 4,])

        pitches = trinton.rotated_sequence(
            trinton.random_walk(chord=new_seq[octave], seed=seed),
            index,
        )

        handler = evans.PitchHandler(
            pitch_list=pitches,
            forget=False
        )
        handler(container)

        for tuplet in container:
            for leaf in tuplet:
                abjad.tweak(leaf.note_head).Stem.transparent=True
                abjad.tweak(leaf.note_head).Beam.transparent=True
                abjad.tweak(leaf.note_head).Flag.transparent=True

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:],
        )

    else:
        stack = rmakers.stack(
            rmakers.even_division([division]),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
        )

        rhythms = trinton.make_rhythm_selections(
            stack=stack,
            durations=durations
        )

        container = abjad.Container(rhythms)

        seq = list(range(-39, 49))

        groups = evans.Sequence(seq).grouper([13, 12, 13, 11, 13, 10, 13, 3,])

        new_groups = []
        for group in groups:
            sequence = trinton.primes_odds_evens(group)
            new_sequence = evans.Sequence(sequence[:]).mirror(sequential_duplicates=False)
            for l in new_sequence:
                new_groups.append(l)

        new_seq = evans.Sequence(new_groups).grouper([24, 22, 24, 20, 24, 18, 24, 4,])

        pitches = trinton.rotated_sequence(
            trinton.random_walk(chord=new_seq[octave], seed=seed),
            index,
        )

        handler = evans.PitchHandler(
            pitch_list=pitches,
            forget=False
        )
        handler(container)

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:],
        )

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

                trinton.append_rhythm_selections(
                    score=score,
                    voice=voice,
                    selections=container[:]
                )

                for tremolo in container[:]:
                    for leaf in tremolo:
                        abjad.tweak(leaf.note_head).Stem.transparent=True
                        abjad.tweak(leaf.note_head).Beam.transparent=True
                        abjad.tweak(leaf.note_head).Flag.transparent=True
    else:
        stack1 = rmakers.stack(
            rmakers.even_division([division], extra_counts=[0, 0, 1, 0, 1,]),
            rmakers.force_diminution(),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
            rmakers.rewrite_dots(),
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

                for tremolo in container[:]:
                    for leaf in tremolo:
                        abjad.tweak(leaf.note_head).Accidental.transparent=True

                handler(container[:])

                trinton.append_rhythm_selections(
                    score=score,
                    voice=voice,
                    selections=container[:]
                )

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

# special meter rewriting

def rewrite_meter(target):
    print("Rewriting meter ...")
    global_skips = [_ for _ in abjad.select(target["Global Context"]).leaves()]
    sigs = []
    for skip in global_skips:
        for indicator in abjad.get.indicators(skip):
            if isinstance(indicator, abjad.TimeSignature):
                sigs.append(indicator)
    for voice in abjad.select(target["Staff Group"]).components(abjad.Voice):
        if voice.name == "cello 2 voice":
            pass
        elif voice.name == "contrabass 2 voice":
            pass
        else:
            voice_dur = abjad.get.duration(voice)
            time_signatures = sigs#[:-1]
            durations = [_.duration for _ in time_signatures]
            sig_dur = sum(durations)
            assert voice_dur == sig_dur, (voice_dur, sig_dur)
            shards = abjad.mutate.split(voice[:], durations)
            for i, shard in enumerate(shards):
                time_signature = sigs[i]
                inventories = [
                    x
                    for x in enumerate(
                        abjad.Meter(time_signature.pair).depthwise_offset_inventory
                    )
                ]
                if time_signature.denominator == 4:
                    abjad.Meter.rewrite_meter(
                        shard,
                        time_signature,
                        boundary_depth=inventories[-1][0],
                        rewrite_tuplets=False,
                    )
                else:
                    abjad.Meter.rewrite_meter(
                        shard,
                        time_signature,
                        boundary_depth=inventories[-2][0],
                        rewrite_tuplets=False,
                    )

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

# saved pitches

end_row = [0, 10, 5, 8, 3, 11, 6, 1, 9, 4, 7, 2,]

# saved rhythms

collapsing_rhythm_1 = [(4, 1), (1, 1, 4), (1, 1, 1, 4), (1, 1, 1), (6, 1)]

collapsing_rhythm_2 = [(1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1), (1, 1, 3, 1), (1, 3, 1, 2)]

collapsing_rhythm_3 = [(1, 7), (1, 6), (1, 5), (1, 4), (1, 1, 3), (3, 1, 1, 1, 2, 2, 2, 2), (6, 1, 1)]

# pitched rhythms

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
        rmakers.beam(abjad.select().tuplets()),
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
            rmakers.beam(abjad.select().tuplets()),
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

def cello_gliss(score, voice, durations, seed, index, string, duration_bracket_notation):
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

        if string == "IV":
            handler = evans.PitchHandler(
                pitch_list=[12, 16, 12.5, 14, 11.5, 16.5,],
                forget=False,
            )

            handler(container[:])

        elif string == "III":
            handler = evans.PitchHandler(
                pitch_list=[19, 23, 19.5, 21, 18.5, 23.5,],
                forget=False,
            )

            handler(container[:])

        elif string == "II":
            handler = evans.PitchHandler(
                pitch_list=[26, 30, 26.5, 28, 25.5, 30.5,],
                forget=False,
            )

            handler(container[:])

        elif string == "I":
            handler = evans.PitchHandler(
                pitch_list=[33, 37, 33.5, 35, 32.5, 37.5,],
                forget=False,
            )

            handler(container[:])

            sel = abjad.select(container[:]).leaves(pitched=True)

            for leaf in sel:
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
            rmakers.rewrite_dots(),
            rmakers.beam(abjad.select().tuplets()),
        )

        selections = trinton.make_rhythm_selections(
            stack=stack,
            durations=durations,
        )

        container = abjad.Container(selections)

        if string == "IV":
            handler = evans.PitchHandler(
                pitch_list=[12, 16, 12.5, 14, 11.5, 16.5,],
                forget=False,
            )

            handler(container[:])

        elif string == "III":
            handler = evans.PitchHandler(
                pitch_list=[19, 23, 19.5, 21, 18.5, 23.5,],
                forget=False,
            )

            handler(container[:])

        elif string == "II":
            handler = evans.PitchHandler(
                pitch_list=[26, 30, 26.5, 28, 25.5, 30.5,],
                forget=False,
            )

            handler(container[:])

        elif string == "I":
            handler = evans.PitchHandler(
                pitch_list=[33, 37, 33.5, 35, 32.5, 37.5,],
                forget=False,
            )

            handler(container[:])

        handler(container[:])

        trinton.append_rhythm_selections(
            score=score,
            voice=voice,
            selections=container[:]
        )

# rhythm tools

def harmonic_glissandi_rhythms(score, voices, durations, tuplets, duration_bracket_notation):
    if duration_bracket_notation == True:
        stack1 = rmakers.stack(
            rmakers.tuplet(tuplets),
            rmakers.rewrite_dots(),
            rmakers.duration_bracket(),
            rmakers.beam(abjad.select().tuplets()),
        )

        stack2 = rmakers.stack(
            rmakers.NoteRhythmMaker(),
            rmakers.tremolo_container(4),
        )

        for voice in voices:
            if voice == "cello 1 voice":
                trinton.make_and_append_rhythm_selections(
                    score=score,
                    voice_name=voice,
                    stack=stack2,
                    durations=durations
                )

            elif voice == "contrabass 1 voice":
                trinton.make_and_append_rhythm_selections(
                    score=score,
                    voice_name=voice,
                    stack=stack2,
                    durations=durations
                )

            else:
                trinton.make_and_append_rhythm_selections(
                    score=score,
                    voice_name=voice,
                    stack=stack1,
                    durations=durations
                )

    else:
        stack1 = rmakers.stack(
            rmakers.tuplet(tuplets),
            rmakers.trivialize(abjad.select().tuplets()),
            rmakers.extract_trivial(abjad.select().tuplets()),
            rmakers.rewrite_rest_filled(abjad.select().tuplets()),
            rmakers.rewrite_sustained(abjad.select().tuplets()),
            rmakers.rewrite_dots(),
            rmakers.beam(abjad.select().tuplets()),
        )

        stack2 = rmakers.stack(
            rmakers.NoteRhythmMaker(),
            rmakers.tremolo_container(4),
        )

        for voice in voices:
            if voice == "cello 1 voice":
                trinton.make_and_append_rhythm_selections(
                    score=score,
                    voice_name=voice,
                    stack=stack2,
                    durations=durations
                )

            elif voice == "contrabass 1 voice":
                trinton.make_and_append_rhythm_selections(
                    score=score,
                    voice_name=voice,
                    stack=stack2,
                    durations=durations
                )

            else:
                trinton.make_and_append_rhythm_selections(
                    score=score,
                    voice_name=voice,
                    stack=stack1,
                    durations=durations
                )

# pitch tools

def piano_climax_chords(score, voice, leaves, octave, index):
    seq = list(range(-39, 49))

    groups = evans.Sequence(seq).grouper([13, 12, 13, 11, 13, 10, 13, 3,])

    new_groups = []
    for group in groups:
        sequence = trinton.primes_odds_evens(group)
        for l in sequence:
            new_groups.append(l)

    new_new_groups = evans.Sequence(new_groups).grouper([13, 12, 13, 11, 13, 10, 13, 3,])

    chords = []
    for group in new_new_groups:
        chord = evans.Sequence(group).grouper([5, 3, 5])
        chords.append(chord)

    handler = evans.PitchHandler(
        pitch_list=trinton.rotated_sequence(chords[octave], index),
        forget=False
    )

    handler(
        trinton.make_leaf_selection(
            score=score,
            voice=voice,
            leaves=leaves
        )
    )

def pitch_harmonic_glissandi(score, voice, leaves, strings, index):
    cello_pitches = trinton.rotated_sequence(
        pitch_list=[[-9, -2], [26, 33], [-6, 1], [26, 33], [2, 9], [26, 33], [-9, -2], [-5, 2], [26, 33], [-9, -2], [-3, 4,], [-9, -2],],
        start_index=index,
    )

    bass_pitches = trinton.rotated_sequence(
        pitch_list=[[-9, -4], [26, 31], [-6, -1], [26, 31], [2, 7], [26, 31], [-9, -4], [-5, 0], [26, 31], [-9, -4], [-3, 2,], [-9, -4],],
        start_index=index,
    )

    sel = trinton.make_leaf_selection(
        score=score,
        voice=voice,
        leaves=leaves
    )

    if voice == "cello 2 voice":
        if strings == "I and II":
            handler = evans.PitchHandler(
                pitch_list=cello_pitches,
                forget=False,
            )

            handler(sel)

            for chord in abjad.select(score[voice]).chords():
                for head in chord.note_heads:
                    abjad.tweak(head).style = r"#'harmonic-mixed"

        elif strings == "II and III":
            transposed = []
            for chord in cello_pitches:
                new_chord = trinton.transpose(l=chord[:], m=-7)
                transposed.append(new_chord)

            handler = evans.PitchHandler(
                pitch_list=transposed,
                forget=False,
            )

            handler(sel)

            for chord in abjad.select(score[voice]).chords():
                for head in chord.note_heads:
                    abjad.tweak(head).style = r"#'harmonic-mixed"

        elif strings == "III and IV":
            transposed = []
            for chord in cello_pitches:
                new_chord = trinton.transpose(l=chord, m=-14)
                transposed.append(new_chord)

            handler = evans.PitchHandler(
                pitch_list=transposed,
                forget=False,
            )

            handler(sel)

            for chord in abjad.select(score[voice]).chords():
                for head in chord.note_heads:
                    abjad.tweak(head).style = r"#'harmonic-mixed"

        else:
            pass

    elif voice == "contrabass 2 voice":
        if strings == "I and II":
            handler = evans.PitchHandler(
                pitch_list=bass_pitches,
                forget=False,
            )

            handler(sel)

            for chord in abjad.select(score[voice]).chords():
                for head in chord.note_heads:
                    abjad.tweak(head).style = r"#'harmonic-mixed"

        elif strings == "II and III":
            transposed = []
            for chord in bass_pitches:
                new_chord = trinton.transpose(l=chord[:], m=-5)
                transposed.append(new_chord)

            handler = evans.PitchHandler(
                pitch_list=transposed,
                forget=False,
            )

            handler(sel)

            for chord in abjad.select(score[voice]).chords():
                for head in chord.note_heads:
                    abjad.tweak(head).style = r"#'harmonic-mixed"

        elif strings == "III and IV":
            transposed = []
            for chord in bass_pitches:
                new_chord = trinton.transpose(l=chord, m=-10)
                transposed.append(new_chord)

            handler = evans.PitchHandler(
                pitch_list=transposed,
                forget=False,
            )

            handler(sel)

            for chord in abjad.select(score[voice]).chords():
                for head in chord.note_heads:
                    abjad.tweak(head).style = r"#'harmonic-mixed"

        else:
            pass

    else:
        pass


# spelling tools

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

def noteheads_only(selections):
    for leaf in selections:
        abjad.tweak(leaf.note_head).Stem.transparent=True
        abjad.tweak(leaf.note_head).Beam.transparent=True
        abjad.tweak(leaf.note_head).Flag.transparent=True

# piano tools

def change_staff(lh, rh):
    for a, b in zip(lh, rh):
        trinton.attach(
            voice=score["piano 1 voice"],
            leaves=[a],
            attachment=abjad.LilyPondLiteral(r'\change Staff = "piano 2 staff"', format_slot="absolute_before")
        )

        trinton.attach(
            voice=score["piano 1 voice"],
            leaves=[b],
            attachment=abjad.LilyPondLiteral(r'\change Staff = "piano 1 staff"', format_slot="absolute_before")
        )

def small_knee(start, stop):
    trinton.attach(
        voice=score["piano 1 voice"],
        leaves=[start],
        attachment=abjad.LilyPondLiteral(r'\override Beam.auto-knee-gap = #0', format_slot="before")
    )

    trinton.attach(
        voice=score["piano 1 voice"],
        leaves=[stop],
        attachment=abjad.LilyPondLiteral(r'\override Beam.auto-knee-gap = #15', format_slot="before")
    )

# strings tools

def finger_pressure(score, voice, half, harm):
    for leaf in half:
        trinton.change_notehead(
            voice=score[voice],
            leaves=[leaf],
            notehead=r"#'triangle"
        )

    for leaf in harm:
        trinton.change_notehead(
            voice=score[voice],
            leaves=[leaf],
            notehead=r"#'harmonic-mixed"
        )

def write_bow_contact_points(score, voice, contact_points_1, contact_points_2, start_leaves, stop_leaves, padding):
    for one, two, start_leaf, stop_leaf, in zip(contact_points_1, contact_points_2, start_leaves, stop_leaves):
        indicator1 = abjad.BowContactPoint(one)

        indicator2 = abjad.BowContactPoint(two)

        start_text_span = abjad.StartTextSpan(
            left_text=indicator1.markup,
            right_text=indicator2.markup,
            style="dashed-line-with-arrow",
        )

        abjad.tweak(start_text_span).padding = padding

        trinton.attach(
            voice=score[voice],
            leaves=[start_leaf],
            attachment=start_text_span
        )

        trinton.attach(
            voice=score[voice],
            leaves=[stop_leaf],
            attachment=abjad.StopTextSpan()
        )

def make_angle_spanner(score, voice, leaves, direction, left_text, position):
    if position == "start":
        trinton.attach(
            voice=score[voice],
            leaves=leaves,
            attachment=abjad.LilyPondLiteral(
                [
                    r"- \abjad-dashed-line-with-arrow",
                    rf"- \evans-{direction}-BAD-spanner-left-text #{left_text}",
                    r"- \tweak bound-details.right.padding 1.4",
                    r"- \tweak staff-padding #5.5",
                    r"\evansStartTextSpanBAD",
                ],
                format_slot="absolute_after",
            ),
        )


    elif position == "center":
        trinton.attach(
            voice=score[voice],
            leaves=leaves,
            attachment=abjad.LilyPondLiteral(
                [
                    r"\evansStopTextSpanBAD",
                    r"- \abjad-dashed-line-with-arrow",
                    rf"- \evans-{direction}-BAD-spanner-left-text #{left_text}",
                    r"- \tweak bound-details.right.padding 1.4",
                    r"- \tweak staff-padding #5.5",
                    r"\evansStartTextSpanBAD",
                ],
                format_slot="absolute_after",
            ),
        )

    elif position == "termination":
        trinton.attach(
            voice=score[voice],
            leaves=leaves,
            attachment=abjad.LilyPondLiteral(
                [
                    r"\evansStopTextSpanBAD",
                    r"- \abjad-dashed-line-with-arrow",
                    rf"- \evans-{direction}-BAD-spanner-left-text #{left_text}",
                    rf"- \evans-BAD-spanner-right-text #0",
                    r"- \tweak bound-details.right.padding 1.4",
                    r"- \tweak staff-padding #5.5",
                    r"\evansStartTextSpanBAD",
                ],
                format_slot="absolute_after",
            ),
        )

    else:
        pass

def stop_angle_spanner(score, voice, leaves):
    trinton.attach(
        voice=score[voice],
        leaves=leaves,
        attachment=abjad.LilyPondLiteral(
                    [
                        r"\evansStopTextSpanBAD",
                    ],
                    format_slot="absolute_after",
                ),
    )

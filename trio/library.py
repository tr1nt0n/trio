import abjad
import trinton
import evans
import trio
import random
from abjadext import rmakers
from abjadext import microtones

# rhythm annotations

accelerando = "accelerando"

harmonic_gliss = "harmonic gliss"

toccata = "toccata"

vib = "vib"

# score and voice variables

score = trinton.make_score_template(
    [
        abjad.Cello(),
        abjad.Cello(),
        abjad.Contrabass(),
        abjad.Contrabass(),
        abjad.Piano(),
        abjad.Piano(),
    ],
    [
        2,
        2,
        2,
    ],
)

piano_1_voice = score["piano 1 voice"]

piano_2_voice = score["piano 2 voice"]

cello_1_voice = score["cello 1 voice"]

cello_2_voice = score["cello 2 voice"]

contrabass_1_voice = score["contrabass 1 voice"]

contrabass_2_voice = score["contrabass 2 voice"]

# saved pitches

end_row = eval(
    """[
    0,
    10,
    5,
    8,
    3,
    11,
    6,
    1,
    9,
    4,
    7,
    2,
]"""
)

contrabass_glissandi_pitches = eval(
    """[
    [-5, -3,],
    [-5, -5.5,],
    [-5, -1.5,],
    [-5, -4,],
]""",
)

_matter_harmonies = {
    1: eval(
        """[
            -2,
            12,
            15,
            22,
            23,
            30,
            30,
        ]"""
    ),
    2: eval(
        """[
            2,
            13,
            21,
            31,
            33,
            31,
            32,
        ]"""
    ),
    3: eval(
        """[
            -1,
            11,
            17,
            21,
            25,
            30,
            33,
        ]"""
    ),
    4: eval(
        """[
            2,
            12,
            21,
            28,
            30,
            33,
            36,
        ]"""
    ),
    5: eval(
        """[
            1,
            14,
            21,
            25,
            32,
            34,
            37,
        ]"""
    ),
    6: eval(
        """[
            -13,
            8,
            23,
            26,
            28,
            32,
            36,
        ]"""
    ),
}

_matter_cent_markups = {
    1: eval(
        """[
            "-3",
            "-14",
            "+0",
            "-5",
            "+7",
            "+8",
            "+7",
        ]"""
    ),
    2: eval(
        """[
            "-5",
            "-5",
            "+12",
            "-25",
            "-24",
            "+4",
            "-28",
        ]"""
    ),
    3: eval(
        """[
            "+0",
            "+3",
            "+4",
            "+14",
            "+20",
            "+17",
            "-43",
        ]"""
    ),
    4: eval(
        """[
            "-2",
            "+3",
            "+19",
            "+18",
            "+3",
            "+26",
            "-6",
        ]"""
    ),
    5: eval(
        """[
            "+3",
            "-16",
            "+16",
            "-20",
            "-13",
            "-51",
            "+27",
        ]"""
    ),
    6: eval(
        """[
            "-2",
            "-11",
            "+17",
            "+23",
            "+15",
            "+32",
            "+8",
        ]"""
    ),
}

_piano_harmonic_glissandi_pitches_lh = {
    "IV": eval(
        """[
            -24,
            -12,
            -12,
            -5,
            -5,
            -12,
            -12,
            -24,
        ]"""
    ),
    "III": eval(
        """trinton.transpose(
            l=[
            -24,
            -12,
            -12,
            -5,
            -5,
            -12,
            -12,
            -24,
            ],
            m=7,
        )"""
    ),
    "II": eval(
        """trinton.transpose(
            l=[
            -24,
            -12,
            -12,
            -5,
            -5,
            -12,
            -12,
            -24,
            ],
            m=14,
        )"""
    ),
    "I": eval(
        """trinton.transpose(
            l=[
            -24,
            -12,
            -12,
            -5,
            -5,
            -12,
            -12,
            -24,
            ],
            m=21,
        )"""
    ),
}

_piano_harmonic_glissandi_pitches_rh = {
    "I": eval(
        """[
            48,
            47,
            46,
            44,
            43,
            44,
            45,
            47,
        ]"""
    ),
    "II": eval(
        """trinton.transpose(
            l=[
            48,
            47,
            46,
            44,
            43,
            44,
            45,
            47,
            ],
            m=-5,
        )"""
    ),
    "III": eval(
        """trinton.transpose(
            l=[
            48,
            47,
            46,
            44,
            43,
            44,
            45,
            47,
            ],
            m=-10,
        )"""
    ),
    "IV": eval(
        """trinton.transpose(
            l=[
            48,
            47,
            46,
            44,
            43,
            44,
            45,
            47,
            ],
            m=-15,
        )"""
    ),
}

_open_strings_to_pitches = {"I": 5, "II": 2, "III": -2, "IV": -5}

# saved rhythms

collapsing_tuplets_1 = eval("""[(4, 1), (1, 1, 4), (1, 1, 1, 4), (1, 1, 1), (6, 1)]""")

collapsing_tuplets_2 = eval(
    """[
    (1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1),
    (1, 1, 3, 1),
    (1, 3, 1, 2),
]"""
)

collapsing_tuplets_3 = eval(
    """[
    (1, 7),
    (1, 6),
    (1, 5),
    (1, 4),
    (1, 1, 3),
    (3, 1, 1, 1, 2, 2, 2, 2),
    (6, 1, 1),
]"""
)


# pitched rhythms


def rhythm_canon(
    score,
    voice,
    durations,
    index,
):
    pitches = trinton.rotated_sequence(
        pitch_list=trio.end_row,
        start_index=index,
    )

    rhythms = trinton.rotated_sequence(
        pitch_list=[
            3,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            5,
            7,
            3,
            7,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
            5,
            5,
            3,
            7,
            1,
            1,
            1,
            1,
            1,
            5,
            1,
            1,
            1,
            7,
            3,
            7,
            3,
            1,
            1,
            1,
            5,
            7,
            5,
            3,
            1,
            1,
            1,
            1,
            1,
            1,
            1,
        ],
        start_index=index,
    )

    _voice_to_pitches = {
        "piano 1 voice": [
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
            trinton.transpose(l=pitches, m=37),
        ],
        "piano 2 voice": [
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
            trinton.transpose(l=pitches, m=26),
        ],
        "cello 2 voice": [
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
            trinton.transpose(l=pitches, m=8),
        ],
        "contrabass 2 voice": [
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
            trinton.transpose(l=pitches, m=-5),
        ],
    }

    stack = rmakers.stack(
        rmakers.talea(rhythms, 16),
        rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
        rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_dots(),
        rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
    )

    sel = trinton.make_rhythm_selections(stack=stack, durations=durations)

    container = abjad.Container(sel)

    trinton.durational_pitch_association(
        selection=abjad.select(container[:]).logical_ties(),
        durations=[
            abjad.Duration(7, 16),
            abjad.Duration(5, 16),
            abjad.Duration(3, 16),
            abjad.Duration(1, 16),
        ],
        pitch_lists=_voice_to_pitches[voice],
        forget=False,
    )

    trinton.append_rhythm_selections(score=score, voice=voice, selections=container[:])


_string_to_pitch = {
    "IV": [
        12,
        16,
        12.5,
        14,
        11.5,
        16.5,
    ],
    "III": [
        19,
        23,
        19.5,
        21,
        18.5,
        23.5,
    ],
    "II": [
        26,
        30,
        26.5,
        28,
        25.5,
        30.5,
    ],
    "I": [
        33,
        37,
        33.5,
        35,
        32.5,
        37.5,
    ],
}


def cello_gliss(
    score,
    voice,
    durations,
    seed,
    index,
    string,
    notation,
):
    tuplets = trinton.random_walk(
        chord=[
            (1, 1, 1, 1, 1, 1, 1),
            (1, 1, 1, 1, 1, 1),
            (1, 1, 1, 1, 1),
            (1, 1, 1, 1),
            (1, 1, 1),
            (1, 1),
        ],
        seed=seed,
    )

    rhythms = trinton.rotated_sequence(
        tuplets,
        index,
    )

    _cello_gliss_stacks = {
        "duration_bracket": rmakers.stack(
            rmakers.tuplet(rhythms),
            rmakers.rewrite_dots(),
            rmakers.duration_bracket(),
        ),
        "tuplet": rmakers.stack(
            rmakers.tuplet(rhythms),
            rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
            rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_dots(),
            rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
        ),
    }

    stack = _cello_gliss_stacks[notation]

    selections = trinton.make_rhythm_selections(
        stack=stack,
        durations=durations,
    )

    container = abjad.Container(selections)

    handler = evans.PitchHandler(
        pitch_list=_string_to_pitch[string],
        forget=False,
    )

    handler(container[:])

    selections = trinton.append_rhythm_selections(
        voice=voice, score=score, selections=container[:]
    )

    for sel in selections:
        abjad.annotate(sel, trio.vib, True)


# rhythm tools


def toccata_rhythms(score, voice, durations, division, extra_counts, notation):
    _stacks = {
        "duration_bracket": rmakers.stack(
            rmakers.even_division([division], extra_counts=extra_counts),
            rmakers.duration_bracket(),
        ),
        "tuplet": rmakers.stack(
            rmakers.even_division([division], extra_counts=extra_counts),
            rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
            rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_dots(),
            rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
        ),
        "absolute_bracket": rmakers.stack(
            rmakers.even_division([division], extra_counts=extra_counts),
            rmakers.rewrite_dots(),
            rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
        ),
    }

    selections = trinton.make_and_append_rhythm_selections(
        score=score, voice_name=voice, stack=_stacks[notation], durations=durations
    )

    for sel in selections:
        abjad.annotate(sel, toccata, True)


def harmonic_glissandi_rhythms(score, voices, durations, tuplets, notation):

    stack1 = rmakers.stack(
        rmakers.tuplet(tuplets),
        rmakers.rewrite_dots(),
        rmakers.duration_bracket(),
        rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
    )

    stack2 = rmakers.stack(
        rmakers.tuplet(tuplets),
        rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
        rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
        rmakers.rewrite_dots(),
        rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
    )

    stack3 = rmakers.stack(
        rmakers.NoteRhythmMaker(),
        rmakers.tremolo_container(4),
    )

    _stacks = {"duration_bracket": stack1, "tuplet": stack2}

    _voice_to_stack = {
        "piano 1 voice": _stacks[notation],
        "piano 2 voice": _stacks[notation],
        "cello 1 voice": stack3,
        "cello 2 voice": _stacks[notation],
        "contrabass 1 voice": stack3,
        "contrabass 2 voice": _stacks[notation],
    }

    for voice in voices:
        selections = trinton.make_and_append_rhythm_selections(
            score=score,
            voice_name=voice,
            stack=_voice_to_stack[voice],
            durations=durations,
        )

        for sel in selections:
            abjad.annotate(sel, harmonic_gliss, True)


def select_periodic_ties_2_4_7_8_of_10(argument):
    return abjad.Selection(argument).logical_ties().get([2, 4, 7, 8], 10)


def select_periodic_ties_2_4_of_8(argument):
    return abjad.Selection(argument).logical_ties().get([2, 4], 8)


_matter_stacks = {
    1: rmakers.stack(
        rmakers.accelerando(
            [(1, 20), (1, 8), (1, 32)],
        ),
        rmakers.force_rest(select_periodic_ties_2_4_7_8_of_10),
        rmakers.beam(
            beam_rests=True,
        ),
        rmakers.duration_bracket(),
    ),
    2: rmakers.stack(
        rmakers.accelerando(
            [(1, 20), (1, 8), (1, 32)],
        ),
        rmakers.force_rest(select_periodic_ties_2_4_of_8),
        rmakers.beam(
            beam_rests=True,
        ),
        rmakers.duration_bracket(),
    ),
}


def matter_broken_rhythms(score, voice, stack, durations):
    tuplets = trinton.make_and_append_rhythm_selections(
        score=score,
        voice_name=voice,
        stack=_matter_stacks[stack],
        durations=durations,
    )

    for tuplet in tuplets:
        abjad.annotate(tuplet, accelerando, True)


def contrabass_glissandi_rhythms(score, voice_name, durations):
    selections = trinton.make_rhythm_selections(
        stack=rmakers.stack(
            rmakers.tuplet(
                [
                    (
                        1,
                        1,
                    ),
                ]
            ),
            rmakers.trivialize(lambda _: abjad.Selection(_).tuplets()),
            rmakers.extract_trivial(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_rest_filled(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_sustained(lambda _: abjad.Selection(_).tuplets()),
            rmakers.rewrite_dots(),
            rmakers.beam(lambda _: abjad.Selection(_).tuplets()),
        ),
        durations=durations,
    )

    tuplets = abjad.Selection(selections).tuplets()
    for tuplet in tuplets:
        abjad.annotate(tuplet, trio.vib, True)
        for leaf in tuplets:
            abjad.annotate(leaf, trio.vib, True)
            for note in leaf:
                abjad.annotate(note, trio.vib, True)
    for sel in selections:
        abjad.annotate(sel, trio.vib, True)

    trinton.append_rhythm_selections(
        voice=voice_name, score=score, selections=selections
    )


# pitch tools


def pitch_toccata_by_measure(
    voice,
    measures,
    selector,
    octave,
    seed,
    index,
    random_walk,
):
    random.seed(seed)

    seq = list(range(-39, 49))

    groups = evans.Sequence(seq).grouper(
        [
            13,
            12,
            13,
            11,
            13,
            10,
            13,
            3,
        ]
    )

    new_groups = []
    for group in groups:
        sequence = random.sample(group, k=len(group))
        new_sequence = evans.Sequence(sequence[:]).mirror(sequential_duplicates=False)
        for l in new_sequence:
            new_groups.append(l)

    new_seq = evans.Sequence(new_groups).grouper(
        [
            24,
            22,
            24,
            20,
            24,
            18,
            24,
            4,
        ]
    )
    if random_walk is True:
        pitches = trinton.rotated_sequence(
            trinton.random_walk(chord=new_seq[octave], seed=seed),
            index,
        )

        handler = evans.PitchHandler(pitch_list=pitches, forget=False)

        for measure in measures:

            grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

            current_measure = grouped_measures[measure - 1]

            selections = selector(current_measure)

            handler(selections)

    else:
        handler = evans.PitchHandler(pitch_list=new_seq[octave], forget=False)

        for measure in measures:

            grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

            current_measure = grouped_measures[measure - 1]

            selections = selector(current_measure)

            handler(selections)


def pitch_toccata(
    score,
    voice,
    leaves,
    octave,
    seed,
    index,
    random_walk,
):
    random.seed(seed)

    seq = list(range(-39, 49))

    groups = evans.Sequence(seq).grouper(
        [
            13,
            12,
            13,
            11,
            13,
            10,
            13,
            3,
        ]
    )

    new_groups = []
    for group in groups:
        sequence = random.sample(group, k=len(group))
        new_sequence = evans.Sequence(sequence[:]).mirror(sequential_duplicates=False)
        for l in new_sequence:
            new_groups.append(l)

    new_seq = evans.Sequence(new_groups).grouper(
        [
            24,
            22,
            24,
            20,
            24,
            18,
            24,
            4,
        ]
    )
    if random_walk is True:
        pitches = trinton.rotated_sequence(
            trinton.random_walk(chord=new_seq[octave], seed=seed),
            index,
        )

        handler = evans.PitchHandler(pitch_list=pitches, forget=False)
        handler(trinton.make_leaf_selection(score=score, voice=voice, leaves=leaves))

    else:
        handler = evans.PitchHandler(pitch_list=new_seq[octave], forget=False)
        handler(trinton.make_leaf_selection(score=score, voice=voice, leaves=leaves))


def piano_climax_chords(voice, measures, selector, octave, index, seed):
    random.seed(seed)
    seq = list(range(-39, 49))

    groups = evans.Sequence(seq).grouper(
        [
            13,
            12,
            13,
            11,
            13,
            10,
            13,
            3,
        ]
    )

    new_groups = []
    for group in groups:
        sequence = random.sample(group, k=len(group))
        for l in sequence:
            new_groups.append(l)

    new_new_groups = evans.Sequence(new_groups).grouper(
        [
            13,
            12,
            13,
            11,
            13,
            10,
            13,
            3,
        ]
    )

    chords = []
    for group in new_new_groups:
        chord = evans.Sequence(group).grouper([5, 3, 5])
        chords.append(chord)

    handler = evans.PitchHandler(
        pitch_list=trinton.rotated_sequence(chords[octave], index), forget=False
    )

    for measure in measures:

        grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

        current_measure = grouped_measures[measure - 1]

        selections = selector(current_measure)

        handler(selections)


_cello_string_to_piano_pitch = {
    "IV": [
        14,
    ],
    "III": [
        21,
    ],
    "II": [
        28,
    ],
    "I": [
        35,
    ],
}


def pitch_harmonic_gliss_piano(voice, measures, selector, string):
    _pitches = {
        score["piano 1 voice"]: _piano_harmonic_glissandi_pitches_rh,
        score["piano 2 voice"]: _piano_harmonic_glissandi_pitches_lh,
    }

    handler = evans.PitchHandler(pitch_list=_pitches[voice][string], forget=False)

    for measure in measures:

        grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

        current_measure = grouped_measures[measure - 1]

        selections = selector(current_measure)

        handler(selections)


def pitch_cello_gliss_piano_by_measure(voice, measures, selector, string):
    handler = evans.PitchHandler(
        pitch_list=_cello_string_to_piano_pitch[string], forget=False
    )

    for measure in measures:

        grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

        current_measure = grouped_measures[measure - 1]

        selections = selector(current_measure)

        handler(selections)


def pitch_cello_gliss_piano(score, voice, leaves, string):
    handler = evans.PitchHandler(
        pitch_list=_cello_string_to_piano_pitch[string], forget=False
    )

    handler(trinton.make_leaf_selection(score=score, voice=voice, leaves=leaves))


def pitch_harmonic_glissandi_by_measure(voice, measures, selector, strings, index):

    _voice_to_pitches = {
        score["cello 2 voice"]: trinton.rotated_sequence(
            pitch_list=[
                [-9, -2],
                [26, 33],
                [-6, 1],
                [26, 33],
                [2, 9],
                [26, 33],
                [-9, -2],
                [-5, 2],
                [26, 33],
                [-9, -2],
                [
                    -3,
                    4,
                ],
            ],
            start_index=index,
        ),
        score["contrabass 2 voice"]: trinton.rotated_sequence(
            pitch_list=[
                [-9, -4],
                [26, 31],
                [-6, -1],
                [26, 31],
                [2, 7],
                [26, 31],
                [-9, -4],
                [-5, 0],
                [26, 31],
                [-9, -4],
                [
                    -3,
                    2,
                ],
            ],
            start_index=index,
        ),
    }

    _trans = {score["cello 2 voice"]: [-7, -14], score["contrabass 2 voice"]: [-5, -10]}

    _string_to_pitches = {
        "I and II": _voice_to_pitches[voice],
        "II and III": [
            trinton.transpose(l=chord, m=_trans[voice][0])
            for chord in _voice_to_pitches[voice]
        ],
        "III and IV": [
            trinton.transpose(l=chord, m=_trans[voice][1])
            for chord in _voice_to_pitches[voice]
        ],
    }

    handler = evans.PitchHandler(
        pitch_list=_string_to_pitches[strings],
        forget=False,
    )

    for measure in measures:

        grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

        current_measure = grouped_measures[measure - 1]

        selections = selector(current_measure)

        handler(selections)


def pitch_harmonic_glissandi(score, voice, leaves, strings, index):

    _voice_to_pitches = {
        "cello 2 voice": trinton.rotated_sequence(
            pitch_list=[
                [-9, -2],
                [26, 33],
                [-6, 1],
                [26, 33],
                [2, 9],
                [26, 33],
                [-9, -2],
                [-5, 2],
                [26, 33],
                [-9, -2],
                [
                    -3,
                    4,
                ],
            ],
            start_index=index,
        ),
        "contrabass 2 voice": trinton.rotated_sequence(
            pitch_list=[
                [-9, -4],
                [26, 31],
                [-6, -1],
                [26, 31],
                [2, 7],
                [26, 31],
                [-9, -4],
                [-5, 0],
                [26, 31],
                [-9, -4],
                [
                    -3,
                    2,
                ],
            ],
            start_index=index,
        ),
    }

    _trans = {"cello 2 voice": [-7, -14], "contrabass 2 voice": [-5, -10]}

    _string_to_pitches = {
        "I and II": _voice_to_pitches[voice],
        "II and III": [
            trinton.transpose(l=chord, m=_trans[voice][0])
            for chord in _voice_to_pitches[voice]
        ],
        "III and IV": [
            trinton.transpose(l=chord, m=_trans[voice][1])
            for chord in _voice_to_pitches[voice]
        ],
    }

    sel = trinton.make_leaf_selection(score=score, voice=voice, leaves=leaves)

    handler = evans.PitchHandler(
        pitch_list=_string_to_pitches[strings],
        forget=False,
    )

    handler(sel)


_contrabass_glissandi_strings_to_pitches = {
    "I and II": contrabass_glissandi_pitches,
    "II and III": [
        trinton.transpose(l=chord, m=-5) for chord in contrabass_glissandi_pitches
    ],
    "III and IV": [
        trinton.transpose(l=chord, m=-10) for chord in contrabass_glissandi_pitches
    ],
}


def pitch_contrabass_glissandi_by_measure(voice, measures, selector, strings):
    handler = evans.PitchHandler(
        pitch_list=_contrabass_glissandi_strings_to_pitches[strings],
        forget=False,
    )

    for measure in measures:

        grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

        current_measure = grouped_measures[measure - 1]

        selections = selector(current_measure)

        handler(selections)


def pitch_contrabass_glissandi(score, voice, leaves, strings):

    sel = trinton.make_leaf_selection(score=score, voice=voice, leaves=leaves)

    handler = evans.PitchHandler(
        pitch_list=_contrabass_glissandi_strings_to_pitches[strings],
        forget=False,
    )

    handler(sel)


def pitch_matter_with_selector(
    voice, measures, selector, chord, partials, transpose, markup=False
):
    collection = trinton.transpose(l=_matter_harmonies[chord], m=transpose)
    collected_partials = []

    for partial in partials:
        collected_partials.append(collection[partial - 1])

    handler = evans.PitchHandler(pitch_list=[collected_partials], forget=False)

    for measure in measures:

        grouped_measures = abjad.Selection(voice).leaves().group_by_measure()

        current_measure = grouped_measures[measure - 1]

        selections = selector(current_measure)

        handler(selections)

        if markup is True:
            grouped_measures = abjad.Selection(voice).leaves().group_by_measure()
            current_measure = grouped_measures[measure - 1]
            selections = selector(current_measure)
            leaves = abjad.Selection(selections).leaves(pitched=True)
            markup_collection = _matter_cent_markups[chord]
            markup_collection = abjad.CyclicTuple(markup_collection)

            for leaf in leaves:
                if len(leaf.note_heads) == 2:
                    cent_markup_1 = abjad.Markup(
                        string=rf"\markup {markup_collection[partials[0] - 1]}",
                        direction=abjad.Up,
                    )
                    cent_markup_2 = abjad.Markup(
                        string=rf"\markup {markup_collection[partials[1] - 1]}",
                        direction=abjad.Up,
                    )
                    ties = abjad.Selection(leaf).logical_ties()
                    for tie in ties:
                        abjad.attach(cent_markup_1, tie[0])
                        abjad.attach(cent_markup_2, tie[0])

                else:
                    cent_markup = abjad.Markup(
                        string=rf"\markup {markup_collection[partials[0] - 1]}",
                        direction=abjad.Up,
                    )
                    ties = abjad.Selection(leaf).logical_ties()
                    for tie in ties:
                        abjad.attach(cent_markup, tie[0])


def pitch_matter(
    score,
    voice,
    leaves,
    chord,
    partials,
    transpose,
    markup,
):
    collection = trinton.transpose(l=_matter_harmonies[chord], m=transpose)
    collected_partials = []

    for partial in partials:
        collected_partials.append(collection[partial - 1])

    handler = evans.PitchHandler(pitch_list=[collected_partials], forget=False)

    for leaf in leaves:
        handler(abjad.select(score[voice]).leaf(leaf))

    if markup is True:
        markup_collection = _matter_cent_markups[chord]
        markup_collection = abjad.CyclicTuple(markup_collection)

        for partial, leaf in zip(partials, leaves):

            if len(abjad.select(score[voice]).leaf(leaf).note_heads) == 2:

                cent_markups = eval(
                    """[
                        abjad.Markup(string=rf"\markup {markup_collection[partial-1]}", direction=abjad.Up),
                        abjad.Markup(string=rf"\markup {markup_collection[partial]}", direction=abjad.Up),
                    ]"""
                )

                trinton.attach_multiple(
                    score=score,
                    voice=voice,
                    leaves=[leaf],
                    attachments=[cent_markups[0], cent_markups[1]],
                )

            else:

                cent_markups = eval(
                    """[
                        abjad.Markup(string=rf"\markup {markup_collection[partial-1]}", direction=abjad.Up),
                    ]"""
                )
                trinton.attach(
                    voice=score[voice], leaves=[leaf], attachment=cent_markups[0]
                )


# selectors


def select_tuplets_by_annotation(annotation):
    def selector(argument):
        top_level_components = trinton.get_top_level_components_from_leaves(argument)
        tuplets = abjad.Selection(top_level_components).tuplets()

        out = []

        for tuplet in tuplets:
            if abjad.get.annotation(tuplet, annotation) is True:
                out.append(tuplet)

        return abjad.Selection(out[:]).leaves()

    return selector


def select_leaves_by_annotation(annotation):
    def selector(argument):
        leaves = abjad.Selection(argument).leaves(pitched=True)

        out = []

        for leaf in leaves:
            if abjad.get.annotation(leaf, annotation) is True:
                out.append(leaf)

        return abjad.Selection(out[:]).leaves()

    return selector


# spelling tools


def noteheads_only(selections):
    for leaf in selections:
        abjad.override(leaf).Stem.transparent = True
        abjad.override(leaf).Beam.transparent = True
        abjad.override(leaf).Flag.transparent = True
        abjad.override(leaf).Dots.transparent = True


def standard_cleffing(score):

    for voice in ["cello 1 voice", "contrabass 1 voice"]:
        trinton.attach(
            voice=score[voice], leaves=[0], attachment=abjad.Clef("percussion")
        )

    for voice in ["cello 2 voice", "contrabass 2 voice"]:
        trinton.attach(voice=score[voice], leaves=[0], attachment=abjad.Clef("bass"))


def write_startmarkups(score):
    for staff, markup in zip(trio.all_staves, trio.all_startmarkups):
        trinton.attach(voice=score[staff], leaves=[0], attachment=markup)


def write_marginmarkups(score):
    for staff, markup in zip(trio.all_staves, trio.all_marginmarkups):
        trinton.attach(voice=score[staff], leaves=[0], attachment=markup)


def ritardando_beams(score, voice, leaves):
    for leaf in leaves:
        abjad.override(
            abjad.select(score[voice]).leaf(leaf)
        ).Beam.grow_direction = abjad.Left


# transposition tools


def octave_up(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, 12)


def octave_down(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, -12)


def double_octave_up(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, 24)


def double_octave_down(sel):
    for pitch in sel:
        abjad.mutate.transpose(pitch, -24)


# piano tools


def change_staff(score, voice, lh, rh):
    trinton.attach(
        voice=score[voice],
        leaves=lh,
        attachment=abjad.LilyPondLiteral(
            r'\change Staff = "piano 2 staff"', format_slot="absolute_before"
        ),
    )

    trinton.attach(
        voice=score[voice],
        leaves=rh,
        attachment=abjad.LilyPondLiteral(
            r'\change Staff = "piano 1 staff"', format_slot="absolute_before"
        ),
    )


def small_knee(score, voice, start, stop):
    trinton.attach(
        voice=score[voice],
        leaves=start,
        attachment=abjad.LilyPondLiteral(
            r"\override Beam.auto-knee-gap = #0", format_slot="before"
        ),
    )

    trinton.attach(
        voice=score["piano 1 voice"],
        leaves=stop,
        attachment=abjad.LilyPondLiteral(
            r"\override Beam.auto-knee-gap = #15", format_slot="before"
        ),
    )


# strings tools


def finger_pressure(score, voice, half, harm):
    for leaf in half:
        trinton.change_notehead(
            voice=score[voice], leaves=[leaf], notehead=r"#'triangle"
        )

    for leaf in harm:
        trinton.change_notehead(
            voice=score[voice], leaves=[leaf], notehead=r"#'harmonic-mixed"
        )


def write_bow_contact_points(
    score, voice, contact_points_1, contact_points_2, start_leaves, stop_leaves, padding
):
    for (
        one,
        two,
        start_leaf,
        stop_leaf,
    ) in zip(contact_points_1, contact_points_2, start_leaves, stop_leaves):
        indicator1 = abjad.BowContactPoint(one)

        indicator2 = abjad.BowContactPoint(two)

        start_text_span = abjad.StartTextSpan(
            left_text=indicator1.markup,
            right_text=indicator2.markup,
            style="dashed-line-with-arrow",
        )

        abjad.tweak(start_text_span).padding = padding

        trinton.attach(
            voice=score[voice], leaves=[start_leaf], attachment=start_text_span
        )

        trinton.attach(
            voice=score[voice], leaves=[stop_leaf], attachment=abjad.StopTextSpan()
        )


def make_angle_spanner(score, voice, leaves, direction, left_text, position, padding):
    _positions_to_literals = {
        "start": abjad.LilyPondLiteral(
            [
                r"- \abjad-dashed-line-with-arrow",
                rf"- \evans-{direction}-BAD-spanner-left-text #{left_text}",
                r"- \tweak bound-details.right.padding 1.4",
                rf"- \tweak padding #{padding}",
                r"\evansStartTextSpanBAD",
            ],
            format_slot="absolute_after",
        ),
        "center": abjad.LilyPondLiteral(
            [
                r"\evansStopTextSpanBAD",
                r"- \abjad-dashed-line-with-arrow",
                rf"- \evans-{direction}-BAD-spanner-left-text #{left_text}",
                r"- \tweak bound-details.right.padding 1.4",
                rf"- \tweak padding #{padding}",
                r"\evansStartTextSpanBAD",
            ],
            format_slot="absolute_after",
        ),
        "termination": abjad.LilyPondLiteral(
            [
                r"\evansStopTextSpanBAD",
                r"- \abjad-dashed-line-with-arrow",
                rf"- \evans-{direction}-BAD-spanner-left-text #{left_text}",
                rf"- \evans-BAD-spanner-right-text #0",
                r"- \tweak bound-details.right.padding 1.4",
                rf"- \tweak staff-padding #{padding}",
                r"\evansStartTextSpanBAD",
            ],
            format_slot="absolute_after",
        ),
    }

    trinton.attach(
        voice=score[voice],
        leaves=leaves,
        attachment=_positions_to_literals[position],
    )


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


# markups

all_voices = eval(
    """[
        "piano 1 voice",
        "piano 2 voice",
        "cello 1 voice",
        "cello 2 voice",
        "contrabass 1 voice",
        "contrabass 2 voice",
    ]"""
)

all_voices_include_ts_context = eval(
    """[
        "Global Context",
        "piano 1 voice",
        "piano 2 voice",
        "cello 1 voice",
        "cello 2 voice",
        "contrabass 1 voice",
        "contrabass 2 voice",
    ]"""
)

all_staves = eval(
    """[
        "piano 1 staff",
        "cello 1 staff",
        "contrabass 1 staff",
    ]"""
)

all_startmarkups = eval(
    """[
    abjad.StartMarkup(context="PianoStaff", markup=abjad.Markup(r"\markup { Piano }")),
    abjad.StartMarkup(context="PianoStaff", markup=abjad.Markup(r"\markup { Violoncello }")),
    abjad.StartMarkup(context="PianoStaff", markup=abjad.Markup(r"\markup { Contrabass }")),
]"""
)

all_marginmarkups = eval(
    """[
    abjad.MarginMarkup(context="PianoStaff", markup=abjad.Markup(r"\markup { pno. }")),
    abjad.MarginMarkup(context="PianoStaff", markup=abjad.Markup(r"\markup { vc. }")),
    abjad.MarginMarkup(context="PianoStaff", markup=abjad.Markup(r"\markup { cb. }")),
]"""
)

_string_to_markup = {
    "I": abjad.LilyPondLiteral(r'\boxed-markup "I" 1', format_slot="after"),
    "II": abjad.LilyPondLiteral(r'\boxed-markup "II" 1', format_slot="after"),
    "III": abjad.LilyPondLiteral(r'\boxed-markup "III" 1', format_slot="after"),
    "IV": abjad.LilyPondLiteral(r'\boxed-markup "IV" 1', format_slot="after"),
}


def attach_string_markup(score, voice, leaves, string):
    for leaf in leaves:
        trinton.attach(
            voice=score[voice],
            leaves=leaves,
            attachment=_string_to_markup[string],
        )


rehearsal_mark1 = abjad.LilyPondLiteral(
    r'\boxed-markup ". . . thick-veined hand (i)" 1.5',
    format_slot="after",
)

rehearsal_mark2 = abjad.LilyPondLiteral(
    r'\boxed-markup "Matter, to Self-Organize" 1.5', format_slot="after"
)

rehearsal_mark3 = abjad.LilyPondLiteral(
    r'\boxed-markup "Skyward, {diagonal moves} (i)" 1.5', format_slot="after"
)

rehearsal_mark4 = abjad.LilyPondLiteral(
    r'\left-aligned-boxed-markup "Toccata" 1.5', format_slot="after"
)

rehearsal_mark5 = abjad.LilyPondLiteral(
    r'\boxed-markup "in th posession of nymphs and naiads" 1.5', format_slot="after"
)

rehearsal_mark6 = abjad.LilyPondLiteral(
    r'\boxed-markup "Skyward, {diagonal moves} (ii)" 1.5', format_slot="after"
)

rehearsal_mark7 = abjad.LilyPondLiteral(
    r'\boxed-markup "Are We Still Married? (ii)" 1.5', format_slot="after"
)

rehearsal_mark8 = abjad.LilyPondLiteral(
    r'\boxed-markup "Engraved in Water" 1.5', format_slot="after"
)

rehearsal_mark9 = abjad.LilyPondLiteral(
    r'\boxed-markup "Skyward, {diagonal moves} (iii)" 1.5', format_slot="after"
)

rehearsal_mark10 = abjad.Markup(
    r"\markup \box \italic \fontsize #1.5 { \center-column { ... thick-veined hand (ii) } }",
)

rehearsal_mark11 = abjad.LilyPondLiteral(
    r'\tweak padding 5.5 \boxed-markup "One of These Days {dry land}" 1.5',
    format_slot="after",
)

rehearsal_mark12 = abjad.LilyPondLiteral(
    r'\boxed-markup "She has something to tell you" 1.5', format_slot="after"
)

rehearsal_mark13 = abjad.LilyPondLiteral(
    r'\boxed-markup "Back." 0.5', format_slot="after"
)

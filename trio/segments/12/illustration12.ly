\version "2.20.0"
\language "english"
\include "../../build/trio-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
\score
{
    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % BEFORE:
            % COMMANDS:
            \tempo 4=105
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % AFTER:
            % COMMANDS:
            \boxed-markup "Back." 0.5
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 6/4
            s1 * 3/2
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 4/8
            s1 * 1/2
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \pageBreak
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % OPENING:
            % COMMANDS:
            \time 4/8
            s1 * 1/2
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % AFTER:
            % COMMANDS:
            \bar "|."
            \override Score.BarLine.transparent = ##f
        % CLOSE_BRACKETS:
        }
        % BEFORE:
        % COMMANDS:
        \tag #'group1
        % OPEN_BRACKETS:
        {
            % OPEN_BRACKETS:
            \context ChoirStaff = "Staff Group"
            <<
                % BEFORE:
                % COMMANDS:
                \tag #'group2
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context PianoStaff = "sub group 1"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice1
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "cello 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "cello 1 voice"
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \set PianoStaff.shortInstrumentName = \markup { vc. }
                                    s1 * 5/4
                                    s1 * 1
                                    s1 * 3/8
                                    s1 * 3/4
                                    s1 * 3/2
                                    s1 * 3/8
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g32.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        bf32.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    s2
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        g16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        bf16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g64
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        bf64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    s4.
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        g16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        bf16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g64
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        bf64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    s2
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g32.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        bf32.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice2
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "cello 2 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "cello 2 voice"
                                {
                                    s1 * 3/4
                                    s1 * 1/2
                                    <cs' a'>2
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +12
                                    ^ \markup -5
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    <f' a'>2
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +14
                                    ^ \markup +4
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <c' a'>8.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +19
                                    ^ \markup +3
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <a' cs''>8.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +16
                                    ^ \markup -20
                                    % STOP_BEAM:
                                    ]
                                    <b' d''>4
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +17
                                    ^ \markup +23
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b' d''>8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <c' ef'>8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +0
                                    ^ \markup -14
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    <c' ef'>4
                                    <a' g''>2.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fff
                                    % MARKUP:
                                    ^ \markup +12
                                    ^ \markup -25
                                    <b f'>2.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +3
                                    ^ \markup +4
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \set suggestAccidentals = ##t
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    ^ \>
                                    - \tweak padding #8
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { IV } \hspace #0.5 }
                                    \startTextSpan
                                    \(
                                    \glissando
                                    e''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    cqs''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    d''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    bqs'16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    eqs''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #8
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { IV } \hspace #0.5 }
                                        \startTextSpan
                                        \(
                                        \glissando
                                        e''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        cqs''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        d''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        bqs'8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        eqs''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    % OPEN_BRACKETS:
                                    \times 15/18
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \revert Staff.Stem.stemlet-length
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >2
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #8
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { IV } \hspace #0.5 }
                                    \startTextSpan
                                    \(
                                    \glissando
                                    e''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    cqs''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    d''16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    bqs'16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    eqs''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 7:10 }
                                    % OPEN_BRACKETS:
                                    \times 30/21
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            c
                                        >16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \revert Staff.Stem.stemlet-length
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak padding #8
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { IV } \hspace #0.5 }
                                        \startTextSpan
                                        \(
                                        \glissando
                                        e''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        cqs''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        d''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        bqs'8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        eqs''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'harmonic-mixed
                                        e,
                                        \tweak style #'harmonic-mixed
                                        b,
                                    >8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        c''
                                        \tweak style #'harmonic-mixed
                                        g''
                                    >8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'harmonic-mixed
                                        c
                                        \tweak style #'harmonic-mixed
                                        g
                                    >8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \set suggestAccidentals = ##f
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    >>
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \tag #'group3
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context PianoStaff = "sub group 2"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice3
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "contrabass 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "contrabass 1 voice"
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \set PianoStaff.shortInstrumentName = \markup { cb. }
                                    s1 * 5/4
                                    s1 * 1
                                    s1 * 3/8
                                    s1 * 3/4
                                    s1 * 3/2
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'32.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        d'32.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    s4.
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        d'16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    s1 * 5/8
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'32.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        d'32.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    s1 * 5/8
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        d'16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    s4.
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice4
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "contrabass 2 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "contrabass 2 voice"
                                {
                                    s1 * 3/4
                                    s1 * 1/2
                                    <d'>2
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup -5
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    <b>2
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +0
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d'>8.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup -2
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <cs'>8.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +3
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <b,>4
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup -2
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b,>8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    <bf>8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup -3
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    <bf>4
                                    <d'>2.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fff
                                    % MARKUP:
                                    ^ \markup -5
                                    <b>2.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +0
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/8
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        ^ \>
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >4..
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d e>16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    <dqf d>16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    <d fqs>16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    <d ef>16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    <d e>16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <dqf d>16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            b
                                        >8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >2.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 7:10 }
                                    % OPEN_BRACKETS:
                                    \times 30/21
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <d fqs>16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <d ef>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <d e>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <dqf d>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <d fqs>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <d ef>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        <d e>16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'harmonic-mixed
                                        d'
                                        \tweak style #'harmonic-mixed
                                        g'
                                    >16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'harmonic-mixed
                                        d'''
                                        \tweak style #'harmonic-mixed
                                        g'''
                                    >16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    ~
                                    <
                                        \tweak style #'harmonic-mixed
                                        d'''
                                        \tweak style #'harmonic-mixed
                                        g'''
                                    >4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    % OPEN_BRACKETS:
                                    \times 15/18
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <dqf d>8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <d fqs>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <d ef>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <d e>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <dqf d>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        <d fqs>8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
                                        >2
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d ef>16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    <d e>16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    <dqf d>16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    <d fqs>16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    <d ef>16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <d e>16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \set suggestAccidentals = ##f
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    >>
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \tag #'group4
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context PianoStaff = "sub group 3"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice5
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "piano 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "piano 1 voice"
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \set PianoStaff.shortInstrumentName = \markup { pno. }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <fs,, g,, d,>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \fp
                                    % SPANNER_STARTS:
                                    \(
                                    \<
                                    ~
                                    <fs,, g,, d,>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    <c, ef, bf, b,>1
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    <c ef bf b fs'>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <fs' a' f''>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    <ef'' bf'' b'' fs'''>1.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \fff
                                    % SPANNER_STOPS:
                                    \)
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 7:6
                                    % OPEN_BRACKETS:
                                    \times 6/7
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava -1
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e,,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        ^ \>
                                        \(
                                        f,,16
                                        a,,16
                                        g,,16
                                        af,,16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        c,,16
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        bf,,,16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 4:3
                                    % OPEN_BRACKETS:
                                    \times 6/8
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs,,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        bf,,16
                                        g,16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        c,16
                                        f,16
                                        a,16
                                        % AFTER:
                                        % COMMANDS:
                                        \ottava 0
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b,,16
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        e,16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 9:8
                                    % OPEN_BRACKETS:
                                    \times 8/9
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf,16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        d16
                                        ef16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        cs16
                                        f16
                                        e16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        af16
                                        c16
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        g16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 6:5
                                    % OPEN_BRACKETS:
                                    \times 10/12
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        f'16
                                        af'16
                                        fs'16
                                        ef'16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b16
                                        e'16
                                        cs'16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        g'16
                                        a'16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        c'16
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        a'16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 7:6
                                    % OPEN_BRACKETS:
                                    \times 6/7
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        f''16
                                        c''16
                                        b'16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        g''16
                                        e''16
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        bf'16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 6:5
                                    % OPEN_BRACKETS:
                                    \times 10/12
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        c'''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 1
                                        af'''16
                                        f'''16
                                        ef'''16
                                        b''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        d'''16
                                        cs'''16
                                        e'''16
                                        g'''16
                                        e'''16
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        cs'''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % COMMANDS:
                                        \ottava 0
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 9:8
                                    % OPEN_BRACKETS:
                                    \times 8/9
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        cs''''16
                                        d''''16
                                        a''''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 2
                                        b'''16
                                        fs''''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        a'''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        af''''16
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        e''''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 4:3
                                    % OPEN_BRACKETS:
                                    \times 6/8
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        bf''''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        c'''''16
                                        b''''16
                                        c'''''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        bf''''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        c'''''16
                                        b''''16
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        c'''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % COMMANDS:
                                        \ottava 0
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice6
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "piano 2 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "piano 2 voice"
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <c,, ef,,>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    \(
                                    ~
                                    <c,, ef,,>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    <c,, ef,,>1
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    <bf,,, c, ef,>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    <bf,,, c, ef,>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    <bf,,, c, ef,>1.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STOPS:
                                    \)
                                    s1 * 3/8
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \ottava 0
                                    s1 * 1/2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    s1 * 3/8
                                    s1 * 1/4
                                    s1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    s1 * 3/8
                                    s1 * 1/4
                                    % AFTER:
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    s1 * 1/2
                                    s1 * 3/8
                                    % AFTER:
                                    % COMMANDS:
                                    \ottava 0
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    >>
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        }
    % CLOSE_BRACKETS:
    >>
}

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
            \tempo 4=60
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % AFTER:
            % COMMANDS:
            \boxed-markup "She has something to tell you" 1.5
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % OPENING:
            % COMMANDS:
            \time 4/4
            s1 * 1
            % AFTER:
            % COMMANDS:
            \bar "||"
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
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
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
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % MARKUP:
                                    _ \markup \italic { Dolcissimo }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    fs'16
                                    cs''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    g'16
                                    d'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    af,16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    af,4
                                    fs4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf,8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    bf,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf,8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    a16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    c''16
                                    ef''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    cs4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    af'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    fs''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    af4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    af16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    ef4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef,8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    b'16
                                    g''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    e16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    e4
                                    fs4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b,16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    b,4
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs,8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    d'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    f''16
                                    c''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef'16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    af'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    cs,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs,16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    cs''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    g''16
                                    d''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    g4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    cs4
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    a4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    f'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    bf'16
                                    af'16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fs'16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    d8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    e,4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e,16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    e''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    b'16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g'16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    a16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    f8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    f''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    ef'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    b,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    b,4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b,16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    g4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g,16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g,8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    bf'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    af'16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    c8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    d4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef,8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef,8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d,16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    cs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    e''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
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
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
                                    s1 * 1
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
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % MARKUP:
                                    _ \markup \italic { Dolcissimo }
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    af16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    ef4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf,8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    bf,4
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    b16
                                    d'16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    f16
                                    c'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    af16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    af4
                                    e'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    fs4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    fs'16
                                    cs'16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    af16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    b4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    e'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    b16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    cs4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs'8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    e4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    g16
                                    f16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    d4
                                    b,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b,8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    a4
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    bf16
                                    fs16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs'16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    e16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    b16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    d'16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    f'16
                                    c'16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    g4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a,8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    a,4
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    g4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fs'16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    af16
                                    e'16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g'8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    d4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    a16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    g16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    ef'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    cs'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB, Ord." 1
                                    f4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    c4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    af16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    (
                                    % COMMANDS:
                                    \boxed-markup "FB, MST" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e'16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
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
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % MARKUP:
                                    _ \markup \italic { Dolcissimo }
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \(
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b''''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    fs''''16
                                    a'''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e''''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'''''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    g''''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d''8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    ef''4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef''8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs'''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    cs'''4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    bf''''16
                                    f''''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    af''''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef''''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    cs''''16
                                    b''''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    c'''4
                                    g''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    af''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af''8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fs''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \(
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    e''''16
                                    c''''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g''''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \ottava 0
                                    bf''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    d''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    \(
                                    bf''''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f''''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \ottava 0
                                    b''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b''8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fs''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    fs''4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    ef''''16
                                    cs''''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    f''4
                                    d'''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'''8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    cs'''4
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \(
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs''''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    a''''16
                                    e''''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    d''''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    bf''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    \(
                                    f''''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    af'''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef''''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    cs''''16
                                    b'''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fs'''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \ottava 0
                                    af''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    a''4
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    e''4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e''8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    a''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    \(
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e''''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'''''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    g''''16
                                    d''''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf'''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % START_BEAM:
                                    [
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef''8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b''8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'''8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    c'''4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    af'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    \(
                                    ef''''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs''''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    fs'''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fs''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs''8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \(
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e''''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    c'''''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    g''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    g''4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    af'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    c''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
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
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    bf'''16
                                    f'''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs'''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    ef'''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef'8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    fs'4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs'8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    f8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    a'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    a'4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    fs'''16
                                    a'''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e'''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    c''''16
                                    g'''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fs'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    fs'4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    cs'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    af8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    e4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    bf'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \(
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    cs'''16
                                    af''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef'''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \ottava 0
                                    a'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    b'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    \(
                                    fs'''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a'''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \ottava 0
                                    c''4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    ef16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    g'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    g'4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    d''''16
                                    c'''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    e'4
                                    d'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    b16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    b4
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    fs8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    g'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \(
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    bf'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    f''''16
                                    cs''''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    af'''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    b'''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    cs8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    fs'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    \(
                                    a'''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e'''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    c''''16
                                    g'''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \ottava 0
                                    g'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    bf'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    bf'4
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f'16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    f'4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    f'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    \(
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    cs''''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    ef'''16
                                    b''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    fs'''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a'''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % START_BEAM:
                                    [
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    d'8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    d'8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    f'8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    e16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    af'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    af'4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    e'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    \(
                                    d'''16
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c''''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    bf''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \(
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs''''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    af'''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    ef'8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \p
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    ef'4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    ef'16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    g8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % STOP_BEAM:
                                    ]
                                    cs'4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    cs'8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    ef'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % STOP_BEAM:
                                    ]
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

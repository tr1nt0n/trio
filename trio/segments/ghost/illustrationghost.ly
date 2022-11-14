\version "2.23.14"
\language "english"
\include "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily"
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
            \tempo 4=35
            % OPENING:
            % COMMANDS:
            \boxed-markup "Are We Still Married? (ii)" 1.5
            \time 2/4
            s1 * 1/2
            % AFTER:
            % COMMANDS:
            \bar "||"
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
            % OPENING:
            % COMMANDS:
            \boxed-markup "Engraved in Water" 1.5
            \time 3/4
            s1 * 3/4
            % AFTER:
            % COMMANDS:
            \bar "||"
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
        % CLOSE_BRACKETS:
        }
        % BEFORE:
        % COMMANDS:
        \tag #'group1
        % OPEN_BRACKETS:
        {
            % OPEN_BRACKETS:
            \context StaffGroup = "Staff Group"
            <<
                % BEFORE:
                % COMMANDS:
                \tag #'group2
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context GrandStaff = "sub group 1"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice1
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context BowStaff = "cello 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "cello 1 voice"
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set GrandStaff.shortInstrumentName = \markup { vc. }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    r1 * 1/2
                                    \tweak Accidental.transparent ##t
                                    d'2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \p
                                    % COMMANDS:
                                    - \baca-circle-fast-markup
                                    \boxed-markup "Crine" 1
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b,16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % START_BEAM:
                                    [
                                    % COMMANDS:
                                    \boxed-markup "1/2 CLT" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    r16.
                                    b,32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    b,32
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    r32
                                    r32
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    f64
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    r16
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    g4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
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
                                    a16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    fs4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
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
                    \context GrandStaff = "sub group 2"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice3
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context BowStaff = "contrabass 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "contrabass 1 voice"
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set GrandStaff.shortInstrumentName = \markup { cb. }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    r1 * 1/2
                                    \tweak Accidental.transparent ##t
                                    f'2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \p
                                    % COMMANDS:
                                    - \baca-circle-fast-markup
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    r1 * 1/2
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    cs'2
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    d'4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
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
                    \context GrandStaff = "sub group 3"
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
                                    \once \override Rest.transparent = ##t
                                    \set GrandStaff.shortInstrumentName = \markup { pno. }
                                    r1 * 1/2
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 2
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ppp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        \(
                                        cs''''16
                                        e''''16
                                        a''''16
                                        e''''16
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        cs''''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        cs''''16
                                        e''''16
                                        g''''16
                                        e''''16
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        cs''''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        a'''16
                                        d''''16
                                        fs''''16
                                        d''''16
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        a'''16
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
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <a,,, bf,,, b,,, c,, cs,,>2
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    \(
                                    d,,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \tenuto
                                    \pp
                                    % SPANNER_STOPS:
                                    \)
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

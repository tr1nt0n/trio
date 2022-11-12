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
            \time 2/4
            s1 * 1/2
            % AFTER:
            % COMMANDS:
            \boxed-markup ". . . thick-veined hand (i)" 1.5
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 2/6
            s1 * 1/3
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
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
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set PianoStaff.instrumentName = \markup { Violoncello }
                                    \set PianoStaff.shortInstrumentName = \markup { vc. }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    r1 * 1/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/3
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
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
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \tweak style #'harmonic-mixed
                                        fs4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        \glissando
                                        \tweak style #'harmonic-mixed
                                        cs,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/9
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        % COMMANDS:
                                        \boxed-markup "XFB" 1
                                        e32
                                        \tweak style #'triangle
                                        b32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        \tweak style #'triangle
                                        g32
                                        \tweak style #'triangle
                                        d32
                                        % AFTER:
                                        % COMMANDS:
                                        \boxed-markup "XSB" 1
                                        \tweak style #'triangle
                                        f,32
                                        \tweak style #'harmonic-mixed
                                        c32
                                        \tweak style #'harmonic-mixed
                                        bf,32
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'harmonic-mixed
                                        af,32
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
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        ef4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        % COMMANDS:
                                        \boxed-markup "NB" 1
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        fs4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'triangle
                                        cs''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        \tweak style #'triangle
                                        a''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        e''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        b''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        g''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
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
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \staff-line-count 4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set PianoStaff.instrumentName = \markup { Contrabass }
                                    \set PianoStaff.shortInstrumentName = \markup { cb. }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "percussion"
                                    r1 * 1/2
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        \tweak Accidental.transparent ##t
                                        bf4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \ffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        \tweak Accidental.transparent ##t
                                        bf4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \ffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    bf,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \ffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'triangle
                                        fs16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \ffff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        \glissando
                                        \tweak style #'triangle
                                        cs16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        e16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        b,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        a16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        g16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        d'16
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
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'harmonic-mixed
                                        f8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'harmonic-mixed
                                        c8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'harmonic-mixed
                                        af4.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/10
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        ef32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \ffff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        % COMMANDS:
                                        \boxed-markup "XSB" 1
                                        bf32
                                        fs32
                                        \tweak style #'triangle
                                        cs32
                                        \tweak style #'triangle
                                        e32
                                        \tweak style #'triangle
                                        b,32
                                        % AFTER:
                                        % COMMANDS:
                                        \boxed-markup "XFB" 1
                                        \tweak style #'triangle
                                        a,32
                                        \tweak style #'harmonic-mixed
                                        g,32
                                        \tweak style #'harmonic-mixed
                                        d32
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'harmonic-mixed
                                        f32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
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
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set PianoStaff.instrumentName = \markup { Piano }
                                        \set PianoStaff.shortInstrumentName = \markup { pno. }
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fp
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        cs''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        cs''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        cs''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        cs''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <e, fs, a, b,>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \ffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    % COMMANDS:
                                    \ottava 0
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 32/39
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 2
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \ffff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        af''''32
                                        ef''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        cs''''32
                                        b''''32
                                        fs''''32
                                        a''''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % COMMANDS:
                                        \ottava 0
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        e,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \ffff
                                        % SPANNER_STARTS:
                                        \(
                                        c,32
                                        g,,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ff
                                        d,32
                                        bf,,32
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        f,32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \fp
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    af''16
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    af''16
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    af''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
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
                                    s4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <d,, g,, bf,, c,>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    % COMMANDS:
                                    \ottava 0
                                    s1 * 1/3
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    s4
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

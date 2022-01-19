\version "2.20.0"
\language "english"
\include "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily"
\include "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily"
\score
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=60
            \time 2/4
            s1 * 1/2
            \boxed-markup ". . . thick-veined hand (i)" 0.5
            #(ly:expect-warning "strange time signature found")
            \time 2/6
            s1 * 1/3
            \time 1/4
            s1 * 1/4
        }
        \tag #'group1
        {
            \context ChoirStaff = "Staff Group"
            <<
                \tag #'group2
                {
                    \context PianoStaff = "sub group 1"
                    <<
                        \tag #'voice1
                        {
                            \context Staff = "piano 1 staff"
                            {
                                \context Voice = "piano 1 voice"
                                {
                                    \times 4/5
                                    {
                                        \set PianoStaff.instrumentName =
                                        \markup { Piano }
                                        \set PianoStaff.shortInstrumentName =
                                        \markup { pno. }
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs''16
                                        \fp
                                        - \marcato
                                        [
                                        \change Staff = "piano 2 staff"
                                        cs''16
                                        \change Staff = "piano 1 staff"
                                        cs''16
                                        \change Staff = "piano 2 staff"
                                        cs''16
                                        \change Staff = "piano 1 staff"
                                        \revert Staff.Stem.stemlet-length
                                        cs''16
                                        ]
                                    }
                                    \change Staff = "piano 1 staff"
                                    \ottava -1
                                    \clef "bass"
                                    <e, fs, a, b,>4
                                    :32
                                    \ffff
                                    - \marcato
                                    \arpeggio
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \ottava 0
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 32/39
                                    {
                                        \ottava 2
                                        \clef "treble"
                                        f''''32
                                        \ffff
                                        - \marcato
                                        [
                                        \(
                                        af''''32
                                        ef''''32
                                        \ff
                                        cs''''32
                                        b''''32
                                        fs''''32
                                        a''''32
                                        \)
                                        \ottava 0
                                        \change Staff = "piano 2 staff"
                                        e,32
                                        \ffff
                                        - \marcato
                                        \(
                                        c,32
                                        g,,32
                                        \ff
                                        d,32
                                        bf,,32
                                        f,32
                                        \)
                                        ]
                                    }
                                    \change Staff = "piano 1 staff"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    af''16
                                    \fp
                                    - \marcato
                                    [
                                    \change Staff = "piano 2 staff"
                                    af''16
                                    \change Staff = "piano 1 staff"
                                    af''16
                                    \change Staff = "piano 2 staff"
                                    \revert Staff.Stem.stemlet-length
                                    af''16
                                    ]
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    s4
                                    \ottava -1
                                    \clef "bass"
                                    <d,, g,, bf,, c,>4
                                    :32
                                    - \marcato
                                    \arpeggio
                                    \ottava 0
                                    s1 * 1/3
                                    \clef "treble"
                                    s4
                                }
                            }
                        }
                    >>
                }
                \tag #'group3
                {
                    \context PianoStaff = "sub group 2"
                    <<
                        \tag #'voice3
                        {
                            \context Staff = "cello 1 staff"
                            {
                                \context Voice = "cello 1 voice"
                                {
                                    \staff-line-count 4
                                    \set PianoStaff.instrumentName =
                                    \markup { Violoncello }
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { vc. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    \clef "percussion"
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/6
                                    R1 * 1/6
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    \times 4/5
                                    {
                                        \clef "bass"
                                        \tweak style #'harmonic-mixed
                                        fs4
                                        \fff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        \glissando
                                        \tweak style #'harmonic-mixed
                                        cs,16
                                        \)
                                    }
                                    \times 8/9
                                    {
                                        a,32
                                        \fff
                                        - \marcato
                                        [
                                        \(
                                        \boxed-markup "XFB" 1
                                        e32
                                        \tweak style #'triangle
                                        b32
                                        \ff
                                        \tweak style #'triangle
                                        g32
                                        \tweak style #'triangle
                                        d32
                                        \boxed-markup "XSB" 1
                                        \tweak style #'triangle
                                        f,32
                                        \tweak style #'harmonic-mixed
                                        c32
                                        \tweak style #'harmonic-mixed
                                        bf,32
                                        \tweak style #'harmonic-mixed
                                        af,32
                                        \)
                                        ]
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        ef4
                                        \fff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \boxed-markup "NB" 1
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        fs4
                                        \fff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                    }
                                    \times 4/5
                                    {
                                        \clef "treble"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'triangle
                                        cs''16
                                        \fff
                                        - \marcato
                                        [
                                        \(
                                        \glissando
                                        \tweak style #'triangle
                                        a''16
                                        \ff
                                        \glissando
                                        \tweak style #'triangle
                                        e''16
                                        \glissando
                                        \tweak style #'triangle
                                        b''16
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        g''16
                                        \)
                                        ]
                                    }
                                }
                            }
                        }
                    >>
                }
                \tag #'group4
                {
                    \context PianoStaff = "sub group 3"
                    <<
                        \tag #'voice5
                        {
                            \context Staff = "contrabass 1 staff"
                            {
                                \context Voice = "contrabass 1 voice"
                                {
                                    \staff-line-count 4
                                    \set PianoStaff.instrumentName =
                                    \markup { Contrabass }
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { cb. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    \clef "percussion"
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        \tweak Accidental.transparent ##t
                                        bf4
                                        \ffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        \tweak Accidental.transparent ##t
                                        bf4
                                        \ffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                    }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    \!
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice6
                        {
                            \context Staff = "contrabass 2 staff"
                            {
                                \context Voice = "contrabass 2 voice"
                                {
                                    \clef "bass"
                                    bf,4
                                    \ffff
                                    - \marcato
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \times 4/7
                                    {
                                        \set suggestAccidentals = ##t
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'triangle
                                        fs16
                                        \ffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        \glissando
                                        \tweak style #'triangle
                                        cs16
                                        \glissando
                                        \tweak style #'triangle
                                        e16
                                        \glissando
                                        \tweak style #'triangle
                                        b,16
                                        \glissando
                                        \tweak style #'triangle
                                        a16
                                        \glissando
                                        \tweak style #'triangle
                                        g16
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        d'16
                                        \!
                                        \)
                                        ]
                                        \set suggestAccidentals = ##f
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        \tweak style #'harmonic-mixed
                                        f8
                                        [
                                        \(
                                        \glissando
                                        \tweak style #'harmonic-mixed
                                        c8
                                        ]
                                        \glissando
                                        \tweak style #'harmonic-mixed
                                        af4.
                                        \)
                                    }
                                    \times 8/10
                                    {
                                        ef32
                                        \ffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        \boxed-markup "XSB" 1
                                        bf32
                                        fs32
                                        \tweak style #'triangle
                                        cs32
                                        \tweak style #'triangle
                                        e32
                                        \tweak style #'triangle
                                        b,32
                                        \boxed-markup "XFB" 1
                                        \tweak style #'triangle
                                        a,32
                                        \tweak style #'harmonic-mixed
                                        g,32
                                        \tweak style #'harmonic-mixed
                                        d32
                                        \tweak style #'harmonic-mixed
                                        f32
                                        \!
                                        \)
                                        ]
                                    }
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
}

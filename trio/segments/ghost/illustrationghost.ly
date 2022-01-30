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
            \tempo 4=35
            \time 2/4
            s1 * 1/2
            \boxed-markup "Are We Still Married? (ii)" 1.5
            \time 3/4
            s1 * 3/4
            \boxed-markup "Engraved in Water" 1.5
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
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { pno. }
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/2
                                    \bar "||"
                                    \times 2/3
                                    {
                                        \ottava 2
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'''16
                                        \ppp
                                        - \tweak stencil #constante-hairpin
                                        \<
                                        [
                                        \(
                                        cs''''16
                                        e''''16
                                        a''''16
                                        e''''16
                                        \revert Staff.Stem.stemlet-length
                                        c''''16
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g'''16
                                        [
                                        cs''''16
                                        e''''16
                                        g''''16
                                        e''''16
                                        \revert Staff.Stem.stemlet-length
                                        c''''16
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        fs'''16
                                        [
                                        a'''16
                                        d''''16
                                        fs''''16
                                        d''''16
                                        \revert Staff.Stem.stemlet-length
                                        a'''16
                                        \!
                                        \)
                                        ]
                                        \bar "||"
                                        \ottava 0
                                    }
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/2
                                    \bar "||"
                                    \ottava -2
                                    \clef "bass"
                                    <a,,, bf,,, b,,, c,, cs,,>2
                                    \ppp
                                    \(
                                    d,,4
                                    \pp
                                    - \tenuto
                                    \)
                                    \bar "||"
                                    \ottava 0
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
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { vc. }
                                    \once \override Rest.transparent = ##t
                                    \clef "percussion"
                                    r1 * 1/2
                                    \bar "||"
                                    \boxed-markup "Crine" 1
                                    - \baca-circle-fast-markup
                                    \tweak Accidental.transparent ##t
                                    d'2.
                                    :32
                                    \p
                                    \bar "||"
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b,16
                                    \f
                                    [
                                    \boxed-markup "1/2 CLT" 1
                                    \revert Staff.Stem.stemlet-length
                                    e16
                                    ]
                                    r16.
                                    b,32
                                    \p
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e32
                                    [
                                    b,32
                                    \revert Staff.Stem.stemlet-length
                                    e32
                                    ]
                                    r32
                                    r32
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a,64
                                    \mp
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    f64
                                    ]
                                    r16
                                    \bar "||"
                                    g4
                                    ~
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    a16
                                    ]
                                    fs4
                                    \)
                                    \bar "||"
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
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { cb. }
                                    \once \override Rest.transparent = ##t
                                    \clef "percussion"
                                    r1 * 1/2
                                    \bar "||"
                                    - \baca-circle-fast-markup
                                    \tweak Accidental.transparent ##t
                                    f'2.
                                    :32
                                    \p
                                    \bar "||"
                                }
                            }
                        }
                        \tag #'voice6
                        {
                            \context Staff = "contrabass 2 staff"
                            {
                                \context Voice = "contrabass 2 voice"
                                {
                                    \once \override Rest.transparent = ##t
                                    \clef "bass"
                                    r1 * 1/2
                                    \bar "||"
                                    cs'2
                                    \(
                                    d'4
                                    \)
                                    \bar "||"
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
}

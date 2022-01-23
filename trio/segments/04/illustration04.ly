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
            \tempo 8=130
            \time 12/8
            s1 * 3/2
            \left-aligned-boxed-markup "Toccata" 1.5
            \tempo 8=69
            \time 2/8
            s1 * 1/4
            \time 11/8
            s1 * 11/8
            \time 3/16
            s1 * 3/16
            \time 9/8
            s1 * 9/8
            \time 1/8
            s1 * 1/8
            \tempo 8=105
            \time 8/8
            s1 * 1
            \tempo 8=60
            \time 3/8
            s1 * 3/8
            \tempo 8=69
            \time 12/8
            s1 * 3/2
            \time 11/8
            s1 * 11/8
            - \abjad-dashed-line-with-hook
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-1.5 \abs-fontsize #8.5 { Accel. poco a poco (to approx. 135 BPM) } \hspace #0.5 }
            - \tweak padding 3
            \startTextSpan
            \time 9/8
            s1 * 9/8
            \time 8/8
            s1 * 1
            - \markup \italic \abs-fontsize #8.5 { a tempo }
            \stopTextSpan
            \time 7/8
            s1 * 7/8
            \time 2/8
            s1 * 1/4
            \tempo 4=130
            \time 3/4
            s1 * 3/4
            \bar "||"
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
                                    \override TupletNumber.text = \markup \italic 13:12
                                    \times 48/52
                                    {
                                        \set PianoStaff.shortInstrumentName =
                                        \markup { pno. }
                                        \ottava 2
                                        b''32
                                        \mp
                                        [
                                        \(
                                        ef'''32
                                        cs'''32
                                        e'''32
                                        fs'''32
                                        g'''32
                                        af'''32
                                        \)
                                        \change Staff = "piano 2 staff"
                                        c'''32
                                        \f
                                        - \marcato
                                        b''32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        g'''32
                                        - \marcato
                                        \change Staff = "piano 2 staff"
                                        b''32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        g'''32
                                        - \marcato
                                        \change Staff = "piano 2 staff"
                                        b''32
                                        - \marcato
                                        c'''32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        f''''32
                                        \mp
                                        \(
                                        cs''''32
                                        \)
                                        \change Staff = "piano 2 staff"
                                        a''''32
                                        \f
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        bf'''32
                                        \mp
                                        \(
                                        g''''32
                                        \)
                                        \change Staff = "piano 2 staff"
                                        a''''32
                                        \f
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        e''''32
                                        \mp
                                        \(
                                        cs''''32
                                        g''''32
                                        f''''32
                                        \)
                                        ef''''32
                                        \f
                                        - \marcato
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        \f
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        ef''''32
                                        - \marcato
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        d''''32
                                        - \marcato
                                        \ottava 0
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        af'32
                                        \mp
                                        \(
                                        fs'32
                                        a'32
                                        \)
                                        \change Staff = "piano 2 staff"
                                        ef'''32
                                        \f
                                        - \marcato
                                        \(
                                        e'''32
                                        af'''32
                                        \)
                                        \change Staff = "piano 1 staff"
                                        \ottava 2
                                        d'''32
                                        \mp
                                        \(
                                        g'''32
                                        cs'''32
                                        c'''32
                                        \)
                                        f'''32
                                        \f
                                        - \marcato
                                        fs'''32
                                        - \marcato
                                        \change Staff = "piano 2 staff"
                                        b''32
                                        \f
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        fs'''32
                                        - \marcato
                                        f'''32
                                        - \marcato
                                        \change Staff = "piano 2 staff"
                                        c'''32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        fs'''32
                                        - \marcato
                                        f'''32
                                        - \marcato
                                        \change Staff = "piano 2 staff"
                                        d'''32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        f'''32
                                        - \marcato
                                        \change Staff = "piano 2 staff"
                                        d'''32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        f'''32
                                        - \marcato
                                        ]
                                        \ottava 0
                                    }
                                    \revert TupletNumber.text
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 11/16
                                    R1 * 11/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/32
                                    R1 * 3/32
                                    \stopStaff \startStaff
                                    r2.
                                    <ef'' bf'' b'' fs'''>4.
                                    :32
                                    \mp
                                    \arpeggio
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \change Staff = "piano 1 staff"
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \override TupletNumber.text = \markup \italic 13:12
                                    \times 48/52
                                    {
                                        \ottava 2
                                        ef''''32
                                        \p
                                        [
                                        \(
                                        b'''32
                                        ef''''32
                                        \)
                                        \change Staff = "piano 2 staff"
                                        bf,,32
                                        \mf
                                        - \marcato
                                        e,32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        b'''32
                                        \p
                                        \(
                                        ef''''32
                                        b'''32
                                        d''''32
                                        b'''32
                                        d''''32
                                        g''''32
                                        e''''32
                                        c''''32
                                        a'''32
                                        c''''32
                                        a'''32
                                        fs''''32
                                        a'''32
                                        c''''32
                                        \)
                                        \change Staff = "piano 2 staff"
                                        af,32
                                        \mf
                                        - \marcato
                                        e,32
                                        - \marcato
                                        fs,32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        e''''32
                                        \p
                                        \(
                                        c''''32
                                        e''''32
                                        c''''32
                                        e''''32
                                        c''''32
                                        a'''32
                                        fs''''32
                                        a''''32
                                        fs''''32
                                        a''''32
                                        \)
                                        \change Staff = "piano 2 staff"
                                        cs,32
                                        \mf
                                        - \marcato
                                        f,32
                                        - \marcato
                                        fs,32
                                        - \marcato
                                        g,32
                                        - \marcato
                                        af,32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        fs''''32
                                        \p
                                        \(
                                        a'''32
                                        fs''''32
                                        a'''32
                                        fs''''32
                                        a''''32
                                        bf'''32
                                        a''''32
                                        bf'''32
                                        af''''32
                                        bf'''32
                                        af''''32
                                        cs''''32
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \italic 13:11
                                    \times 44/52
                                    {
                                        af''''32
                                        [
                                        bf'''32
                                        af''''32
                                        \)
                                        \change Staff = "piano 2 staff"
                                        c'''32
                                        \mf
                                        - \marcato
                                        b''32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        bf'''32
                                        \p
                                        \(
                                        a''''32
                                        fs''''32
                                        a'''32
                                        fs''''32
                                        a'''32
                                        fs''''32
                                        a''''32
                                        fs''''32
                                        a''''32
                                        bf'''32
                                        af''''32
                                        bf'''32
                                        \)
                                        \change Staff = "piano 2 staff"
                                        e''32
                                        \mf
                                        - \marcato
                                        c''32
                                        - \marcato
                                        a''32
                                        - \marcato
                                        d''32
                                        - \marcato
                                        b'32
                                        - \marcato
                                        ef''32
                                        - \marcato
                                        af''32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        a''''32
                                        \p
                                        \(
                                        fs''''32
                                        ef''''32
                                        b'''32
                                        ef''''32
                                        b'''32
                                        ef''''32
                                        b'''32
                                        d''''32
                                        b'''32
                                        d''''32
                                        g''''32
                                        e''''32
                                        c''''32
                                        \)
                                        \change Staff = "piano 2 staff"
                                        b32
                                        \mf
                                        - \marcato
                                        af'32
                                        - \marcato
                                        d'32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        af''''32
                                        \ppp
                                        \(
                                        a'''32
                                        af''''32
                                        ef''''32
                                        af''''32
                                        a'''32
                                        af''''32
                                        ef''''32
                                        af''''32
                                        ef''''32
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \italic 10:9
                                    \times 36/40
                                    {
                                        af''''32
                                        [
                                        ef''''32
                                        a''''32
                                        c''''32
                                        a''''32
                                        ef''''32
                                        a''''32
                                        c''''32
                                        b'''32
                                        c''''32
                                        a''''32
                                        ef''''32
                                        af''''32
                                        a'''32
                                        \)
                                        \change Staff = "piano 2 staff"
                                        bf,32
                                        \fff
                                        - \marcato
                                        cs32
                                        - \marcato
                                        bf32
                                        - \marcato
                                        fs32
                                        - \marcato
                                        c32
                                        - \marcato
                                        d32
                                        - \marcato
                                        a32
                                        - \marcato
                                        b,32
                                        - \marcato
                                        f32
                                        - \marcato
                                        af32
                                        - \marcato
                                        g32
                                        - \marcato
                                        ef32
                                        - \marcato
                                        e32
                                        - \marcato
                                        ef32
                                        - \marcato
                                        g32
                                        - \marcato
                                        af32
                                        - \marcato
                                        f32
                                        - \marcato
                                        b,32
                                        - \marcato
                                        a32
                                        - \marcato
                                        d32
                                        - \marcato
                                        c32
                                        - \marcato
                                        fs32
                                        - \marcato
                                        bf32
                                        - \marcato
                                        cs32
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        af''''32
                                        \mp
                                        \(
                                        ef''''32
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \italic 5:4
                                    \times 64/80
                                    {
                                        af''''64
                                        [
                                        ef''''64
                                        af''''64
                                        ef''''64
                                        a''''64
                                        ef''''64
                                        \)
                                        \change Staff = "piano 2 staff"
                                        a''64
                                        \mf
                                        - \marcato
                                        cs''64
                                        - \marcato
                                        c''64
                                        - \marcato
                                        g''64
                                        - \marcato
                                        f''64
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        af''''64
                                        \mp
                                        \(
                                        a'''64
                                        af''''64
                                        ef''''64
                                        af''''64
                                        a'''64
                                        af''''64
                                        ef''''64
                                        a''''64
                                        c''''64
                                        a''''64
                                        c''''64
                                        a''''64
                                        \)
                                        \change Staff = "piano 2 staff"
                                        bf'64
                                        \mf
                                        - \marcato
                                        e''64
                                        - \marcato
                                        f''64
                                        - \marcato
                                        c''64
                                        - \marcato
                                        bf''64
                                        - \marcato
                                        cs''64
                                        - \marcato
                                        af''64
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        cs''''64
                                        \p
                                        \(
                                        d''''64
                                        a''''64
                                        d''''64
                                        a''''64
                                        b'''64
                                        fs''''64
                                        b'''64
                                        a''''64
                                        d''''64
                                        a''''64
                                        d''''64
                                        \)
                                        \change Staff = "piano 2 staff"
                                        e''64
                                        \f
                                        - \marcato
                                        f''64
                                        - \marcato
                                        b'64
                                        - \marcato
                                        g''64
                                        - \marcato
                                        ef''64
                                        - \marcato
                                        c''64
                                        - \marcato
                                        bf''64
                                        - \marcato
                                        af''64
                                        - \marcato
                                        cs''64
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        a''''64
                                        \p
                                        \(
                                        d''''64
                                        a''''64
                                        b'''64
                                        a''''64
                                        b'''64
                                        a''''64
                                        b'''64
                                        fs''''64
                                        b'''64
                                        fs''''64
                                        \)
                                        \change Staff = "piano 2 staff"
                                        fs'64
                                        \f
                                        - \marcato
                                        b64
                                        - \marcato
                                        c'64
                                        - \marcato
                                        a'64
                                        - \marcato
                                        e'64
                                        - \marcato
                                        cs'64
                                        - \marcato
                                        d'64
                                        - \marcato
                                        af'64
                                        - \marcato
                                        f'64
                                        - \marcato
                                        g'64
                                        - \marcato
                                        ef'64
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        a'''64
                                        \pp
                                        \(
                                        af''''64
                                        a'''64
                                        af''''64
                                        e''''64
                                        f''''64
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \italic 8:7
                                    \times 56/64
                                    {
                                        e''''64
                                        [
                                        af''''64
                                        e''''64
                                        af''''64
                                        \)
                                        \change Staff = "piano 2 staff"
                                        c'64
                                        \ff
                                        - \marcato
                                        f'64
                                        - \marcato
                                        cs'64
                                        - \marcato
                                        e'64
                                        - \marcato
                                        ef'64
                                        - \marcato
                                        af'64
                                        - \marcato
                                        a'64
                                        - \marcato
                                        b64
                                        - \marcato
                                        g'64
                                        - \marcato
                                        d'64
                                        - \marcato
                                        fs'64
                                        - \marcato
                                        d'64
                                        - \marcato
                                        g'64
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        e''''64
                                        \(
                                        af''''64
                                        e''''64
                                        f''''64
                                        bf'''64
                                        f''''64
                                        \pp
                                        e''''64
                                        af''''64
                                        e''''64
                                        \)
                                        \change Staff = "piano 2 staff"
                                        bf64
                                        \ff
                                        - \marcato
                                        d64
                                        - \marcato
                                        ef64
                                        - \marcato
                                        cs64
                                        - \marcato
                                        f64
                                        - \marcato
                                        e64
                                        - \marcato
                                        af64
                                        - \marcato
                                        c64
                                        - \marcato
                                        g64
                                        - \marcato
                                        fs64
                                        - \marcato
                                        a64
                                        - \marcato
                                        bf,64
                                        - \marcato
                                        b,64
                                        - \marcato
                                        bf,64
                                        - \marcato
                                        a64
                                        - \marcato
                                        fs64
                                        - \marcato
                                        g64
                                        - \marcato
                                        \change Staff = "piano 1 staff"
                                        af''''64
                                        \ppp
                                        \(
                                        e''''64
                                        af''''64
                                        e''''64
                                        f''''64
                                        e''''64
                                        f''''64
                                        bf'''64
                                        \)
                                        \ottava 0
                                        \change Staff = "piano 2 staff"
                                        f,64
                                        \fff
                                        - \marcato
                                        af,64
                                        - \marcato
                                        e,64
                                        - \marcato
                                        g,64
                                        - \marcato
                                        b,,64
                                        - \marcato
                                        c,64
                                        - \marcato
                                        a,64
                                        - \marcato
                                        fs,64
                                        - \marcato
                                        d,64
                                        - \marcato
                                        ef,64
                                        - \marcato
                                        cs,64
                                        - \marcato
                                        bf,,64
                                        - \marcato
                                        cs,64
                                        - \marcato
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \change Staff = "piano 1 staff"
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    \ottava 2
                                    c'''''16
                                    \ppp
                                    [
                                    \change Staff = "piano 2 staff"
                                    bf''''16
                                    \fff
                                    - \marcato
                                    \change Staff = "piano 1 staff"
                                    b''''16
                                    \ppp
                                    \(
                                    c'''''16
                                    b''''16
                                    \)
                                    \change Staff = "piano 2 staff"
                                    bf''''16
                                    \fff
                                    - \marcato
                                    \change Staff = "piano 1 staff"
                                    b''''16
                                    \ppp
                                    \change Staff = "piano 2 staff"
                                    bf''''16
                                    \fff
                                    - \marcato
                                    \change Staff = "piano 1 staff"
                                    c'''''16
                                    \ppp
                                    \change Staff = "piano 2 staff"
                                    bf''''16
                                    \fff
                                    - \marcato
                                    \change Staff = "piano 1 staff"
                                    c'''''16
                                    \ppp
                                    \(
                                    b''''16
                                    \)
                                    ]
                                    \ottava 0
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    \ottava 2
                                    s1.
                                    \ottava 0
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 11/16
                                    R1 * 11/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/32
                                    R1 * 3/32
                                    \stopStaff \startStaff
                                    r2.
                                    <bf c''>4.
                                    :32
                                    \arpeggio
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \clef "bass"
                                    s1 * 3/2
                                    \clef "treble"
                                    s1 * 11/8
                                    \clef "bass"
                                    s1 * 9/8
                                    \clef "treble"
                                    s1 * 1
                                    \clef "bass"
                                    s1 * 7/8
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    \ottava 2
                                    \clef "treble"
                                    s2.
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
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 11/16
                                    R1 * 11/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/32
                                    R1 * 3/32
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/16
                                    R1 * 9/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 11/16
                                    R1 * 11/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/16
                                    R1 * 9/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    r4
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        \p
                                        \(
                                        \boxed-markup "NB" 1
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #-45
                                        - \evans-BAD-spanner-right-text #0
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak staff-padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        \)
                                        \evansStopTextSpanBAD
                                    }
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    \override TupletNumber.text = \markup \italic 13:11
                                    \times 44/52
                                    {
                                        \tweak style #'harmonic-mixed
                                        cs''32
                                        \mp
                                        [
                                        \(
                                        \boxed-markup "Ord., FB" 1
                                        \tweak style #'harmonic-mixed
                                        c''32
                                        \tweak style #'harmonic-mixed
                                        af''32
                                        \tweak style #'harmonic-mixed
                                        f''32
                                        \tweak style #'harmonic-mixed
                                        af''32
                                        \tweak style #'harmonic-mixed
                                        f''32
                                        \tweak style #'harmonic-mixed
                                        af''32
                                        \tweak style #'harmonic-mixed
                                        c''32
                                        \tweak style #'harmonic-mixed
                                        cs''32
                                        \tweak style #'harmonic-mixed
                                        e''32
                                        \tweak style #'harmonic-mixed
                                        cs''32
                                        \tweak style #'harmonic-mixed
                                        c''32
                                        \tweak style #'harmonic-mixed
                                        af''32
                                        \tweak style #'harmonic-mixed
                                        f''32
                                        \tweak style #'harmonic-mixed
                                        b'32
                                        \tweak style #'harmonic-mixed
                                        f''32
                                        \tweak style #'harmonic-mixed
                                        b'32
                                        \tweak style #'harmonic-mixed
                                        d''32
                                        \tweak style #'harmonic-mixed
                                        ef''32
                                        \tweak style #'harmonic-mixed
                                        d''32
                                        \tweak style #'harmonic-mixed
                                        ef''32
                                        \tweak style #'harmonic-mixed
                                        d''32
                                        \tweak style #'harmonic-mixed
                                        b'32
                                        \tweak style #'harmonic-mixed
                                        d''32
                                        \tweak style #'harmonic-mixed
                                        ef''32
                                        \tweak style #'harmonic-mixed
                                        d''32
                                        \tweak style #'harmonic-mixed
                                        b'32
                                        \tweak style #'harmonic-mixed
                                        d''32
                                        \tweak style #'harmonic-mixed
                                        b'32
                                        \tweak style #'harmonic-mixed
                                        d''32
                                        \tweak style #'harmonic-mixed
                                        b'32
                                        \tweak style #'harmonic-mixed
                                        f''32
                                        \tweak style #'harmonic-mixed
                                        af''32
                                        \tweak style #'harmonic-mixed
                                        c''32
                                        \tweak style #'harmonic-mixed
                                        af''32
                                        \tweak style #'harmonic-mixed
                                        c''32
                                        \tweak style #'harmonic-mixed
                                        cs''32
                                        \tweak style #'harmonic-mixed
                                        e''32
                                        \tweak style #'harmonic-mixed
                                        cs''32
                                        \tweak style #'harmonic-mixed
                                        c''32
                                        \tweak style #'harmonic-mixed
                                        cs''32
                                        \tweak style #'harmonic-mixed
                                        c''32
                                        \tweak style #'harmonic-mixed
                                        cs''32
                                        \tweak style #'harmonic-mixed
                                        c''32
                                        \tweak style #'harmonic-mixed
                                        af''32
                                        \tweak style #'harmonic-mixed
                                        f''32
                                        \tweak style #'harmonic-mixed
                                        b'32
                                        \tweak style #'harmonic-mixed
                                        d''32
                                        \tweak style #'harmonic-mixed
                                        b'32
                                        \tweak style #'harmonic-mixed
                                        d''32
                                        \tweak style #'harmonic-mixed
                                        b'32
                                        \tweak style #'harmonic-mixed
                                        f''32
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/32
                                    R1 * 3/32
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/16
                                    R1 * 9/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    r2
                                    \set suggestAccidentals = ##t
                                    c''16
                                    \f
                                    - \accent
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    [
                                    \(
                                    \glissando
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { IV } \hspace #0.5 }
                                    - \tweak padding 14
                                    \startTextSpan
                                    \boxed-markup "NB" 1
                                    e''16
                                    ]
                                    \glissando
                                    \override TupletNumber.text = \markup \italic 7:4
                                    \times 4/7
                                    {
                                        cqs''16
                                        [
                                        \glissando
                                        d''16
                                        \glissando
                                        bqs'16
                                        \glissando
                                        eqs''16
                                        \glissando
                                        c''16
                                        \glissando
                                        e''16
                                        \)
                                        \glissando
                                        \tweak style #'triangle
                                        cqs''16
                                        - \accent
                                        ]
                                        \(
                                        \glissando
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \italic 3:2
                                    \times 2/3
                                    {
                                        \tweak style #'triangle
                                        d''32
                                        [
                                        \glissando
                                        \tweak style #'triangle
                                        bqs'32
                                        \glissando
                                        \tweak style #'triangle
                                        eqs''32
                                        \glissando
                                        \tweak style #'triangle
                                        c''32
                                        \glissando
                                        \tweak style #'triangle
                                        e''32
                                        \glissando
                                        \tweak style #'triangle
                                        cqs''32
                                        \!
                                        \)
                                        \stopTextSpan
                                        ]
                                        \set suggestAccidentals = ##f
                                    }
                                    \revert TupletNumber.text
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \tweak style #'harmonic-mixed
                                    b'32
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    [
                                    \(
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XSB }
                                    - \tweak padding 9
                                    \startTextSpan
                                    \tweak style #'harmonic-mixed
                                    c''32
                                    \tweak style #'harmonic-mixed
                                    f''32
                                    \tweak style #'harmonic-mixed
                                    fs''32
                                    \tweak style #'harmonic-mixed
                                    f''32
                                    \tweak style #'harmonic-mixed
                                    c''32
                                    \tweak style #'harmonic-mixed
                                    b'32
                                    \mf
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'harmonic-mixed
                                    c''32
                                    \tweak style #'harmonic-mixed
                                    b'32
                                    \tweak style #'harmonic-mixed
                                    g''32
                                    \stopTextSpan
                                    \tweak style #'harmonic-mixed
                                    b'32
                                    \tweak style #'harmonic-mixed
                                    c''32
                                    \tweak style #'harmonic-mixed
                                    f''32
                                    \tweak style #'harmonic-mixed
                                    fs''32
                                    \)
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XFB }
                                    - \tweak padding 9
                                    \startTextSpan
                                    \clef "tenor"
                                    \tweak style #'harmonic-mixed
                                    f'32
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    \tweak style #'harmonic-mixed
                                    c'32
                                    \tweak style #'harmonic-mixed
                                    f'32
                                    \tweak style #'harmonic-mixed
                                    ef'32
                                    \tweak style #'harmonic-mixed
                                    af'32
                                    \mf
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'harmonic-mixed
                                    ef'32
                                    \tweak style #'harmonic-mixed
                                    fs'32
                                    \tweak style #'harmonic-mixed
                                    ef'32
                                    \tweak style #'harmonic-mixed
                                    af'32
                                    \)
                                    \clef "treble"
                                    \tweak style #'triangle
                                    f''32
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \stopTextSpan
                                    \(
                                    \tweak style #'triangle
                                    fs''32
                                    \tweak style #'triangle
                                    f''32
                                    \tweak style #'triangle
                                    c''32
                                    \tweak style #'triangle
                                    b'32
                                    \tweak style #'triangle
                                    c''32
                                    \tweak style #'triangle
                                    b'32
                                    \tweak style #'triangle
                                    g''32
                                    \tweak style #'triangle
                                    b'32
                                    \tweak style #'triangle
                                    g''32
                                    \mf
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XSB }
                                    - \tweak padding 9
                                    \startTextSpan
                                    \tweak style #'triangle
                                    b'32
                                    \tweak style #'triangle
                                    c''32
                                    \tweak style #'triangle
                                    f''32
                                    \tweak style #'triangle
                                    c''32
                                    \tweak style #'triangle
                                    b'32
                                    \tweak style #'triangle
                                    g''32
                                    \tweak style #'triangle
                                    b'32
                                    \)
                                    \clef "tenor"
                                    \tweak style #'triangle
                                    ef'32
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    \tweak style #'triangle
                                    fs'32
                                    \tweak style #'triangle
                                    ef'32
                                    \tweak style #'triangle
                                    fs'32
                                    \tweak style #'triangle
                                    ef'32
                                    \tweak style #'triangle
                                    fs'32
                                    \mf
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'triangle
                                    cs'32
                                    \stopTextSpan
                                    \tweak style #'triangle
                                    d'32
                                    cs'32
                                    fs'32
                                    cs'32
                                    d'32
                                    \)
                                    \clef "bass"
                                    cs32
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    bf32
                                    cs32
                                    bf32
                                    cs32
                                    bf32
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XFB }
                                    - \tweak padding 9
                                    \startTextSpan
                                    fs32
                                    \mf
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    bf32
                                    fs32
                                    c32
                                    d32
                                    a32
                                    b,32
                                    a32
                                    b,32
                                    f32
                                    \)
                                    \clef "tenor"
                                    \tweak style #'triangle
                                    e'32
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    \tweak style #'triangle
                                    d'32
                                    \tweak style #'triangle
                                    cs'32
                                    \tweak style #'triangle
                                    fs'32
                                    \tweak style #'triangle
                                    ef'32
                                    \tweak style #'triangle
                                    af'32
                                    \stopTextSpan
                                    \tweak style #'triangle
                                    ef'32
                                    \mf
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'triangle
                                    fs'32
                                    \tweak style #'triangle
                                    ef'32
                                    \tweak style #'triangle
                                    fs'32
                                    \tweak style #'triangle
                                    ef'32
                                    \tweak style #'triangle
                                    fs'32
                                    \tweak style #'triangle
                                    cs'32
                                    \)
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XSB }
                                    - \tweak padding 9
                                    \startTextSpan
                                    \clef "treble"
                                    \tweak style #'triangle
                                    c''32
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    \tweak style #'triangle
                                    b'32
                                    \tweak style #'triangle
                                    c''32
                                    \tweak style #'triangle
                                    f''32
                                    \tweak style #'triangle
                                    fs''32
                                    \tweak style #'triangle
                                    f''32
                                    \tweak style #'triangle
                                    fs''32
                                    \tweak style #'triangle
                                    f''32
                                    \tweak style #'triangle
                                    fs''32
                                    \tweak style #'triangle
                                    f''32
                                    \tweak style #'triangle
                                    fs''32
                                    \tweak style #'harmonic-mixed
                                    f''32
                                    \tweak style #'harmonic-mixed
                                    fs''32
                                    \tweak style #'harmonic-mixed
                                    f''32
                                    \tweak style #'harmonic-mixed
                                    c''32
                                    \stopTextSpan
                                    \tweak style #'harmonic-mixed
                                    f''32
                                    \tweak style #'harmonic-mixed
                                    c''32
                                    \tweak style #'harmonic-mixed
                                    f''32
                                    \tweak style #'harmonic-mixed
                                    fs''32
                                    \tweak style #'harmonic-mixed
                                    f''32
                                    \tweak style #'harmonic-mixed
                                    fs''32
                                    \tweak style #'harmonic-mixed
                                    f''32
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XFB }
                                    - \tweak padding 9
                                    \startTextSpan
                                    \tweak style #'harmonic-mixed
                                    fs''32
                                    \tweak style #'harmonic-mixed
                                    f''32
                                    \tweak style #'harmonic-mixed
                                    c''32
                                    \tweak style #'harmonic-mixed
                                    b'32
                                    \tweak style #'harmonic-mixed
                                    g''32
                                    \tweak style #'harmonic-mixed
                                    b'32
                                    \tweak style #'harmonic-mixed
                                    c''32
                                    \tweak style #'harmonic-mixed
                                    b'32
                                    \tweak style #'triangle
                                    c''32
                                    \stopTextSpan
                                    \tweak style #'triangle
                                    f''32
                                    \tweak style #'triangle
                                    fs''32
                                    \fff
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'triangle
                                    f''32
                                    \tweak style #'triangle
                                    c''32
                                    \tweak style #'triangle
                                    b'32
                                    \tweak style #'triangle
                                    c''32
                                    \tweak style #'triangle
                                    b'32
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XSB }
                                    - \tweak padding 10.5
                                    \startTextSpan
                                    \tweak style #'triangle
                                    g''32
                                    \tweak style #'triangle
                                    b'32
                                    \tweak style #'triangle
                                    c''32
                                    \tweak style #'triangle
                                    f''32
                                    \tweak style #'triangle
                                    fs''32
                                    \tweak style #'triangle
                                    f''32
                                    \tweak style #'triangle
                                    fs''32
                                    \tweak style #'triangle
                                    f''32
                                    \)
                                    \clef "tenor"
                                    \tweak style #'triangle
                                    ef'32
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    af'64
                                    ef'64
                                    fs'64
                                    ef'64
                                    \mf
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \stopTextSpan
                                    af'64
                                    ef'64
                                    fs'64
                                    cs'64
                                    d'64
                                    \)
                                    \clef "bass"
                                    a64
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XFB }
                                    - \tweak padding 10.5
                                    \startTextSpan
                                    d64
                                    a64
                                    d64
                                    a64
                                    d64
                                    a64
                                    b,64
                                    f64
                                    \mf
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \stopTextSpan
                                    af64
                                    f64
                                    af64
                                    f64
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XSB }
                                    - \tweak padding 10.5
                                    \startTextSpan
                                    b,64
                                    f64
                                    b,64
                                    f64
                                    \)
                                    \clef "tenor"
                                    cs'64
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    d'64
                                    cs'64
                                    fs'64
                                    ef'64
                                    fs'64
                                    \tweak style #'triangle
                                    ef'64
                                    \tweak style #'triangle
                                    af'64
                                    \tweak style #'triangle
                                    ef'64
                                    \tweak style #'triangle
                                    af'64
                                    \f
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'triangle
                                    ef'64
                                    \tweak style #'triangle
                                    fs'64
                                    \tweak style #'triangle
                                    cs'64
                                    \tweak style #'triangle
                                    d'64
                                    \tweak style #'triangle
                                    e'64
                                    \tweak style #'triangle
                                    f'64
                                    \)
                                    \stopTextSpan
                                    \clef "bass"
                                    \tweak style #'triangle
                                    c'64
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    \tweak style #'triangle
                                    af64
                                    \tweak style #'triangle
                                    g64
                                    \tweak style #'triangle
                                    af64
                                    \tweak style #'triangle
                                    g64
                                    \tweak style #'triangle
                                    ef64
                                    \tweak style #'triangle
                                    g64
                                    \tweak style #'triangle
                                    ef64
                                    \tweak style #'triangle
                                    e64
                                    \tweak style #'triangle
                                    ef64
                                    \tweak style #'triangle
                                    g64
                                    \tweak style #'triangle
                                    ef64
                                    \f
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XFB }
                                    - \tweak padding 10.5
                                    \startTextSpan
                                    \tweak style #'triangle
                                    g64
                                    \tweak style #'triangle
                                    af64
                                    \tweak style #'triangle
                                    f64
                                    \tweak style #'triangle
                                    b,64
                                    \tweak style #'triangle
                                    f64
                                    \tweak style #'triangle
                                    b,64
                                    \)
                                    \clef "tenor"
                                    \tweak style #'triangle
                                    c'64
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    \tweak style #'triangle
                                    fs'64
                                    \tweak style #'triangle
                                    cs'64
                                    \tweak style #'triangle
                                    fs'64
                                    \tweak style #'harmonic-mixed
                                    cs'64
                                    \tweak style #'harmonic-mixed
                                    fs'64
                                    \stopTextSpan
                                    \tweak style #'harmonic-mixed
                                    cs'64
                                    \tweak style #'harmonic-mixed
                                    fs'64
                                    \tweak style #'harmonic-mixed
                                    c'64
                                    \tweak style #'harmonic-mixed
                                    af'64
                                    \tweak style #'harmonic-mixed
                                    c'64
                                    \ff
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'harmonic-mixed
                                    fs'64
                                    \tweak style #'harmonic-mixed
                                    cs'64
                                    \tweak style #'harmonic-mixed
                                    e'64
                                    \tweak style #'harmonic-mixed
                                    cs'64
                                    \tweak style #'harmonic-mixed
                                    e'64
                                    \tweak style #'harmonic-mixed
                                    cs'64
                                    \tweak style #'harmonic-mixed
                                    fs'64
                                    \tweak style #'harmonic-mixed
                                    cs'64
                                    \)
                                    \clef "bass"
                                    \tweak style #'harmonic-mixed
                                    af64
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    \tweak style #'harmonic-mixed
                                    f64
                                    \tweak style #'harmonic-mixed
                                    af64
                                    \tweak style #'harmonic-mixed
                                    g64
                                    \tweak style #'harmonic-mixed
                                    ef64
                                    \tweak style #'harmonic-mixed
                                    g64
                                    \tweak style #'harmonic-mixed
                                    af64
                                    \tweak style #'harmonic-mixed
                                    f64
                                    \tweak style #'harmonic-mixed
                                    cs64
                                    \tweak style #'harmonic-mixed
                                    bf64
                                    \tweak style #'harmonic-mixed
                                    cs64
                                    \tweak style #'harmonic-mixed
                                    bf64
                                    \ff
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XSB }
                                    - \tweak padding 10.5
                                    \startTextSpan
                                    \tweak style #'harmonic-mixed
                                    cs64
                                    \tweak style #'triangle
                                    bf64
                                    \tweak style #'triangle
                                    fs64
                                    \tweak style #'triangle
                                    bf64
                                    \tweak style #'triangle
                                    fs64
                                    \tweak style #'triangle
                                    c64
                                    \tweak style #'triangle
                                    d64
                                    \tweak style #'triangle
                                    a64
                                    \tweak style #'triangle
                                    b,64
                                    \tweak style #'triangle
                                    a64
                                    \)
                                    \tweak style #'triangle
                                    b,64
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \(
                                    \tweak style #'triangle
                                    a,64
                                    \tweak style #'triangle
                                    ef,64
                                    \tweak style #'triangle
                                    c,64
                                    \tweak style #'triangle
                                    af,64
                                    \tweak style #'triangle
                                    bf,64
                                    \fff
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'triangle
                                    af,64
                                    \stopTextSpan
                                    \tweak style #'triangle
                                    bf,64
                                    \tweak style #'triangle
                                    af,64
                                    \tweak style #'triangle
                                    bf,64
                                    \tweak style #'triangle
                                    b,64
                                    \tweak style #'triangle
                                    f,64
                                    \tweak style #'triangle
                                    fs,64
                                    \tweak style #'triangle
                                    f,64
                                    \tweak style #'triangle
                                    fs,64
                                    \tweak style #'triangle
                                    f,64
                                    \tweak style #'triangle
                                    b,64
                                    \tweak style #'triangle
                                    f,64
                                    \tweak style #'triangle
                                    b,64
                                    \!
                                    \)
                                    ]
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    r4
                                    \override TupletNumber.text = \markup \italic 3:2
                                    \times 2/3
                                    {
                                        \set suggestAccidentals = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            b,
                                            \tweak style #'harmonic-mixed
                                            fs
                                        >8
                                        [
                                        \(
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >8
                                        ]
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >2
                                        \)
                                        \set suggestAccidentals = ##f
                                    }
                                    \revert TupletNumber.text
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
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 11/16
                                    R1 * 11/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/32
                                    R1 * 3/32
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/16
                                    R1 * 9/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 11/16
                                    R1 * 11/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/16
                                    R1 * 9/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    r4
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'16
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #+45
                                        - \evans-BAD-spanner-right-text #0
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak staff-padding #2.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        \)
                                        \evansStopTextSpanBAD
                                    }
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
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    \override TupletNumber.text = \markup \italic 13:11
                                    \times 44/52
                                    {
                                        \clef "treble"
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \mp
                                        [
                                        \(
                                        \boxed-markup "Ord., FB" 1
                                        \tweak style #'harmonic-mixed
                                        g'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        g'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        g'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        f'32
                                        \tweak style #'harmonic-mixed
                                        fs'32
                                        \tweak style #'harmonic-mixed
                                        f'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        g'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        g'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        g'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        f'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        g'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        f'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        g'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        f'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        f'32
                                        \tweak style #'harmonic-mixed
                                        fs'32
                                        \tweak style #'harmonic-mixed
                                        f'32
                                        \tweak style #'harmonic-mixed
                                        fs'32
                                        \tweak style #'harmonic-mixed
                                        f'32
                                        \tweak style #'harmonic-mixed
                                        fs'32
                                        \tweak style #'harmonic-mixed
                                        f'32
                                        \tweak style #'harmonic-mixed
                                        fs'32
                                        \tweak style #'harmonic-mixed
                                        c'32
                                        \tweak style #'harmonic-mixed
                                        a'32
                                        \tweak style #'harmonic-mixed
                                        b32
                                        \tweak style #'harmonic-mixed
                                        a'32
                                        \tweak style #'harmonic-mixed
                                        b32
                                        \tweak style #'harmonic-mixed
                                        a'32
                                        \tweak style #'harmonic-mixed
                                        b32
                                        \tweak style #'harmonic-mixed
                                        a'32
                                        \tweak style #'harmonic-mixed
                                        c'32
                                        \tweak style #'harmonic-mixed
                                        fs'32
                                        \tweak style #'harmonic-mixed
                                        f'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        g'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        f'32
                                        \tweak style #'harmonic-mixed
                                        e'32
                                        \tweak style #'harmonic-mixed
                                        f'32
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/32
                                    R1 * 3/32
                                    \stopStaff \startStaff
                                    \override TupletNumber.text = \markup \italic 10:9
                                    \times 72/80
                                    {
                                        \clef "bass"
                                        \tweak style #'harmonic-mixed
                                        ef64
                                        - \tweak circled-tip ##t
                                        \<
                                        [
                                        \(
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XSB }
                                        - \tweak padding 9
                                        \startTextSpan
                                        \tweak style #'harmonic-mixed
                                        d64
                                        \tweak style #'harmonic-mixed
                                        ef64
                                        \tweak style #'harmonic-mixed
                                        c64
                                        \tweak style #'harmonic-mixed
                                        ef64
                                        \tweak style #'harmonic-mixed
                                        d64
                                        \tweak style #'harmonic-mixed
                                        ef64
                                        \tweak style #'harmonic-mixed
                                        c64
                                        \tweak style #'harmonic-mixed
                                        ef64
                                        \tweak style #'harmonic-mixed
                                        c64
                                        \tweak style #'harmonic-mixed
                                        fs64
                                        \tweak style #'harmonic-mixed
                                        c64
                                        \tweak style #'harmonic-mixed
                                        fs64
                                        \tweak style #'harmonic-mixed
                                        a64
                                        \tweak style #'harmonic-mixed
                                        cs64
                                        \tweak style #'harmonic-mixed
                                        b,64
                                        \tweak style #'harmonic-mixed
                                        cs64
                                        \tweak style #'harmonic-mixed
                                        a64
                                        \tweak style #'harmonic-mixed
                                        d64
                                        \tweak style #'harmonic-mixed
                                        a64
                                        \tweak style #'harmonic-mixed
                                        d64
                                        \tweak style #'harmonic-mixed
                                        a64
                                        \tweak style #'harmonic-mixed
                                        cs64
                                        \tweak style #'harmonic-mixed
                                        b,64
                                        \tweak style #'harmonic-mixed
                                        ef64
                                        \tweak style #'triangle
                                        f64
                                        \tweak style #'triangle
                                        bf,64
                                        \tweak style #'triangle
                                        bf64
                                        \tweak style #'triangle
                                        bf,64
                                        \tweak style #'triangle
                                        c64
                                        \tweak style #'triangle
                                        bf,64
                                        \tweak style #'triangle
                                        bf64
                                        \stopTextSpan
                                        \tweak style #'triangle
                                        bf,64
                                        \tweak style #'triangle
                                        bf64
                                        \tweak style #'triangle
                                        bf,64
                                        \tweak style #'triangle
                                        c64
                                        \tweak style #'triangle
                                        e64
                                        \tweak style #'triangle
                                        c64
                                        \tweak style #'triangle
                                        e64
                                        \tweak style #'triangle
                                        f64
                                        \tweak style #'triangle
                                        fs64
                                        \f
                                        - \tweak circled-tip ##t
                                        \>
                                        \tweak style #'triangle
                                        f64
                                        \tweak style #'triangle
                                        c64
                                        \tweak style #'triangle
                                        f64
                                        \tweak style #'triangle
                                        fs64
                                        \tweak style #'triangle
                                        f64
                                        \tweak style #'triangle
                                        c64
                                        \tweak style #'triangle
                                        e64
                                        \tweak style #'triangle
                                        bf64
                                        \tweak style #'triangle
                                        d64
                                        \tweak style #'triangle
                                        bf64
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XFB }
                                        - \tweak padding 9
                                        \startTextSpan
                                        \tweak style #'triangle
                                        e64
                                        \tweak style #'triangle
                                        c64
                                        \tweak style #'triangle
                                        g64
                                        \tweak style #'triangle
                                        c64
                                        \tweak style #'triangle
                                        g64
                                        \tweak style #'triangle
                                        c64
                                        b,64
                                        fs64
                                        af64
                                        bf64
                                        af64
                                        fs64
                                        b,64
                                        fs64
                                        e64
                                        c64
                                        bf,64
                                        bf64
                                        af64
                                        f64
                                        a64
                                        ef64
                                        d64
                                        ef64
                                        d64
                                        ef64
                                        d64
                                        ef64
                                        a64
                                        \!
                                        \)
                                        \stopTextSpan
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \override TupletNumber.text = \markup \italic 5:4
                                    \times 16/20
                                    {
                                        \clef "treble"
                                        af'16
                                        - \tweak circled-tip ##t
                                        \<
                                        [
                                        \(
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XSB }
                                        - \tweak padding 9
                                        \startTextSpan
                                        c'16
                                        af'16
                                        e'16
                                        af'16
                                        e'16
                                        a'16
                                        ef'16
                                        \tweak style #'triangle
                                        a'16
                                        \stopTextSpan
                                        \tweak style #'triangle
                                        e'16
                                        \tweak style #'triangle
                                        af'16
                                        \mf
                                        - \tweak circled-tip ##t
                                        \>
                                        \tweak style #'triangle
                                        e'16
                                        \tweak style #'triangle
                                        a'16
                                        \tweak style #'triangle
                                        e'16
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XFB }
                                        - \tweak padding 9
                                        \startTextSpan
                                        \tweak style #'triangle
                                        a'16
                                        \tweak style #'triangle
                                        ef'16
                                        \tweak style #'harmonic-mixed
                                        cs'16
                                        \tweak style #'harmonic-mixed
                                        d'16
                                        \tweak style #'harmonic-mixed
                                        cs'16
                                        d'16
                                        \!
                                        \)
                                        \stopTextSpan
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 11/16
                                    R1 * 11/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/16
                                    R1 * 9/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/2
                                    R1 * 1/2
                                    \stopStaff \startStaff
                                    \override TupletNumber.text = \markup \italic 6:7
                                    \times 7/6
                                    {
                                        \clef "bass"
                                        <a, b,>8
                                        - \accent
                                        - \tweak circled-tip ##t
                                        \<
                                        [
                                        \(
                                        \glissando
                                        \boxed-markup "NB" 1
                                        <aqf, a,>8
                                        \)
                                        \glissando
                                        <a, cqs>8
                                        - \accent
                                        \(
                                        \glissando
                                        <a, bf,>8
                                        \glissando
                                        <a, b,>8
                                        \)
                                        \glissando
                                        <aqf, a,>8
                                        \ff
                                        - \accent
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    r4
                                    \override TupletNumber.text = \markup \italic 7:4
                                    \times 4/7
                                    {
                                        \set suggestAccidentals = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >8
                                        ^ \p
                                        [
                                        \(
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >8
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            b
                                        >8
                                        ]
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >2
                                        \)
                                        \set suggestAccidentals = ##f
                                    }
                                    \revert TupletNumber.text
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
}

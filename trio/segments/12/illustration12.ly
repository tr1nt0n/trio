\version "2.20.0"
\language "english"
\include "../../build/trio-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/_stylesheets/abjad.ily"
\score
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=105
            \time 5/4
            s1 * 5/4
            \boxed-markup "Back." 0.5
            \time 4/4
            s1 * 1
            \time 3/8
            s1 * 3/8
            \time 3/4
            s1 * 3/4
            \time 6/4
            s1 * 3/2
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \time 4/8
            s1 * 1/2
            \pageBreak
            \time 5/8
            s1 * 5/8
            \time 3/8
            s1 * 3/8
            \time 5/8
            s1 * 5/8
            \time 4/8
            s1 * 1/2
            \time 3/8
            s1 * 3/8
            \bar "|."
            \override Score.BarLine.transparent = ##f
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
                            \context Staff = "cello 1 staff"
                            {
                                \context Voice = "cello 1 voice"
                                {
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { vc. }
                                    s1 * 5/4
                                    s1 * 1
                                    s1 * 3/8
                                    s1 * 3/4
                                    s1 * 3/2
                                    s1 * 3/8
                                    \repeat tremolo 4 {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g32.
                                        \(
                                        \revert Staff.Stem.stemlet-length
                                        bf32.
                                        \)
                                    }
                                    s2
                                    \repeat tremolo 4 {
                                        g16
                                        \(
                                        bf16
                                    }
                                    \repeat tremolo 4 {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g64
                                        \revert Staff.Stem.stemlet-length
                                        bf64
                                        \)
                                    }
                                    s4.
                                    \repeat tremolo 4 {
                                        g16
                                        \(
                                        bf16
                                    }
                                    \repeat tremolo 4 {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g64
                                        \revert Staff.Stem.stemlet-length
                                        bf64
                                        \)
                                    }
                                    s2
                                    \repeat tremolo 4 {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g32.
                                        \(
                                        \revert Staff.Stem.stemlet-length
                                        bf32.
                                        \)
                                    }
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    s1 * 3/4
                                    s1 * 1/2
                                    <cs' a'>2
                                    ^ \markup -5
                                    ^ \markup +12
                                    - \tweak circled-tip ##t
                                    \<
                                    \boxed-markup "NB, Ord." 1
                                    <f' a'>2
                                    ^ \markup +4
                                    ^ \markup +14
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <c' a'>8.
                                    ^ \markup +3
                                    ^ \markup +19
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <a' cs''>8.
                                    ^ \markup +16
                                    ^ \markup -20
                                    ]
                                    <b' d''>4
                                    ^ \markup +17
                                    ^ \markup +23
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b' d''>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <c' ef'>8
                                    ^ \markup -14
                                    ^ \markup +0
                                    ~
                                    ]
                                    <c' ef'>4
                                    <a' g''>2.
                                    \fff
                                    ^ \markup +12
                                    ^ \markup -25
                                    <b f'>2.
                                    ^ \markup +3
                                    ^ \markup +4
                                    \set suggestAccidentals = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    - \tweak circled-tip ##t
                                    ^ \>
                                    [
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { IV } \hspace #0.5 }
                                    - \tweak padding 8
                                    \startTextSpan
                                    \glissando
                                    \(
                                    e''16
                                    \glissando
                                    cqs''16
                                    \glissando
                                    d''16
                                    \glissando
                                    bqs'16
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    eqs''16
                                    \stopTextSpan
                                    \)
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >4
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        \)
                                    }
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        [
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { IV } \hspace #0.5 }
                                        - \tweak padding 8
                                        \startTextSpan
                                        \glissando
                                        \(
                                        e''8
                                        \glissando
                                        cqs''8
                                        \glissando
                                        d''8
                                        \glissando
                                        bqs'8
                                        \glissando
                                        eqs''8
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        \stopTextSpan
                                        \)
                                        ]
                                    }
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    \times 15/18
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >8
                                        [
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >8
                                        ]
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >2
                                        \)
                                    }
                                    \revert TupletNumber.text
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c''16
                                    [
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { IV } \hspace #0.5 }
                                    - \tweak padding 8
                                    \startTextSpan
                                    \glissando
                                    \(
                                    e''16
                                    \glissando
                                    cqs''16
                                    \glissando
                                    d''16
                                    \glissando
                                    bqs'16
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    eqs''16
                                    \stopTextSpan
                                    \)
                                    ]
                                    \override TupletNumber.text = \markup \italic { 7:10 }
                                    \times 30/21
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            c
                                        >16
                                        [
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        ]
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >4
                                        \)
                                    }
                                    \revert TupletNumber.text
                                    \times 4/7
                                    {
                                        \clef "treble"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        [
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { IV } \hspace #0.5 }
                                        - \tweak padding 8
                                        \startTextSpan
                                        \glissando
                                        \(
                                        e''8
                                        \glissando
                                        cqs''8
                                        \glissando
                                        d''8
                                        \glissando
                                        bqs'8
                                        \glissando
                                        eqs''8
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        c''8
                                        \stopTextSpan
                                        \)
                                        ]
                                    }
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'harmonic-mixed
                                        e,
                                        \tweak style #'harmonic-mixed
                                        b,
                                    >8
                                    [
                                    \glissando
                                    \(
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        c''
                                        \tweak style #'harmonic-mixed
                                        g''
                                    >8
                                    \glissando
                                    \clef "bass"
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'harmonic-mixed
                                        c
                                        \tweak style #'harmonic-mixed
                                        g
                                    >8
                                    \!
                                    \)
                                    ]
                                    \set suggestAccidentals = ##f
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
                            \context Staff = "contrabass 1 staff"
                            {
                                \context Voice = "contrabass 1 voice"
                                {
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { cb. }
                                    s1 * 5/4
                                    s1 * 1
                                    s1 * 3/8
                                    s1 * 3/4
                                    s1 * 3/2
                                    \repeat tremolo 4 {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'32.
                                        \(
                                        \revert Staff.Stem.stemlet-length
                                        d'32.
                                        \)
                                    }
                                    s4.
                                    \repeat tremolo 4 {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        \(
                                        \revert Staff.Stem.stemlet-length
                                        d'16
                                        \)
                                    }
                                    s1 * 5/8
                                    \repeat tremolo 4 {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'32.
                                        \(
                                        \revert Staff.Stem.stemlet-length
                                        d'32.
                                        \)
                                    }
                                    s1 * 5/8
                                    \repeat tremolo 4 {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        f'16
                                        \(
                                        \revert Staff.Stem.stemlet-length
                                        d'16
                                        \)
                                    }
                                    s4.
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "contrabass 2 staff"
                            {
                                \context Voice = "contrabass 2 voice"
                                {
                                    s1 * 3/4
                                    s1 * 1/2
                                    <d'>2
                                    ^ \markup -5
                                    - \tweak circled-tip ##t
                                    \<
                                    \boxed-markup "NB, Ord." 1
                                    <b>2
                                    ^ \markup +0
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d'>8.
                                    ^ \markup -2
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    <cs'>8.
                                    ^ \markup +3
                                    ]
                                    \clef "bass"
                                    <b,>4
                                    ^ \markup -2
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b,>8
                                    [
                                    \clef "treble"
                                    \revert Staff.Stem.stemlet-length
                                    <bf>8
                                    ^ \markup -3
                                    ~
                                    ]
                                    <bf>4
                                    <d'>2.
                                    \fff
                                    ^ \markup -5
                                    <b>2.
                                    ^ \markup +0
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/8
                                    {
                                        \set suggestAccidentals = ##t
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >16
                                        - \tweak circled-tip ##t
                                        ^ \>
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >4..
                                        \)
                                    }
                                    \clef "bass"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d e>16
                                    [
                                    \glissando
                                    \(
                                    <dqf d>16
                                    \glissando
                                    <d fqs>16
                                    \glissando
                                    <d ef>16
                                    \glissando
                                    <d e>16
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    <dqf d>16
                                    \)
                                    ]
                                    \times 4/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            b
                                        >8
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >2.
                                        \)
                                    }
                                    \override TupletNumber.text = \markup \italic { 7:10 }
                                    \times 30/21
                                    {
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <d fqs>16
                                        [
                                        \glissando
                                        \(
                                        <d ef>16
                                        \glissando
                                        <d e>16
                                        \glissando
                                        <dqf d>16
                                        \glissando
                                        <d fqs>16
                                        \glissando
                                        <d ef>16
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        <d e>16
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <
                                        \tweak style #'harmonic-mixed
                                        d'
                                        \tweak style #'harmonic-mixed
                                        g'
                                    >16
                                    [
                                    \glissando
                                    \(
                                    \revert Staff.Stem.stemlet-length
                                    <
                                        \tweak style #'harmonic-mixed
                                        d'''
                                        \tweak style #'harmonic-mixed
                                        g'''
                                    >16
                                    ~
                                    ]
                                    \glissando
                                    <
                                        \tweak style #'harmonic-mixed
                                        d'''
                                        \tweak style #'harmonic-mixed
                                        g'''
                                    >4
                                    \)
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    \times 15/18
                                    {
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <dqf d>8
                                        [
                                        \glissando
                                        \(
                                        <d fqs>8
                                        \glissando
                                        <d ef>8
                                        \glissando
                                        <d e>8
                                        \glissando
                                        <dqf d>8
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        <d fqs>8
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \times 4/5
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >8
                                        \glissando
                                        \(
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
                                        >2
                                        \)
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d ef>16
                                    [
                                    \glissando
                                    \(
                                    <d e>16
                                    \glissando
                                    <dqf d>16
                                    \glissando
                                    <d fqs>16
                                    \glissando
                                    <d ef>16
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    <d e>16
                                    \!
                                    \)
                                    ]
                                    \set suggestAccidentals = ##f
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
                            \context Staff = "piano 1 staff"
                            {
                                \context Voice = "piano 1 voice"
                                {
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { pno. }
                                    \clef "bass"
                                    <fs,, g,, d,>2.
                                    :32
                                    \fp
                                    \arpeggio
                                    \<
                                    ~
                                    \(
                                    <fs,, g,, d,>2
                                    :32
                                    <c, ef, bf, b,>1
                                    :32
                                    \arpeggio
                                    <c ef bf b fs'>4.
                                    :32
                                    \arpeggio
                                    \clef "treble"
                                    <fs' a' f''>2.
                                    :32
                                    \arpeggio
                                    <ef'' bf'' b'' fs'''>1.
                                    :32
                                    \fff
                                    \arpeggio
                                    \)
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 7:6
                                    \tweak direction #down
                                    \times 6/7
                                    {
                                        \ottava -1
                                        \clef "bass"
                                        e,,16
                                        - \tweak circled-tip ##t
                                        ^ \>
                                        [
                                        \(
                                        f,,16
                                        a,,16
                                        g,,16
                                        af,,16
                                        \change Staff = "piano 2 staff"
                                        c,,16
                                        bf,,,16
                                        ]
                                    }
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 4:3
                                    \tweak direction #down
                                    \times 6/8
                                    {
                                        fs,,16
                                        [
                                        bf,,16
                                        g,16
                                        \change Staff = "piano 1 staff"
                                        c,16
                                        f,16
                                        a,16
                                        \ottava 0
                                        \change Staff = "piano 2 staff"
                                        b,,16
                                        e,16
                                        ]
                                    }
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 9:8
                                    \tweak direction #down
                                    \times 8/9
                                    {
                                        \change Staff = "piano 1 staff"
                                        bf,16
                                        [
                                        d16
                                        ef16
                                        \change Staff = "piano 2 staff"
                                        cs16
                                        f16
                                        e16
                                        \change Staff = "piano 1 staff"
                                        af16
                                        c16
                                        g16
                                        ]
                                    }
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 6:5
                                    \tweak direction #down
                                    \times 10/12
                                    {
                                        \clef "treble"
                                        d'16
                                        [
                                        f'16
                                        af'16
                                        fs'16
                                        ef'16
                                        \change Staff = "piano 2 staff"
                                        b16
                                        e'16
                                        cs'16
                                        \change Staff = "piano 1 staff"
                                        g'16
                                        a'16
                                        \change Staff = "piano 2 staff"
                                        c'16
                                        a'16
                                        ]
                                    }
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 7:6
                                    \tweak direction #down
                                    \times 6/7
                                    {
                                        \change Staff = "piano 1 staff"
                                        fs''16
                                        [
                                        f''16
                                        c''16
                                        b'16
                                        \change Staff = "piano 2 staff"
                                        g''16
                                        e''16
                                        bf'16
                                        ]
                                    }
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 6:5
                                    \tweak direction #down
                                    \times 10/12
                                    {
                                        \change Staff = "piano 1 staff"
                                        fs''16
                                        [
                                        c'''16
                                        \change Staff = "piano 2 staff"
                                        \ottava 1
                                        af'''16
                                        f'''16
                                        ef'''16
                                        b''16
                                        \change Staff = "piano 1 staff"
                                        d'''16
                                        cs'''16
                                        e'''16
                                        g'''16
                                        e'''16
                                        cs'''16
                                        ]
                                        \ottava 0
                                    }
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \italic 9:8
                                    \tweak direction #down
                                    \times 8/9
                                    {
                                        \change Staff = "piano 2 staff"
                                        g'''16
                                        [
                                        cs''''16
                                        d''''16
                                        a''''16
                                        \change Staff = "piano 1 staff"
                                        \ottava 2
                                        b'''16
                                        fs''''16
                                        \change Staff = "piano 2 staff"
                                        a'''16
                                        \change Staff = "piano 1 staff"
                                        af''''16
                                        e''''16
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 4:3
                                    \tweak direction #down
                                    \times 6/8
                                    {
                                        \change Staff = "piano 2 staff"
                                        bf''''16
                                        [
                                        \change Staff = "piano 1 staff"
                                        c'''''16
                                        b''''16
                                        c'''''16
                                        \change Staff = "piano 2 staff"
                                        bf''''16
                                        \change Staff = "piano 1 staff"
                                        c'''''16
                                        b''''16
                                        c'''''16
                                        \!
                                        \)
                                        ]
                                        \ottava 0
                                    }
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                }
                            }
                        }
                        \tag #'voice6
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    \ottava -1
                                    \clef "bass"
                                    <c,, ef,,>2.
                                    :32
                                    \arpeggio
                                    ~
                                    \(
                                    <c,, ef,,>2
                                    :32
                                    <c,, ef,,>1
                                    :32
                                    \arpeggio
                                    <bf,,, c, ef,>4.
                                    :32
                                    \arpeggio
                                    <bf,,, c, ef,>2.
                                    :32
                                    \arpeggio
                                    <bf,,, c, ef,>1.
                                    :32
                                    \arpeggio
                                    \)
                                    s1 * 3/8
                                    s1 * 3/8
                                    \ottava 0
                                    s1 * 1/2
                                    \clef "treble"
                                    s1 * 3/8
                                    s1 * 1/4
                                    s1 * 3/8
                                    \ottava 1
                                    s1 * 3/8
                                    s1 * 1/4
                                    \ottava 0
                                    \ottava 2
                                    s1 * 1/2
                                    s1 * 3/8
                                    \ottava 0
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
}

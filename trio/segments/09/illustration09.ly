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
            #(ly:expect-warning "strange time signature found")
            \time 1/12
            s1 * 1/12
            \time 3/8
            s1 * 3/8
            #(ly:expect-warning "strange time signature found")
            \time 1/6
            s1 * 1/6
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-1 \abs-fontsize #8.5 { Accel. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            - \tweak padding 3
            \startTextSpan
            \time 3/8
            s1 * 3/8
            \tempo 4=105
            \time 1/4
            s1 * 1/4
            \stopTextSpan
            #(ly:expect-warning "strange time signature found")
            \time 1/12
            s1 * 1/12
            \time 3/8
            s1 * 3/8
            #(ly:expect-warning "strange time signature found")
            \time 1/6
            s1 * 1/6
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-1 \abs-fontsize #8.5 { Accel. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            - \tweak padding 3
            \startTextSpan
            \time 3/8
            s1 * 3/8
            \bar ".|:"
            \tempo 4=130
            \time 1/4
            s1 * 1/4
            - \markup \abs-fontsize #8.5 { X6 }
            \stopTextSpan
            \time 1/4
            s1 * 1/4
            \time 1/4
            s1 * 1/4
            #(ly:expect-warning "strange time signature found")
            \time 1/6
            s1 * 1/6
            \time 1/4
            s1 * 1/4
            \time 1/4
            s1 * 1/4
            \time 1/4
            s1 * 1/4
            \time 1/4
            s1 * 1/4
            #(ly:expect-warning "strange time signature found")
            \time 1/6
            s1 * 1/6
            \time 1/4
            s1 * 1/4
            #(ly:expect-warning "strange time signature found")
            \time 1/6
            s1 * 1/6
            \time 1/4
            s1 * 1/4
            \time 1/4
            s1 * 1/4
            \time 1/4
            s1 * 1/4
            \time 1/4
            s1 * 1/4
            \time 1/4
            s1 * 1/4
            \bar ":|."
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
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            \set PianoStaff.shortInstrumentName =
                                            \markup { vc. }
                                            <g bf>8
                                            - \marcato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    s4.
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            <g bf>4
                                            - \marcato
                                            \<
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <g bf>4
                                    - \marcato
                                    <g bf>8
                                    - \marcato
                                    <g bf>4
                                    \ffff
                                    - \marcato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            <g bf>8
                                            - \marcato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    s4.
                                    s1 * 1/6
                                    \<
                                    <g bf>8
                                    - \marcato
                                    <g bf>4
                                    - \marcato
                                    \repeat tremolo 4 {
                                        bf32
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        bf32
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        bf32
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        \)
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        \repeat tremolo 4 {
                                            f'32
                                            \fffff
                                            - \marcato
                                            - \tweak circled-tip ##t
                                            - \tweak stencil #abjad-flared-hairpin
                                            \>
                                            \(
                                            d'32
                                            \)
                                        }
                                    }
                                    \repeat tremolo 4 {
                                        bf32
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        bf32
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        bf32
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        bf32
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        \)
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        \repeat tremolo 4 {
                                            f'32
                                            \fffff
                                            - \marcato
                                            - \tweak circled-tip ##t
                                            - \tweak stencil #abjad-flared-hairpin
                                            \>
                                            \(
                                            d'32
                                            \)
                                        }
                                    }
                                    \repeat tremolo 4 {
                                        bf32
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        \)
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        \repeat tremolo 4 {
                                            f'32
                                            \fffff
                                            - \marcato
                                            - \tweak circled-tip ##t
                                            - \tweak stencil #abjad-flared-hairpin
                                            \>
                                            \(
                                            d'32
                                            \)
                                        }
                                    }
                                    \repeat tremolo 4 {
                                        bf32
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        bf32
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        bf32
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        bf32
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        bf32
                                        \fffff
                                        - \marcato
                                        \(
                                        g32
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
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            \clef "bass"
                                            c,8
                                            - \snappizzicato
                                            - \marcato
                                            - \marcato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \slurDashed
                                        \clef "treble"
                                        \tweak style #'triangle
                                        d''16
                                        - \marcato
                                        [
                                        (
                                        \boxed-markup "Arco, XSB" 1
                                        \tweak style #'triangle
                                        f''16
                                        \tweak style #'triangle
                                        g''16
                                        \tweak style #'triangle
                                        fs''16
                                        \tweak style #'triangle
                                        c''16
                                        \tweak style #'triangle
                                        a''16
                                        \tweak style #'triangle
                                        ef''16
                                        )
                                        ]
                                        \slurSolid
                                    }
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            \clef "bass"
                                            c,4
                                            - \snappizzicato
                                            - \marcato
                                            - \marcato
                                            \boxed-markup "NB., Pizz." 1
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    c,4
                                    - \snappizzicato
                                    - \marcato
                                    - \marcato
                                    c,8
                                    - \snappizzicato
                                    - \marcato
                                    c,4
                                    - \snappizzicato
                                    - \marcato
                                    - \marcato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            c,8
                                            - \snappizzicato
                                            - \marcato
                                            - \marcato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    r8
                                    \times 4/5
                                    {
                                        \slurDashed
                                        \clef "treble"
                                        \tweak style #'triangle
                                        e''16
                                        - \marcato
                                        [
                                        (
                                        \boxed-markup "Arco, XSB" 1
                                        \tweak style #'triangle
                                        b'16
                                        \tweak style #'triangle
                                        bf''16
                                        \tweak style #'triangle
                                        bf'16
                                        \tweak style #'triangle
                                        cs''16
                                        ]
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/9
                                    {
                                        af''32
                                        - \marcato
                                        [
                                        cs''32
                                        bf'32
                                        bf''32
                                        b'32
                                        e''32
                                        )
                                        ]
                                        \slurSolid
                                    }
                                    \clef "bass"
                                    c,8
                                    - \snappizzicato
                                    - \marcato
                                    - \marcato
                                    \boxed-markup "NB., Pizz." 1
                                    c,4
                                    - \snappizzicato
                                    - \marcato
                                    \times 4/5
                                    {
                                        \set suggestAccidentals = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >4
                                        - \marcato
                                        \(
                                        \glissando
                                        \boxed-markup "Arco" 1
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        \)
                                    }
                                    \times 2/3
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >16
                                        - \marcato
                                        [
                                        \(
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        ]
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >4
                                        \)
                                    }
                                    \times 4/7
                                    {
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        - \marcato
                                        [
                                        \(
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            c
                                        >16
                                        ]
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >4
                                        \)
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/9
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >16
                                        - \marcato
                                        [
                                        \(
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >16
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            cs'
                                        >16
                                        \)
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >4.
                                        - \marcato
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >16
                                        \)
                                    }
                                    \times 4/5
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >4
                                        - \marcato
                                        \(
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        \)
                                    }
                                    \times 2/3
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >16
                                        - \marcato
                                        [
                                        \(
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        ]
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >4
                                        \)
                                    }
                                    \times 4/7
                                    {
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        - \marcato
                                        [
                                        \(
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            c
                                        >16
                                        ]
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >4
                                        \)
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/9
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >16
                                        - \marcato
                                        [
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            a'
                                        >16
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >16
                                        \)
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >4.
                                        - \marcato
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >16
                                        \)
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >4
                                        - \marcato
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >16
                                        \)
                                    }
                                    \times 2/3
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        - \marcato
                                        [
                                        \(
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        ]
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >4
                                        \)
                                    }
                                    \times 4/7
                                    {
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        - \marcato
                                        [
                                        \(
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >16
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        ]
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >4
                                        \)
                                    }
                                    \times 2/3
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            c
                                        >8
                                        - \marcato
                                        [
                                        \(
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >8
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >8
                                        \)
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >4.
                                        - \marcato
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        \)
                                    }
                                    \times 4/5
                                    {
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >4
                                        - \marcato
                                        \(
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >16
                                        \)
                                        \set suggestAccidentals = ##f
                                    }
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
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            \set PianoStaff.shortInstrumentName =
                                            \markup { cb. }
                                            <g bf>8
                                            - \marcato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <g bf>8
                                    - \marcato
                                    <g bf>4
                                    - \marcato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            <g bf>4
                                            - \marcato
                                            \<
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    s4.
                                    s4
                                    \ffff
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            <g bf>8
                                            - \marcato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <g bf>4
                                    - \marcato
                                    <g bf>8
                                    - \marcato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            <g bf>4
                                            - \marcato
                                            \<
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    s1 * 3/8
                                    s1 * 1/4
                                    \fffff
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/6
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/6
                                    s1 * 1/4
                                    s1 * 1/6
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/4
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "contrabass 2 staff"
                            {
                                \context Voice = "contrabass 2 voice"
                                {
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            \clef "bass"
                                            e,8
                                            - \marcato
                                            - \snappizzicato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    e,8
                                    - \marcato
                                    - \snappizzicato
                                    e,4
                                    - \marcato
                                    - \snappizzicato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            e,4
                                            - \marcato
                                            - \snappizzicato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    \times 15/18
                                    {
                                        \set suggestAccidentals = ##t
                                        <a, b,>8
                                        - \marcato
                                        [
                                        \(
                                        \glissando
                                        \boxed-markup "Arco" 1
                                        <aqf, a,>8
                                        \glissando
                                        <a, cqs>8
                                        \glissando
                                        <a, bf,>8
                                        \glissando
                                        <a, b,>8
                                        \glissando
                                        <aqf, a,>8
                                        \)
                                        ]
                                        \set suggestAccidentals = ##f
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            e,8
                                            - \marcato
                                            - \snappizzicato
                                            \boxed-markup "Pizz." 1
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    e,4
                                    - \marcato
                                    - \snappizzicato
                                    e,8
                                    - \marcato
                                    - \snappizzicato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            e,4
                                            - \marcato
                                            - \snappizzicato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \set suggestAccidentals = ##t
                                        <a, cqs>16
                                        - \marcato
                                        [
                                        \(
                                        \glissando
                                        \boxed-markup "Arco" 1
                                        <a, bf,>16
                                        \glissando
                                        <a, b,>16
                                        \glissando
                                        <aqf, a,>16
                                        \glissando
                                        <a, cqs>16
                                        \glissando
                                        <a, bf,>16
                                        \glissando
                                        <a, b,>16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        <aqf, a,>16
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        \glissando
                                        \boxed-markup "low string portamento" 1
                                        <a, cqs>16
                                        \glissando
                                        <a, bf,>16
                                        \glissando
                                        <a, b,>16
                                        \glissando
                                        <aqf, a,>16
                                        \glissando
                                        <a, cqs>16
                                        \)
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        <a, bf,>16
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        \glissando
                                        <a, b,>16
                                        \glissando
                                        <aqf, a,>16
                                        \glissando
                                        <a, cqs>16
                                        \glissando
                                        <a, bf,>16
                                        \glissando
                                        <a, b,>16
                                        \glissando
                                        <aqf, a,>16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        <a, cqs>16
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        \glissando
                                        <a, bf,>16
                                        \glissando
                                        <a, b,>16
                                        \glissando
                                        <aqf, a,>16
                                        \glissando
                                        <a, cqs>16
                                        \glissando
                                        <a, bf,>16
                                        \)
                                        ]
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        <a, b,>16
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        \glissando
                                        <aqf, a,>16
                                        \glissando
                                        <a, cqs>16
                                        \glissando
                                        <a, bf,>16
                                        \glissando
                                        <a, b,>16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        <aqf, a,>16
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        \glissando
                                        <a, cqs>16
                                        \glissando
                                        <a, bf,>16
                                        \glissando
                                        <a, b,>16
                                        \glissando
                                        <aqf, a,>16
                                        \glissando
                                        <a, cqs>16
                                        \)
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        <a, bf,>16
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        \glissando
                                        <a, b,>16
                                        \glissando
                                        <aqf, a,>16
                                        \glissando
                                        <a, cqs>16
                                        \glissando
                                        <a, bf,>16
                                        \glissando
                                        <a, b,>16
                                        \glissando
                                        <aqf, a,>16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        <a, b,>8
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        \glissando
                                        <aqf, a,>8
                                        \glissando
                                        <a, cqs>8
                                        \glissando
                                        <a, bf,>8
                                        \glissando
                                        <a, b,>8
                                        \glissando
                                        <aqf, a,>8
                                        \)
                                        ]
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        <a, cqs>16
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        \glissando
                                        <a, bf,>16
                                        \glissando
                                        <a, b,>16
                                        \glissando
                                        <aqf, a,>16
                                        \glissando
                                        <a, cqs>16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        <a, bf,>16
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        \glissando
                                        <a, b,>16
                                        \glissando
                                        <aqf, a,>16
                                        \glissando
                                        <a, cqs>16
                                        \glissando
                                        <a, bf,>16
                                        \glissando
                                        <a, b,>16
                                        \)
                                        ]
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        <aqf, a,>16
                                        \fffff
                                        - \marcato
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        \glissando
                                        <a, cqs>16
                                        \glissando
                                        <a, bf,>16
                                        \glissando
                                        <a, b,>16
                                        \glissando
                                        <aqf, a,>16
                                        \)
                                        ]
                                    }
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    \times 15/18
                                    {
                                        <a, b,>4
                                        \fffff
                                        - \marcato
                                        \(
                                        \glissando
                                        <aqf, a,>4
                                        \glissando
                                        <a, cqs>4
                                        \glissando
                                        <a, bf,>4
                                        \glissando
                                        <a, b,>4
                                        \glissando
                                        <aqf, a,>4
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
                            \context Staff = "piano 1 staff"
                            {
                                \context Voice = "piano 1 voice"
                                {
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \tweak direction #up
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \tweak direction #up
                                        \times 2/3
                                        {
                                            \set PianoStaff.shortInstrumentName =
                                            \markup { pno. }
                                            \clef "bass"
                                            <c e fs af bf>8
                                            - \marcato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <b, g a>8
                                    - \marcato
                                    <bf, cs d ef f>4
                                    - \marcato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \tweak direction #up
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \tweak direction #up
                                        \times 2/3
                                        {
                                            <c e fs af bf>4
                                            - \marcato
                                            \<
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <b, g a>4
                                    - \marcato
                                    <bf, cs d ef f>8
                                    - \marcato
                                    \tweak direction #up
                                    \times 4/5
                                    {
                                        \ottava 1
                                        \clef "treble"
                                        d'''16
                                        \ffff
                                        - \marcato
                                        [
                                        \change Staff = "piano 2 staff"
                                        fs'''16
                                        \change Staff = "piano 1 staff"
                                        d'''16
                                        - \accent
                                        \change Staff = "piano 2 staff"
                                        af'''16
                                        \change Staff = "piano 1 staff"
                                        c'''16
                                        - \accent
                                        ]
                                        \ottava 0
                                    }
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \tweak direction #up
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \tweak direction #up
                                        \times 2/3
                                        {
                                            \clef "bass"
                                            <c e fs af bf>8
                                            - \marcato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    \ottava 1
                                    \clef "treble"
                                    <ef'' bf'' b'' fs'''>4
                                    :32
                                    - \marcato
                                    \arpeggio
                                    <a'' g''' a'''>8
                                    :64
                                    - \marcato
                                    \arpeggio
                                    \ottava 0
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \tweak direction #up
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \tweak direction #up
                                        \times 2/3
                                        {
                                            \clef "bass"
                                            <b, g a>4
                                            - \marcato
                                            \<
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <bf, cs d ef f>8
                                    - \marcato
                                    <c e fs af bf>4
                                    - \marcato
                                    \ottava 1
                                    \clef "treble"
                                    <f'' a'' cs''' fs'''>4
                                    :32
                                    \fffff
                                    - \marcato
                                    \arpeggio
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <a'' e''' fs''' a'''>4
                                    :32
                                    \fffff
                                    - \marcato
                                    \arpeggio
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <a'' cs''' af''' bf'''>4
                                    :32
                                    \fffff
                                    - \marcato
                                    \arpeggio
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \tweak direction #up
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \tweak direction #up
                                        \times 2/3
                                        {
                                            <b'' d''' e''' af'''>4
                                            :32
                                            \fffff
                                            - \marcato
                                            \arpeggio
                                            - \tweak circled-tip ##t
                                            - \tweak stencil #abjad-flared-hairpin
                                            \>
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <ef'' bf'' b'' fs'''>4
                                    :32
                                    \fffff
                                    - \marcato
                                    \arpeggio
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <a'' g''' a'''>4
                                    :32
                                    \fffff
                                    - \marcato
                                    \arpeggio
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <f'' a'' cs''' fs'''>4
                                    :32
                                    \fffff
                                    - \marcato
                                    \arpeggio
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <a'' e''' fs''' a'''>4
                                    :32
                                    \fffff
                                    - \marcato
                                    \arpeggio
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \tweak direction #up
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \tweak direction #up
                                        \times 2/3
                                        {
                                            <a'' cs''' af''' bf'''>4
                                            :32
                                            \fffff
                                            - \marcato
                                            \arpeggio
                                            - \tweak circled-tip ##t
                                            - \tweak stencil #abjad-flared-hairpin
                                            \>
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <b'' d''' e''' af'''>4
                                    :32
                                    \fffff
                                    - \marcato
                                    \arpeggio
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \tweak direction #up
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \tweak direction #up
                                        \times 2/3
                                        {
                                            <ef'' bf'' b'' fs'''>4
                                            :32
                                            \fffff
                                            - \marcato
                                            \arpeggio
                                            - \tweak circled-tip ##t
                                            - \tweak stencil #abjad-flared-hairpin
                                            \>
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <a'' g''' a'''>4
                                    :32
                                    \fffff
                                    - \marcato
                                    \arpeggio
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <f'' a'' cs''' fs'''>4
                                    :32
                                    \fffff
                                    - \marcato
                                    \arpeggio
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <a'' e''' fs''' a'''>4
                                    :32
                                    \fffff
                                    - \marcato
                                    \arpeggio
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <a'' cs''' af''' bf'''>4
                                    :32
                                    \fffff
                                    - \marcato
                                    \arpeggio
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <b'' d''' e''' af'''>4
                                    :32
                                    \fffff
                                    - \marcato
                                    \arpeggio
                                    \ottava 0
                                }
                            }
                        }
                        \tag #'voice6
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            \ottava -1
                                            \clef "bass"
                                            <a,,, bf,,, b,,, d,, af,,>8
                                            - \marcato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <cs,, e,, f,,>8
                                    - \marcato
                                    <c,, ef,, fs,, g,, a,,>4
                                    - \marcato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            <a,,, bf,,, b,,, d,, af,,>4
                                            - \marcato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <cs,, e,, f,,>4
                                    - \marcato
                                    <c,, ef,, fs,, g,, a,,>8
                                    - \marcato
                                    \ottava 0
                                    \ottava 1
                                    \clef "treble"
                                    s4
                                    \ottava 0
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            \ottava -1
                                            \clef "bass"
                                            <a,,, bf,,, b,,, d,, af,,>8
                                            - \marcato
                                            \ottava 0
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    \clef "treble"
                                    <bf c''>4
                                    :32
                                    - \marcato
                                    \arpeggio
                                    <d' cs''>8
                                    :64
                                    - \marcato
                                    \arpeggio
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            \ottava -1
                                            \clef "bass"
                                            <cs,, e,, f,,>4
                                            - \marcato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <c,, ef,, fs,, g,, a,,>8
                                    - \marcato
                                    <a,,, bf,,, b,,, d,, af,,>4
                                    - \marcato
                                    \ottava 0
                                    \times 4/5
                                    {
                                        f,16
                                        - \marcato
                                        [
                                        \(
                                        cs,16
                                        f,16
                                        cs,16
                                        f,16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        f,16
                                        - \marcato
                                        [
                                        \(
                                        ef,16
                                        fs,16
                                        ef,16
                                        f,16
                                        d,16
                                        \)
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        cs,16
                                        - \marcato
                                        [
                                        \(
                                        f,16
                                        cs,16
                                        f,16
                                        fs,16
                                        \)
                                        ]
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/9
                                    {
                                        c,32
                                        - \marcato
                                        [
                                        \(
                                        d,32
                                        f,32
                                        ef,32
                                        fs,32
                                        e,32
                                        \)
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        f,16
                                        - \marcato
                                        [
                                        \(
                                        fs,16
                                        f,16
                                        fs,16
                                        f,16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        af,16
                                        - \marcato
                                        [
                                        \(
                                        e,16
                                        af,16
                                        e,16
                                        fs,16
                                        e,16
                                        \)
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        fs,16
                                        - \marcato
                                        [
                                        \(
                                        f,16
                                        cs,16
                                        f,16
                                        fs,16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        af,16
                                        - \marcato
                                        [
                                        \(
                                        e,16
                                        fs,16
                                        e,16
                                        af,16
                                        e,16
                                        \)
                                        ]
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        g,16
                                        - \marcato
                                        [
                                        \(
                                        fs,16
                                        g,16
                                        af,16
                                        g,16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        af,16
                                        - \marcato
                                        [
                                        \(
                                        e,16
                                        fs,16
                                        ef,16
                                        f,16
                                        d,16
                                        \)
                                        ]
                                    }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        fs,16
                                        - \marcato
                                        [
                                        \(
                                        g,16
                                        fs,16
                                        g,16
                                        af,16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        c,16
                                        - \marcato
                                        [
                                        \(
                                        d,16
                                        c,16
                                        bf,,16
                                        c,16
                                        bf,,16
                                        \)
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        a,16
                                        - \marcato
                                        [
                                        \(
                                        ef,16
                                        a,16
                                        ef,16
                                        a,16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        a,16
                                        - \marcato
                                        [
                                        \(
                                        bf,,16
                                        a,16
                                        bf,,16
                                        a,16
                                        b,,16
                                        \)
                                        ]
                                    }
                                    \times 4/5
                                    {
                                        ef,16
                                        - \marcato
                                        [
                                        \(
                                        b,,16
                                        ef,16
                                        a,16
                                        af,16
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        g,16
                                        - \marcato
                                        [
                                        \(
                                        b,,16
                                        g,16
                                        cs,16
                                        g,16
                                        cs,16
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

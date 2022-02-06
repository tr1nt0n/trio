    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=47
            \time 1/4
            s1 * 1/4
            - \markup \box \italic \fontsize #1.5 { \center-column { ... thick-veined hand (ii) } }
            #(ly:expect-warning "strange time signature found")
            \time 1/12
            s1 * 1/12
            \time 3/8
            s1 * 3/8
            #(ly:expect-warning "strange time signature found")
            \time 2/12
            s1 * 1/6
            \time 3/8
            s1 * 3/8
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-1 \abs-fontsize #8.5 { Accel. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            - \tweak padding 3
            \startTextSpan
            \tempo 4=60
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
            \time 3/8
            s1 * 3/8
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-1 \abs-fontsize #8.5 { Accel. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            - \tweak padding 3
            \startTextSpan
            \tempo 4=69
            \time 1/4
            s1 * 1/4
            \stopTextSpan
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
                                    \override Accidental.transparent = ##t
                                    <g bf>4
                                    \f
                                    - \marcato
                                    - \staccato
                                    \boxed-markup "Arco sempre" 1
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
                                            - \staccato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    [
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    \revert Staff.Stem.stemlet-length
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    ]
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <g bf>8
                                        - \marcato
                                        - \staccato
                                        \<
                                        [
                                        <g bf>8
                                        - \marcato
                                        - \staccato
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    [
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    \revert Staff.Stem.stemlet-length
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    ]
                                    <g bf>4
                                    \ff
                                    - \marcato
                                    - \staccato
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
                                            - \staccato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <g bf>4
                                    - \marcato
                                    - \staccato
                                    <g bf>8
                                    - \marcato
                                    - \staccato
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
                                            - \staccato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    \<
                                    <g bf>4
                                    - \marcato
                                    - \staccato
                                    <g bf>4
                                    \fff
                                    - \marcato
                                    - \staccato
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    \clef "bass"
                                    c,4
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    \boxed-markup "Pizz." 1
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            c,8
                                            - \marcato
                                            - \staccato
                                            - \snappizzicato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    [
                                    c,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    \revert Staff.Stem.stemlet-length
                                    c,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    ]
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        c,8
                                        - \marcato
                                        - \staccato
                                        - \snappizzicato
                                        [
                                        c,8
                                        - \marcato
                                        - \staccato
                                        - \snappizzicato
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    [
                                    c,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    \revert Staff.Stem.stemlet-length
                                    c,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    ]
                                    c,4
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            c,8
                                            - \marcato
                                            - \staccato
                                            - \snappizzicato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    c,4
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    c,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            c,4
                                            - \marcato
                                            - \staccato
                                            - \snappizzicato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    c,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    c,4
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    c,4
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
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
                                    \override Accidental.transparent = ##t
                                    <g bf>4
                                    \f
                                    - \marcato
                                    - \staccato
                                    \boxed-markup "Arco sempre" 1
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
                                            - \staccato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    [
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    \revert Staff.Stem.stemlet-length
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    ]
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <g bf>8
                                        - \marcato
                                        - \staccato
                                        \<
                                        [
                                        <g bf>8
                                        - \marcato
                                        - \staccato
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    [
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    \revert Staff.Stem.stemlet-length
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    ]
                                    <g bf>4
                                    \ff
                                    - \marcato
                                    - \staccato
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
                                            - \staccato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <g bf>4
                                    - \marcato
                                    - \staccato
                                    <g bf>8
                                    - \marcato
                                    - \staccato
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
                                            - \staccato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <g bf>8
                                    - \marcato
                                    - \staccato
                                    \<
                                    <g bf>4
                                    - \marcato
                                    - \staccato
                                    <g bf>4
                                    \fff
                                    - \marcato
                                    - \staccato
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "contrabass 2 staff"
                            {
                                \context Voice = "contrabass 2 voice"
                                {
                                    e,4
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    \boxed-markup "Pizz." 1
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
                                            - \staccato
                                            - \snappizzicato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    [
                                    e,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    \revert Staff.Stem.stemlet-length
                                    e,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    ]
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        e,8
                                        - \marcato
                                        - \staccato
                                        - \snappizzicato
                                        [
                                        e,8
                                        - \marcato
                                        - \staccato
                                        - \snappizzicato
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    [
                                    e,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    \revert Staff.Stem.stemlet-length
                                    e,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    ]
                                    e,4
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
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
                                            - \staccato
                                            - \snappizzicato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    e,4
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    e,8
                                    - \marcato
                                    - \staccato
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
                                            - \staccato
                                            - \snappizzicato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    e,8
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    e,4
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
                                    e,4
                                    - \marcato
                                    - \staccato
                                    - \snappizzicato
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
                                    <cs' d' ef' fs' af'>4
                                    \f
                                    - \marcato
                                    - \staccato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            <d'' ef'' f'' fs'' a''>8
                                            - \marcato
                                            - \staccato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    \ottava -1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <cs d ef f bf>8
                                    - \marcato
                                    - \staccato
                                    [
                                    <c e af>8
                                    - \marcato
                                    - \staccato
                                    \revert Staff.Stem.stemlet-length
                                    <bf, b, fs g a>8
                                    - \marcato
                                    - \staccato
                                    ]
                                    \ottava 0
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <cs''' d''' e''' g''' af'''>8
                                        - \marcato
                                        - \staccato
                                        \<
                                        [
                                        <b'' c''' ef'''>8
                                        - \marcato
                                        - \staccato
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <cs' d' ef' fs' af'>8
                                    - \marcato
                                    - \staccato
                                    [
                                    <c' e' f'>8
                                    - \marcato
                                    - \staccato
                                    \revert Staff.Stem.stemlet-length
                                    <b ef' g' af' a'>8
                                    - \marcato
                                    - \staccato
                                    ]
                                    \ottava -1
                                    <cs d ef f bf>4
                                    \ff
                                    - \marcato
                                    - \staccato
                                    \ottava 0
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            <d'' ef'' f'' fs'' a''>8
                                            - \marcato
                                            - \staccato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <cs' d' ef' fs' af'>4
                                    - \marcato
                                    - \staccato
                                    <c' e' f'>8
                                    - \marcato
                                    - \staccato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            <cs''' d''' e''' g''' af'''>4
                                            - \marcato
                                            - \staccato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <cs' d' ef' fs' af'>8
                                    - \marcato
                                    - \staccato
                                    \<
                                    <c' e' f'>4
                                    - \marcato
                                    - \staccato
                                    <d'' ef'' f'' fs'' a''>4
                                    \fff
                                    - \marcato
                                    - \staccato
                                }
                            }
                        }
                        \tag #'voice6
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    <bf,, c, f, fs, g,>4
                                    - \marcato
                                    - \staccato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            <b,, e, a,>8
                                            - \marcato
                                            - \staccato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <cs, d, ef, fs, af,>8
                                    - \marcato
                                    - \staccato
                                    [
                                    <bf,, c, f, fs, g,>8
                                    - \marcato
                                    - \staccato
                                    \revert Staff.Stem.stemlet-length
                                    <b,, e, a,>8
                                    - \marcato
                                    - \staccato
                                    ]
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <cs, d, ef, fs, af,>8
                                        - \marcato
                                        - \staccato
                                        [
                                        <bf,, c, f, fs, g,>8
                                        - \marcato
                                        - \staccato
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <b,, e, a,>8
                                    - \marcato
                                    - \staccato
                                    [
                                    <cs, d, ef, fs, af,>8
                                    - \marcato
                                    - \staccato
                                    \revert Staff.Stem.stemlet-length
                                    <bf,, c, f, fs, g,>8
                                    - \marcato
                                    - \staccato
                                    ]
                                    <b,, e, a,>4
                                    - \marcato
                                    - \staccato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            <cs, d, ef, fs, af,>8
                                            - \marcato
                                            - \staccato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <bf,, c, f, fs, g,>4
                                    - \marcato
                                    - \staccato
                                    <b,, e, a,>8
                                    - \marcato
                                    - \staccato
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 1/1
                                    {
                                        \override TupletNumber.text = \markup \italic { 3:2 }
                                        \tweak edge-height #'(0.7 . 0)
                                        \times 2/3
                                        {
                                            <cs, d, ef, fs, af,>4
                                            - \marcato
                                            - \staccato
                                        }
                                        \revert TupletNumber.text
                                    }
                                    \revert TupletNumber.text
                                    <bf,, c, f, fs, g,>8
                                    - \marcato
                                    - \staccato
                                    <b,, e, a,>4
                                    - \marcato
                                    - \staccato
                                    <cs, d, ef, fs, af,>4
                                    - \marcato
                                    - \staccato
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>

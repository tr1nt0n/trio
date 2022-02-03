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
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
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
                        ^ \markup 0
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
                                ^ \markup 1
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        \ottava -1
                        \override Staff.Stem.stemlet-length = 0.75
                        <cs d ef f bf>8
                        - \marcato
                        - \staccato
                        ^ \markup 2
                        [
                        <c e af>8
                        - \marcato
                        - \staccato
                        ^ \markup 3
                        \revert Staff.Stem.stemlet-length
                        <bf, b, fs g a>8
                        - \marcato
                        - \staccato
                        ^ \markup 4
                        ]
                        \ottava 0
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            <cs''' d''' e''' g''' af'''>8
                            - \marcato
                            - \staccato
                            ^ \markup 5
                            \<
                            [
                            <b'' c''' ef'''>8
                            - \marcato
                            - \staccato
                            ^ \markup 6
                            ]
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.stemlet-length = 0.75
                        <cs' d' ef' fs' af'>8
                        - \marcato
                        - \staccato
                        ^ \markup 7
                        [
                        <c' e' f'>8
                        - \marcato
                        - \staccato
                        ^ \markup 8
                        \revert Staff.Stem.stemlet-length
                        <b ef' g' af' a'>8
                        - \marcato
                        - \staccato
                        ^ \markup 9
                        ]
                        \ottava -1
                        <cs d ef f bf>4
                        \ff
                        - \marcato
                        - \staccato
                        ^ \markup 10
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
                                ^ \markup 11
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        <cs' d' ef' fs' af'>4
                        - \marcato
                        - \staccato
                        ^ \markup 12
                        <c' e' f'>8
                        - \marcato
                        - \staccato
                        ^ \markup 13
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
                                ^ \markup 14
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        <cs' d' ef' fs' af'>8
                        - \marcato
                        - \staccato
                        ^ \markup 15
                        \<
                        <c' e' f'>4
                        - \marcato
                        - \staccato
                        ^ \markup 16
                        <d'' ef'' f'' fs'' a''>4
                        \fff
                        - \marcato
                        - \staccato
                        ^ \markup 17
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        <bf,, c, f, fs, g,>4
                        - \marcato
                        - \staccato
                        ^ \markup 0
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
                                ^ \markup 1
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.stemlet-length = 0.75
                        <cs, d, ef, fs, af,>8
                        - \marcato
                        - \staccato
                        ^ \markup 2
                        [
                        <bf,, c, f, fs, g,>8
                        - \marcato
                        - \staccato
                        ^ \markup 3
                        \revert Staff.Stem.stemlet-length
                        <b,, e, a,>8
                        - \marcato
                        - \staccato
                        ^ \markup 4
                        ]
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            <cs, d, ef, fs, af,>8
                            - \marcato
                            - \staccato
                            ^ \markup 5
                            [
                            <bf,, c, f, fs, g,>8
                            - \marcato
                            - \staccato
                            ^ \markup 6
                            ]
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.stemlet-length = 0.75
                        <b,, e, a,>8
                        - \marcato
                        - \staccato
                        ^ \markup 7
                        [
                        <cs, d, ef, fs, af,>8
                        - \marcato
                        - \staccato
                        ^ \markup 8
                        \revert Staff.Stem.stemlet-length
                        <bf,, c, f, fs, g,>8
                        - \marcato
                        - \staccato
                        ^ \markup 9
                        ]
                        <b,, e, a,>4
                        - \marcato
                        - \staccato
                        ^ \markup 10
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
                                ^ \markup 11
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        <bf,, c, f, fs, g,>4
                        - \marcato
                        - \staccato
                        ^ \markup 12
                        <b,, e, a,>8
                        - \marcato
                        - \staccato
                        ^ \markup 13
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
                                ^ \markup 14
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        <bf,, c, f, fs, g,>8
                        - \marcato
                        - \staccato
                        ^ \markup 15
                        <b,, e, a,>4
                        - \marcato
                        - \staccato
                        ^ \markup 16
                        <cs, d, ef, fs, af,>4
                        - \marcato
                        - \staccato
                        ^ \markup 17
                    }
                }
            >>
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "cello 1 staff"
                {
                    \context Voice = "cello 1 voice"
                    {
                        \set PianoStaff.shortInstrumentName =
                        \markup { vc. }
                        c'4
                        \f
                        - \marcato
                        - \staccato
                        ^ \markup 0
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'8
                                - \marcato
                                - \staccato
                                ^ \markup 1
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 2
                        [
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 3
                        \revert Staff.Stem.stemlet-length
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 4
                        ]
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            c'8
                            - \marcato
                            - \staccato
                            ^ \markup 5
                            \<
                            [
                            c'8
                            - \marcato
                            - \staccato
                            ^ \markup 6
                            ]
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 7
                        [
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 8
                        \revert Staff.Stem.stemlet-length
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 9
                        ]
                        c'4
                        \ff
                        - \marcato
                        - \staccato
                        ^ \markup 10
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'8
                                - \marcato
                                - \staccato
                                ^ \markup 11
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'4
                        - \marcato
                        - \staccato
                        ^ \markup 12
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 13
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'4
                                - \marcato
                                - \staccato
                                ^ \markup 14
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 15
                        \<
                        c'4
                        - \marcato
                        - \staccato
                        ^ \markup 16
                        c'4
                        \fff
                        - \marcato
                        - \staccato
                        ^ \markup 17
                    }
                }
                \context Staff = "cello 2 staff"
                {
                    \context Voice = "cello 2 voice"
                    {
                        c'4
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 0
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'8
                                - \marcato
                                - \staccato
                                - \snappizzicato
                                ^ \markup 1
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 2
                        [
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 3
                        \revert Staff.Stem.stemlet-length
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 4
                        ]
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            c'8
                            - \marcato
                            - \staccato
                            - \snappizzicato
                            ^ \markup 5
                            [
                            c'8
                            - \marcato
                            - \staccato
                            - \snappizzicato
                            ^ \markup 6
                            ]
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 7
                        [
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 8
                        \revert Staff.Stem.stemlet-length
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 9
                        ]
                        c'4
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 10
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'8
                                - \marcato
                                - \staccato
                                - \snappizzicato
                                ^ \markup 11
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'4
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 12
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 13
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'4
                                - \marcato
                                - \staccato
                                - \snappizzicato
                                ^ \markup 14
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 15
                        c'4
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 16
                        c'4
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 17
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "contrabass 1 staff"
                {
                    \context Voice = "contrabass 1 voice"
                    {
                        \set PianoStaff.shortInstrumentName =
                        \markup { cb. }
                        c'4
                        \f
                        - \marcato
                        - \staccato
                        ^ \markup 0
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'8
                                - \marcato
                                - \staccato
                                ^ \markup 1
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 2
                        [
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 3
                        \revert Staff.Stem.stemlet-length
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 4
                        ]
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            c'8
                            - \marcato
                            - \staccato
                            ^ \markup 5
                            \<
                            [
                            c'8
                            - \marcato
                            - \staccato
                            ^ \markup 6
                            ]
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 7
                        [
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 8
                        \revert Staff.Stem.stemlet-length
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 9
                        ]
                        c'4
                        \ff
                        - \marcato
                        - \staccato
                        ^ \markup 10
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'8
                                - \marcato
                                - \staccato
                                ^ \markup 11
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'4
                        - \marcato
                        - \staccato
                        ^ \markup 12
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 13
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'4
                                - \marcato
                                - \staccato
                                ^ \markup 14
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'8
                        - \marcato
                        - \staccato
                        ^ \markup 15
                        \<
                        c'4
                        - \marcato
                        - \staccato
                        ^ \markup 16
                        c'4
                        \fff
                        - \marcato
                        - \staccato
                        ^ \markup 17
                    }
                }
                \context Staff = "contrabass 2 staff"
                {
                    \context Voice = "contrabass 2 voice"
                    {
                        c'4
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 0
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'8
                                - \marcato
                                - \staccato
                                - \snappizzicato
                                ^ \markup 1
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 2
                        [
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 3
                        \revert Staff.Stem.stemlet-length
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 4
                        ]
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 2/3
                        {
                            c'8
                            - \marcato
                            - \staccato
                            - \snappizzicato
                            ^ \markup 5
                            [
                            c'8
                            - \marcato
                            - \staccato
                            - \snappizzicato
                            ^ \markup 6
                            ]
                        }
                        \revert TupletNumber.text
                        \override Staff.Stem.stemlet-length = 0.75
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 7
                        [
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 8
                        \revert Staff.Stem.stemlet-length
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 9
                        ]
                        c'4
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 10
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'8
                                - \marcato
                                - \staccato
                                - \snappizzicato
                                ^ \markup 11
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'4
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 12
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 13
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'4
                                - \marcato
                                - \staccato
                                - \snappizzicato
                                ^ \markup 14
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'8
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 15
                        c'4
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 16
                        c'4
                        - \marcato
                        - \staccato
                        - \snappizzicato
                        ^ \markup 17
                    }
                }
            >>
        >>
    >>

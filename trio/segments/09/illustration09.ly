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
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
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
                                c'8
                                ^ \markup 0
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        s4.
                        ^ \markup 1
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'4
                                ^ \markup 2
                                \<
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'4
                        ^ \markup 3
                        c'8
                        ^ \markup 4
                        c'4
                        \ffff
                        ^ \markup 5
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'8
                                ^ \markup 6
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        s4.
                        ^ \markup 7
                        s1 * 1/6
                        ^ \markup 8
                        \<
                        c'8
                        ^ \markup 9
                        c'4
                        ^ \markup 10
                        \repeat tremolo 4 {
                            c'32
                            \fffff
                            ^ \markup 11
                            c'32
                            ^ \markup 12
                        }
                        \repeat tremolo 4 {
                            c'32
                            \fffff
                            ^ \markup 13
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            c'32
                            ^ \markup 14
                        }
                        \repeat tremolo 4 {
                            c'32
                            \fffff
                            ^ \markup 15
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            c'32
                            ^ \markup 16
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 4/6
                        {
                            \repeat tremolo 4 {
                                c'32
                                \fffff
                                ^ \markup 17
                                - \tweak circled-tip ##t
                                - \tweak stencil #abjad-flared-hairpin
                                \>
                                c'32
                                ^ \markup 18
                            }
                        }
                        \repeat tremolo 4 {
                            c'32
                            \fffff
                            ^ \markup 19
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            c'32
                            ^ \markup 20
                        }
                        \repeat tremolo 4 {
                            c'32
                            \fffff
                            ^ \markup 21
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            c'32
                            ^ \markup 22
                        }
                        \repeat tremolo 4 {
                            c'32
                            \fffff
                            ^ \markup 23
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            c'32
                            ^ \markup 24
                        }
                        \repeat tremolo 4 {
                            c'32
                            \fffff
                            ^ \markup 25
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            c'32
                            ^ \markup 26
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 4/6
                        {
                            \repeat tremolo 4 {
                                c'32
                                \fffff
                                ^ \markup 27
                                - \tweak circled-tip ##t
                                - \tweak stencil #abjad-flared-hairpin
                                \>
                                c'32
                                ^ \markup 28
                            }
                        }
                        \repeat tremolo 4 {
                            c'32
                            \fffff
                            ^ \markup 29
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            c'32
                            ^ \markup 30
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 4/6
                        {
                            \repeat tremolo 4 {
                                c'32
                                \fffff
                                ^ \markup 31
                                - \tweak circled-tip ##t
                                - \tweak stencil #abjad-flared-hairpin
                                \>
                                c'32
                                ^ \markup 32
                            }
                        }
                        \repeat tremolo 4 {
                            c'32
                            \fffff
                            ^ \markup 33
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            c'32
                            ^ \markup 34
                        }
                        \repeat tremolo 4 {
                            c'32
                            \fffff
                            ^ \markup 35
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            c'32
                            ^ \markup 36
                        }
                        \repeat tremolo 4 {
                            c'32
                            \fffff
                            ^ \markup 37
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            c'32
                            ^ \markup 38
                        }
                        \repeat tremolo 4 {
                            c'32
                            \fffff
                            ^ \markup 39
                            - \tweak circled-tip ##t
                            - \tweak stencil #abjad-flared-hairpin
                            \>
                            c'32
                            ^ \markup 40
                        }
                        \repeat tremolo 4 {
                            c'32
                            \fffff
                            ^ \markup 41
                            c'32
                            ^ \markup 42
                        }
                    }
                }
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
                                c'8
                                ^ \markup 0
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            c'16
                            ^ \markup 1
                            [
                            c'16
                            ^ \markup 2
                            c'16
                            ^ \markup 3
                            c'16
                            ^ \markup 4
                            c'16
                            ^ \markup 5
                            c'16
                            ^ \markup 6
                            c'16
                            ^ \markup 7
                            ]
                        }
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'4
                                ^ \markup 8
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'4
                        ^ \markup 9
                        c'8
                        ^ \markup 10
                        c'4
                        ^ \markup 11
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'8
                                ^ \markup 12
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        r8
                        ^ \markup 13
                        \times 4/5
                        {
                            c'16
                            ^ \markup 14
                            [
                            c'16
                            ^ \markup 15
                            c'16
                            ^ \markup 16
                            c'16
                            ^ \markup 17
                            c'16
                            ^ \markup 18
                            ]
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 8/9
                        {
                            c'32
                            ^ \markup 19
                            [
                            c'32
                            ^ \markup 20
                            c'32
                            ^ \markup 21
                            c'32
                            ^ \markup 22
                            c'32
                            ^ \markup 23
                            c'32
                            ^ \markup 24
                            ]
                        }
                        c'8
                        ^ \markup 25
                        c'4
                        ^ \markup 26
                        \times 4/5
                        {
                            c'4
                            ^ \markup 27
                            c'16
                            ^ \markup 28
                        }
                        \times 2/3
                        {
                            c'16
                            ^ \markup 29
                            [
                            c'16
                            ^ \markup 30
                            ]
                            c'4
                            ^ \markup 31
                        }
                        \times 4/7
                        {
                            c'16
                            ^ \markup 32
                            [
                            c'16
                            ^ \markup 33
                            c'16
                            ^ \markup 34
                            ]
                            c'4
                            ^ \markup 35
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 8/9
                        {
                            c'16
                            ^ \markup 36
                            [
                            c'16
                            ^ \markup 37
                            c'16
                            ^ \markup 38
                            ]
                        }
                        \times 4/7
                        {
                            c'4.
                            ^ \markup 39
                            c'16
                            ^ \markup 40
                        }
                        \times 4/5
                        {
                            c'4
                            ^ \markup 41
                            c'16
                            ^ \markup 42
                        }
                        \times 2/3
                        {
                            c'16
                            ^ \markup 43
                            [
                            c'16
                            ^ \markup 44
                            ]
                            c'4
                            ^ \markup 45
                        }
                        \times 4/7
                        {
                            c'16
                            ^ \markup 46
                            [
                            c'16
                            ^ \markup 47
                            c'16
                            ^ \markup 48
                            ]
                            c'4
                            ^ \markup 49
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 8/9
                        {
                            c'16
                            ^ \markup 50
                            [
                            c'16
                            ^ \markup 51
                            c'16
                            ^ \markup 52
                            ]
                        }
                        \times 4/7
                        {
                            c'4.
                            ^ \markup 53
                            c'16
                            ^ \markup 54
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 8/15
                        {
                            c'4
                            ^ \markup 55
                            c'16
                            ^ \markup 56
                        }
                        \times 2/3
                        {
                            c'16
                            ^ \markup 57
                            [
                            c'16
                            ^ \markup 58
                            ]
                            c'4
                            ^ \markup 59
                        }
                        \times 4/7
                        {
                            c'16
                            ^ \markup 60
                            [
                            c'16
                            ^ \markup 61
                            c'16
                            ^ \markup 62
                            ]
                            c'4
                            ^ \markup 63
                        }
                        \times 2/3
                        {
                            c'8
                            ^ \markup 64
                            [
                            c'8
                            ^ \markup 65
                            c'8
                            ^ \markup 66
                            ]
                        }
                        \times 4/7
                        {
                            c'4.
                            ^ \markup 67
                            c'16
                            ^ \markup 68
                        }
                        \times 4/5
                        {
                            c'4
                            ^ \markup 69
                            c'16
                            ^ \markup 70
                        }
                    }
                }
            >>
            \context PianoStaff = "sub group 2"
            <<
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
                                c'8
                                ^ \markup 0
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'8
                        ^ \markup 1
                        c'4
                        ^ \markup 2
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'4
                                ^ \markup 3
                                \<
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        s4.
                        ^ \markup 4
                        s4
                        \ffff
                        ^ \markup 5
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'8
                                ^ \markup 6
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'4
                        ^ \markup 7
                        c'8
                        ^ \markup 8
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'4
                                ^ \markup 9
                                \<
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        s1 * 3/8
                        ^ \markup 10
                        s1 * 1/4
                        \fffff
                        ^ \markup 11
                        s1 * 1/4
                        ^ \markup 12
                        s1 * 1/4
                        ^ \markup 13
                        s1 * 1/6
                        ^ \markup 14
                        s1 * 1/4
                        ^ \markup 15
                        s1 * 1/4
                        ^ \markup 16
                        s1 * 1/4
                        ^ \markup 17
                        s1 * 1/4
                        ^ \markup 18
                        s1 * 1/6
                        ^ \markup 19
                        s1 * 1/4
                        ^ \markup 20
                        s1 * 1/6
                        ^ \markup 21
                        s1 * 1/4
                        ^ \markup 22
                        s1 * 1/4
                        ^ \markup 23
                        s1 * 1/4
                        ^ \markup 24
                        s1 * 1/4
                        ^ \markup 25
                        s1 * 1/4
                        ^ \markup 26
                    }
                }
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
                                c'8
                                ^ \markup 0
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'8
                        ^ \markup 1
                        c'4
                        ^ \markup 2
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'4
                                ^ \markup 3
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \italic { 6:5 }
                        \times 15/18
                        {
                            c''8
                            ^ \markup 4
                            [
                            e''8
                            ^ \markup 5
                            cqs''8
                            ^ \markup 6
                            d''8
                            ^ \markup 7
                            bqs'8
                            ^ \markup 8
                            eqs''8
                            ^ \markup 9
                            ]
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
                                c'8
                                ^ \markup 10
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        c'4
                        ^ \markup 11
                        c'8
                        ^ \markup 12
                        \override TupletNumber.text = \markup \italic { 3:2 }
                        \tweak edge-height #'(0.7 . 0)
                        \times 1/1
                        {
                            \override TupletNumber.text = \markup \italic { 3:2 }
                            \tweak edge-height #'(0.7 . 0)
                            \times 2/3
                            {
                                c'4
                                ^ \markup 13
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/7
                        {
                            c''16
                            ^ \markup 14
                            [
                            e''16
                            ^ \markup 15
                            cqs''16
                            ^ \markup 16
                            d''16
                            ^ \markup 17
                            bqs'16
                            ^ \markup 18
                            eqs''16
                            ^ \markup 19
                            c''16
                            ^ \markup 20
                            ]
                        }
                        \times 2/3
                        {
                            e''16
                            ^ \markup 21
                            [
                            cqs''16
                            ^ \markup 22
                            d''16
                            ^ \markup 23
                            bqs'16
                            ^ \markup 24
                            eqs''16
                            ^ \markup 25
                            c''16
                            ^ \markup 26
                            ]
                        }
                        \times 4/7
                        {
                            e''16
                            ^ \markup 27
                            [
                            cqs''16
                            ^ \markup 28
                            d''16
                            ^ \markup 29
                            bqs'16
                            ^ \markup 30
                            eqs''16
                            ^ \markup 31
                            c''16
                            ^ \markup 32
                            e''16
                            ^ \markup 33
                            ]
                        }
                        \times 2/3
                        {
                            cqs''16
                            ^ \markup 34
                            [
                            d''16
                            ^ \markup 35
                            bqs'16
                            ^ \markup 36
                            eqs''16
                            ^ \markup 37
                            c''16
                            ^ \markup 38
                            e''16
                            ^ \markup 39
                            ]
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 8/15
                        {
                            cqs''16
                            ^ \markup 40
                            [
                            d''16
                            ^ \markup 41
                            bqs'16
                            ^ \markup 42
                            eqs''16
                            ^ \markup 43
                            c''16
                            ^ \markup 44
                            ]
                        }
                        \times 2/3
                        {
                            e''16
                            ^ \markup 45
                            [
                            cqs''16
                            ^ \markup 46
                            d''16
                            ^ \markup 47
                            bqs'16
                            ^ \markup 48
                            eqs''16
                            ^ \markup 49
                            c''16
                            ^ \markup 50
                            ]
                        }
                        \times 4/7
                        {
                            e''16
                            ^ \markup 51
                            [
                            cqs''16
                            ^ \markup 52
                            d''16
                            ^ \markup 53
                            bqs'16
                            ^ \markup 54
                            eqs''16
                            ^ \markup 55
                            c''16
                            ^ \markup 56
                            e''16
                            ^ \markup 57
                            ]
                        }
                        \times 2/3
                        {
                            cqs''8
                            ^ \markup 58
                            [
                            d''8
                            ^ \markup 59
                            bqs'8
                            ^ \markup 60
                            eqs''8
                            ^ \markup 61
                            c''8
                            ^ \markup 62
                            e''8
                            ^ \markup 63
                            ]
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 8/15
                        {
                            cqs''16
                            ^ \markup 64
                            [
                            d''16
                            ^ \markup 65
                            bqs'16
                            ^ \markup 66
                            eqs''16
                            ^ \markup 67
                            c''16
                            ^ \markup 68
                            ]
                        }
                        \times 2/3
                        {
                            e''16
                            ^ \markup 69
                            [
                            cqs''16
                            ^ \markup 70
                            d''16
                            ^ \markup 71
                            bqs'16
                            ^ \markup 72
                            eqs''16
                            ^ \markup 73
                            c''16
                            ^ \markup 74
                            ]
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 8/15
                        {
                            e''16
                            ^ \markup 75
                            [
                            cqs''16
                            ^ \markup 76
                            d''16
                            ^ \markup 77
                            bqs'16
                            ^ \markup 78
                            eqs''16
                            ^ \markup 79
                            ]
                        }
                        \override TupletNumber.text = \markup \italic { 6:5 }
                        \times 15/18
                        {
                            c''4
                            ^ \markup 80
                            e''4
                            ^ \markup 81
                            cqs''4
                            ^ \markup 82
                            d''4
                            ^ \markup 83
                            bqs'4
                            ^ \markup 84
                            eqs''4
                            ^ \markup 85
                        }
                        \revert TupletNumber.text
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
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
                                ^ \markup 0
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        <b, g a>8
                        - \marcato
                        ^ \markup 1
                        <bf, cs d ef f>4
                        - \marcato
                        ^ \markup 2
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
                                ^ \markup 3
                                \<
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        <b, g a>4
                        - \marcato
                        ^ \markup 4
                        <bf, cs d ef f>8
                        - \marcato
                        ^ \markup 5
                        \tweak direction #up
                        \times 4/5
                        {
                            \ottava 1
                            \clef "treble"
                            d'''16
                            \ffff
                            - \marcato
                            ^ \markup 6
                            [
                            \change Staff = "piano 2 staff"
                            fs'''16
                            ^ \markup 7
                            \change Staff = "piano 1 staff"
                            d'''16
                            - \accent
                            ^ \markup 8
                            \change Staff = "piano 2 staff"
                            af'''16
                            ^ \markup 9
                            \change Staff = "piano 1 staff"
                            c'''16
                            - \accent
                            ^ \markup 10
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
                                ^ \markup 11
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
                        ^ \markup 12
                        <a'' g''' a'''>8
                        :64
                        - \marcato
                        \arpeggio
                        ^ \markup 13
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
                                ^ \markup 14
                                \<
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        <bf, cs d ef f>8
                        - \marcato
                        ^ \markup 15
                        <c e fs af bf>4
                        - \marcato
                        ^ \markup 16
                        \ottava 1
                        \clef "treble"
                        <f'' a'' cs''' fs'''>4
                        :32
                        \fffff
                        - \marcato
                        \arpeggio
                        ^ \markup 17
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        <a'' e''' fs''' a'''>4
                        :32
                        \fffff
                        - \marcato
                        \arpeggio
                        ^ \markup 18
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        <a'' cs''' af''' bf'''>4
                        :32
                        \fffff
                        - \marcato
                        \arpeggio
                        ^ \markup 19
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
                                ^ \markup 20
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
                        ^ \markup 21
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        <a'' g''' a'''>4
                        :32
                        \fffff
                        - \marcato
                        \arpeggio
                        ^ \markup 22
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        <f'' a'' cs''' fs'''>4
                        :32
                        \fffff
                        - \marcato
                        \arpeggio
                        ^ \markup 23
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        <a'' e''' fs''' a'''>4
                        :32
                        \fffff
                        - \marcato
                        \arpeggio
                        ^ \markup 24
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
                                ^ \markup 25
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
                        ^ \markup 26
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
                                ^ \markup 27
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
                        ^ \markup 28
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        <f'' a'' cs''' fs'''>4
                        :32
                        \fffff
                        - \marcato
                        \arpeggio
                        ^ \markup 29
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        <a'' e''' fs''' a'''>4
                        :32
                        \fffff
                        - \marcato
                        \arpeggio
                        ^ \markup 30
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        <a'' cs''' af''' bf'''>4
                        :32
                        \fffff
                        - \marcato
                        \arpeggio
                        ^ \markup 31
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        <b'' d''' e''' af'''>4
                        :32
                        \fffff
                        - \marcato
                        \arpeggio
                        ^ \markup 32
                        \ottava 0
                    }
                }
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
                                ^ \markup 0
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        <cs,, e,, f,,>8
                        - \marcato
                        ^ \markup 1
                        <c,, ef,, fs,, g,, a,,>4
                        - \marcato
                        ^ \markup 2
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
                                ^ \markup 3
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        <cs,, e,, f,,>4
                        - \marcato
                        ^ \markup 4
                        <c,, ef,, fs,, g,, a,,>8
                        - \marcato
                        ^ \markup 5
                        \ottava 0
                        \ottava 1
                        \clef "treble"
                        s4
                        ^ \markup 6
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
                                ^ \markup 7
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
                        ^ \markup 8
                        <d' cs''>8
                        :64
                        - \marcato
                        \arpeggio
                        ^ \markup 9
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
                                ^ \markup 10
                            }
                            \revert TupletNumber.text
                        }
                        \revert TupletNumber.text
                        <c,, ef,, fs,, g,, a,,>8
                        - \marcato
                        ^ \markup 11
                        <a,,, bf,,, b,,, d,, af,,>4
                        - \marcato
                        ^ \markup 12
                        \ottava 0
                        \times 4/5
                        {
                            f,16
                            - \marcato
                            ^ \markup 13
                            [
                            \(
                            cs,16
                            ^ \markup 14
                            f,16
                            ^ \markup 15
                            cs,16
                            ^ \markup 16
                            f,16
                            ^ \markup 17
                            \)
                            ]
                        }
                        \times 2/3
                        {
                            f,16
                            - \marcato
                            ^ \markup 18
                            [
                            \(
                            ef,16
                            ^ \markup 19
                            fs,16
                            ^ \markup 20
                            ef,16
                            ^ \markup 21
                            f,16
                            ^ \markup 22
                            d,16
                            ^ \markup 23
                            \)
                            ]
                        }
                        \times 4/5
                        {
                            cs,16
                            - \marcato
                            ^ \markup 24
                            [
                            \(
                            f,16
                            ^ \markup 25
                            cs,16
                            ^ \markup 26
                            f,16
                            ^ \markup 27
                            fs,16
                            ^ \markup 28
                            \)
                            ]
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 8/9
                        {
                            c,32
                            - \marcato
                            ^ \markup 29
                            [
                            \(
                            d,32
                            ^ \markup 30
                            f,32
                            ^ \markup 31
                            ef,32
                            ^ \markup 32
                            fs,32
                            ^ \markup 33
                            e,32
                            ^ \markup 34
                            \)
                            ]
                        }
                        \times 4/5
                        {
                            f,16
                            - \marcato
                            ^ \markup 35
                            [
                            \(
                            fs,16
                            ^ \markup 36
                            f,16
                            ^ \markup 37
                            fs,16
                            ^ \markup 38
                            f,16
                            ^ \markup 39
                            \)
                            ]
                        }
                        \times 2/3
                        {
                            af,16
                            - \marcato
                            ^ \markup 40
                            [
                            \(
                            e,16
                            ^ \markup 41
                            af,16
                            ^ \markup 42
                            e,16
                            ^ \markup 43
                            fs,16
                            ^ \markup 44
                            e,16
                            ^ \markup 45
                            \)
                            ]
                        }
                        \times 4/5
                        {
                            fs,16
                            - \marcato
                            ^ \markup 46
                            [
                            \(
                            f,16
                            ^ \markup 47
                            cs,16
                            ^ \markup 48
                            f,16
                            ^ \markup 49
                            fs,16
                            ^ \markup 50
                            \)
                            ]
                        }
                        \times 2/3
                        {
                            af,16
                            - \marcato
                            ^ \markup 51
                            [
                            \(
                            e,16
                            ^ \markup 52
                            fs,16
                            ^ \markup 53
                            e,16
                            ^ \markup 54
                            af,16
                            ^ \markup 55
                            e,16
                            ^ \markup 56
                            \)
                            ]
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 8/15
                        {
                            g,16
                            - \marcato
                            ^ \markup 57
                            [
                            \(
                            fs,16
                            ^ \markup 58
                            g,16
                            ^ \markup 59
                            af,16
                            ^ \markup 60
                            g,16
                            ^ \markup 61
                            \)
                            ]
                        }
                        \times 2/3
                        {
                            af,16
                            - \marcato
                            ^ \markup 62
                            [
                            \(
                            e,16
                            ^ \markup 63
                            fs,16
                            ^ \markup 64
                            ef,16
                            ^ \markup 65
                            f,16
                            ^ \markup 66
                            d,16
                            ^ \markup 67
                            \)
                            ]
                        }
                        \tweak edge-height #'(0.7 . 0)
                        \times 8/15
                        {
                            fs,16
                            - \marcato
                            ^ \markup 68
                            [
                            \(
                            g,16
                            ^ \markup 69
                            fs,16
                            ^ \markup 70
                            g,16
                            ^ \markup 71
                            af,16
                            ^ \markup 72
                            \)
                            ]
                        }
                        \times 2/3
                        {
                            c,16
                            - \marcato
                            ^ \markup 73
                            [
                            \(
                            d,16
                            ^ \markup 74
                            c,16
                            ^ \markup 75
                            bf,,16
                            ^ \markup 76
                            c,16
                            ^ \markup 77
                            bf,,16
                            ^ \markup 78
                            \)
                            ]
                        }
                        \times 4/5
                        {
                            a,16
                            - \marcato
                            ^ \markup 79
                            [
                            \(
                            ef,16
                            ^ \markup 80
                            a,16
                            ^ \markup 81
                            ef,16
                            ^ \markup 82
                            a,16
                            ^ \markup 83
                            \)
                            ]
                        }
                        \times 2/3
                        {
                            a,16
                            - \marcato
                            ^ \markup 84
                            [
                            \(
                            bf,,16
                            ^ \markup 85
                            a,16
                            ^ \markup 86
                            bf,,16
                            ^ \markup 87
                            a,16
                            ^ \markup 88
                            b,,16
                            ^ \markup 89
                            \)
                            ]
                        }
                        \times 4/5
                        {
                            ef,16
                            - \marcato
                            ^ \markup 90
                            [
                            \(
                            b,,16
                            ^ \markup 91
                            ef,16
                            ^ \markup 92
                            a,16
                            ^ \markup 93
                            af,16
                            ^ \markup 94
                            \)
                            ]
                        }
                        \times 2/3
                        {
                            g,16
                            - \marcato
                            ^ \markup 95
                            [
                            \(
                            b,,16
                            ^ \markup 96
                            g,16
                            ^ \markup 97
                            cs,16
                            ^ \markup 98
                            g,16
                            ^ \markup 99
                            cs,16
                            ^ \markup 100
                            \)
                            ]
                        }
                    }
                }
            >>
        >>
    >>
}

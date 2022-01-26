    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=69
            \time 5/4
            s1 * 5/4
            \boxed-markup "in th posession of nymphs and naiads" 1.5
            \time 9/8
            s1 * 9/8
            \time 1/4
            s1 * 1/4
            \time 6/4
            s1 * 3/2
            \time 11/8
            s1 * 11/8
            \time 12/8
            s1 * 3/2
            \time 7/8
            s1 * 7/8
            \time 13/8
            s1 * 13/8
            \time 3/8
            s1 * 3/8
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
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { pno. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/16
                                    R1 * 9/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
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
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 13/16
                                    R1 * 13/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
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
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/16
                                    R1 * 9/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
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
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 13/16
                                    R1 * 13/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
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
                                    \repeat tremolo 4 {
                                        \set PianoStaff.shortInstrumentName =
                                        \markup { vc. }
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        - \accent
                                        \(
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf64.
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'128
                                        \tweak Accidental.transparent ##t
                                        bf128
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        \f
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'32
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'16
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        \p
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g64
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g64
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'8.
                                        \mf
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'8.
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf8
                                        \p
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g8
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32.
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32.
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        \f
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf16
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32.
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32.
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32..
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32..
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'128
                                        \tweak Accidental.transparent ##t
                                        bf128
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64
                                        \mp
                                        - \accent
                                        \<
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'64
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'32
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'16
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g16
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g16
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        \tweak Accidental.transparent ##t
                                        g64
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \evans-BAD-spanner-right-text #0
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak staff-padding #3.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        \)
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \evans-BAD-spanner-right-text #0
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak staff-padding #3.5
                                        \evansStartTextSpanBAD
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
                                    \times 4/5
                                    {
                                        \set suggestAccidentals = ##t
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >2
                                        - \accent
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >8
                                        \)
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            b,
                                            \tweak style #'harmonic-mixed
                                            fs
                                        >16
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >16
                                        ]
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >4
                                        \)
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >32
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >8
                                        \)
                                        ]
                                        \glissando
                                    }
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    \times 15/18
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >8
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        <
                                            \tweak style #'harmonic-mixed
                                            d
                                            \tweak style #'harmonic-mixed
                                            a
                                        >8
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >8
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >8.
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >32
                                        \)
                                        ]
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            cs'
                                        >4
                                        - \accent
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >16
                                        \)
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            a'
                                        >8
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >8
                                        ]
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >2
                                        \)
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >32
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            e'
                                        >8
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        - \accent
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
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >16
                                        \)
                                        ]
                                        \glissando
                                    }
                                    \times 4/7
                                    {
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >8.
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >32
                                        \)
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/8
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >4
                                        - \accent
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >1..
                                        \)
                                    }
                                    \times 4/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >4
                                        - \accent
                                        \glissando
                                        \(
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >1.
                                        \)
                                        \glissando
                                    }
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
                                    ~
                                    ]
                                    <
                                        \tweak style #'harmonic-mixed
                                        c''
                                        \tweak style #'harmonic-mixed
                                        g''
                                    >4
                                    \)
                                    <
                                        \tweak style #'harmonic-mixed
                                        g''
                                        \tweak style #'harmonic-mixed
                                        d'''
                                    >8
                                    \glissando
                                    \(
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        b,
                                        \tweak style #'harmonic-mixed
                                        fs
                                    >4
                                    ~
                                    \glissando
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    <
                                        \tweak style #'harmonic-mixed
                                        b,
                                        \tweak style #'harmonic-mixed
                                        fs
                                    >4
                                    \)
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/5
                                    {
                                        \clef "treble"
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >8
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >8
                                        ]
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >4.
                                        \)
                                        \glissando
                                    }
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        af,
                                        \tweak style #'harmonic-mixed
                                        ef
                                    >16.
                                    [
                                    \glissando
                                    \(
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        c
                                        \tweak style #'harmonic-mixed
                                        g
                                    >32
                                    ]
                                    \glissando
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        g''
                                        \tweak style #'harmonic-mixed
                                        d'''
                                    >32
                                    [
                                    \glissando
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        af,
                                        \tweak style #'harmonic-mixed
                                        ef
                                    >32
                                    \glissando
                                    <
                                        \tweak style #'harmonic-mixed
                                        d
                                        \tweak style #'harmonic-mixed
                                        a
                                    >16
                                    \glissando
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        af,
                                        \tweak style #'harmonic-mixed
                                        ef
                                    >16
                                    \glissando
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        g''
                                        \tweak style #'harmonic-mixed
                                        d'''
                                    >16
                                    \glissando
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        b,
                                        \tweak style #'harmonic-mixed
                                        fs
                                    >16
                                    \glissando
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        g''
                                        \tweak style #'harmonic-mixed
                                        d'''
                                    >32.
                                    \glissando
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        g
                                        \tweak style #'harmonic-mixed
                                        d'
                                    >128
                                    \glissando
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        g''
                                        \tweak style #'harmonic-mixed
                                        d'''
                                    >128
                                    \)
                                    ]
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        fs
                                        \tweak style #'harmonic-mixed
                                        cs'
                                    >64
                                    [
                                    \glissando
                                    \(
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        d'''
                                        \tweak style #'harmonic-mixed
                                        a'''
                                    >16..
                                    \)
                                    ]
                                    \glissando
                                    \times 4/7
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            a'
                                        >16
                                        - \accent
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >4.
                                        \)
                                        \glissando
                                    }
                                    \times 4/6
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >8
                                        - \accent
                                        \glissando
                                        \(
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >2
                                        ~
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >8
                                        \)
                                    }
                                    \times 8/13
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >16
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        \glissando
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
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >16
                                        \glissando
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
                                        \glissando
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
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >16
                                        \)
                                        ]
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >8
                                        - \accent
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
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >4.
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >8
                                        \)
                                        \glissando
                                    }
                                    \times 4/7
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >16
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >8.
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
                                        >8
                                        \)
                                        ]
                                        \glissando
                                    }
                                    \times 8/13
                                    {
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >32
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            c
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >32
                                        \)
                                        ]
                                    }
                                    \times 2/3
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >16.
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32
                                        \)
                                        ]
                                        \glissando
                                    }
                                    \times 4/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            d
                                            \tweak style #'harmonic-mixed
                                            a
                                        >16
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >8.
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >16
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            b,
                                            \tweak style #'harmonic-mixed
                                            fs
                                        >8
                                        \)
                                        ]
                                        \set suggestAccidentals = ##f
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
                                    \repeat tremolo 4 {
                                        \set PianoStaff.shortInstrumentName =
                                        \markup { cb. }
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        - \accent
                                        \(
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'32
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'128
                                        \tweak Accidental.transparent ##t
                                        f'128
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'16
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf64.
                                        \f
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g64.
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g16
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf64.
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g64.
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        \p
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'8.
                                        \mf
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'8.
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32.
                                        \p
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32.
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf8
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g8
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'128
                                        \f
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf128
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32..
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32..
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32.
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32.
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf16
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        \mp
                                        - \accent
                                        \<
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'16
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'64
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g16
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        \tweak Accidental.transparent ##t
                                        g64
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g16
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64
                                        - \accent
                                        \(
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \evans-BAD-spanner-right-text #0
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak staff-padding #3.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        \)
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \evans-BAD-spanner-right-text #0
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak staff-padding #3.5
                                        \evansStartTextSpanBAD
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
                                    \override TupletNumber.text = \markup \italic { 13:10 }
                                    \times 30/39
                                    {
                                        \set suggestAccidentals = ##t
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >32
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            b
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            g'
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        \)
                                        ]
                                        \glissando
                                    }
                                    \revert TupletNumber.text
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        fs
                                        \tweak style #'harmonic-mixed
                                        b
                                    >32
                                    - \accent
                                    [
                                    \glissando
                                    \(
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        d'''
                                        \tweak style #'harmonic-mixed
                                        g'''
                                    >32
                                    \glissando
                                    <
                                        \tweak style #'harmonic-mixed
                                        d'
                                        \tweak style #'harmonic-mixed
                                        g'
                                    >16.
                                    \glissando
                                    <
                                        \tweak style #'harmonic-mixed
                                        d'''
                                        \tweak style #'harmonic-mixed
                                        g'''
                                    >32
                                    \)
                                    ]
                                    \glissando
                                    \times 4/7
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >16
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
                                        >8.
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >16
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >8
                                        \)
                                        ]
                                        \glissando
                                    }
                                    \times 8/13
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >16
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >16
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >16
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            b
                                        >16
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >16
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            g'
                                        >16
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >16
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >16
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
                                        >16
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >16
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >16
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >16
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >16
                                        \)
                                        ]
                                    }
                                    <
                                        \tweak style #'harmonic-mixed
                                        f,
                                        \tweak style #'harmonic-mixed
                                        bf,
                                    >32
                                    - \accent
                                    [
                                    \glissando
                                    \(
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        e''
                                        \tweak style #'harmonic-mixed
                                        a''
                                    >32
                                    \glissando
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        af,
                                        \tweak style #'harmonic-mixed
                                        cs
                                    >16
                                    ~
                                    \glissando
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    <
                                        \tweak style #'harmonic-mixed
                                        af,
                                        \tweak style #'harmonic-mixed
                                        cs
                                    >32
                                    \clef "treble"
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <
                                        \tweak style #'harmonic-mixed
                                        e''
                                        \tweak style #'harmonic-mixed
                                        a''
                                    >32
                                    \)
                                    ]
                                    \glissando
                                    \times 4/7
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e
                                            \tweak style #'harmonic-mixed
                                            a
                                        >8
                                        - \accent
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >4.
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >8
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            a,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >4
                                        \)
                                        \glissando
                                    }
                                    \times 8/13
                                    {
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >32
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            b,
                                            \tweak style #'harmonic-mixed
                                            e
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            cs
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e
                                            \tweak style #'harmonic-mixed
                                            a
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            a,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >32
                                        \)
                                        ]
                                        \glissando
                                    }
                                    <
                                        \tweak style #'harmonic-mixed
                                        b,
                                        \tweak style #'harmonic-mixed
                                        e
                                    >32
                                    - \accent
                                    [
                                    \glissando
                                    \(
                                    <
                                        \tweak style #'harmonic-mixed
                                        f,
                                        \tweak style #'harmonic-mixed
                                        bf,
                                    >32
                                    \glissando
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        e''
                                        \tweak style #'harmonic-mixed
                                        a''
                                    >16.
                                    \glissando
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        af,
                                        \tweak style #'harmonic-mixed
                                        cs
                                    >32
                                    \)
                                    ]
                                    \glissando
                                    \times 4/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            bf,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >16
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >8.
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs
                                            \tweak style #'harmonic-mixed
                                            fs
                                        >16
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >8
                                        \)
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >1
                                        - \accent
                                        \glissando
                                        \(
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            b
                                        >4
                                        \)
                                    }
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        e''
                                        \tweak style #'harmonic-mixed
                                        a''
                                    >16
                                    - \accent
                                    [
                                    \glissando
                                    \(
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        e
                                        \tweak style #'harmonic-mixed
                                        a
                                    >16
                                    ]
                                    \glissando
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        e''
                                        \tweak style #'harmonic-mixed
                                        a''
                                    >4
                                    \)
                                    \glissando
                                    \times 4/7
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >4
                                        - \accent
                                        \glissando
                                        \(
                                        <
                                            \tweak style #'harmonic-mixed
                                            a,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >4
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >4
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >1
                                        \)
                                    }
                                    \override Beam.direction = #up
                                    \tweak direction #up
                                    \times 2/3
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >32
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            bf,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32
                                        \)
                                        ]
                                        \glissando
                                    }
                                    \revert Beam.direction
                                    <
                                        \tweak style #'harmonic-mixed
                                        d
                                        \tweak style #'harmonic-mixed
                                        g
                                    >16
                                    - \accent
                                    ~
                                    \glissando
                                    \(
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    <
                                        \tweak style #'harmonic-mixed
                                        d
                                        \tweak style #'harmonic-mixed
                                        g
                                    >4
                                    ~
                                    <
                                        \tweak style #'harmonic-mixed
                                        d
                                        \tweak style #'harmonic-mixed
                                        g
                                    >16
                                    [
                                    \clef "treble"
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <
                                        \tweak style #'harmonic-mixed
                                        a''
                                        \tweak style #'harmonic-mixed
                                        d'''
                                    >16
                                    \)
                                    ]
                                    \glissando
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            bf,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >4
                                        - \accent
                                        \glissando
                                        \(
                                        <
                                            \tweak style #'harmonic-mixed
                                            e
                                            \tweak style #'harmonic-mixed
                                            a
                                        >16
                                        \)
                                        \glissando
                                    }
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    \times 15/18
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            bf,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >8
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >8
                                        ]
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs
                                            \tweak style #'harmonic-mixed
                                            fs
                                        >2
                                        \)
                                    }
                                    \revert TupletNumber.text
                                    \times 4/7
                                    {
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >8
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            g'
                                        >8
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >8
                                        ]
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >2
                                        \)
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
                                        >8
                                        - \accent
                                        [
                                        \glissando
                                        \(
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
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >8
                                        \)
                                        ]
                                        \glissando
                                    }
                                    \times 4/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >8.
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >32
                                        \)
                                        ]
                                    }
                                    <
                                        \tweak style #'harmonic-mixed
                                        b,
                                        \tweak style #'harmonic-mixed
                                        e
                                    >32
                                    - \accent
                                    [
                                    \glissando
                                    \(
                                    <
                                        \tweak style #'harmonic-mixed
                                        f,
                                        \tweak style #'harmonic-mixed
                                        bf,
                                    >8..
                                    \)
                                    ]
                                    \glissando
                                    \times 4/7
                                    {
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >16
                                        - \accent
                                        \glissando
                                        \(
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            cs
                                        >4.
                                        \)
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/9
                                    {
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >8.
                                        - \accent
                                        \glissando
                                        \(
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e
                                            \tweak style #'harmonic-mixed
                                            a
                                        >2...
                                        \)
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >8
                                        - \accent
                                        \glissando
                                        \(
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >2
                                        \)
                                    }
                                    \times 4/5
                                    {
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >16
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >16
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >8.
                                        \)
                                        ]
                                        \glissando
                                    }
                                    \times 4/7
                                    {
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            bf,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32.
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        <
                                            \tweak style #'harmonic-mixed
                                            d
                                            \tweak style #'harmonic-mixed
                                            g
                                        >64
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >64
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            bf,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >64
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            e
                                            \tweak style #'harmonic-mixed
                                            a
                                        >32
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            bf,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32
                                        \glissando
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >32
                                        \glissando
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs
                                            \tweak style #'harmonic-mixed
                                            fs
                                        >32
                                        \)
                                        ]
                                        \set suggestAccidentals = ##f
                                    }
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>

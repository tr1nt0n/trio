    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 4/4
            s1 * 1
            \time 9/4
            s1 * 9/4
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "contrabass 1 staff"
                {
                    \context Voice = "contrabass 1 voice"
                    {
                        %! applying invisibility
                        \once \override Rest.transparent = ##t
                        %! applying cutaway
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1 * 1/2
                        R1 * 1/2
                        %! applying cutaway
                        \stopStaff \startStaff
                        %! applying invisibility
                        \once \override Rest.transparent = ##t
                        %! applying cutaway
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1 * 9/8
                        R1 * 9/8
                        %! applying cutaway
                        \stopStaff \startStaff
                    }
                }
                \context Staff = "contrabass 2 staff"
                {
                    \context Voice = "contrabass 2 voice"
                    {
                        %! applying invisibility
                        \once \override Rest.transparent = ##t
                        %! applying cutaway
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        r1 * 1/2
                        R1 * 1/2
                        %! applying cutaway
                        \stopStaff \startStaff
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            \clef "bass"
                            <
                                \tweak style #'harmonic-mixed
                                f,
                                \tweak style #'harmonic-mixed
                                bf,
                            >2
                            \pp
                            \<
                            \glissando
                            - \abjad-dashed-line-with-arrow
                            - \evans-counterclockwise-BAD-spanner-left-text #0
                            - \tweak bound-details.right.padding 1.4
                            - \tweak staff-padding #5.5
                            \evansStartTextSpanBAD
                            <
                                \tweak style #'harmonic-mixed
                                e''
                                \tweak style #'harmonic-mixed
                                a''
                            >8
                            \ff
                            \>
                            \glissando
                        }
                        \times 2/3
                        {
                            <
                                \tweak style #'harmonic-mixed
                                af,
                                \tweak style #'harmonic-mixed
                                cs
                            >4
                            \pp
                            \<
                            \glissando
                            <
                                \tweak style #'harmonic-mixed
                                e''
                                \tweak style #'harmonic-mixed
                                a''
                            >4
                            \ff
                            \>
                            \glissando
                            <
                                \tweak style #'harmonic-mixed
                                e
                                \tweak style #'harmonic-mixed
                                a
                            >1
                            \pp
                            \<
                            \glissando
                            \evansStopTextSpanBAD
                            - \abjad-dashed-line-with-arrow
                            - \evans-counterclockwise-BAD-spanner-left-text #-45
                            - \tweak bound-details.right.padding 1.4
                            - \tweak staff-padding #5.5
                            \evansStartTextSpanBAD
                        }
                        \times 4/7
                        {
                            <
                                \tweak style #'harmonic-mixed
                                e''
                                \tweak style #'harmonic-mixed
                                a''
                            >8
                            \ff
                            \>
                            [
                            \glissando
                            \evansStopTextSpanBAD
                            - \abjad-dashed-line-with-arrow
                            - \evans-clockwise-BAD-spanner-left-text #45
                            - \evans-BAD-spanner-right-text #0
                            - \tweak bound-details.right.padding 1.4
                            - \tweak staff-padding #5.5
                            \evansStartTextSpanBAD
                            <
                                \tweak style #'harmonic-mixed
                                f,
                                \tweak style #'harmonic-mixed
                                bf,
                            >8
                            \pp
                            \<
                            \glissando
                            \evansStopTextSpanBAD
                            <
                                \tweak style #'harmonic-mixed
                                a,
                                \tweak style #'harmonic-mixed
                                d
                            >8
                            \ff
                            \>
                            ]
                            \glissando
                            c'2
                            \pp
                            \glissando
                        }
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()

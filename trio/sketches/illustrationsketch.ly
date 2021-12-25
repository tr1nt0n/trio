%! abjad.LilyPondFile._get_format_pieces()
\version "2.20.0"
%! abjad.LilyPondFile._get_format_pieces()
\language "english"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily"

%! abjad.LilyPondFile._get_formatted_blocks()
\score
%! abjad.LilyPondFile._get_formatted_blocks()
{
    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 9/4
            s1 * 9/4
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "cello 1 staff"
                {
                    \context Voice = "cello 1 voice"
                    {
                    }
                }
                \context Staff = "cello 2 staff"
                {
                    \context Voice = "cello 2 voice"
                    {
                    }
                }
            >>
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "contrabass 1 staff"
                {
                    \context Voice = "contrabass 1 voice"
                    {
                    }
                }
                \context Staff = "contrabass 2 staff"
                {
                    \context Voice = "contrabass 2 voice"
                    {
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
}

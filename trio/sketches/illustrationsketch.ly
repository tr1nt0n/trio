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
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        \clef "bass"
                        \tweak style #'harmonic-mixed
                        af,2
                        \pp
                        \<
                        \glissando
                        - \abjad-solid-line-with-arrow
                        - \evans-clockwise-BAD-spanner-left-text #-45
                        - \tweak bound-details.right.padding 1.4
                        - \tweak staff-padding #2
                        \evansStartTextSpanBAD
                        \clef "treble"
                        \tweak style #'harmonic-mixed
                        g'8
                        \ff
                        \>
                        \glissando
                        \evansStopTextSpanBAD
                        - \abjad-solid-line-with-arrow
                        - \evans-counterclockwise-BAD-spanner-left-text #45
                        - \tweak bound-details.right.padding 1.4
                        - \tweak staff-padding #2
                        \evansStartTextSpanBAD
                    }
                    \times 2/3
                    {
                        \clef "bass"
                        \tweak style #'harmonic-mixed
                        af,4
                        \pp
                        \<
                        \glissando
                        \evansStopTextSpanBAD
                        - \abjad-solid-line-with-arrow
                        - \evans-counterclockwise-BAD-spanner-left-text #0
                        - \tweak bound-details.right.padding 1.4
                        - \tweak staff-padding #2
                        \evansStartTextSpanBAD
                        \tweak style #'harmonic-mixed
                        c4
                        \ff
                        \>
                        \glissando
                        \evansStopTextSpanBAD
                        - \abjad-solid-line-with-arrow
                        - \evans-clockwise-BAD-spanner-left-text #-45
                        - \tweak bound-details.right.padding 1.4
                        - \tweak staff-padding #2
                        \evansStartTextSpanBAD
                        \tweak style #'harmonic-mixed
                        af,1
                        \pp
                        \<
                        \glissando
                        \evansStopTextSpanBAD
                        - \abjad-solid-line-with-arrow
                        - \evans-counterclockwise-BAD-spanner-left-text #45
                        - \tweak bound-details.right.padding 1.4
                        - \tweak staff-padding #2
                        \evansStartTextSpanBAD
                    }
                    \times 4/7
                    {
                        \clef "treble"
                        \tweak style #'harmonic-mixed
                        d''8
                        \ff
                        \>
                        [
                        \glissando
                        \evansStopTextSpanBAD
                        - \abjad-solid-line-with-arrow
                        - \evans-counterclockwise-BAD-spanner-left-text #0
                        - \tweak bound-details.right.padding 1.4
                        - \tweak staff-padding #2
                        \evansStartTextSpanBAD
                        \clef "bass"
                        \tweak style #'harmonic-mixed
                        af,8
                        \pp
                        \<
                        \glissando
                        \evansStopTextSpanBAD
                        - \abjad-solid-line-with-arrow
                        - \evans-clockwise-BAD-spanner-left-text #-45
                        - \tweak bound-details.right.padding 1.4
                        - \tweak staff-padding #2
                        \evansStartTextSpanBAD
                        \clef "treble"
                        \tweak style #'harmonic-mixed
                        g'8
                        \ff
                        \>
                        ]
                        \glissando
                        \evansStopTextSpanBAD
                        - \abjad-solid-line-with-arrow
                        - \evans-counterclockwise-BAD-spanner-left-text #45
                        - \evans-BAD-spanner-right-text #0
                        - \tweak bound-details.right.padding 1.4
                        - \tweak staff-padding #2
                        \evansStartTextSpanBAD
                        \clef "bass"
                        \tweak style #'harmonic-mixed
                        af,2
                        \pp
                        \glissando
                        \evansStopTextSpanBAD
                    }
                }
            }
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}

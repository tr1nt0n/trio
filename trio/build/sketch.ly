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
                        \clef "treble"
                        \tweak style #'harmonic-mixed
                        g'8
                        \ff
                        \>
                        \glissando
                    }
                    \times 2/3
                    {
                        \clef "bass"
                        \tweak style #'harmonic-mixed
                        af,4
                        \pp
                        \<
                        \glissando
                        \tweak style #'harmonic-mixed
                        c4
                        \ff
                        \>
                        \glissando
                        \tweak style #'harmonic-mixed
                        af,1
                        \pp
                        \<
                        \glissando
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
                        \clef "bass"
                        \tweak style #'harmonic-mixed
                        af,8
                        \pp
                        \<
                        \glissando
                        \evansStopTextSpanBAD
                        \clef "treble"
                        \tweak style #'harmonic-mixed
                        g'8
                        \ff
                        \>
                        ]
                        \glissando
                        \clef "bass"
                        \tweak style #'harmonic-mixed
                        af,2
                        \pp
                        \glissando
                    }
                }
            }
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()

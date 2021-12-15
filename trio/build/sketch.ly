    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 7/32
            s1 * 7/32
            \time 6/16
            s1 * 3/8
            \time 5/8
            s1 * 5/8
            \time 4/4
            s1 * 1
            \time 3/2
            s1 * 3/2
            \time 4/4
            s1 * 1
            \time 5/8
            s1 * 5/8
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 7/8
                    {
                        \tweak style #'harmonic-mixed
                        c'32
                        \tweak style #'harmonic-mixed
                        c'8..
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        \tweak style #'harmonic-mixed
                        c'16
                        \tweak style #'harmonic-mixed
                        c'4.
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/9
                    {
                        \tweak style #'harmonic-mixed
                        c'8.
                        \tweak style #'harmonic-mixed
                        c'2...
                    }
                    \times 4/5
                    {
                        \tweak style #'harmonic-mixed
                        c'4
                        \tweak style #'harmonic-mixed
                        c'1
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 3/5
                    {
                        \tweak style #'harmonic-mixed
                        c'2
                        \tweak style #'harmonic-mixed
                        c'2
                        \tweak style #'harmonic-mixed
                        c'1.
                    }
                    \times 4/7
                    {
                        \tweak style #'harmonic-mixed
                        c'4.
                        \tweak style #'harmonic-mixed
                        c'8
                        \tweak style #'harmonic-mixed
                        c'8
                        \tweak style #'harmonic-mixed
                        c'8
                        \tweak style #'harmonic-mixed
                        c'4
                        \tweak style #'harmonic-mixed
                        c'4
                        \tweak style #'harmonic-mixed
                        c'4
                        \tweak style #'harmonic-mixed
                        c'4
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/8
                    {
                        \tweak style #'harmonic-mixed
                        c'2.
                        \tweak style #'harmonic-mixed
                        c'8
                        \tweak style #'harmonic-mixed
                        c'8
                    }
                }
            }
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()

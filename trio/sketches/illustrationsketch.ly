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
            \time 3/8
            s1 * 3/8
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "cello 1 staff"
                {
                    \context Voice = "cello 1 voice"
                    {
                        \repeat tremolo 4 {
                            c'32.
                            c'32.
                        }
                    }
                }
                \context Staff = "cello 2 staff"
                {
                    \context Voice = "cello 2 voice"
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            c'4
                            c'16
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
                        \repeat tremolo 4 {
                            c'32.
                            c'32.
                        }
                    }
                }
                \context Staff = "contrabass 2 staff"
                {
                    \context Voice = "contrabass 2 voice"
                    {
                        \tweak text #tuplet-number::calc-fraction-text
                        \times 6/5
                        {
                            c'4
                            c'16
                        }
                    }
                }
            >>
        >>
    >>
}

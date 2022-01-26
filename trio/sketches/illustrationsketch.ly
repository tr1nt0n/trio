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
            \time 3/2
            s1 * 3/2
            \time 1/4
            s1 * 1/4
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                    }
                }
            >>
            \context PianoStaff = "sub group 2"
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
            \context PianoStaff = "sub group 3"
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
                        <c'' ef''>2
                        <c'' ef''>2
                        <c'' ef''>2
                        \times 4/5
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

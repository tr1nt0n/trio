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
                    }
                }
                \context Staff = "contrabass 2 staff"
                {
                    \context Voice = "contrabass 2 voice"
                    {
                        c'16
                        ef'16
                        bf16
                        fs'16
                        cs'16
                        af16
                        c'4
                        ~
                        c'16
                        d4
                        ~
                        d16
                        ~
                        d8
                        d'8.
                        f4..
                        e'16
                        b16
                        d'16
                        a16
                        g16
                        f'16
                        c'16
                        ef'4
                        ~
                        ef'16
                        bf4
                        ~
                        bf16
                        f'8.
                        c'4
                    }
                }
            >>
        >>
    >>
}

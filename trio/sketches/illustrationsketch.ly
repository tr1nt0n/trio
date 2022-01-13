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
                        <d'' e'' af'' a'' bf''>8
                        <c'' fs'' g''>8
                        <bf' b' cs'' ef'' f''>8
                        <d'' e'' af'' a'' bf''>8
                        <c'' fs'' g''>8
                        <bf' b' cs'' ef'' f''>8
                        <d'' e'' af'' a'' bf''>8
                        <c'' fs'' g''>8
                    }
                }
            >>
        >>
    >>
}

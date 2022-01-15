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
                    <<
                        \context Voice = "contrabass 2 voice"
                        {
                            \context Voice = "contrabass 2 voice"
                            {
                                \voiceOne
                                c'16
                                ^ \markup 0
                                ^ \markup 0
                                c'16
                                ^ \markup 1
                                ^ \markup 1
                                c'16
                                ^ \markup 2
                                ^ \markup 2
                                c'16
                                ^ \markup 3
                                ^ \markup 3
                                c'16
                                ^ \markup 4
                                ^ \markup 4
                                c'16
                                ^ \markup 5
                                ^ \markup 5
                                \times 4/7
                                {
                                    c'8
                                    ^ \markup 6
                                    ^ \markup 6
                                    [
                                    c'8
                                    ^ \markup 7
                                    ^ \markup 7
                                    c'8
                                    ^ \markup 8
                                    ^ \markup 8
                                    c'8
                                    ^ \markup 9
                                    ^ \markup 9
                                    c'8
                                    ^ \markup 10
                                    ^ \markup 10
                                    c'8
                                    ^ \markup 11
                                    ^ \markup 11
                                    c'8
                                    ^ \markup 12
                                    ^ \markup 12
                                    ]
                                }
                                \times 2/3
                                {
                                    c'32
                                    ^ \markup 13
                                    ^ \markup 13
                                    [
                                    c'32
                                    ^ \markup 14
                                    ^ \markup 14
                                    c'32
                                    ^ \markup 15
                                    ^ \markup 15
                                    c'32
                                    ^ \markup 16
                                    ^ \markup 16
                                    c'32
                                    ^ \markup 17
                                    ^ \markup 17
                                    c'32
                                    ^ \markup 18
                                    ^ \markup 18
                                    ]
                                }
                            }
                        }
                        \context Voice = "intermittent_voice"
                        {
                            \voiceTwo
                            c'4.
                            ^ \markup 0
                            c'2
                            ^ \markup 1
                            c'8
                            ^ \markup 2
                        }
                    >>
                    \oneVoice
                }
            >>
        >>
    >>

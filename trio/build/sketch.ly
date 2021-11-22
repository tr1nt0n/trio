    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 12/8
            s1 * 3/2
            \time 12/8
            s1 * 3/2
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context Staff = "piano staff"
            {
                \context Voice = "piano voice"
                {
                    \ottava -1
                    \clef "bass"
                    <a,,, b,,, cs,, ef,, f,,>8
                    <bf,,, g,, a,,>8
                    <c,, d,, e,, fs,, af,,>8
                    <b,, cs, ef, f, g,>8
                    <bf,, c, a,>8
                    <b,, d, e, fs, af,>8
                    \ottava 0
                    <b, cs ef f g>8
                    <bf, c a>8
                    <d e fs af bf>8
                    \clef "treble"
                    <b cs' ef' f' g'>8
                    <c' d' a'>8
                    <b cs' e' fs' af'>8
                    <b' cs'' ef'' f'' g''>8
                    <bf' c'' a''>8
                    <d'' e'' fs'' af'' bf''>8
                    <b'' cs''' ef''' f''' g'''>8
                    <c''' d''' e'''>8
                    <b'' cs''' ef''' fs''' af'''>8
                    \ottava 2
                    <a''' b''' cs'''' ef'''' f''''>8
                    <bf''' g'''' a''''>8
                    <c'''' d'''' e'''' fs'''' af''''>8
                    <bf'''' b'''' c'''''>8
                    <bf'''' b'''' c'''''>8
                    <bf'''' b'''' c'''''>8
                    \ottava 0
                }
            }
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()

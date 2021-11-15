    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
            \time 3/8
            s1 * 3/8
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context Staff = "piano staff"
            {
                \context Voice = "piano voice"
                {
                    \ottava -1
                    \clef "bass"
                    \override Staff.Stem.stemlet-length = 0.75
                    b,,,64
                    [
                    cs,,64
                    b,,,64
                    a,,,64
                    b,,,64
                    a,,,64
                    b,,,64
                    a,,,64
                    b,,,64
                    a,,,64
                    b,,,64
                    cs,,64
                    b,,,64
                    cs,,64
                    ef,,64
                    cs,,64
                    ef,,64
                    f,,64
                    g,,64
                    a,,64
                    g,,64
                    a,,64
                    bf,,,64
                    \revert Staff.Stem.stemlet-length
                    c,,64
                    ]
                    \ottava 0
                    \override Staff.Stem.stemlet-length = 0.75
                    cs,64
                    [
                    b,,64
                    cs,64
                    b,,64
                    cs,64
                    ef,64
                    cs,64
                    b,,64
                    cs,64
                    ef,64
                    cs,64
                    ef,64
                    cs,64
                    ef,64
                    f,64
                    ef,64
                    f,64
                    ef,64
                    cs,64
                    ef,64
                    f,64
                    ef,64
                    cs,64
                    \revert Staff.Stem.stemlet-length
                    ef,64
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    cs64
                    [
                    ef64
                    cs64
                    b,64
                    cs64
                    ef64
                    f64
                    ef64
                    f64
                    g64
                    a64
                    g64
                    f64
                    ef64
                    f64
                    g64
                    a64
                    bf,64
                    a64
                    g64
                    f64
                    ef64
                    cs64
                    \revert Staff.Stem.stemlet-length
                    b,64
                    ]
                    \clef "treble"
                    \override Staff.Stem.stemlet-length = 0.75
                    cs'64
                    [
                    b64
                    cs'64
                    b64
                    cs'64
                    b64
                    cs'64
                    b64
                    cs'64
                    ef'64
                    cs'64
                    ef'64
                    cs'64
                    ef'64
                    cs'64
                    ef'64
                    cs'64
                    b64
                    cs'64
                    ef'64
                    f'64
                    ef'64
                    f'64
                    \revert Staff.Stem.stemlet-length
                    g'64
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    cs''64
                    [
                    ef''64
                    f''64
                    g''64
                    a''64
                    bf'64
                    a''64
                    g''64
                    f''64
                    g''64
                    f''64
                    g''64
                    a''64
                    bf'64
                    c''64
                    bf'64
                    a''64
                    g''64
                    f''64
                    g''64
                    a''64
                    g''64
                    f''64
                    \revert Staff.Stem.stemlet-length
                    ef''64
                    ]
                    \ottava 1
                    \override Staff.Stem.stemlet-length = 0.75
                    cs'''64
                    [
                    ef'''64
                    f'''64
                    g'''64
                    c'''64
                    d'''64
                    c'''64
                    g'''64
                    c'''64
                    d'''64
                    e'''64
                    d'''64
                    c'''64
                    g'''64
                    c'''64
                    d'''64
                    c'''64
                    g'''64
                    f'''64
                    g'''64
                    c'''64
                    g'''64
                    c'''64
                    \revert Staff.Stem.stemlet-length
                    g'''64
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    b'''64
                    [
                    cs''''64
                    b'''64
                    a'''64
                    b'''64
                    a'''64
                    b'''64
                    a'''64
                    b'''64
                    a'''64
                    b'''64
                    a'''64
                    b'''64
                    a'''64
                    b'''64
                    cs''''64
                    b'''64
                    cs''''64
                    ef''''64
                    cs''''64
                    ef''''64
                    f''''64
                    g''''64
                    \revert Staff.Stem.stemlet-length
                    f''''64
                    ]
                    \ottava 0
                    \ottava 2
                    \override Staff.Stem.stemlet-length = 0.75
                    bf''''64
                    [
                    c'''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    b''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    b''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    \revert Staff.Stem.stemlet-length
                    c'''''64
                    ]
                    \ottava 0
                }
            }
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()

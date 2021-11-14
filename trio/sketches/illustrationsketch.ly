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
            \time 6/8
            s1 * 3/4
            \time 6/8
            s1 * 3/4
            \time 6/8
            s1 * 3/4
            \time 6/8
            s1 * 3/4
            \time 6/8
            s1 * 3/4
            \time 6/8
            s1 * 3/4
            \time 6/8
            s1 * 3/4
            \time 6/8
            s1 * 3/4
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context Staff = "piano staff"
            {
                \context Voice = "piano voice"
                {
                    a,,,64
                    af,,64
                    a,,,64
                    af,,64
                    a,,,64
                    af,,64
                    bf,,,64
                    af,,64
                    bf,,,64
                    g,,64
                    b,,,64
                    fs,,64
                    c,,64
                    fs,,64
                    c,,64
                    f,,64
                    c,,64
                    fs,,64
                    b,,,64
                    fs,,64
                    b,,,64
                    fs,,64
                    b,,,64
                    fs,,64
                    c,,64
                    f,,64
                    cs,,64
                    f,,64
                    cs,,64
                    f,,64
                    c,,64
                    f,,64
                    c,,64
                    f,,64
                    cs,,64
                    e,,64
                    cs,,64
                    e,,64
                    d,,64
                    e,,64
                    d,,64
                    ef,,64
                    d,,64
                    e,,64
                    d,,64
                    e,,64
                    cs,,64
                    f,,64
                    a,64
                    bf,,64
                    a,64
                    bf,,64
                    a,64
                    b,,64
                    a,64
                    bf,,64
                    a,64
                    b,,64
                    a,64
                    b,,64
                    a,64
                    b,,64
                    af,64
                    b,,64
                    af,64
                    b,,64
                    a,64
                    b,,64
                    af,64
                    b,,64
                    a,64
                    b,,64
                    af,64
                    c,64
                    g,64
                    cs,64
                    fs,64
                    d,64
                    f,64
                    ef,64
                    e,64
                    ef,64
                    f,64
                    d,64
                    f,64
                    ef,64
                    e,64
                    ef,64
                    e,64
                    ef,64
                    e,64
                    ef,64
                    e,64
                    ef,64
                    f,64
                    ef,64
                    bf,64
                    a64
                    bf,64
                    bf64
                    bf,64
                    a64
                    b,64
                    a64
                    b,64
                    af64
                    c64
                    af64
                    b,64
                    a64
                    b,64
                    af64
                    c64
                    g64
                    c64
                    af64
                    b,64
                    a64
                    bf,64
                    bf64
                    bf,64
                    bf64
                    bf,64
                    a64
                    bf,64
                    bf64
                    bf,64
                    a64
                    bf,64
                    bf64
                    bf,64
                    bf64
                    bf,64
                    a64
                    b,64
                    af64
                    c64
                    g64
                    c64
                    g64
                    cs64
                    g64
                    cs64
                    fs64
                    c'64
                    b64
                    c'64
                    b64
                    c'64
                    b64
                    c'64
                    b64
                    c'64
                    a'64
                    c'64
                    a'64
                    c'64
                    a'64
                    c'64
                    a'64
                    c'64
                    b64
                    c'64
                    a'64
                    cs'64
                    a'64
                    cs'64
                    af'64
                    cs'64
                    a'64
                    cs'64
                    a'64
                    cs'64
                    af'64
                    d'64
                    g'64
                    d'64
                    g'64
                    d'64
                    g'64
                    ef'64
                    g'64
                    d'64
                    af'64
                    d'64
                    af'64
                    d'64
                    af'64
                    d'64
                    af'64
                    cs'64
                    af'64
                    bf'64
                    a''64
                    b'64
                    af''64
                    c''64
                    g''64
                    c''64
                    af''64
                    b'64
                    af''64
                    b'64
                    af''64
                    c''64
                    g''64
                    cs''64
                    g''64
                    c''64
                    af''64
                    b'64
                    af''64
                    c''64
                    af''64
                    b'64
                    a''64
                    bf'64
                    a''64
                    bf'64
                    bf''64
                    bf'64
                    bf''64
                    bf'64
                    a''64
                    bf'64
                    bf''64
                    bf'64
                    bf''64
                    bf'64
                    a''64
                    b'64
                    af''64
                    c''64
                    af''64
                    c''64
                    af''64
                    b'64
                    a''64
                    b'64
                    a''64
                    c'''64
                    cs'''64
                    af'''64
                    d'''64
                    g'''64
                    ef'''64
                    g'''64
                    d'''64
                    g'''64
                    ef'''64
                    fs'''64
                    ef'''64
                    g'''64
                    d'''64
                    g'''64
                    ef'''64
                    g'''64
                    d'''64
                    af'''64
                    d'''64
                    g'''64
                    d'''64
                    g'''64
                    d'''64
                    g'''64
                    d'''64
                    af'''64
                    d'''64
                    af'''64
                    cs'''64
                    af'''64
                    d'''64
                    af'''64
                    d'''64
                    g'''64
                    ef'''64
                    g'''64
                    ef'''64
                    fs'''64
                    e'''64
                    f'''64
                    e'''64
                    fs'''64
                    ef'''64
                    g'''64
                    d'''64
                    af'''64
                    d'''64
                    a'''64
                    af''''64
                    a'''64
                    a''''64
                    a'''64
                    a''''64
                    a'''64
                    a''''64
                    a'''64
                    a''''64
                    a'''64
                    a''''64
                    a'''64
                    a''''64
                    a'''64
                    af''''64
                    a'''64
                    af''''64
                    bf'''64
                    af''''64
                    bf'''64
                    g''''64
                    b'''64
                    g''''64
                    bf'''64
                    g''''64
                    b'''64
                    g''''64
                    bf'''64
                    af''''64
                    bf'''64
                    af''''64
                    bf'''64
                    g''''64
                    bf'''64
                    g''''64
                    bf'''64
                    g''''64
                    b'''64
                    fs''''64
                    c''''64
                    f''''64
                    cs''''64
                    e''''64
                    cs''''64
                    f''''64
                    cs''''64
                    f''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    b''''64
                    bf''''64
                    b''''64
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
                    b''''64
                    bf''''64
                    b''''64
                    bf''''64
                    b''''64
                    bf''''64
                    b''''64
                    bf''''64
                    b''''64
                    bf''''64
                    b''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    b''''64
                    bf''''64
                    b''''64
                    bf''''64
                    b''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    c'''''64
                    bf''''64
                    c'''''64
                }
            }
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}

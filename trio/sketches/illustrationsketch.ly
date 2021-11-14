%! abjad.LilyPondFile._get_format_pieces()
\version "2.20.0"
%! abjad.LilyPondFile._get_format_pieces()
\language "english"
%! abjad.LilyPondFile._get_formatted_includes()
\include "/Users/trintonprater/scores/quartet/quartet/build/quartet-stylesheet.ily"
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
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
            \time 4/4
            s1 * 1
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
                        \override Staff.Stem.stemlet-length = 0.75
                        e'8.
                        [
                        \ottava 1
                        \revert Staff.Stem.stemlet-length
                        cs''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b''''16
                        [
                        fs''''16
                        a''''16
                        \revert Staff.Stem.stemlet-length
                        e''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'''''16
                        [
                        g''''16
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        d''8
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        d''8.
                        [
                        \revert Staff.Stem.stemlet-length
                        ef''16
                        ~
                        ]
                        ef''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        ef''8
                        [
                        \revert Staff.Stem.stemlet-length
                        d''8
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        d''16
                        [
                        \revert Staff.Stem.stemlet-length
                        cs'''8.
                        ~
                        ]
                        cs'''4
                        \ottava 1
                        \override Staff.Stem.stemlet-length = 0.75
                        d''''16
                        [
                        bf''''16
                        f''''16
                        \revert Staff.Stem.stemlet-length
                        af''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef''''16
                        [
                        cs''''16
                        b''''16
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        c'''16
                        ~
                        ]
                        c'''4
                        g''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g''16
                        [
                        \revert Staff.Stem.stemlet-length
                        a'8.
                        ]
                        af''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af''8.
                        [
                        \ottava 1
                        \revert Staff.Stem.stemlet-length
                        fs''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        a''''16
                        [
                        e''''16
                        c'''''16
                        \revert Staff.Stem.stemlet-length
                        g''''16
                        ]
                        \ottava 0
                        bf''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        bf''16
                        [
                        \ottava 1
                        d''''16
                        bf''''16
                        \revert Staff.Stem.stemlet-length
                        f''''16
                        ]
                        \ottava 0
                        b''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        b''8.
                        [
                        \revert Staff.Stem.stemlet-length
                        c''16
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c''8
                        [
                        \revert Staff.Stem.stemlet-length
                        fs''8
                        ~
                        ]
                        fs''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        fs''16
                        [
                        \revert Staff.Stem.stemlet-length
                        g'8.
                        ]
                        \ottava 1
                        \override Staff.Stem.stemlet-length = 0.75
                        af''''16
                        [
                        ef''''16
                        cs''''16
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        f''16
                        ~
                        ]
                        f''4
                        d'''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        d'''8.
                        [
                        \revert Staff.Stem.stemlet-length
                        cs'''16
                        ~
                        ]
                        cs'''4
                        \override Staff.Stem.stemlet-length = 0.75
                        ef''8.
                        [
                        \ottava 1
                        \revert Staff.Stem.stemlet-length
                        b''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        fs''''16
                        [
                        a''''16
                        e''''16
                        \revert Staff.Stem.stemlet-length
                        c'''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        g''''16
                        [
                        d''''16
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        bf'8
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'16
                        [
                        \ottava 1
                        bf''''16
                        f''''16
                        \revert Staff.Stem.stemlet-length
                        af''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef''''16
                        [
                        cs''''16
                        b''''16
                        \revert Staff.Stem.stemlet-length
                        fs''''16
                        ]
                        \ottava 0
                        af''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af''16
                        [
                        \revert Staff.Stem.stemlet-length
                        a''8.
                        ~
                        ]
                        a''4
                        \override Staff.Stem.stemlet-length = 0.75
                        f'8.
                        [
                        \revert Staff.Stem.stemlet-length
                        e''16
                        ~
                        ]
                        e''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e''8
                        [
                        \ottava 1
                        a''''16
                        \revert Staff.Stem.stemlet-length
                        e''''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c'''''16
                        [
                        g''''16
                        d''''16
                        \revert Staff.Stem.stemlet-length
                        bf''''16
                        ]
                        \ottava 0
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \ottava 1
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'''16
                        [
                        f'''16
                        cs''''16
                        \revert Staff.Stem.stemlet-length
                        af'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''16
                        [
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        fs'8.
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        fs'8
                        [
                        \revert Staff.Stem.stemlet-length
                        a'8
                        ~
                        ]
                        a'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        a'16
                        [
                        \revert Staff.Stem.stemlet-length
                        af8.
                        ]
                        e'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        e'8.
                        [
                        \ottava 1
                        \revert Staff.Stem.stemlet-length
                        b'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        fs'''16
                        [
                        a'''16
                        e'''16
                        \revert Staff.Stem.stemlet-length
                        d'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c''''16
                        [
                        g'''16
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        cs'8
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        cs'8.
                        [
                        \revert Staff.Stem.stemlet-length
                        a'16
                        ~
                        ]
                        a'4
                        \clef "bass"
                        \override Staff.Stem.stemlet-length = 0.75
                        ef8.
                        [
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        c''16
                        ~
                        ]
                        c''4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        c''8
                        [
                        \ottava 1
                        bf'''16
                        \revert Staff.Stem.stemlet-length
                        f'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        cs''''16
                        [
                        af'''16
                        ef'''16
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        e'16
                        ~
                        ]
                        e'4
                        \ottava 1
                        \override Staff.Stem.stemlet-length = 0.75
                        b'''16
                        [
                        fs'''16
                        a'''16
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        g'16
                        ~
                        ]
                        g'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        g'8
                        [
                        \revert Staff.Stem.stemlet-length
                        b8
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b16
                        [
                        \revert Staff.Stem.stemlet-length
                        d'8.
                        ~
                        ]
                        d'4
                        \clef "bass"
                        \override Staff.Stem.stemlet-length = 0.75
                        fs8.
                        [
                        \ottava 1
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        e'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        d'''16
                        [
                        c''''16
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        b8
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b8.
                        [
                        \revert Staff.Stem.stemlet-length
                        bf'16
                        ~
                        ]
                        bf'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        bf'8
                        [
                        \revert Staff.Stem.stemlet-length
                        g'8
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        g'8.
                        [
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        cs16
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        cs8
                        [
                        \ottava 1
                        \clef "treble"
                        g'''16
                        \revert Staff.Stem.stemlet-length
                        bf'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        f'''16
                        [
                        cs''''16
                        af'''16
                        \revert Staff.Stem.stemlet-length
                        ef'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        b'''16
                        [
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        a8.
                        ]
                        \ottava 1
                        \override Staff.Stem.stemlet-length = 0.75
                        fs'''16
                        [
                        a'''16
                        e'''16
                        \revert Staff.Stem.stemlet-length
                        d'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        c''''16
                        [
                        g'''16
                        bf'''16
                        \ottava 0
                        \revert Staff.Stem.stemlet-length
                        d'16
                        ~
                        ]
                        d'4
                        f'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        f'8.
                        [
                        \clef "bass"
                        \revert Staff.Stem.stemlet-length
                        e16
                        ~
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        e8
                        [
                        \clef "treble"
                        \revert Staff.Stem.stemlet-length
                        af'8
                        ~
                        ]
                        af'4
                        ~
                        \override Staff.Stem.stemlet-length = 0.75
                        af'16
                        [
                        \ottava 1
                        f'''16
                        cs''''16
                        \revert Staff.Stem.stemlet-length
                        af'''16
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        ef'''16
                        [
                        b'''16
                        fs'''16
                        \revert Staff.Stem.stemlet-length
                        a'''16
                        ]
                        \ottava 0
                        c'4
                    }
                }
            >>
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \clef "treble"
                    \override Staff.Stem.stemlet-length = 0.75
                    d''16
                    [
                    a'16
                    \clef "bass"
                    \revert Staff.Stem.stemlet-length
                    d8
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    d8.
                    [
                    \revert Staff.Stem.stemlet-length
                    e16
                    ~
                    ]
                    e4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    e8
                    [
                    \revert Staff.Stem.stemlet-length
                    e8
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    e16
                    [
                    \revert Staff.Stem.stemlet-length
                    b,8.
                    ~
                    ]
                    b,4
                    \clef "treble"
                    \override Staff.Stem.stemlet-length = 0.75
                    f''16
                    [
                    c''16
                    ef''16
                    \revert Staff.Stem.stemlet-length
                    bf'16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    af'16
                    [
                    fs''16
                    cs''16
                    \clef "bass"
                    \revert Staff.Stem.stemlet-length
                    a,16
                    ~
                    ]
                    a,4
                    f4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    f16
                    [
                    \revert Staff.Stem.stemlet-length
                    b,8.
                    ]
                    g4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    g8.
                    [
                    \clef "treble"
                    \revert Staff.Stem.stemlet-length
                    e''16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    b'16
                    [
                    g''16
                    d''16
                    \revert Staff.Stem.stemlet-length
                    a'16
                    ]
                    \clef "bass"
                    c4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    c16
                    [
                    \clef "treble"
                    f''16
                    c''16
                    \revert Staff.Stem.stemlet-length
                    ef''16
                    ]
                    \clef "bass"
                    d4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    d8.
                    [
                    \revert Staff.Stem.stemlet-length
                    g16
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    g8
                    [
                    \revert Staff.Stem.stemlet-length
                    f8
                    ~
                    ]
                    f4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    f16
                    [
                    \revert Staff.Stem.stemlet-length
                    d8.
                    ]
                    \clef "treble"
                    \override Staff.Stem.stemlet-length = 0.75
                    bf'16
                    [
                    af'16
                    fs''16
                    \clef "bass"
                    \revert Staff.Stem.stemlet-length
                    ef16
                    ~
                    ]
                    ef4
                    c4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    c8.
                    [
                    \revert Staff.Stem.stemlet-length
                    bf,16
                    ~
                    ]
                    bf,4
                    \override Staff.Stem.stemlet-length = 0.75
                    f8.
                    [
                    \clef "treble"
                    \revert Staff.Stem.stemlet-length
                    cs''16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    e''16
                    [
                    b'16
                    g''16
                    \revert Staff.Stem.stemlet-length
                    d''16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    a'16
                    [
                    f''16
                    \clef "bass"
                    \revert Staff.Stem.stemlet-length
                    c8
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    c16
                    [
                    \clef "treble"
                    c''16
                    ef''16
                    \revert Staff.Stem.stemlet-length
                    bf'16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    af'16
                    [
                    fs''16
                    cs''16
                    \revert Staff.Stem.stemlet-length
                    e''16
                    ]
                    \clef "bass"
                    af,4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    af,16
                    [
                    \revert Staff.Stem.stemlet-length
                    bf,8.
                    ~
                    ]
                    bf,4
                    \override Staff.Stem.stemlet-length = 0.75
                    bf,8.
                    [
                    \revert Staff.Stem.stemlet-length
                    af16
                    ~
                    ]
                    af4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    af8
                    [
                    \clef "treble"
                    b'16
                    \revert Staff.Stem.stemlet-length
                    g''16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    d''16
                    [
                    a'16
                    f''16
                    \revert Staff.Stem.stemlet-length
                    c''16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    ef''16
                    [
                    \clef "bass"
                    \revert Staff.Stem.stemlet-length
                    fs8.
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    fs8
                    [
                    \revert Staff.Stem.stemlet-length
                    c'8
                    ]
                }
            }
            \context Staff = "contrabass staff"
            {
                \context Voice = "contrabass voice"
                {
                    \clef "bass"
                    cs4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    cs8.
                    [
                    \revert Staff.Stem.stemlet-length
                    cs'16
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    cs'8
                    [
                    \revert Staff.Stem.stemlet-length
                    e8
                    ~
                    ]
                    e4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    e16
                    [
                    b16
                    d'16
                    \revert Staff.Stem.stemlet-length
                    a16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    g16
                    [
                    f'16
                    c'16
                    \revert Staff.Stem.stemlet-length
                    ef'16
                    ]
                    b4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    b16
                    [
                    \revert Staff.Stem.stemlet-length
                    d'8.
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    d'8
                    [
                    \revert Staff.Stem.stemlet-length
                    e'8
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    e'16
                    [
                    \revert Staff.Stem.stemlet-length
                    b,8.
                    ~
                    ]
                    b,4
                    \override Staff.Stem.stemlet-length = 0.75
                    bf16
                    [
                    fs'16
                    cs'16
                    \revert Staff.Stem.stemlet-length
                    af16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    e'16
                    [
                    \revert Staff.Stem.stemlet-length
                    a8.
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    a8
                    [
                    b16
                    \revert Staff.Stem.stemlet-length
                    d'16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    a16
                    [
                    \revert Staff.Stem.stemlet-length
                    a,8.
                    ~
                    ]
                    a,4
                    \override Staff.Stem.stemlet-length = 0.75
                    b8.
                    [
                    \revert Staff.Stem.stemlet-length
                    g16
                    ~
                    ]
                    g4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    g8
                    [
                    \revert Staff.Stem.stemlet-length
                    a8
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    a16
                    [
                    g16
                    f'16
                    \revert Staff.Stem.stemlet-length
                    c'16
                    ]
                    g4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    g16
                    [
                    \revert Staff.Stem.stemlet-length
                    d8.
                    ~
                    ]
                    d4
                    f'4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    f'16
                    [
                    \revert Staff.Stem.stemlet-length
                    g'8.
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    ef'16
                    [
                    bf16
                    fs'16
                    \revert Staff.Stem.stemlet-length
                    cs'16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    af16
                    [
                    e'16
                    b16
                    \revert Staff.Stem.stemlet-length
                    d'16
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    d'8
                    [
                    d'16
                    \revert Staff.Stem.stemlet-length
                    a16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    g16
                    [
                    f'16
                    c'16
                    \revert Staff.Stem.stemlet-length
                    ef'16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    bf16
                    [
                    \revert Staff.Stem.stemlet-length
                    c'8.
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    c'8
                    [
                    \revert Staff.Stem.stemlet-length
                    f8
                    ~
                    ]
                    f4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    f16
                    [
                    \revert Staff.Stem.stemlet-length
                    f'8.
                    ]
                    c4
                    ~
                    \override Staff.Stem.stemlet-length = 0.75
                    c8.
                    [
                    \revert Staff.Stem.stemlet-length
                    fs'16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    cs'16
                    [
                    af16
                    e'16
                    \revert Staff.Stem.stemlet-length
                    b16
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    d'16
                    [
                    a16
                    \revert Staff.Stem.stemlet-length
                    ef'8
                    ~
                    ]
                    \override Staff.Stem.stemlet-length = 0.75
                    ef'8.
                    [
                    \revert Staff.Stem.stemlet-length
                    bf16
                    ~
                    ]
                    bf4
                    \override Staff.Stem.stemlet-length = 0.75
                    c'8.
                    [
                    \revert Staff.Stem.stemlet-length
                    g16
                    ]
                }
            }
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}

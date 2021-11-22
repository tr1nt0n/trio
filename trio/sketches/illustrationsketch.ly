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
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \override Beam.auto-knee-gap = #0
                        ef''64
                        ^ \ff
                        [
                        \(
                        f''64
                        ef''64
                        f''64
                        g''64
                        a''64
                        \)
                        \change Staff = "piano 2 staff"
                        bf'64
                        \(
                        c''64
                        bf'64
                        c''64
                        d''64
                        c''64
                        bf'64
                        \)
                        \change Staff = "piano 1 staff"
                        a''64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        bf'64
                        \change Staff = "piano 1 staff"
                        a''64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        bf'64
                        \change Staff = "piano 1 staff"
                        a''64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        bf'64
                        \change Staff = "piano 1 staff"
                        c''64
                        d''64
                        e''64
                        d''64
                        e''64
                        a'64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        c'64
                        \(
                        d'64
                        c'64
                        d'64
                        e'64
                        d'64
                        c'64
                        \)
                        \change Staff = "piano 1 staff"
                        a'64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        c'64
                        \change Staff = "piano 1 staff"
                        a'64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        c'64
                        \change Staff = "piano 1 staff"
                        a'64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        c'64
                        \(
                        d'64
                        e'64
                        fs'64
                        e'64
                        fs'64
                        e'64
                        d'64
                        e'64
                        d'64
                        e'64
                        \)
                        \change Staff = "piano 1 staff"
                        \ottava 2
                        fs'''64
                        \(
                        e'''64
                        d'''64
                        c'''64
                        d'''64
                        c'''64
                        d'''64
                        c'''64
                        d'''64
                        e'''64
                        fs'''64
                        af'''64
                        fs'''64
                        af'''64
                        fs'''64
                        e'''64
                        fs'''64
                        e'''64
                        fs'''64
                        af'''64
                        fs'''64
                        af'''64
                        fs'''64
                        e'''64
                        \)
                        \change Staff = "piano 2 staff"
                        bf''''64
                        \(
                        c'''''64
                        bf''''64
                        c'''''64
                        bf''''64
                        \)
                        \change Staff = "piano 1 staff"
                        b''''64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        bf''''64
                        \change Staff = "piano 1 staff"
                        b''''64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        bf''''64
                        \change Staff = "piano 1 staff"
                        b''''64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        bf''''64
                        \change Staff = "piano 2 staff"
                        b''''64
                        \change Staff = "piano 1 staff"
                        bf''''64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        b''''64
                        \change Staff = "piano 1 staff"
                        bf''''64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        c'''''64
                        \change Staff = "piano 1 staff"
                        bf''''64
                        - \marcato
                        c'''''64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        bf''''64
                        \change Staff = "piano 1 staff"
                        c'''''64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        bf''''64
                        \change Staff = "piano 1 staff"
                        b''''64
                        - \marcato
                        \change Staff = "piano 2 staff"
                        bf''''64
                        \change Staff = "piano 1 staff"
                        c'''''64
                        - \marcato
                        c''''64
                        \(
                        d''''64
                        c''''64
                        d''''64
                        c''''64
                        bf'''64
                        c''''64
                        bf'''64
                        c''''64
                        d''''64
                        e''''64
                        d''''64
                        e''''64
                        fs''''64
                        e''''64
                        fs''''64
                        af''''64
                        fs''''64
                        e''''64
                        fs''''64
                        e''''64
                        d''''64
                        c''''64
                        bf'''64
                        \)
                        ]
                        \ottava 0
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s4.
                        s4.
                        r4.
                        \ottava 2
                        s4.
                        \ottava 0
                        r4.
                    }
                }
            >>
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 11/10
                    {
                        \clef "tenor"
                        \tweak style #'harmonic-mixed
                        cs'32
                        \pp
                        - \accent
                        \<
                        [
                        \(
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { XFB \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { XSB }
                        - \tweak padding 7.5
                        \startTextSpan
                        \tweak style #'harmonic-mixed
                        ef'32
                        \tweak style #'harmonic-mixed
                        cs'32
                        \tweak style #'harmonic-mixed
                        b32
                        \tweak style #'harmonic-mixed
                        cs'32
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 13/12
                    {
                        \tweak style #'harmonic-mixed
                        ef'32
                        \tweak style #'harmonic-mixed
                        f'32
                        \)
                        \tweak style #'harmonic-mixed
                        ef'32
                        - \accent
                        \(
                        \tweak style #'harmonic-mixed
                        f'32
                        \tweak style #'harmonic-mixed
                        g'32
                        \tweak style #'harmonic-mixed
                        f'32
                    }
                    \tweak style #'harmonic-mixed
                    ef'32
                    \tweak style #'harmonic-mixed
                    f'32
                    \tweak style #'harmonic-mixed
                    ef'32
                    \tweak style #'harmonic-mixed
                    f'32
                    \)
                    \tweak style #'harmonic-mixed
                    g'32
                    - \accent
                    \(
                    \tweak style #'harmonic-mixed
                    a'32
                    \tweak style #'triangle
                    c'32
                    \tweak style #'triangle
                    a'32
                    \tweak style #'triangle
                    c'32
                    \tweak style #'triangle
                    a'32
                    \tweak style #'triangle
                    c'32
                    \tweak style #'triangle
                    d'32
                    \)
                    \tweak style #'triangle
                    c'64
                    \fff
                    - \accent
                    \stopTextSpan
                    \(
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 23/22
                    {
                        \tweak style #'triangle
                        a'32
                        \tweak style #'triangle
                        g'32
                        \tweak style #'triangle
                        a'32
                        \tweak style #'triangle
                        g'32
                        \tweak style #'triangle
                        a'32
                        \tweak style #'triangle
                        g'32
                        \tweak style #'triangle
                        a'32
                        \)
                        \tweak style #'triangle
                        g'32
                        - \accent
                        \(
                        \tweak style #'triangle
                        f'32
                        \tweak style #'triangle
                        g'32
                        \tweak style #'triangle
                        a'32
                    }
                    \tweak style #'triangle
                    c'32
                    \tweak style #'triangle
                    d'32
                    e'32
                    fs'32
                    \)
                    af'32
                    - \accent
                    \>
                    \(
                    - \abjad-dashed-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { XSB \hspace #0.5 }
                    - \tweak bound-details.right.text \markup { XFB }
                    - \tweak padding 7.5
                    \startTextSpan
                    fs'32
                    af'32
                    fs'32
                    e'32
                    d'32
                    c'32
                    cs'32
                    \)
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 19/18
                    {
                        b32
                        - \accent
                        \(
                        cs'32
                        \tweak style #'harmonic-mixed
                        b32
                        \pp
                        \tweak style #'harmonic-mixed
                        cs'32
                        \tweak style #'harmonic-mixed
                        b32
                        \tweak style #'harmonic-mixed
                        cs'32
                        \tweak style #'harmonic-mixed
                        b32
                        \tweak style #'harmonic-mixed
                        cs'32
                        \tweak style #'harmonic-mixed
                        ef'32
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/4
                    {
                        \tweak style #'harmonic-mixed
                        cs'32
                        \tweak style #'harmonic-mixed
                        ef'32
                        \)
                        \stopTextSpan
                        ]
                    }
                }
            }
            \context Staff = "contrabass staff"
            {
                \context Voice = "contrabass voice"
                {
                    \clef "bass"
                    \tweak style #'harmonic-mixed
                    cs32
                    \pp
                    - \accent
                    \<
                    [
                    \(
                    - \abjad-dashed-line-with-arrow
                    - \tweak bound-details.left.text \markup \concat { XFB \hspace #0.5 }
                    - \tweak bound-details.right.text \markup { XSB }
                    - \tweak padding 7.5
                    \startTextSpan
                    \tweak style #'harmonic-mixed
                    ef32
                    \tweak style #'harmonic-mixed
                    cs32
                    \tweak style #'harmonic-mixed
                    b,32
                    \tweak style #'harmonic-mixed
                    cs32
                    \tweak style #'harmonic-mixed
                    ef32
                    \tweak style #'harmonic-mixed
                    f32
                    \)
                    \tweak style #'harmonic-mixed
                    ef32
                    - \accent
                    \(
                    \tweak style #'harmonic-mixed
                    f32
                    \tweak style #'harmonic-mixed
                    g32
                    \tweak style #'harmonic-mixed
                    f32
                    \tweak style #'harmonic-mixed
                    ef32
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 13/12
                    {
                        \tweak style #'harmonic-mixed
                        f32
                        \tweak style #'harmonic-mixed
                        ef32
                        \tweak style #'harmonic-mixed
                        f32
                        \)
                        \tweak style #'harmonic-mixed
                        g32
                        - \accent
                        \(
                        \tweak style #'harmonic-mixed
                        a32
                        \tweak style #'triangle
                        bf,32
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 11/10
                    {
                        \tweak style #'triangle
                        a32
                        \tweak style #'triangle
                        bf,32
                        \tweak style #'triangle
                        a32
                        \tweak style #'triangle
                        bf,32
                        \tweak style #'triangle
                        c32
                        \)
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 5/4
                    {
                        \tweak style #'triangle
                        bf,32
                        \fff
                        - \accent
                        \stopTextSpan
                        \(
                        \tweak style #'triangle
                        a32
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 19/18
                    {
                        \tweak style #'triangle
                        g32
                        \tweak style #'triangle
                        a32
                        \tweak style #'triangle
                        g32
                        \tweak style #'triangle
                        a32
                        \tweak style #'triangle
                        g32
                        \tweak style #'triangle
                        a32
                        \)
                        \tweak style #'triangle
                        g32
                        - \accent
                        \(
                        \tweak style #'triangle
                        f32
                        \tweak style #'triangle
                        g32
                    }
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 23/22
                    {
                        \tweak style #'triangle
                        a32
                        \tweak style #'triangle
                        bf,32
                        \tweak style #'triangle
                        c32
                        d32
                        e32
                        \)
                        fs32
                        - \accent
                        \>
                        \(
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { XSB \hspace #0.5 }
                        - \tweak bound-details.right.text \markup { XFB }
                        - \tweak padding 7.5
                        \startTextSpan
                        af32
                        fs32
                        af32
                        bf32
                        af32
                    }
                    fs64
                    cs32
                    \)
                    b,32
                    - \accent
                    \(
                    cs32
                    \tweak style #'harmonic-mixed
                    b,32
                    \pp
                    \tweak style #'harmonic-mixed
                    cs32
                    \tweak style #'harmonic-mixed
                    b,32
                    \tweak style #'harmonic-mixed
                    cs32
                    \tweak style #'harmonic-mixed
                    b,32
                    \tweak style #'harmonic-mixed
                    cs32
                    \tweak style #'harmonic-mixed
                    ef32
                    \tweak style #'harmonic-mixed
                    cs32
                    \tweak style #'harmonic-mixed
                    ef32
                    \)
                    \stopTextSpan
                    ]
                }
            }
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}

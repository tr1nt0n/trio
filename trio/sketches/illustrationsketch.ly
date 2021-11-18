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
            \time 3/4
            s1 * 3/4
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "cello 1 staff"
                {
                    \context Voice = "cello 1 voice"
                    {
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \new Score
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \new RhythmicStaff
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 4/4
                        {
                            \clef "bass"
                            <
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                ef
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                bf
                            >16
                            - \accent
                            \glissando
                            \(
                            \clef "treble"
                            <
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                d'''
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                a'''
                            >16
                            \glissando
                            \clef "bass"
                            <
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                ef
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                bf
                            >16
                            \glissando
                            \clef "treble"
                            <
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                d'''
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                a'''
                            >16
                            \)
                            \glissando
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \new Score
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \new RhythmicStaff
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'8
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 2/2
                        {
                            \clef "bass"
                            <
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                ef
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                bf
                            >16
                            - \accent
                            \glissando
                            \(
                            \clef "treble"
                            <
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                d'''
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                a'''
                            >16
                            \)
                            \glissando
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                            {
                                \new Score
                                \with
                                {
                                    \override SpacingSpanner.spacing-increment = 0.5
                                    proportionalNotationDuration = ##f
                                }
                                <<
                                    \new RhythmicStaff
                                    \with
                                    {
                                        \remove Time_signature_engraver
                                        \remove Staff_symbol_engraver
                                        \override Stem.direction = #up
                                        \override Stem.length = 5
                                        \override TupletBracket.bracket-visibility = ##t
                                        \override TupletBracket.direction = #up
                                        \override TupletBracket.minimum-length = 4
                                        \override TupletBracket.padding = 1.25
                                        \override TupletBracket.shorten-pair = #'(-1 . -1.5)
                                        \override TupletBracket.springs-and-rods = #ly:spanner::set-spacing-rods
                                        \override TupletNumber.font-size = 0
                                        \override TupletNumber.text = #tuplet-number::calc-fraction-text
                                        tupletFullLength = ##t
                                    }
                                    {
                                        c'4.
                                    }
                                >>
                                \layout
                                {
                                    indent = 0
                                    ragged-right = ##t
                                }
                            }
                        \times 6/7
                        {
                            \clef "bass"
                            <
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                ef
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                bf
                            >16
                            - \accent
                            \glissando
                            \(
                            \clef "treble"
                            <
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                d'''
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                a'''
                            >16
                            \glissando
                            \clef "bass"
                            <
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                ef
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                bf
                            >16
                            \glissando
                            \clef "treble"
                            <
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                d'''
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                a'''
                            >16
                            \glissando
                            \clef "bass"
                            <
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                ef
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                bf
                            >16
                            \glissando
                            \clef "treble"
                            <
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                d'''
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                a'''
                            >16
                            \glissando
                            \clef "bass"
                            <
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                ef
                                \tweak Beam.transparent ##t
                                \tweak Flag.transparent ##t
                                \tweak Stem.transparent ##t
                                \tweak style #'harmonic-mixed
                                bf
                            >16
                            \)
                        }
                        \revert TupletNumber.text
                    }
                }
                \context Staff = "cello 2 staff"
                {
                    \context Voice = "cello 2 voice"
                    {
                        \repeat tremolo 4 {
                            \staff-line-count 4
                            \clef "percussion"
                            \tweak Accidental.transparent ##t
                            d'32
                            - \accent
                            \(
                            \tweak Accidental.transparent ##t
                            f'32
                            \)
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            d'64
                            - \accent
                            \(
                            \tweak Accidental.transparent ##t
                            f'64
                            \)
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            d'32.
                            - \accent
                            \(
                            \tweak Accidental.transparent ##t
                            f'32.
                            \)
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
                        \clef "bass"
                        <
                            \tweak style #'harmonic-mixed
                            f,
                            \tweak style #'harmonic-mixed
                            bf,
                        >16
                        - \accent
                        \glissando
                        \(
                        \clef "treble"
                        <
                            \tweak style #'harmonic-mixed
                            e''
                            \tweak style #'harmonic-mixed
                            a''
                        >16
                        \)
                        \glissando
                        \clef "bass"
                        <
                            \tweak style #'harmonic-mixed
                            f,
                            \tweak style #'harmonic-mixed
                            bf,
                        >16
                        - \accent
                        \glissando
                        \(
                        \clef "treble"
                        <
                            \tweak style #'harmonic-mixed
                            e''
                            \tweak style #'harmonic-mixed
                            a''
                        >16
                        \glissando
                        \clef "bass"
                        <
                            \tweak style #'harmonic-mixed
                            f,
                            \tweak style #'harmonic-mixed
                            bf,
                        >16
                        \glissando
                        \clef "treble"
                        <
                            \tweak style #'harmonic-mixed
                            e''
                            \tweak style #'harmonic-mixed
                            a''
                        >16
                        \glissando
                        \clef "bass"
                        <
                            \tweak style #'harmonic-mixed
                            f,
                            \tweak style #'harmonic-mixed
                            bf,
                        >16
                        \glissando
                        \clef "treble"
                        <
                            \tweak style #'harmonic-mixed
                            e''
                            \tweak style #'harmonic-mixed
                            a''
                        >16
                        \)
                        \glissando
                        \times 4/5
                        {
                            \clef "bass"
                            <
                                \tweak style #'harmonic-mixed
                                f,
                                \tweak style #'harmonic-mixed
                                bf,
                            >16
                            - \accent
                            [
                            \glissando
                            \(
                            \clef "treble"
                            <
                                \tweak style #'harmonic-mixed
                                e''
                                \tweak style #'harmonic-mixed
                                a''
                            >16
                            \glissando
                            \clef "bass"
                            <
                                \tweak style #'harmonic-mixed
                                f,
                                \tweak style #'harmonic-mixed
                                bf,
                            >16
                            \glissando
                            \clef "treble"
                            <
                                \tweak style #'harmonic-mixed
                                e''
                                \tweak style #'harmonic-mixed
                                a''
                            >16
                            \glissando
                            \clef "bass"
                            <
                                \tweak style #'harmonic-mixed
                                f,
                                \tweak style #'harmonic-mixed
                                bf,
                            >16
                            \)
                            ]
                        }
                    }
                }
                \context Staff = "contrabass 2 staff"
                {
                    \context Voice = "contrabass 2 voice"
                    {
                        \repeat tremolo 4 {
                            \staff-line-count 4
                            \clef "percussion"
                            \tweak Accidental.transparent ##t
                            g64
                            - \accent
                            \(
                            \tweak Accidental.transparent ##t
                            b64
                            \)
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            g32.
                            - \accent
                            \(
                            \tweak Accidental.transparent ##t
                            b32.
                            \)
                        }
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            g32
                            - \accent
                            \(
                            \tweak Accidental.transparent ##t
                            b32
                            \)
                        }
                    }
                }
            >>
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}

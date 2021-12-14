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
            \time 12/8
            s1 * 3/2
            \time 12/8
            s1 * 3/2
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context Staff = "cello staff"
            {
                \context Voice = "cello voice"
                {
                    \set suggestAccidentals = ##t
                    c''16
                    e''16
                    cqs''16
                    d''16
                    bqs'16
                    eqs''16
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/5
                    {
                        c''16
                        e''16
                        cqs''16
                        d''16
                        bqs'16
                    }
                    eqs''16
                    c''16
                    e''16
                    cqs''16
                    d''16
                    bqs'16
                    \set suggestAccidentals = ##f
                    \tweak text #tuplet-number::calc-fraction-text
                    \times 6/7
                    {
                        eqs''16
                        c''16
                        e''16
                        cqs''16
                        d''16
                        bqs'16
                        eqs''16
                    }
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
                                    c'2.
                                }
                            >>
                            \layout
                            {
                                indent = 0
                                ragged-right = ##t
                            }
                        }
                    \times 3/2
                    {
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        d'''4
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        fs'''4
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
                                    c'2.
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
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        dqs'''8
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        e'''8
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        dqf'''8
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        gqf'''8
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        d'''8
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        fs'''8
                        \tweak Beam.transparent ##t
                        \tweak Flag.transparent ##t
                        \tweak Stem.transparent ##t
                        dqs'''8
                    }
                    \revert TupletNumber.text
                }
            }
        >>
    >>
%! abjad.LilyPondFile._get_formatted_blocks()
}

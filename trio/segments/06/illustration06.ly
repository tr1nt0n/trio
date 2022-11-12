\version "2.23.14"
\language "english"
\include "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily"
\include "/Users/trintonprater/abjad/abjad/scm/abjad.ily"
\score
{
    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % BEFORE:
            % COMMANDS:
            \tempo 4=130
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % AFTER:
            % COMMANDS:
            \boxed-markup "Skyward, {diagonal moves} (ii)" 1.5
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \pageBreak
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % AFTER:
            % COMMANDS:
            \bar "||"
        % CLOSE_BRACKETS:
        }
        % BEFORE:
        % COMMANDS:
        \tag #'group1
        % OPEN_BRACKETS:
        {
            % OPEN_BRACKETS:
            \context ChoirStaff = "Staff Group"
            <<
                % BEFORE:
                % COMMANDS:
                \tag #'group2
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context PianoStaff = "sub group 1"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice1
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "cello 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "cello 1 voice"
                                {
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set PianoStaff.shortInstrumentName = \markup { vc. }
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \fp
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g128
                                        \tweak Accidental.transparent ##t
                                        bf128
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g128
                                        \tweak Accidental.transparent ##t
                                        bf128
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g128
                                        \tweak Accidental.transparent ##t
                                        bf128
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g128
                                        \tweak Accidental.transparent ##t
                                        bf128
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    s2.
                                    s1
                                    s1
                                    s1
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g128
                                        \tweak Accidental.transparent ##t
                                        bf128
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g128
                                        \tweak Accidental.transparent ##t
                                        bf128
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g128
                                        \tweak Accidental.transparent ##t
                                        bf128
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g128
                                        \tweak Accidental.transparent ##t
                                        bf128
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    s1..
                                    s1.
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice2
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "cello 2 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "cello 2 voice"
                                {
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    ~
                                                    c'16
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        ^ \fp
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        ^ \<
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    ~
                                                    c'16
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 15/18
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    ~
                                                    c'16
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 30/21
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            c
                                        >32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        ^ \f
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        ^ \>
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    ~
                                                    c'16
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 15/18
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##f
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'1
                                                    ~
                                                    c'4
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 20/24
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        - \tweak circled-tip ##t
                                        _ \<
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XSB }
                                        \startTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        ef16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        af16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        _ \f
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \>
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        ef16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        ef16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        e16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XFB }
                                        \startTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        ef16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        ef16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        af16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        ef16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        e16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \slurSolid
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <d'' a''>1
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +16
                                    ^ \markup -16
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    _ \<
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB" 1
                                    <d'' a''>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    _ \f
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    _ \>
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \<
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { IV } \hspace #0.5 }
                                        \startTextSpan
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cqs''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bqs'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        eqs''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cqs''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bqs'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        eqs''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cqs''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        _ \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \>
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bqs'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        eqs''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        cqs''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        d''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        bqs'16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        eqs''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        c''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        e''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        cqs''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        d''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        bqs'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        eqs''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        c''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        e''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        \stopTextSpan
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    ~
                                                    c'16
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 5/8
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        ^ \<
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >4..
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    ~
                                                    c'16
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 5/7
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >4.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    ~
                                                    c'16
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 5/9
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            c
                                        >16.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        ^ \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        ^ \>
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >4...
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    ~
                                                    c'16
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##f
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'1
                                                    ~
                                                    c'4
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 20/24
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        f16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        - \tweak circled-tip ##t
                                        _ \<
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XSB }
                                        \startTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        bf,16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        b,16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        ef16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        ef16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        _ \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \>
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        ef16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak padding #9.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XFB }
                                        \startTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        af16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        af16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \slurSolid
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <b' d''>2
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +17
                                    ^ \markup +23
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    _ \<
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB" 1
                                    <b' d''>2.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    _ \f
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    _ \>
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 1
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        d'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \<
                                        - \tweak padding #10.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { II } \hspace #0.5 }
                                        \startTextSpan
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        fs'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        dqs'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        e'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        dqf'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        gqf'''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        _ \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \>
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        dqs'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        dqf'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        gqf'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d'''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        dqs'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \)
                                        \stopTextSpan
                                        % COMMANDS:
                                        \ottava 0
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##f
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    >>
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \tag #'group3
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context PianoStaff = "sub group 2"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice3
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "contrabass 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "contrabass 1 voice"
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \set PianoStaff.shortInstrumentName = \markup { cb. }
                                    s1.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    s2.
                                    s2
                                    s1
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    s2.
                                    s1.
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    s4
                                    s1
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice4
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "contrabass 2 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "contrabass 2 voice"
                                {
                                    <b>2.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup -2
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 6/5
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <a, b,>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \<
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <aqf, a,>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <a, cqs>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        _ \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \>
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <a, bf,>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <a, b,>8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'8.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 12/13
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            g'
                                        >64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        ^ \<
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            b
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            g'
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'8.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >16.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            b
                                        >32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'8.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 6/7
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        ^ \f
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        ^ \>
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            g'
                                        >16.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'8.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 12/13
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
                                        >64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            b
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            g'
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##f
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 12/16
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \tweak style #'triangle
                                        cs16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        - \tweak circled-tip ##t
                                        _ \<
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XSB }
                                        \startTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        d16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        cs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        d16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        cs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        a16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        cs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        d16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        _ \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \>
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        af16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        d16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        af16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XFB }
                                        \startTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \slurSolid
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <cs''>2
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % MARKUP:
                                    ^ \markup +3
                                    % SPANNER_STARTS:
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB" 1
                                    <cs''>4
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 3/2
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <aqf, a,>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \<
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <a, cqs>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <a, bf,>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        _ \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \>
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <a, b,>8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'8.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 6/5
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        ^ \<
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'8.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            b
                                        >8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'8.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 6/7
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        ^ \f
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        ^ \>
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            g'
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'8.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##f
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 12/16
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        - \tweak circled-tip ##t
                                        _ \<
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XSB }
                                        \startTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf,16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        bf,16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        g16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        fs16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        _ \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \>
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        g16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        fs16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XFB }
                                        \startTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        ef16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        g16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        fs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        g16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \slurSolid
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <d''>2.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % MARKUP:
                                    ^ \markup -2
                                    % COMMANDS:
                                    \boxed-markup "NB" 1
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 6/5
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <a, cqs>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \<
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <a, bf,>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <a, b,>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        _ \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \>
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <aqf, a,>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <a, cqs>8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'8.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 6/8
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        ^ \<
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >8..
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'8.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 6/7
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            b
                                        >8.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'8.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 2/2
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        ^ \f
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        ^ \>
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            g'
                                        >8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        ~
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            g'
                                        >32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'8.
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 6/5
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##f
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 12/16
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        bf,16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
                                        - \tweak circled-tip ##t
                                        _ \<
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XSB }
                                        \startTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        e16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        b,16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        e16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        b,16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        e16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        bf,16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        e16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        b,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        _ \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        _ \>
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        a16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak padding #7.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XFB }
                                        \startTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        cs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \slurSolid
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <d''>2
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % MARKUP:
                                    ^ \markup -5
                                    % COMMANDS:
                                    \boxed-markup "NB" 1
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    >>
                % CLOSE_BRACKETS:
                }
                % BEFORE:
                % COMMANDS:
                \tag #'group4
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context PianoStaff = "sub group 3"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice5
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "piano 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "piano 1 voice"
                                {
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 1
                                        \set PianoStaff.shortInstrumentName = \markup { pno. }
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <b'' d''' e''' af''' c''''>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \<
                                    ~
                                    <b'' d''' e''' af''' c''''>1
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \f
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'4..
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 14/13
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        \(
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'4..
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 7/6
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f'''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af'''8.
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'4..
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af'''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g'''8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'4..
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 14/13
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f'''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af'''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % COMMANDS:
                                        \ottava 0
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'1..
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 28/32
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava -1
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        cs,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % COMMANDS:
                                        \ottava 0
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        bf'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava -1
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        g,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % COMMANDS:
                                        \ottava 0
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        a''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        ef''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        ef''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava -1
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        af,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b,,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % COMMANDS:
                                        \ottava 0
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        bf'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        \(
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava -1
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        cs,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf,,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b,,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % COMMANDS:
                                        \ottava 0
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        g''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 1
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <a'' cs''' af''' bf''' cs''''>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \p
                                    % COMMANDS:
                                    \ottava 0
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice6
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context Staff = "piano 2 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "piano 2 voice"
                                {
                                    s1..
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <b, af'>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    ~
                                    <b, af'>1
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'4..
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 14/13
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c,32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c,32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c,32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'4..
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 7/6
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c,8.
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c,16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'4..
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c8.
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \scale #'(0.75 . 0.75) \score
                                        {
                                            \context Score = "Score"
                                            \with
                                            {
                                                \override SpacingSpanner.spacing-increment = 0.5
                                                proportionalNotationDuration = ##f
                                            }
                                            <<
                                                \context RhythmicStaff = "Rhythmic_Staff"
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
                                                    c'4..
                                                }
                                            >>
                                            \layout
                                            {
                                                indent = 0
                                                ragged-right = ##t
                                            }
                                        }
                                    % OPEN_BRACKETS:
                                    \times 14/13
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c,32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c,32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c,32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c,32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    s1..
                                    s1..
                                    <cs' d''>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                % CLOSE_BRACKETS:
                                }
                            % CLOSE_BRACKETS:
                            }
                        % CLOSE_BRACKETS:
                        }
                    % CLOSE_BRACKETS:
                    >>
                % CLOSE_BRACKETS:
                }
            % CLOSE_BRACKETS:
            >>
        % CLOSE_BRACKETS:
        }
    % CLOSE_BRACKETS:
    >>
}

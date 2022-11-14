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
            \time 3/4
            s1 * 3/4
            % AFTER:
            % COMMANDS:
            \boxed-markup "Skyward, {diagonal moves} (iii)" 1.5
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % AFTER:
            % COMMANDS:
            \bar "||"
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \once \override Score.BarLine.transparent = ##f
        % CLOSE_BRACKETS:
        }
        % BEFORE:
        % COMMANDS:
        \tag #'group1
        % OPEN_BRACKETS:
        {
            % OPEN_BRACKETS:
            \context StaffGroup = "Staff Group"
            <<
                % BEFORE:
                % COMMANDS:
                \tag #'group2
                % OPEN_BRACKETS:
                {
                    % OPEN_BRACKETS:
                    \context GrandStaff = "sub group 1"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice1
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context BowStaff = "cello 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "cello 1 voice"
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \set GrandStaff.shortInstrumentName = \markup { vc. }
                                    s1
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % SPANNER_STARTS:
                                    \<
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32..
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32..
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32..
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32..
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    s4
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        d'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
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
                                        % SPANNER_STARTS:
                                        \glissando
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
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs'''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        dqs'''8
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
                                        dqf'''16
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
                                        \tweak style #'triangle
                                        d'''16
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
                                        \tweak style #'triangle
                                        dqs'''16
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
                                        e'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STOPS:
                                        \stopTextSpan
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
                                    \times 7/5
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >4
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
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
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
                                        <
                                            \tweak style #'harmonic-mixed
                                            d
                                            \tweak style #'harmonic-mixed
                                            a
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
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
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
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            b,
                                            \tweak style #'harmonic-mixed
                                            fs
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
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
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
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
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
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
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
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
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
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
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
                                        a'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
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
                                        f'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        e'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        f'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        a'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        c'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        d'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        c'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        d'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        c'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        d'16
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
                                        c'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        d'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        c'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        d'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        c'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        d'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        c'16
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
                                        \tweak style #'triangle
                                        d'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        c'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        a'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        f'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        e'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        fs'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        e'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        ef'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs'16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af'16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs'16
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
                    \context GrandStaff = "sub group 2"
                    <<
                        % BEFORE:
                        % COMMANDS:
                        \tag #'voice3
                        % OPEN_BRACKETS:
                        {
                            % OPEN_BRACKETS:
                            \context BowStaff = "contrabass 1 staff"
                            {
                                % OPEN_BRACKETS:
                                \context Voice = "contrabass 1 voice"
                                {
                                    % BEFORE:
                                    % COMMANDS:
                                    \set GrandStaff.shortInstrumentName = \markup { cb. }
                                    s1.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mp
                                    % SPANNER_STARTS:
                                    \<
                                    s2
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <d''>2.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup -5
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
                                    \times 30/21
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
                                        <g af>8
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
                                        <g a>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <gqf g>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <g bqf>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <g af>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <g a>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        <gqf g>8
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
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >4
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
                                            a,
                                            \tweak style #'harmonic-mixed
                                            d
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
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
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
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
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
                                        <
                                            \tweak style #'harmonic-mixed
                                            b,
                                            \tweak style #'harmonic-mixed
                                            e
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
                                            bf,
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
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
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
                                            af,
                                            \tweak style #'harmonic-mixed
                                            cs
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
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a,
                                            \tweak style #'harmonic-mixed
                                            d
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
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
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
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
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
                                        \tweak style #'triangle
                                        a16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        (
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
                                        e16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        a,16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        c16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        a,16
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
                                        a,16
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
                                        a,16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        c16
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
                                        c16
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
                                        ef16
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
                                        g16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b,16
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
                    \context GrandStaff = "sub group 3"
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
                                        % COMMANDS:
                                        \ottava 1
                                        \set GrandStaff.shortInstrumentName = \markup { pno. }
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d''''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \<
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''32
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
                                        c''''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''8
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
                                        bf'''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d''''8
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
                                        cs''''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c''''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf'''16
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
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        fs,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        ef,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 2
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        e''''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
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
                                        \clef "bass"
                                        bf,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 2
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        f''''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a''''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d''''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf''''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g''''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
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
                                        \clef "bass"
                                        cs,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
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
                                        % COMMANDS:
                                        \ottava 1
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        e'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
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
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
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
                                        e'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''16
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <a'' e''' fs''' a''' c''''>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
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
                                        a'''64
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
                                        bf'''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d''''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c''''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf'''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf'''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d''''64
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
                                        cs''''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c''''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf'''16.
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''32
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
                                        bf'''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''16.
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d''''16
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
                                        cs''''64
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c''''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf'''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf'''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d''''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c''''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf'''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf'''64
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
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        d,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b,,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 2
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        e''''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        ef''''16
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af''''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
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
                                        \clef "bass"
                                        fs,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        ef,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 1
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        b''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf''16
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
                                        a'''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % COMMANDS:
                                        \ottava 0
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
                                        g,8
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
                                        g32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d'32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d'8
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
                                        g32
                                        % AFTER:
                                        % START_BEAM:
                                        [
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
                                        g,32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g,8
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
                                        g16
                                        % AFTER:
                                        % START_BEAM:
                                        [
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
                                        d'16
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
                                    s2.
                                    s2.
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <d' c''>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        d'64
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
                                        g64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g,64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g,64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d'64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d'64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g,64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g,64
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
                                        g32
                                        % AFTER:
                                        % START_BEAM:
                                        [
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
                                        d'16.
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d'32
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
                                        g32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g16.
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g,32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g,16
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
                                        g64
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d'64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d'64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g,64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g,64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d'64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d'64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g64
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
                                    s2.
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

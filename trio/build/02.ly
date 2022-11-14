    % OPEN_BRACKETS:
    \context Score = "Score"
    <<
        % OPEN_BRACKETS:
        \context TimeSignatureContext = "Global Context"
        {
            % BEFORE:
            % COMMANDS:
            \tempo 4=47
            % OPENING:
            % COMMANDS:
            \time 9/4
            s1 * 9/4
            % AFTER:
            % COMMANDS:
            \boxed-markup "Matter, to Self-Organize" 1.5
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % BEFORE:
            % COMMANDS:
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.transparent = ##t
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/8
            % BEFORE:
            % COMMANDS:
            \once \override Rest.transparent = ##t
            r1 * 1/8
            % ABSOLUTE_BEFORE:
            % COMMANDS:
            \once \override Score.MetronomeMark.padding = 18
            % BEFORE:
            % COMMANDS:
            \tempo 8=138
            % OPENING:
            % COMMANDS:
            \time 1/8
            s1 * 1/8
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % BEFORE:
            % COMMANDS:
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.transparent = ##t
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/8
            % BEFORE:
            % COMMANDS:
            \once \override Rest.transparent = ##t
            r1 * 1/8
            % OPENING:
            % COMMANDS:
            \time 1/8
            s1 * 1/8
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 11/8
            s1 * 11/8
            % BEFORE:
            % COMMANDS:
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.transparent = ##t
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/8
            % BEFORE:
            % COMMANDS:
            \once \override Rest.transparent = ##t
            r1 * 1/8
            % OPENING:
            % COMMANDS:
            \time 1/8
            s1 * 1/8
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            \time 11/8
            s1 * 11/8
            % OPENING:
            % COMMANDS:
            \time 9/8
            s1 * 9/8
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
            % BEFORE:
            % COMMANDS:
            \once \override MultiMeasureRest.transparent = ##t
            \once \override Score.TimeSignature.transparent = ##t
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/8
            % BEFORE:
            % COMMANDS:
            \once \override Rest.transparent = ##t
            r1 * 1/8
            % OPENING:
            % COMMANDS:
            \time 1/8
            s1 * 1/8
            % OPENING:
            % COMMANDS:
            \time 5/8
            s1 * 5/8
            % OPENING:
            % COMMANDS:
            \time 1/8
            s1 * 1/8
            % BEFORE:
            % COMMANDS:
            \tempo 4=47
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % OPENING:
            % COMMANDS:
            \time 6/4
            s1 * 3/2
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % BEFORE:
            % COMMANDS:
            \tempo 4=105
            % OPENING:
            % COMMANDS:
            \time 9/4
            s1 * 9/4
            % BEFORE:
            % COMMANDS:
            \tempo 4=130
            % OPENING:
            % COMMANDS:
            \time 9/4
            s1 * 9/4
            % OPENING:
            % COMMANDS:
            \time 7/4
            s1 * 7/4
            % OPENING:
            % COMMANDS:
            \time 6/4
            s1 * 3/2
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % OPENING:
            % COMMANDS:
            \time 2/4
            s1 * 1/2
            % BEFORE:
            % COMMANDS:
            \tempo 4=60
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % AFTER:
            % COMMANDS:
            \bar "||"
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
                                    \once \override Rest.transparent = ##t
                                    \set GrandStaff.shortInstrumentName = \markup { vc. }
                                    r1 * 9/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/8
                                    r8
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'32.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'32.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    r4
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mf
                                        % SPANNER_STARTS:
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    r1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <c' ef'>2.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \upbow
                                    \fp
                                    % MARKUP:
                                    ^ \markup +0
                                    ^ \markup -14
                                    % SPANNER_STARTS:
                                    \<
                                    ~
                                    <c' ef'>4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    <c' ef'>8
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
                                                    c'8
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
                                        \once \override Beam.grow-direction = #left
                                        <c' ef'>32 * 49/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \downbow
                                        - \staccato
                                        \ff
                                        % MARKUP:
                                        ^ \markup +0
                                        ^ \markup -14
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        <c' ef'>32 * 25/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +0
                                        ^ \markup -14
                                        r32 * 51/32
                                        <c' ef'>32 * 53/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +0
                                        ^ \markup -14
                                        r32 * 55/32
                                        <c' ef'>32 * 59/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +0
                                        ^ \markup -14
                                        <c' ef'>32 * 63/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +0
                                        ^ \markup -14
                                        r32 * 69/32
                                        r32 * 19/8
                                        <c' ef'>32 * 83/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +0
                                        ^ \markup -14
                                        <c' ef'>32 * 23/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +0
                                        ^ \markup -14
                                        <c' ef'>32 * 101/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +0
                                        ^ \markup -14
                                        r32 * 55/16
                                        <c' ef'>32 * 59/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +0
                                        ^ \markup -14
                                        % SPANNER_STOPS:
                                        \)
                                        r32 * 123/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    r4.
                                    r4
                                    r8
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
                                                    c'8
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
                                        a'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #12.5
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { I } \hspace #0.5 }
                                        \startTextSpan
                                        \(
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqs'''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqf'''32
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
                                        dqf''''32
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
                                                    c'8
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
                                        a'''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqs'''32
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
                                        b'''32
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
                                        aqf'''32
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
                                                    c'8
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
                                        dqf''''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''32
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
                                        cs''''32
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
                                        aqs'''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqf'''32
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
                                                    c'8
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
                                        dqf''''32
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
                                        a'''32
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
                                        cs''''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqs'''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''32
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
                                                    c'8
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
                                        aqf'''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        dqf''''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''32
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
                                        cs''''32
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
                                        aqs'''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <b, b>8
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +0
                                    ^ \markup +3
                                    <bf>4.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup -3
                                    % SPANNER_STARTS:
                                    \<
                                    ~
                                    <bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    r4
                                    r1
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/8
                                    r8
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
                                                    c'4.
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
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        ^ \<
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            b,
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            fs
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            g
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            d
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            a
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >32
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
                                                    c'4.
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            cs'
                                        >8.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        ^ \f
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <a, c>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \fff
                                    % MARKUP:
                                    ^ \markup +26
                                    ^ \markup -6
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    r4
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
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >8.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak Beam.transparent ##t
                                            \tweak Dots.transparent ##t
                                            \tweak Flag.transparent ##t
                                            \tweak Stem.transparent ##t
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >8
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
                                    r2.
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
                                    r8
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
                                                    c'1.
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
                                        \once \override Beam.grow-direction = #left
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <b d'>32 * 49/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        \f
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        \(
                                        <b d'>32 * 49/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 25/16
                                        <b d'>32 * 51/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 13/8
                                        <b d'>32 * 27/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 7/4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 59/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 63/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 67/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 71/32
                                        <b d'>32 * 77/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 83/32
                                        <b d'>32 * 89/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 3
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 103/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 55/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 115/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 15/4
                                        <b d'>32 * 61/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +17
                                        ^ \markup +23
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    r8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
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
                                                    c'\breve
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
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #left
                                        <af, c>32 * 51/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        \(
                                        <af, c>32 * 51/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 51/32
                                        <af, c>32 * 13/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 13/8
                                        <af, c>32 * 53/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 27/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 7/4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 57/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 59/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 61/32
                                        <af, c>32 * 63/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 33/16
                                        <af, c>32 * 17/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 71/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 75/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 79/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 83/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 87/32
                                        <af, c>32 * 91/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 3
                                        <af, c>32 * 101/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 53/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 111/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 115/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 119/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 123/32
                                        <af, c>32 * 125/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +32
                                        ^ \markup +8
                                        % SPANNER_STOPS:
                                        \)
                                        r32 * 4
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <b' f''>1.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fp
                                    % MARKUP:
                                    ^ \markup +3
                                    ^ \markup +4
                                    % SPANNER_STARTS:
                                    \<
                                    ~
                                    <b' f''>2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    <b' f''>1..
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <fs,>1.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +7
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <d'' a''>2.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +16
                                    ^ \markup -16
                                    % SPANNER_STARTS:
                                    ~
                                    <d'' a''>2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <d, a,>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \fff
                                    % MARKUP:
                                    ^ \markup +16
                                    ^ \markup -16
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <b' f''>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % MARKUP:
                                    ^ \markup +3
                                    ^ \markup +4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <bf, b,>2.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup +7
                                    ^ \markup -5
                                    % SPANNER_STARTS:
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <bf, b,>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
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
                                    \once \override Rest.transparent = ##t
                                    \set GrandStaff.shortInstrumentName = \markup { cb. }
                                    r1 * 9/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
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
                                    \clef "bass"
                                    <b,>2.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \upbow
                                    \fp
                                    % MARKUP:
                                    ^ \markup -2
                                    % SPANNER_STARTS:
                                    \<
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "NB" 1
                                    <b,>4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    <b,>8
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
                                                    c'8
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
                                        \once \override Beam.grow-direction = #left
                                        <b,>32 * 49/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \downbow
                                        - \staccato
                                        \ff
                                        % MARKUP:
                                        ^ \markup -2
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        <b,>32 * 25/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup -2
                                        r32 * 51/32
                                        <b,>32 * 53/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup -2
                                        r32 * 55/32
                                        <b,>32 * 59/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup -2
                                        <b,>32 * 63/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup -2
                                        r32 * 69/32
                                        r32 * 19/8
                                        <b,>32 * 83/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup -2
                                        <b,>32 * 23/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup -2
                                        <b,>32 * 101/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup -2
                                        r32 * 55/16
                                        <b,>32 * 59/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup -2
                                        % SPANNER_STOPS:
                                        \)
                                        r32 * 123/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    r8
                                    <b>4
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup -2
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <b>2.
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <cs''>2..
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fp
                                    % MARKUP:
                                    ^ \markup -5
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <g>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \fff
                                    % MARKUP:
                                    ^ \markup -25
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    r2
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
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #left
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <e' af'>32 * 51/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        \f
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        <e' af'>32 * 51/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        r32 * 27/16
                                        <e' af'>32 * 29/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        r32 * 65/32
                                        <e' af'>32 * 73/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 21/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 97/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 111/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 31/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        % SPANNER_STOPS:
                                        \)
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
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #left
                                        r32 * 51/32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <e' af'>32 * 51/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        % SPANNER_STARTS:
                                        \(
                                        r32 * 27/16
                                        <e' af'>32 * 29/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 65/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 73/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 21/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 97/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        r32 * 111/32
                                        <e' af'>32 * 31/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +15
                                        ^ \markup +32
                                        % SPANNER_STOPS:
                                        \)
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
                                    \times 16/17
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
                                        \tweak style #'harmonic-mixed
                                        bf64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \f
                                        % SPANNER_STARTS:
                                        \(
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        e64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        bf64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        fs64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        c64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        af64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        g64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        b,64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        g64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        b,64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        a64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        b,64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        a64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf,64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf,64
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    r2
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
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #left
                                        <b fs'>32 * 3/2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        \f
                                        % MARKUP:
                                        ^ \markup +7
                                        ^ \markup +8
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        \(
                                        <b fs'>32 * 3/2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 49/32
                                        <b fs'>32 * 25/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 13/8
                                        <b fs'>32 * 55/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +7
                                        ^ \markup +8
                                        <b fs'>32 * 29/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 63/32
                                        r32 * 17/8
                                        <b fs'>32 * 37/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +7
                                        ^ \markup +8
                                        <b fs'>32 * 5/2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +7
                                        ^ \markup +8
                                        <b fs'>32 * 11/4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 3
                                        <b fs'>32 * 13/4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 111/32
                                        <b fs'>32 * 117/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +7
                                        ^ \markup +8
                                        <b fs'>32 * 119/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +7
                                        ^ \markup +8
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    r2
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
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
                                                    c'\breve
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
                                    \times 1/1
                                    {
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #left
                                        <d'>32 * 51/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        \(
                                        <d'>32 * 51/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        r32 * 51/32
                                        <d'>32 * 13/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        r32 * 13/8
                                        <d'>32 * 53/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        <d'>32 * 27/16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        r32 * 7/4
                                        r32 * 57/32
                                        <d'>32 * 59/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        <d'>32 * 61/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        <d'>32 * 63/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        r32 * 33/16
                                        <d'>32 * 17/8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        r32 * 71/32
                                        <d'>32 * 75/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        <d'>32 * 79/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        r32 * 83/32
                                        r32 * 87/32
                                        <d'>32 * 91/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        <d'>32 * 3
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        <d'>32 * 101/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        r32 * 53/16
                                        <d'>32 * 111/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        r32 * 115/32
                                        <d'>32 * 119/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        <d'>32 * 123/32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \staccato
                                        % MARKUP:
                                        ^ \markup +23
                                        % SPANNER_STOPS:
                                        \)
                                        r32 * 125/32
                                        r32 * 4
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <b'>1.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fp
                                    % MARKUP:
                                    ^ \markup +0
                                    % SPANNER_STARTS:
                                    \<
                                    ~
                                    <b'>2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    <b'>1..
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <fs>1.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup +8
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <bf'>2.
                                    % AFTER:
                                    % MARKUP:
                                    ^ \markup -3
                                    % SPANNER_STARTS:
                                    ~
                                    <bf'>2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <g>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \fff
                                    % MARKUP:
                                    ^ \markup -25
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <b'>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % MARKUP:
                                    ^ \markup +0
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <f, a,>2.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \p
                                    % MARKUP:
                                    ^ \markup +14
                                    ^ \markup +4
                                    % SPANNER_STARTS:
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <f, a,>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
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
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set GrandStaff.shortInstrumentName = \markup { pno. }
                                    r1 * 9/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <g,, b,, ef,>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \mp
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    <af, bf, cs>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \mp
                                    % SPANNER_STARTS:
                                    ~
                                    <af, bf, cs>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <cs''' af''' bf''' cs''''>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \mp
                                    % SPANNER_STARTS:
                                    \>
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    <e fs a c'>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % COMMANDS:
                                    \ottava 0
                                    <a' g'' af'' a''>2..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \ppp
                                    % SPANNER_STARTS:
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    <a' g'' af'' a''>4
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
                                    \times 8/9
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 1
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % SPANNER_STARTS:
                                        \(
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
                                        af''''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e''''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs''''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g''''32
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
                                        a'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c''''32
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <a, c>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \p
                                    % SPANNER_STARTS:
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <b'' fs'''>4.
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
                                                    c'4.
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
                                        % COMMANDS:
                                        \ottava 1
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        ef'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \f
                                        % SPANNER_STARTS:
                                        \(
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
                                        af'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d'''32
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
                                        cs'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c'''32
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
                                        b''32
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
                                        f'''32
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c'''32
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
                                    r1
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    <d''' e''' af''' c''''>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \p
                                    % SPANNER_STARTS:
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <d''' e''' af''' c''''>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \f
                                    % COMMANDS:
                                    \ottava 0
                                    <af' fs'' g'' af''>2..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \fp
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    <a'' e''' fs''' a''' c''''>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \pp
                                    % SPANNER_STARTS:
                                    \(
                                    <a'' g''' af''' a'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STOPS:
                                    \)
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <af,, bf,, cs,>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \fp
                                    % SPANNER_STARTS:
                                    \<
                                    ~
                                    <af,, bf,, cs,>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <a'' e''' fs''' a''' c''''>1.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    ~
                                    <a'' e''' fs''' a''' c''''>1..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 10:9
                                    % OPEN_BRACKETS:
                                    \times 36/40
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 1
                                        ef'''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        e'''16
                                        af'''16
                                        d'''16
                                        g'''16
                                        cs'''16
                                        c'''16
                                        f'''16
                                        fs'''16
                                        b''16
                                        fs'''16
                                        f'''16
                                        c'''16
                                        cs'''16
                                        g'''16
                                        d'''16
                                        cs''''16
                                        bf'''16
                                        af''''16
                                        e''''16
                                        fs''''16
                                        g''''16
                                        b'''16
                                        a'''16
                                        c''''16
                                        f''''16
                                        d''''16
                                        a''''16
                                        af'''16
                                        d'''16
                                        g'''16
                                        e'''16
                                        cs'''16
                                        f''16
                                        c''16
                                        e''16
                                        bf''16
                                        fs''16
                                        cs''16
                                        g''16
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
                                    <f'' a'' cs''' fs''' a'''>1.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \fp
                                    % SPANNER_STARTS:
                                    \<
                                    ~
                                    <f'' a'' cs''' fs''' a'''>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    ~
                                    <f'' a'' cs''' fs''' a'''>1..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <b,, fs,>1.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <af''' bf''' cs''''>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    ~
                                    <af''' bf''' cs''''>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <af,, bf,, cs,>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fff
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <af''' cs'''' e''''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <bf,, f,>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \p
                                    % SPANNER_STARTS:
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <bf,, f,>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
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
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <a,,, f,,>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    <a,, cs,>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    ~
                                    <a,, cs,>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <cs' d'' a''>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <d,, c, a,>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % COMMANDS:
                                    \ottava 0
                                    <d cs'>2..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \ppp
                                    % SPANNER_STARTS:
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    <d cs'>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    ~
                                    <d cs'>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \!
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    <fs, af,>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <bf'>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <ef,, f,, af,,>2..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \p
                                    % SPANNER_STARTS:
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    <ef,, f,, af,,>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    ~
                                    <ef,, f,, af,,>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \!
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <af' b''>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    ~
                                    <af' b''>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <cs a>2..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \once \override Score.BarLine.transparent = ##f
                                    \stopStaff \startStaff
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <d' c''>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    \(
                                    <d' cs''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STOPS:
                                    \)
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <c,, e,,>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    ~
                                    <c,, e,,>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <d' c''>1.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    ~
                                    <d' c''>1..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <b,,, cs,, f,, a,,>1.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    ~
                                    <b,,, cs,, f,, a,,>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % COMMANDS:
                                    \ottava 0
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <b b'>1.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    ~
                                    <b b'>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % SPANNER_STARTS:
                                    ~
                                    <b b'>1..
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <ef,, bf,,>1.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <a'' cs'''>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    ~
                                    <a'' cs'''>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <a,,, cs,,>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <g'' b''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <d,, a,,>2.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % SPANNER_STARTS:
                                    ~
                                    <d,, a,,>2
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % COMMANDS:
                                    \ottava 0
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

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
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #3
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-1.3 \abs-fontsize #8.5 { Rit. poco a poco } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            \startTextSpan
            % COMMANDS:
            \tweak padding 5.5 \boxed-markup "One of These Days {dry land}" 1.5
            % OPENING:
            % COMMANDS:
            \time 9/4
            s1 * 9/4
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % OPENING:
            % COMMANDS:
            \time 6/8
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
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
            \time 5/4
            s1 * 5/4
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \pageBreak
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % BEFORE:
            % COMMANDS:
            \tempo 4=47
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
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
            % AFTER:
            % MARKUP:
            - \markup \halign #-0.1 \fontsize #6.5 { "37\"" }
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \set PianoStaff.shortInstrumentName = \markup { vc. }
                                    s1 * 5/4
                                    s1 * 9/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    s1 * 5/4
                                    s1 * 9/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 10/11
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set PianoStaff.shortInstrumentName = \markup { cb. }
                                        <g bf>8
                                        % AFTER:
                                        % MARKUP:
                                        _ \markup \bold \italic { as loud as possible }
                                        _ \markup \italic { Con Fuoco, Con Licenza }
                                        % START_BEAM:
                                        [
                                        % COMMANDS:
                                        \boxed-markup "Full bows as possible" 1
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 13:9
                                    % OPEN_BRACKETS:
                                    \times 18/26
                                    {
                                        <g bf>8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
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
                                    \override TupletNumber.text = \markup \italic 5:3
                                    % OPEN_BRACKETS:
                                    \times 6/10
                                    {
                                        <g bf>8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        <g bf>2
                                        <g bf>2
                                    % CLOSE_BRACKETS:
                                    }
                                    <g bf>4.
                                    <g bf>4.
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
                                        <g bf>32 * 51/32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <g bf>32 * 51/32
                                        <g bf>32 * 27/16
                                        <g bf>32 * 29/16
                                        <g bf>32 * 65/32
                                        <g bf>32 * 73/32
                                        <g bf>32 * 21/8
                                        <g bf>32 * 97/32
                                        <g bf>32 * 111/32
                                        <g bf>32 * 31/8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <g bf>16
                                    <g bf>4..
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <g bf>16
                                        <g bf>4.
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/6
                                    {
                                        <g bf>32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <g bf>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                        <g bf>32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        <g bf>16
                                        <g bf>4
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        <g bf>16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <g bf>16
                                        <g bf>8.
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <g bf>8.
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <g bf>16
                                        <g bf>16
                                        <g bf>16
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/8
                                    {
                                        <g bf>4.
                                        <g bf>16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <g bf>16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
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
                                        % BEFORE:
                                        % GROB_OVERRIDES:
                                        \once \override Beam.grow-direction = #left
                                        <g bf>32 * 5/4
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <g bf>32 * 43/32
                                        r32 * 51/32
                                        <g bf>32 * 65/32
                                        r32 * 85/32
                                        <g bf>32 * 25/8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    r2.
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
                                                    c'2
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
                                        <g bf>32 * 3/2
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <g bf>32 * 25/16
                                        r32 * 7/4
                                        <g bf>32 * 65/32
                                        r32 * 79/32
                                        <g bf>32 * 49/16
                                        <g bf>32 * 29/8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    r2
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
                                                    c'2
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
                                        <g bf>32 * 45/32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <g bf>32 * 23/16
                                        r32 * 25/16
                                        <g bf>32 * 55/32
                                        r32 * 2
                                        <g bf>32 * 75/32
                                        <g bf>32 * 89/32
                                        <g bf>32 * 103/32
                                        <g bf>32 * 113/32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    r4
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        <g bf>16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <g bf>16
                                        <g bf>8.
                                        <g bf>16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <g bf>16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <g bf>8.
                                        <g bf>16
                                        <g bf>8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 13:10 }
                                    % OPEN_BRACKETS:
                                    \times 30/39
                                    {
                                        <g bf>16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        <g bf>16
                                        <g bf>16
                                        <g bf>16
                                        <g bf>16
                                        <g bf>16
                                        <g bf>16
                                        <g bf>16
                                        <g bf>16
                                        <g bf>16
                                        <g bf>16
                                        <g bf>16
                                        <g bf>16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    s1 * 5/8
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \once \override Beam.transparent = ##t
                                    \once \override Dots.transparent = ##t
                                    \once \override Flag.transparent = ##t
                                    \once \override Stem.transparent = ##t
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    e,4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    % COMMANDS:
                                    \boxed-markup "Detune IV" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    s1
                                    s1.
                                    s2.
                                    s2.
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \once \override Beam.transparent = ##t
                                    \once \override Dots.transparent = ##t
                                    \once \override Flag.transparent = ##t
                                    \once \override Stem.transparent = ##t
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    b,,4
                                    s1
                                    s2.
                                    c'!2.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { III } \hspace #0.5 }
                                    \startTextSpan
                                    \glissando
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "Pull" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    c'!4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'!8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    cs'!16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \snappizzicato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'!8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \glissando
                                    % COMMANDS:
                                    \boxed-markup "Pull" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    cqs'!16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \snappizzicato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'!16.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \glissando
                                    % COMMANDS:
                                    \boxed-markup "Pull" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \one-eighth-sharp-markup
                                    c'!32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \snappizzicato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'!8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "Pull" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'!8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    cqs'!16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \snappizzicato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'!8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \glissando
                                    % COMMANDS:
                                    \boxed-markup "Pull" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \one-eighth-sharp-markup
                                    c'!16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \snappizzicato
                                    % STOP_BEAM:
                                    ]
                                    c'!4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "Pull" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'!8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    cs'!16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \snappizzicato
                                    % STOP_BEAM:
                                    ]
                                    c'!4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "Pull" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'!16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    cqs'!16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \snappizzicato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c'!8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "Pull" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'!8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \one-eighth-sharp-markup
                                    c'!16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \snappizzicato
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    <d e>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "Arco" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d e>8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    <dqf d>8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    <dqf d>4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    c'!4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { III } \hspace #0.5 }
                                    \startTextSpan
                                    \glissando
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "Pull" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'!8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \one-eighth-sharp-markup
                                    c'!16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \snappizzicato
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 4:5 }
                                    % OPEN_BRACKETS:
                                    \times 15/12
                                    {
                                        <d fqs>4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % COMMANDS:
                                        \boxed-markup "Arco" 1
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <d ef>4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    c'!8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    ^ \>
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { III } \hspace #0.5 }
                                    \startTextSpan
                                    \glissando
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "Pull" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    c'!4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'!8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    cs'!16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \snappizzicato
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d e>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    % COMMANDS:
                                    \boxed-markup "Arco" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    <dqf d>8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'!8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak padding #12.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { III } \hspace #0.5 }
                                    \startTextSpan
                                    \glissando
                                    % COMMANDS:
                                    \boxed-markup "Pull" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    cqs'!16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \snappizzicato
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'!8.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \glissando
                                    % COMMANDS:
                                    \boxed-markup "Pull" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \one-eighth-sharp-markup
                                    c'!16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \snappizzicato
                                    % STOP_BEAM:
                                    ]
                                    c'!2
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    ~
                                    % COMMANDS:
                                    \boxed-markup "Pull" 1
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'!16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    cqs'!16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \snappizzicato
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 4:5 }
                                    % OPEN_BRACKETS:
                                    \times 15/12
                                    {
                                        <g a>4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % COMMANDS:
                                        \boxed-markup "Arco" 1
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <gqf g>4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <d fqs>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d fqs>8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    <d ef>8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    <d ef>4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 4:5 }
                                    % OPEN_BRACKETS:
                                    \times 15/12
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        <g bqf>2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        (
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <g af>2
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <g a>4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g a>8
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    <gqf g>8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    <gqf g>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    % COMMANDS:
                                    \set PianoStaff.shortInstrumentName = \markup { pno. }
                                    s1 * 5/4
                                    s1 * 9/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \stopStaff \startStaff
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
                                    s1 * 5/4
                                    s1 * 9/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override MultiMeasureRest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    R1 * 1/4
                                    % AFTER:
                                    % MARKUP:
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    % COMMANDS:
                                    \stopStaff \startStaff
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

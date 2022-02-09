    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 4=47
            \time 9/4
            s1 * 9/4
            \boxed-markup "Matter, to Self-Organize" 1.5
            \time 1/4
            s1 * 1/4
            \once \override Score.TimeSignature.transparent = ##t
            \once \override MultiMeasureRest.transparent = ##t
            \time 1/4
            s1 * 1/8
            \once \override Rest.transparent = ##t
            r1 * 1/8
            \tempo 8=138
            \time 1/8
            s1 * 1/8
            \time 3/8
            s1 * 3/8
            \once \override Score.TimeSignature.transparent = ##t
            \once \override MultiMeasureRest.transparent = ##t
            \time 1/4
            s1 * 1/8
            \once \override Rest.transparent = ##t
            r1 * 1/8
            \time 1/8
            s1 * 1/8
            \pageBreak
            \time 3/8
            s1 * 3/8
            \time 11/8
            s1 * 11/8
            \once \override Score.TimeSignature.transparent = ##t
            \once \override MultiMeasureRest.transparent = ##t
            \time 1/4
            s1 * 1/8
            \once \override Rest.transparent = ##t
            r1 * 1/8
            \time 1/8
            s1 * 1/8
            \time 3/8
            s1 * 3/8
            \time 11/8
            s1 * 11/8
            \time 9/8
            s1 * 9/8
            \time 7/8
            s1 * 7/8
            \once \override Score.TimeSignature.transparent = ##t
            \once \override MultiMeasureRest.transparent = ##t
            \time 1/4
            s1 * 1/8
            \once \override Rest.transparent = ##t
            r1 * 1/8
            \time 1/8
            s1 * 1/8
            \time 5/8
            s1 * 5/8
            \time 1/8
            s1 * 1/8
            \tempo 4=47
            \time 5/4
            s1 * 5/4
            \time 6/4
            s1 * 3/2
            \time 7/4
            s1 * 7/4
            \tempo 4=105
            \time 9/4
            s1 * 9/4
            \tempo 4=130
            \time 9/4
            s1 * 9/4
            \time 7/4
            s1 * 7/4
            \time 6/4
            s1 * 3/2
            \time 5/4
            s1 * 5/4
            \time 2/4
            s1 * 1/2
            \pageBreak
            \tempo 4=60
            \time 5/4
            s1 * 5/4
            \bar "||"
        }
        \tag #'group1
        {
            \context ChoirStaff = "Staff Group"
            <<
                \tag #'group2
                {
                    \context PianoStaff = "sub group 1"
                    <<
                        \tag #'voice1
                        {
                            \context Staff = "cello 1 staff"
                            {
                                \context Voice = "cello 1 voice"
                                {
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { vc. }
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/4
                                    ^ \markup 0
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    ^ \markup 1
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 3
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    ^ \markup 4
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 6
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    ^ \markup 7
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    ^ \markup 8
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 10
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    ^ \markup 11
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    ^ \markup 12
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/8
                                    ^ \markup 13
                                    r8
                                    ^ \markup 14
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32.
                                        ^ \markup 15
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32.
                                        ^ \markup 16
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'32.
                                        ^ \markup 17
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'32.
                                        ^ \markup 18
                                        \)
                                    }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 20
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/8
                                    ^ \markup 21
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 23
                                    r4
                                    ^ \markup 24
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g32
                                        \mf
                                        ^ \markup 25
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        ^ \markup 26
                                        \)
                                    }
                                    r1 * 3/4
                                    ^ \markup 27
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
                                    ^ \markup 28
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/4
                                    ^ \markup 29
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/4
                                    ^ \markup 30
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/4
                                    ^ \markup 31
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/4
                                    ^ \markup 32
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
                                    ^ \markup 33
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    ^ \markup 34
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/2
                                    ^ \markup 35
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    ^ \markup 36
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    \clef "bass"
                                    <c' ef'>2.
                                    \fp
                                    - \upbow
                                    ^ \markup 0
                                    ^ \markup -14
                                    ^ \markup +0
                                    \<
                                    ~
                                    <c' ef'>4
                                    ^ \markup 1
                                    ^ \markup -14
                                    ^ \markup +0
                                    ~
                                    <c' ef'>8
                                    ^ \markup 2
                                    ^ \markup -14
                                    ^ \markup +0
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
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        <c' ef'>32 * 49/32
                                        \ff
                                        - \staccato
                                        - \downbow
                                        ^ \markup 3
                                        ^ \markup -14
                                        ^ \markup +0
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        <c' ef'>32 * 25/16
                                        - \staccato
                                        ^ \markup 4
                                        ^ \markup -14
                                        ^ \markup +0
                                        r32 * 51/32
                                        ^ \markup 5
                                        <c' ef'>32 * 53/32
                                        - \staccato
                                        ^ \markup 6
                                        ^ \markup -14
                                        ^ \markup +0
                                        r32 * 55/32
                                        ^ \markup 7
                                        <c' ef'>32 * 59/32
                                        - \staccato
                                        ^ \markup 8
                                        ^ \markup -14
                                        ^ \markup +0
                                        <c' ef'>32 * 63/32
                                        - \staccato
                                        ^ \markup 9
                                        ^ \markup -14
                                        ^ \markup +0
                                        r32 * 69/32
                                        ^ \markup 10
                                        r32 * 19/8
                                        ^ \markup 11
                                        <c' ef'>32 * 83/32
                                        - \staccato
                                        ^ \markup 12
                                        ^ \markup -14
                                        ^ \markup +0
                                        <c' ef'>32 * 23/8
                                        - \staccato
                                        ^ \markup 13
                                        ^ \markup -14
                                        ^ \markup +0
                                        <c' ef'>32 * 101/32
                                        - \staccato
                                        ^ \markup 14
                                        ^ \markup -14
                                        ^ \markup +0
                                        r32 * 55/16
                                        ^ \markup 15
                                        <c' ef'>32 * 59/16
                                        - \staccato
                                        ^ \markup 16
                                        ^ \markup -14
                                        ^ \markup +0
                                        \)
                                        r32 * 123/32
                                        \!
                                        ^ \markup 17
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    ^ \markup 18
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 20
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    ^ \markup 21
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 23
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    ^ \markup 24
                                    r4.
                                    ^ \markup 25
                                    r4
                                    ^ \markup 26
                                    r8
                                    ^ \markup 27
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
                                    \times 2/3
                                    {
                                        \set suggestAccidentals = ##t
                                        \ottava 1
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \clef "treble"
                                        a'''32
                                        - \accent
                                        ^ \markup 28
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        \(
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { I } \hspace #0.5 }
                                        - \tweak padding 12.5
                                        \startTextSpan
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''32
                                        ^ \markup 29
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqs'''32
                                        ^ \markup 30
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''32
                                        ^ \markup 31
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqf'''32
                                        ^ \markup 32
                                        \)
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        dqf''''32
                                        - \accent
                                        ^ \markup 33
                                        \glissando
                                        \(
                                    }
                                    \revert TupletNumber.text
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
                                    \times 4/5
                                    {
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''32
                                        ^ \markup 34
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''32
                                        ^ \markup 35
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqs'''32
                                        ^ \markup 36
                                        \)
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''32
                                        - \accent
                                        ^ \markup 37
                                        \glissando
                                        \(
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqf'''32
                                        ^ \markup 38
                                        \glissando
                                    }
                                    \revert TupletNumber.text
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
                                    \times 2/3
                                    {
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        dqf''''32
                                        ^ \markup 39
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''32
                                        ^ \markup 40
                                        \)
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''32
                                        - \accent
                                        ^ \markup 41
                                        \glissando
                                        \(
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqs'''32
                                        ^ \markup 42
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''32
                                        ^ \markup 43
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqf'''32
                                        ^ \markup 44
                                        \glissando
                                    }
                                    \revert TupletNumber.text
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
                                    \times 4/5
                                    {
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        dqf''''32
                                        ^ \markup 45
                                        \)
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''32
                                        - \accent
                                        ^ \markup 46
                                        \glissando
                                        \(
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''32
                                        ^ \markup 47
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqs'''32
                                        ^ \markup 48
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''32
                                        ^ \markup 49
                                        \glissando
                                    }
                                    \revert TupletNumber.text
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
                                    \times 2/3
                                    {
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqf'''32
                                        ^ \markup 50
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        dqf''''32
                                        ^ \markup 51
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''32
                                        ^ \markup 52
                                        \)
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''32
                                        - \accent
                                        ^ \markup 53
                                        \glissando
                                        \(
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        aqs'''32
                                        ^ \markup 54
                                        \glissando
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''32
                                        \p
                                        ^ \markup 55
                                        \)
                                        \stopTextSpan
                                        \ottava 0
                                        \set suggestAccidentals = ##f
                                    }
                                    \revert TupletNumber.text
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \clef "bass"
                                    <b, b>8
                                    ^ \markup 57
                                    ^ \markup +0
                                    ^ \markup +3
                                    <bf>4.
                                    \p
                                    ^ \markup 58
                                    ^ \markup -3
                                    \<
                                    ~
                                    <bf>8
                                    \f
                                    ^ \markup 59
                                    r4
                                    ^ \markup 60
                                    r1
                                    ^ \markup 61
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/8
                                    ^ \markup 62
                                    r8
                                    ^ \markup 64
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
                                    \times 12/13
                                    {
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
                                        ^ \markup 65
                                        - \tweak circled-tip ##t
                                        ^ \<
                                        [
                                        \(
                                        \glissando
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
                                        ^ \markup 66
                                        \glissando
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
                                        ^ \markup 67
                                        \glissando
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
                                        ^ \markup 68
                                        \glissando
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
                                        ^ \markup 69
                                        \glissando
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
                                        ^ \markup 70
                                        \glissando
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
                                        ^ \markup 71
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
                                        ^ \markup 72
                                        \glissando
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
                                        ^ \markup 73
                                        \glissando
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
                                        ^ \markup 74
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
                                        ^ \markup 75
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
                                        ^ \markup 76
                                        \glissando
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
                                        ^ \markup 77
                                        \)
                                        ]
                                        \set suggestAccidentals = ##f
                                    }
                                    \revert TupletNumber.text
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
                                    \times 1/1
                                    {
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
                                        ^ \markup 78
                                        [
                                        \(
                                        \glissando
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
                                        ^ \markup 79
                                        \glissando
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
                                        ^ \markup 80
                                        \glissando
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
                                        ^ \f
                                        ^ \markup 81
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \clef "bass"
                                    <a, c>8
                                    \fff
                                    - \marcato
                                    ^ \markup 83
                                    ^ \markup +26
                                    ^ \markup -6
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/8
                                    ^ \markup 84
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 86
                                    r4
                                    ^ \markup 87
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
                                        ^ \markup 88
                                        [
                                        \(
                                        \glissando
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
                                        ^ \markup 89
                                        \glissando
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
                                        ^ \markup 90
                                        \glissando
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
                                        ^ \markup 91
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r2.
                                    ^ \markup 92
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
                                    ^ \markup 93
                                    r8
                                    ^ \markup 94
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
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        \clef "bass"
                                        <b d'>32 * 49/32
                                        \f
                                        - \staccato
                                        ^ \markup 95
                                        ^ \markup +17
                                        ^ \markup +23
                                        - \tweak circled-tip ##t
                                        \>
                                        [
                                        \(
                                        <b d'>32 * 49/32
                                        - \staccato
                                        ^ \markup 96
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 25/16
                                        ^ \markup 97
                                        <b d'>32 * 51/32
                                        - \staccato
                                        ^ \markup 98
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 13/8
                                        ^ \markup 99
                                        <b d'>32 * 27/16
                                        - \staccato
                                        ^ \markup 100
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 7/4
                                        - \staccato
                                        ^ \markup 101
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 59/32
                                        - \staccato
                                        ^ \markup 102
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 63/32
                                        - \staccato
                                        ^ \markup 103
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 67/32
                                        - \staccato
                                        ^ \markup 104
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 71/32
                                        ^ \markup 105
                                        <b d'>32 * 77/32
                                        - \staccato
                                        ^ \markup 106
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 83/32
                                        ^ \markup 107
                                        <b d'>32 * 89/32
                                        - \staccato
                                        ^ \markup 108
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 3
                                        - \staccato
                                        ^ \markup 109
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 103/32
                                        - \staccato
                                        ^ \markup 110
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 55/16
                                        - \staccato
                                        ^ \markup 111
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 115/32
                                        - \staccato
                                        ^ \markup 112
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 15/4
                                        ^ \markup 113
                                        <b d'>32 * 61/16
                                        - \staccato
                                        ^ \markup 114
                                        ^ \markup +17
                                        ^ \markup +23
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r8
                                    \!
                                    ^ \markup 115
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
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        <af, c>32 * 51/32
                                        - \staccato
                                        ^ \markup 116
                                        ^ \markup +32
                                        ^ \markup +8
                                        - \tweak circled-tip ##t
                                        \<
                                        [
                                        \(
                                        <af, c>32 * 51/32
                                        - \staccato
                                        ^ \markup 117
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 51/32
                                        ^ \markup 118
                                        <af, c>32 * 13/8
                                        - \staccato
                                        ^ \markup 119
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 13/8
                                        ^ \markup 120
                                        <af, c>32 * 53/32
                                        - \staccato
                                        ^ \markup 121
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 27/16
                                        - \staccato
                                        ^ \markup 122
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 7/4
                                        - \staccato
                                        ^ \markup 123
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 57/32
                                        - \staccato
                                        ^ \markup 124
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 59/32
                                        - \staccato
                                        ^ \markup 125
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 61/32
                                        ^ \markup 126
                                        <af, c>32 * 63/32
                                        - \staccato
                                        ^ \markup 127
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 33/16
                                        ^ \markup 128
                                        <af, c>32 * 17/8
                                        - \staccato
                                        ^ \markup 129
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 71/32
                                        - \staccato
                                        ^ \markup 130
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 75/32
                                        - \staccato
                                        ^ \markup 131
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 79/32
                                        - \staccato
                                        ^ \markup 132
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 83/32
                                        - \staccato
                                        ^ \markup 133
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 87/32
                                        ^ \markup 134
                                        <af, c>32 * 91/32
                                        - \staccato
                                        ^ \markup 135
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 3
                                        ^ \markup 136
                                        <af, c>32 * 101/32
                                        - \staccato
                                        ^ \markup 137
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 53/16
                                        - \staccato
                                        ^ \markup 138
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 111/32
                                        - \staccato
                                        ^ \markup 139
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 115/32
                                        - \staccato
                                        ^ \markup 140
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 119/32
                                        - \staccato
                                        ^ \markup 141
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 123/32
                                        ^ \markup 142
                                        <af, c>32 * 125/32
                                        - \staccato
                                        ^ \markup 143
                                        ^ \markup +32
                                        ^ \markup +8
                                        \)
                                        r32 * 4
                                        ^ \markup 144
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \clef "treble"
                                    <b' f''>1.
                                    \fp
                                    ^ \markup 145
                                    ^ \markup +3
                                    ^ \markup +4
                                    \<
                                    ~
                                    <b' f''>2.
                                    ^ \markup 146
                                    ~
                                    <b' f''>1..
                                    ^ \markup 147
                                    \clef "bass"
                                    <fs,>1.
                                    ^ \markup 148
                                    ^ \markup +7
                                    \clef "treble"
                                    <d'' a''>2.
                                    ^ \markup 149
                                    ^ \markup -16
                                    ^ \markup +16
                                    ~
                                    <d'' a''>2
                                    ^ \markup 150
                                    \clef "bass"
                                    <d, a,>4
                                    \fff
                                    - \marcato
                                    ^ \markup 151
                                    ^ \markup -16
                                    ^ \markup +16
                                    \clef "treble"
                                    <b' f''>4
                                    - \marcato
                                    ^ \markup 152
                                    ^ \markup +3
                                    ^ \markup +4
                                    \clef "bass"
                                    <bf, b,>2.
                                    \p
                                    ^ \markup 153
                                    ^ \markup -5
                                    ^ \markup +7
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <bf, b,>2
                                    :32
                                    ^ \markup 154
                                }
                            }
                        }
                    >>
                }
                \tag #'group3
                {
                    \context PianoStaff = "sub group 2"
                    <<
                        \tag #'voice3
                        {
                            \context Staff = "contrabass 1 staff"
                            {
                                \context Voice = "contrabass 1 voice"
                                {
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { cb. }
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/4
                                    ^ \markup 0
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    ^ \markup 1
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 3
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    ^ \markup 4
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 6
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    ^ \markup 7
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    ^ \markup 8
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 10
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    ^ \markup 11
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    ^ \markup 12
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/8
                                    ^ \markup 13
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/8
                                    ^ \markup 14
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 16
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/8
                                    ^ \markup 17
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 18
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    ^ \markup 19
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
                                    ^ \markup 20
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/4
                                    ^ \markup 21
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/4
                                    ^ \markup 22
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/4
                                    ^ \markup 23
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/4
                                    ^ \markup 24
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
                                    ^ \markup 25
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    ^ \markup 26
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/2
                                    ^ \markup 27
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    ^ \markup 28
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "contrabass 2 staff"
                            {
                                \context Voice = "contrabass 2 voice"
                                {
                                    \clef "bass"
                                    <b,>2.
                                    \fp
                                    - \upbow
                                    ^ \markup 0
                                    ^ \markup -2
                                    \<
                                    ~
                                    \boxed-markup "NB" 1
                                    <b,>4
                                    ^ \markup 1
                                    ~
                                    <b,>8
                                    ^ \markup 2
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
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        <b,>32 * 49/32
                                        \ff
                                        - \staccato
                                        - \downbow
                                        ^ \markup 3
                                        ^ \markup -2
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        <b,>32 * 25/16
                                        - \staccato
                                        ^ \markup 4
                                        ^ \markup -2
                                        r32 * 51/32
                                        ^ \markup 5
                                        <b,>32 * 53/32
                                        - \staccato
                                        ^ \markup 6
                                        ^ \markup -2
                                        r32 * 55/32
                                        ^ \markup 7
                                        <b,>32 * 59/32
                                        - \staccato
                                        ^ \markup 8
                                        ^ \markup -2
                                        <b,>32 * 63/32
                                        - \staccato
                                        ^ \markup 9
                                        ^ \markup -2
                                        r32 * 69/32
                                        ^ \markup 10
                                        r32 * 19/8
                                        ^ \markup 11
                                        <b,>32 * 83/32
                                        - \staccato
                                        ^ \markup 12
                                        ^ \markup -2
                                        <b,>32 * 23/8
                                        - \staccato
                                        ^ \markup 13
                                        ^ \markup -2
                                        <b,>32 * 101/32
                                        - \staccato
                                        ^ \markup 14
                                        ^ \markup -2
                                        r32 * 55/16
                                        ^ \markup 15
                                        <b,>32 * 59/16
                                        - \staccato
                                        ^ \markup 16
                                        ^ \markup -2
                                        \)
                                        r32 * 123/32
                                        \!
                                        ^ \markup 17
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    ^ \markup 18
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 20
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    ^ \markup 21
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 23
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    ^ \markup 24
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    ^ \markup 25
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 29
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    ^ \markup 30
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    ^ \markup 31
                                    r8
                                    ^ \markup 34
                                    <b>4
                                    ^ \markup 35
                                    ^ \markup -2
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <b>2.
                                    ^ \markup 36
                                    \clef "treble"
                                    <cs''>2..
                                    \fp
                                    ^ \markup 37
                                    ^ \markup -5
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \clef "bass"
                                    <g>8
                                    \fff
                                    - \marcato
                                    ^ \markup 39
                                    ^ \markup -25
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/8
                                    ^ \markup 40
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 42
                                    r2
                                    ^ \markup 43
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
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        \clef "treble"
                                        <e' af'>32 * 51/32
                                        \f
                                        - \staccato
                                        ^ \markup 44
                                        ^ \markup +15
                                        ^ \markup +32
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        <e' af'>32 * 51/32
                                        - \staccato
                                        ^ \markup 45
                                        ^ \markup +15
                                        ^ \markup +32
                                        r32 * 27/16
                                        ^ \markup 46
                                        <e' af'>32 * 29/16
                                        - \staccato
                                        ^ \markup 47
                                        ^ \markup +15
                                        ^ \markup +32
                                        r32 * 65/32
                                        ^ \markup 48
                                        <e' af'>32 * 73/32
                                        - \staccato
                                        ^ \markup 49
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 21/8
                                        - \staccato
                                        ^ \markup 50
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 97/32
                                        - \staccato
                                        ^ \markup 51
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 111/32
                                        - \staccato
                                        ^ \markup 52
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 31/8
                                        - \staccato
                                        ^ \markup 53
                                        ^ \markup +15
                                        ^ \markup +32
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
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
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        r32 * 51/32
                                        ^ \markup 54
                                        [
                                        <e' af'>32 * 51/32
                                        - \staccato
                                        ^ \markup 55
                                        ^ \markup +15
                                        ^ \markup +32
                                        \(
                                        r32 * 27/16
                                        ^ \markup 56
                                        <e' af'>32 * 29/16
                                        - \staccato
                                        ^ \markup 57
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 65/32
                                        - \staccato
                                        ^ \markup 58
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 73/32
                                        - \staccato
                                        ^ \markup 59
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 21/8
                                        - \staccato
                                        ^ \markup 60
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 97/32
                                        - \staccato
                                        ^ \markup 61
                                        ^ \markup +15
                                        ^ \markup +32
                                        r32 * 111/32
                                        ^ \markup 62
                                        <e' af'>32 * 31/8
                                        - \staccato
                                        ^ \markup 63
                                        ^ \markup +15
                                        ^ \markup +32
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
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
                                    \times 16/17
                                    {
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \clef "bass"
                                        \tweak style #'harmonic-mixed
                                        bf64
                                        \f
                                        ^ \markup 64
                                        \(
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        e64
                                        ^ \markup 65
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        bf64
                                        ^ \markup 66
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        fs64
                                        ^ \markup 67
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        c64
                                        ^ \markup 68
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'harmonic-mixed
                                        af64
                                        ^ \markup 69
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        g64
                                        ^ \markup 70
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        b,64
                                        ^ \markup 71
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        g64
                                        ^ \markup 72
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        b,64
                                        ^ \markup 73
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        a64
                                        ^ \markup 74
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        b,64
                                        ^ \markup 75
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        \tweak style #'triangle
                                        a64
                                        ^ \markup 76
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf,64
                                        ^ \markup 77
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a64
                                        ^ \markup 78
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf,64
                                        ^ \markup 79
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a64
                                        ^ \markup 80
                                        \)
                                    }
                                    \revert TupletNumber.text
                                    r2
                                    ^ \markup 81
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
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        <b fs'>32 * 3/2
                                        \f
                                        - \staccato
                                        ^ \markup 82
                                        ^ \markup +7
                                        ^ \markup +8
                                        - \tweak circled-tip ##t
                                        \>
                                        [
                                        \(
                                        <b fs'>32 * 3/2
                                        - \staccato
                                        ^ \markup 83
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 49/32
                                        ^ \markup 84
                                        <b fs'>32 * 25/16
                                        - \staccato
                                        ^ \markup 85
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 13/8
                                        ^ \markup 86
                                        <b fs'>32 * 55/32
                                        - \staccato
                                        ^ \markup 87
                                        ^ \markup +7
                                        ^ \markup +8
                                        <b fs'>32 * 29/16
                                        - \staccato
                                        ^ \markup 88
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 63/32
                                        ^ \markup 89
                                        r32 * 17/8
                                        ^ \markup 90
                                        <b fs'>32 * 37/16
                                        - \staccato
                                        ^ \markup 91
                                        ^ \markup +7
                                        ^ \markup +8
                                        <b fs'>32 * 5/2
                                        - \staccato
                                        ^ \markup 92
                                        ^ \markup +7
                                        ^ \markup +8
                                        <b fs'>32 * 11/4
                                        - \staccato
                                        ^ \markup 93
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 3
                                        ^ \markup 94
                                        <b fs'>32 * 13/4
                                        - \staccato
                                        ^ \markup 95
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 111/32
                                        ^ \markup 96
                                        <b fs'>32 * 117/32
                                        - \staccato
                                        ^ \markup 97
                                        ^ \markup +7
                                        ^ \markup +8
                                        <b fs'>32 * 119/32
                                        - \staccato
                                        ^ \markup 98
                                        ^ \markup +7
                                        ^ \markup +8
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r2
                                    \!
                                    ^ \markup 99
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
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        <d'>32 * 51/32
                                        - \staccato
                                        ^ \markup 100
                                        ^ \markup +23
                                        - \tweak circled-tip ##t
                                        \<
                                        [
                                        \(
                                        <d'>32 * 51/32
                                        - \staccato
                                        ^ \markup 101
                                        ^ \markup +23
                                        r32 * 51/32
                                        ^ \markup 102
                                        <d'>32 * 13/8
                                        - \staccato
                                        ^ \markup 103
                                        ^ \markup +23
                                        r32 * 13/8
                                        ^ \markup 104
                                        <d'>32 * 53/32
                                        - \staccato
                                        ^ \markup 105
                                        ^ \markup +23
                                        <d'>32 * 27/16
                                        - \staccato
                                        ^ \markup 106
                                        ^ \markup +23
                                        r32 * 7/4
                                        ^ \markup 107
                                        r32 * 57/32
                                        ^ \markup 108
                                        <d'>32 * 59/32
                                        - \staccato
                                        ^ \markup 109
                                        ^ \markup +23
                                        <d'>32 * 61/32
                                        - \staccato
                                        ^ \markup 110
                                        ^ \markup +23
                                        <d'>32 * 63/32
                                        - \staccato
                                        ^ \markup 111
                                        ^ \markup +23
                                        r32 * 33/16
                                        ^ \markup 112
                                        <d'>32 * 17/8
                                        - \staccato
                                        ^ \markup 113
                                        ^ \markup +23
                                        r32 * 71/32
                                        ^ \markup 114
                                        <d'>32 * 75/32
                                        - \staccato
                                        ^ \markup 115
                                        ^ \markup +23
                                        <d'>32 * 79/32
                                        - \staccato
                                        ^ \markup 116
                                        ^ \markup +23
                                        r32 * 83/32
                                        ^ \markup 117
                                        r32 * 87/32
                                        ^ \markup 118
                                        <d'>32 * 91/32
                                        - \staccato
                                        ^ \markup 119
                                        ^ \markup +23
                                        <d'>32 * 3
                                        - \staccato
                                        ^ \markup 120
                                        ^ \markup +23
                                        <d'>32 * 101/32
                                        - \staccato
                                        ^ \markup 121
                                        ^ \markup +23
                                        r32 * 53/16
                                        ^ \markup 122
                                        <d'>32 * 111/32
                                        - \staccato
                                        ^ \markup 123
                                        ^ \markup +23
                                        r32 * 115/32
                                        ^ \markup 124
                                        <d'>32 * 119/32
                                        - \staccato
                                        ^ \markup 125
                                        ^ \markup +23
                                        <d'>32 * 123/32
                                        - \staccato
                                        ^ \markup 126
                                        ^ \markup +23
                                        \)
                                        r32 * 125/32
                                        ^ \markup 127
                                        r32 * 4
                                        ^ \markup 128
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \clef "treble"
                                    <b'>1.
                                    \fp
                                    ^ \markup 129
                                    ^ \markup +0
                                    \<
                                    ~
                                    <b'>2.
                                    ^ \markup 130
                                    ~
                                    <b'>1..
                                    ^ \markup 131
                                    \clef "bass"
                                    <fs>1.
                                    ^ \markup 132
                                    ^ \markup +8
                                    \clef "treble"
                                    <bf'>2.
                                    ^ \markup 133
                                    ^ \markup -3
                                    ~
                                    <bf'>2
                                    ^ \markup 134
                                    \clef "bass"
                                    <g>4
                                    \fff
                                    - \marcato
                                    ^ \markup 135
                                    ^ \markup -25
                                    \clef "treble"
                                    <b'>4
                                    - \marcato
                                    ^ \markup 136
                                    ^ \markup +0
                                    \clef "bass"
                                    <f, a,>2.
                                    \p
                                    ^ \markup 137
                                    ^ \markup +4
                                    ^ \markup +14
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <f, a,>2
                                    :32
                                    ^ \markup 138
                                }
                            }
                        }
                    >>
                }
                \tag #'group4
                {
                    \context PianoStaff = "sub group 3"
                    <<
                        \tag #'voice5
                        {
                            \context Staff = "piano 1 staff"
                            {
                                \context Voice = "piano 1 voice"
                                {
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { pno. }
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/4
                                    ^ \markup 0
                                    \ottava -1
                                    \clef "bass"
                                    <g,, b,, ef,>4
                                    :32
                                    \mp
                                    \arpeggio
                                    ^ \markup 2
                                    \ottava 0
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    <af, bf, cs>8
                                    :64
                                    \mp
                                    \arpeggio
                                    ^ \markup 4
                                    ~
                                    <af, bf, cs>4.
                                    :32
                                    ^ \markup 5
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \ottava 1
                                    \clef "treble"
                                    <cs''' af''' bf''' cs''''>8
                                    :64
                                    \mp
                                    \arpeggio
                                    ^ \markup 7
                                    \>
                                    \ottava 0
                                    \ottava -1
                                    <e fs a c'>4.
                                    :32
                                    \arpeggio
                                    ^ \markup 8
                                    \ottava 0
                                    <a' g'' af'' a''>2..
                                    :32
                                    \ppp
                                    \arpeggio
                                    ^ \markup 9
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    <a' g'' af'' a''>4
                                    :32
                                    ^ \markup 10
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
                                    \times 8/9
                                    {
                                        \ottava 1
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs''''32
                                        \p
                                        ^ \markup 11
                                        \(
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        bf'''32
                                        ^ \markup 12
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af''''32
                                        ^ \markup 13
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e''''32
                                        ^ \markup 14
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs''''32
                                        ^ \markup 15
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g''''32
                                        ^ \markup 16
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b'''32
                                        ^ \markup 17
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        a'''32
                                        ^ \markup 18
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c''''32
                                        ^ \markup 19
                                        \)
                                        \ottava 0
                                    }
                                    \revert TupletNumber.text
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \clef "bass"
                                    <a, c>8
                                    :64
                                    \p
                                    \arpeggio
                                    ^ \markup 21
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \clef "treble"
                                    <b'' fs'''>4.
                                    :32
                                    \arpeggio
                                    ^ \markup 22
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
                                    \times 12/13
                                    {
                                        \ottava 1
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        ef'''32
                                        \f
                                        ^ \markup 23
                                        \(
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        e'''32
                                        ^ \markup 24
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        af'''32
                                        ^ \markup 25
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        d'''32
                                        ^ \markup 26
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        g'''32
                                        ^ \markup 27
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        cs'''32
                                        ^ \markup 28
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c'''32
                                        ^ \markup 29
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f'''32
                                        ^ \markup 30
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs'''32
                                        ^ \markup 31
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        b''32
                                        ^ \markup 32
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        fs'''32
                                        ^ \markup 33
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        f'''32
                                        ^ \markup 34
                                        \once \override Beam.transparent = ##t
                                        \once \override Dots.transparent = ##t
                                        \once \override Flag.transparent = ##t
                                        \once \override Stem.transparent = ##t
                                        c'''32
                                        ^ \markup 35
                                        \)
                                        \ottava 0
                                    }
                                    \revert TupletNumber.text
                                    r1
                                    ^ \markup 36
                                    \ottava 1
                                    <d''' e''' af''' c''''>2.
                                    :32
                                    \p
                                    \arpeggio
                                    ^ \markup 37
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <d''' e''' af''' c''''>4.
                                    :32
                                    \f
                                    ^ \markup 38
                                    \ottava 0
                                    <af' fs'' g'' af''>2..
                                    :32
                                    \fp
                                    \arpeggio
                                    ^ \markup 39
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 41
                                    \ottava 1
                                    <a'' e''' fs''' a''' c''''>4.
                                    :32
                                    \pp
                                    \arpeggio
                                    ^ \markup 42
                                    \(
                                    <a'' g''' af''' a'''>4
                                    :32
                                    \arpeggio
                                    ^ \markup 43
                                    \)
                                    \ottava 0
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 44
                                    \ottava -1
                                    \clef "bass"
                                    <af,, bf,, cs,>2.
                                    :32
                                    \fp
                                    \arpeggio
                                    ^ \markup 45
                                    \<
                                    ~
                                    <af,, bf,, cs,>2
                                    :32
                                    ^ \markup 46
                                    \ottava 0
                                    \ottava 1
                                    \clef "treble"
                                    <a'' e''' fs''' a''' c''''>1.
                                    :32
                                    \arpeggio
                                    ^ \markup 47
                                    ~
                                    <a'' e''' fs''' a''' c''''>1..
                                    :32
                                    ^ \markup 48
                                    \ottava 0
                                    \override TupletNumber.text = \markup \italic 10:9
                                    \times 36/40
                                    {
                                        \ottava 1
                                        ef'''16
                                        ^ \markup 49
                                        [
                                        \(
                                        e'''16
                                        ^ \markup 50
                                        af'''16
                                        ^ \markup 51
                                        d'''16
                                        ^ \markup 52
                                        g'''16
                                        ^ \markup 53
                                        cs'''16
                                        ^ \markup 54
                                        c'''16
                                        ^ \markup 55
                                        f'''16
                                        ^ \markup 56
                                        fs'''16
                                        ^ \markup 57
                                        b''16
                                        ^ \markup 58
                                        fs'''16
                                        ^ \markup 59
                                        f'''16
                                        ^ \markup 60
                                        c'''16
                                        ^ \markup 61
                                        cs'''16
                                        ^ \markup 62
                                        g'''16
                                        ^ \markup 63
                                        d'''16
                                        ^ \markup 64
                                        cs''''16
                                        ^ \markup 65
                                        bf'''16
                                        ^ \markup 66
                                        af''''16
                                        ^ \markup 67
                                        e''''16
                                        ^ \markup 68
                                        fs''''16
                                        ^ \markup 69
                                        g''''16
                                        ^ \markup 70
                                        b'''16
                                        ^ \markup 71
                                        a'''16
                                        ^ \markup 72
                                        c''''16
                                        ^ \markup 73
                                        f''''16
                                        ^ \markup 74
                                        d''''16
                                        ^ \markup 75
                                        a''''16
                                        ^ \markup 76
                                        af'''16
                                        ^ \markup 77
                                        d'''16
                                        ^ \markup 78
                                        g'''16
                                        ^ \markup 79
                                        e'''16
                                        ^ \markup 80
                                        cs'''16
                                        ^ \markup 81
                                        f''16
                                        ^ \markup 82
                                        c''16
                                        ^ \markup 83
                                        e''16
                                        ^ \markup 84
                                        bf''16
                                        ^ \markup 85
                                        fs''16
                                        ^ \markup 86
                                        cs''16
                                        ^ \markup 87
                                        g''16
                                        ^ \markup 88
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    <f'' a'' cs''' fs''' a'''>1.
                                    :32
                                    \fp
                                    \arpeggio
                                    ^ \markup 89
                                    \<
                                    ~
                                    <f'' a'' cs''' fs''' a'''>2.
                                    :32
                                    ^ \markup 90
                                    ~
                                    <f'' a'' cs''' fs''' a'''>1..
                                    :32
                                    ^ \markup 91
                                    \ottava 0
                                    \ottava -1
                                    \clef "bass"
                                    <b,, fs,>1.
                                    :32
                                    \arpeggio
                                    ^ \markup 92
                                    \ottava 0
                                    \ottava 1
                                    \clef "treble"
                                    <af''' bf''' cs''''>2.
                                    :32
                                    \arpeggio
                                    ^ \markup 93
                                    ~
                                    <af''' bf''' cs''''>2
                                    :32
                                    ^ \markup 94
                                    \ottava 0
                                    \ottava -1
                                    \clef "bass"
                                    <af,, bf,, cs,>4
                                    :32
                                    \fff
                                    \arpeggio
                                    - \marcato
                                    ^ \markup 95
                                    \ottava 0
                                    \ottava 1
                                    \clef "treble"
                                    <af''' cs'''' e''''>4
                                    :32
                                    \arpeggio
                                    - \marcato
                                    ^ \markup 96
                                    \ottava 0
                                    \clef "bass"
                                    <bf,, f,>2.
                                    :32
                                    \p
                                    \arpeggio
                                    ^ \markup 97
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <bf,, f,>2
                                    :32
                                    ^ \markup 98
                                }
                            }
                        }
                        \tag #'voice6
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/4
                                    ^ \markup 0
                                    \ottava -1
                                    \clef "bass"
                                    <a,,, f,,>4
                                    :32
                                    \arpeggio
                                    ^ \markup 2
                                    \ottava 0
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    <a,, cs,>8
                                    :64
                                    \arpeggio
                                    ^ \markup 4
                                    ~
                                    <a,, cs,>4.
                                    :32
                                    ^ \markup 5
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \clef "treble"
                                    <cs' d'' a''>8
                                    :64
                                    \arpeggio
                                    ^ \markup 7
                                    \ottava -1
                                    \clef "bass"
                                    <d,, c, a,>4.
                                    :32
                                    \arpeggio
                                    ^ \markup 8
                                    \ottava 0
                                    <d cs'>2..
                                    :32
                                    \ppp
                                    \arpeggio
                                    ^ \markup 9
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    <d cs'>4
                                    :32
                                    ^ \markup 10
                                    ~
                                    <d cs'>4
                                    :32
                                    \!
                                    ^ \markup 11
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    <fs, af,>8
                                    :64
                                    \arpeggio
                                    ^ \markup 13
                                    \clef "treble"
                                    <bf'>4.
                                    :32
                                    ^ \markup 14
                                    \ottava -1
                                    \clef "bass"
                                    <ef,, f,, af,,>2..
                                    :32
                                    \p
                                    \arpeggio
                                    ^ \markup 15
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    <ef,, f,, af,,>4
                                    :32
                                    ^ \markup 16
                                    ~
                                    <ef,, f,, af,,>4
                                    :32
                                    \!
                                    ^ \markup 17
                                    \ottava 0
                                    \clef "treble"
                                    <af' b''>2.
                                    :32
                                    \arpeggio
                                    ^ \markup 18
                                    ~
                                    <af' b''>4.
                                    :32
                                    ^ \markup 19
                                    \clef "bass"
                                    <cs a>2..
                                    :32
                                    \arpeggio
                                    ^ \markup 20
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 22
                                    \clef "treble"
                                    <d' c''>4.
                                    :32
                                    \arpeggio
                                    ^ \markup 23
                                    \(
                                    <d' cs''>4
                                    :32
                                    \arpeggio
                                    ^ \markup 24
                                    \)
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    ^ \markup 25
                                    \ottava -1
                                    \clef "bass"
                                    <c,, e,,>2.
                                    :32
                                    \arpeggio
                                    ^ \markup 26
                                    ~
                                    <c,, e,,>2
                                    :32
                                    ^ \markup 27
                                    \ottava 0
                                    \clef "treble"
                                    <d' c''>1.
                                    :32
                                    \arpeggio
                                    ^ \markup 28
                                    ~
                                    <d' c''>1..
                                    :32
                                    ^ \markup 29
                                    \ottava -1
                                    \clef "bass"
                                    <b,,, cs,, f,, a,,>1.
                                    :32
                                    \arpeggio
                                    ^ \markup 30
                                    ~
                                    <b,,, cs,, f,, a,,>2.
                                    :32
                                    ^ \markup 31
                                    \ottava 0
                                    \clef "treble"
                                    <b b'>1.
                                    :32
                                    \arpeggio
                                    ^ \markup 32
                                    ~
                                    <b b'>2.
                                    :32
                                    ^ \markup 33
                                    ~
                                    <b b'>1..
                                    :32
                                    ^ \markup 34
                                    \ottava -1
                                    \clef "bass"
                                    <ef,, bf,,>1.
                                    :32
                                    \arpeggio
                                    ^ \markup 35
                                    \ottava 0
                                    \ottava 1
                                    \clef "treble"
                                    <a'' cs'''>2.
                                    :32
                                    \arpeggio
                                    ^ \markup 36
                                    ~
                                    <a'' cs'''>2
                                    :32
                                    ^ \markup 37
                                    \ottava 0
                                    \ottava -1
                                    \clef "bass"
                                    <a,,, cs,,>4
                                    :32
                                    \arpeggio
                                    - \marcato
                                    ^ \markup 38
                                    \ottava 0
                                    \ottava 1
                                    \clef "treble"
                                    <g'' b''>4
                                    :32
                                    \arpeggio
                                    - \marcato
                                    ^ \markup 39
                                    \ottava 0
                                    \ottava -1
                                    \clef "bass"
                                    <d,, a,,>2.
                                    :32
                                    \arpeggio
                                    ^ \markup 40
                                    ~
                                    <d,, a,,>2
                                    :32
                                    ^ \markup 41
                                    \ottava 0
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>

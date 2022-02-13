    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 5/4
            s1 * 5/4
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-1.3 \abs-fontsize #8.5 { Rit. poco a poco } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            - \tweak padding 3
            \startTextSpan
            \tweak padding 5.5 \boxed-markup "One of These Days {dry land}" 1.5
            \time 9/4
            s1 * 9/4
            \time 3/4
            s1 * 3/4
            \time 5/4
            s1 * 5/4
            \time 6/8
            s1 * 3/4
            \time 5/4
            s1 * 5/4
            \time 3/4
            s1 * 3/4
            \time 3/4
            s1 * 3/4
            \time 3/4
            s1 * 3/4
            \time 5/4
            s1 * 5/4
            \time 5/4
            s1 * 5/4
            \time 3/4
            s1 * 3/4
            \pageBreak
            \time 5/4
            s1 * 5/4
            \time 3/4
            s1 * 3/4
            \time 5/4
            s1 * 5/4
            \tempo 4=47
            \time 3/4
            s1 * 3/4
            \stopTextSpan
            \once \override Score.TimeSignature.transparent = ##t
            \once \override MultiMeasureRest.transparent = ##t
            \time 1/4
            s1 * 1/8
            \once \override Rest.transparent = ##t
            r1 * 1/8
            - \markup \halign #0.5 \fontsize #6.5 { 37 s. }
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
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "cello 2 staff"
                            {
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
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
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
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 10/11
                                    {
                                        \set PianoStaff.shortInstrumentName =
                                        \markup { cb. }
                                        <g bf>8
                                        _ \markup \italic { Con Fuoco, Con Licenza }
                                        _ \markup \bold \italic { as loud as possible }
                                        [
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
                                        ]
                                    }
                                    \override TupletNumber.text = \markup \italic 13:9
                                    \times 18/26
                                    {
                                        <g bf>8
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
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \override TupletNumber.text = \markup \italic 5:3
                                    \times 6/10
                                    {
                                        <g bf>8
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
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/4
                                    {
                                        <g bf>2
                                        <g bf>2
                                    }
                                    <g bf>4.
                                    <g bf>4.
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
                                        <g bf>32 * 51/32
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
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    <g bf>16
                                    <g bf>4..
                                    \times 4/7
                                    {
                                        <g bf>16
                                        <g bf>4.
                                    }
                                    \times 4/6
                                    {
                                        <g bf>32
                                        [
                                        <g bf>8
                                        ~
                                        <g bf>32
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        <g bf>16
                                        <g bf>4
                                    }
                                    \times 4/5
                                    {
                                        <g bf>16
                                        [
                                        <g bf>16
                                        <g bf>8.
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        <g bf>8.
                                        [
                                        <g bf>16
                                        <g bf>16
                                        <g bf>16
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        <g bf>8
                                        ]
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/8
                                    {
                                        <g bf>4.
                                        <g bf>16
                                        [
                                        <g bf>16
                                        ]
                                    }
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
                                        \once \override Beam.grow-direction = #left
                                        <g bf>32 * 5/4
                                        [
                                        <g bf>32 * 43/32
                                        r32 * 51/32
                                        <g bf>32 * 65/32
                                        r32 * 85/32
                                        <g bf>32 * 25/8
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r2.
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
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        <g bf>32 * 3/2
                                        [
                                        <g bf>32 * 25/16
                                        r32 * 7/4
                                        <g bf>32 * 65/32
                                        r32 * 79/32
                                        <g bf>32 * 49/16
                                        <g bf>32 * 29/8
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r2
                                    r8
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
                                    \times 1/1
                                    {
                                        \once \override Beam.grow-direction = #left
                                        <g bf>32 * 45/32
                                        [
                                        <g bf>32 * 23/16
                                        r32 * 25/16
                                        <g bf>32 * 55/32
                                        r32 * 2
                                        <g bf>32 * 75/32
                                        <g bf>32 * 89/32
                                        <g bf>32 * 103/32
                                        <g bf>32 * 113/32
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r4
                                    \times 2/3
                                    {
                                        <g bf>16
                                        [
                                        <g bf>16
                                        <g bf>8.
                                        <g bf>16
                                        ]
                                    }
                                    \times 4/7
                                    {
                                        <g bf>16
                                        [
                                        <g bf>8.
                                        <g bf>16
                                        <g bf>8
                                        ]
                                    }
                                    \override TupletNumber.text = \markup \italic { 13:10 }
                                    \times 30/39
                                    {
                                        <g bf>16
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
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    s1 * 5/8
                                    s1 * 3/4
                                    s1 * 5/4
                                    s1 * 3/4
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "contrabass 2 staff"
                            {
                                \context Voice = "contrabass 2 voice"
                                {
                                    \once \override Beam.transparent = ##t
                                    \once \override Dots.transparent = ##t
                                    \once \override Flag.transparent = ##t
                                    \once \override Stem.transparent = ##t
                                    \clef "bass"
                                    e,4
                                    \glissando
                                    \boxed-markup "Detune IV" 1
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    s1
                                    s1.
                                    s2.
                                    s2.
                                    \once \override Beam.transparent = ##t
                                    \once \override Dots.transparent = ##t
                                    \once \override Flag.transparent = ##t
                                    \once \override Stem.transparent = ##t
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    b,,4
                                    s1
                                    s2.
                                    c'2.
                                    ~
                                    \glissando
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { III } \hspace #0.5 }
                                    - \tweak padding 12.5
                                    \startTextSpan
                                    \boxed-markup "Pull" 1
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    c'4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    cs'16
                                    - \snappizzicato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    [
                                    \glissando
                                    \boxed-markup "Pull" 1
                                    \revert Staff.Stem.stemlet-length
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    cqs'16
                                    - \snappizzicato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'16.
                                    [
                                    \glissando
                                    \boxed-markup "Pull" 1
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
                                    c'32
                                    - \snappizzicato
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    ~
                                    ]
                                    \glissando
                                    \boxed-markup "Pull" 1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    c'8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    cqs'16
                                    - \snappizzicato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    [
                                    \glissando
                                    \boxed-markup "Pull" 1
                                    \revert Staff.Stem.stemlet-length
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
                                    c'16
                                    - \snappizzicato
                                    ]
                                    c'4
                                    ~
                                    \glissando
                                    \boxed-markup "Pull" 1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    c'8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    cs'16
                                    - \snappizzicato
                                    ]
                                    c'4
                                    ~
                                    \glissando
                                    \boxed-markup "Pull" 1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    c'16
                                    [
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    cqs'16
                                    - \snappizzicato
                                    \revert Staff.Stem.stemlet-length
                                    c'8
                                    ~
                                    ]
                                    \glissando
                                    \boxed-markup "Pull" 1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    c'8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \one-eighth-sharp-markup
                                    c'16
                                    - \snappizzicato
                                    \stopTextSpan
                                    ]
                                    <d e>4
                                    - \accent
                                    ~
                                    \glissando
                                    \(
                                    \boxed-markup "Arco" 1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    <d e>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <dqf d>8
                                    ~
                                    ]
                                    <dqf d>4
                                    \)
                                    c'4
                                    ~
                                    \glissando
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { III } \hspace #0.5 }
                                    - \tweak padding 12.5
                                    \startTextSpan
                                    \boxed-markup "Pull" 1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    c'8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \tweak Accidental.stencil #ly:text-interface::print
                                    \tweak Accidental.text \one-eighth-sharp-markup
                                    c'16
                                    - \snappizzicato
                                    \stopTextSpan
                                    ]
                                    \override TupletNumber.text = \markup \italic { 4:5 }
                                    \times 15/12
                                    {
                                        <d fqs>4
                                        - \accent
                                        \glissando
                                        \(
                                        \boxed-markup "Arco" 1
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <d ef>4
                                        \)
                                    }
                                    \revert TupletNumber.text
                                    c'8
                                    - \tweak circled-tip ##t
                                    ^ \>
                                    ~
                                    \glissando
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { III } \hspace #0.5 }
                                    - \tweak padding 12.5
                                    \startTextSpan
                                    \boxed-markup "Pull" 1
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    c'4
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    cs'16
                                    - \snappizzicato
                                    \stopTextSpan
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d e>8
                                    - \accent
                                    [
                                    \glissando
                                    \(
                                    \boxed-markup "Arco" 1
                                    \revert Staff.Stem.stemlet-length
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <dqf d>8
                                    \)
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    [
                                    \glissando
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { III } \hspace #0.5 }
                                    - \tweak padding 12.5
                                    \startTextSpan
                                    \boxed-markup "Pull" 1
                                    \revert Staff.Stem.stemlet-length
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    cqs'16
                                    - \snappizzicato
                                    ]
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c'8.
                                    [
                                    \glissando
                                    \boxed-markup "Pull" 1
                                    \revert Staff.Stem.stemlet-length
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
                                    c'16
                                    - \snappizzicato
                                    ]
                                    c'2
                                    ~
                                    \glissando
                                    \boxed-markup "Pull" 1
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    c'16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    cqs'16
                                    - \snappizzicato
                                    \stopTextSpan
                                    ]
                                    \override TupletNumber.text = \markup \italic { 4:5 }
                                    \times 15/12
                                    {
                                        <g a>4
                                        - \accent
                                        \glissando
                                        \(
                                        \boxed-markup "Arco" 1
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <gqf g>4
                                        \)
                                    }
                                    \revert TupletNumber.text
                                    <d fqs>4
                                    - \accent
                                    ~
                                    \glissando
                                    \(
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    <d fqs>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <d ef>8
                                    ~
                                    ]
                                    <d ef>4
                                    \)
                                    \override TupletNumber.text = \markup \italic { 4:5 }
                                    \times 15/12
                                    {
                                        \slurDashed
                                        <g bqf>2
                                        - \accent
                                        \glissando
                                        (
                                        \hide NoteHead
                                        \override Accidental.stencil = ##f
                                        \override NoteColumn.glissando-skip = ##t
                                        \override NoteHead.no-ledgers = ##t
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <g af>2
                                        \glissando
                                    }
                                    \revert TupletNumber.text
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <g a>4
                                    ~
                                    \glissando
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    <g a>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <gqf g>8
                                    ~
                                    ]
                                    <gqf g>4
                                    \!
                                    )
                                    \slurSolid
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
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
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice6
                        {
                            \context Staff = "piano 2 staff"
                            {
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
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>

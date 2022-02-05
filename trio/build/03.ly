    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 5/4
            s1 * 5/4
            \boxed-markup "Skyward, {diagonal moves} (i)" 1.5
            \time 5/4
            s1 * 5/4
            \time 5/4
            s1 * 5/4
            \pageBreak
            \time 3/4
            s1 * 3/4
            \time 3/4
            s1 * 3/4
            \time 1/8
            s1 * 1/8
            \once \override Score.TimeSignature.transparent = ##t
            \once \override MultiMeasureRest.transparent = ##t
            \time 1/4
            s1 * 1/8
            \once \override Rest.transparent = ##t
            r1 * 1/8
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
                                    r1 * 5/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
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
                                    \set suggestAccidentals = ##t
                                    \ottava 1
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a'''32
                                    \fff
                                    - \accent
                                    - \tweak circled-tip ##t
                                    \>
                                    [
                                    \glissando
                                    \(
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { MSP } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { ST }
                                    - \tweak padding 15.5
                                    \startTextSpan
                                    \boxed-markup "I" 1
                                    cs''''32
                                    \glissando
                                    aqs'''32
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    b'''32
                                    ]
                                    \glissando
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqf'''32
                                        \)
                                        [
                                        \glissando
                                        \tweak style #'triangle
                                        dqf''''32
                                        - \accent
                                        \glissando
                                        \(
                                        \tweak style #'triangle
                                        a'''32
                                        \glissando
                                        \tweak style #'triangle
                                        cs''''32
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        aqs'''32
                                        ]
                                        \glissando
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'triangle
                                    b'''32
                                    [
                                    \glissando
                                    \tweak style #'triangle
                                    aqf'''32
                                    \)
                                    \glissando
                                    dqf''''32
                                    - \accent
                                    \glissando
                                    \(
                                    \revert Staff.Stem.stemlet-length
                                    a'''32
                                    ]
                                    \glissando
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs''''16
                                        [
                                        \glissando
                                        aqs'''16
                                        \)
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        b'''16
                                        - \accent
                                        ]
                                        \glissando
                                        \(
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'triangle
                                    aqf'''8
                                    \)
                                    [
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    dqf''''8
                                    - \accent
                                    ]
                                    \glissando
                                    \(
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'''32
                                        [
                                        \glissando
                                        cs''''32
                                        \)
                                        \glissando
                                        \tweak style #'triangle
                                        aqs'''32
                                        - \accent
                                        \glissando
                                        \(
                                        \tweak style #'triangle
                                        b'''32
                                        \glissando
                                        \tweak style #'triangle
                                        aqf'''32
                                        \glissando
                                        \tweak style #'triangle
                                        dqf''''32
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        a'''32
                                        ]
                                        \glissando
                                    }
                                    \tweak style #'triangle
                                    cs''''8
                                    ~
                                    \glissando
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    cs''''16
                                    \)
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    aqs'''8.
                                    - \accent
                                    ]
                                    \glissando
                                    \(
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'''16
                                        [
                                        \glissando
                                        aqf'''16
                                        \)
                                        \glissando
                                        dqf''''16
                                        - \accent
                                        \glissando
                                        \(
                                        a'''16
                                        \glissando
                                        cs''''16
                                        \glissando
                                        aqs'''16
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        b'''16
                                        ]
                                        \ottava 0
                                    }
                                    \times 4/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g''32
                                        [
                                        \glissando
                                        \boxed-markup "III" 1
                                        b''32
                                        \glissando
                                        gqs''32
                                        \)
                                        \glissando
                                        a''32
                                        - \accent
                                        \glissando
                                        \(
                                        gqf''32
                                        \glissando
                                        bqs''32
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        g''32
                                        ]
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b''16
                                        [
                                        \glissando
                                        gqs''16
                                        \glissando
                                        a''16
                                        \glissando
                                        gqf''16
                                        \)
                                        \glissando
                                        bqs''16
                                        - \accent
                                        \glissando
                                        \(
                                        \revert Staff.Stem.stemlet-length
                                        g''16
                                        ]
                                        \glissando
                                    }
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b''16
                                        \)
                                        [
                                        \glissando
                                        gqs''16
                                        - \accent
                                        \glissando
                                        \(
                                        a''16
                                        \glissando
                                        gqf''16
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        bqs''16
                                        ]
                                        \glissando
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''16
                                    [
                                    \glissando
                                    b''16
                                    \)
                                    \glissando
                                    gqs''16
                                    - \accent
                                    \glissando
                                    \(
                                    \revert Staff.Stem.stemlet-length
                                    a''16
                                    ]
                                    \glissando
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    \times 15/18
                                    {
                                        gqf''4
                                        \)
                                        \glissando
                                        \tweak style #'triangle
                                        bqs''4
                                        - \accent
                                        \stopTextSpan
                                        \glissando
                                        \(
                                        \tweak style #'triangle
                                        g''4
                                    }
                                    \revert TupletNumber.text
                                    \times 2/3
                                    {
                                        \ottava 1
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'triangle
                                        d'''16
                                        [
                                        \glissando
                                        \boxed-markup "II" 1
                                        \tweak style #'triangle
                                        fs'''16
                                        \)
                                        \glissando
                                        dqs'''16
                                        - \accent
                                        \glissando
                                        \(
                                        e'''16
                                        \glissando
                                        dqf'''16
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        gqf'''16
                                        ]
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'''16
                                        [
                                        \glissando
                                        fs'''16
                                        \glissando
                                        dqs'''16
                                        \)
                                        \glissando
                                        \tweak style #'triangle
                                        e'''16
                                        - \accent
                                        \glissando
                                        \(
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        dqf'''16
                                        ]
                                        \glissando
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'triangle
                                    gqf'''32
                                    \)
                                    [
                                    \glissando
                                    d'''32
                                    - \accent
                                    \glissando
                                    \(
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { ST } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { MSP }
                                    - \tweak padding 10
                                    \startTextSpan
                                    fs'''32
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    dqs'''32
                                    ]
                                    \glissando
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'''16
                                        [
                                        \glissando
                                        dqf'''16
                                        \)
                                        \glissando
                                        gqf'''16
                                        - \accent
                                        \glissando
                                        \(
                                        d'''16
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        fs'''16
                                        ]
                                        \glissando
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    dqs'''16.
                                    [
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    e'''32
                                    ~
                                    ]
                                    \glissando
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    e'''16
                                    [
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    dqf'''16
                                    ~
                                    \glissando
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    dqf'''32
                                    \)
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    gqf'''16.
                                    - \accent
                                    \stopTextSpan
                                    ]
                                    \(
                                    \ottava 0
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        [
                                        \glissando
                                        \boxed-markup "IV" 1
                                        e''8
                                        \glissando
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { MSP } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { MST }
                                        - \tweak padding 8
                                        \startTextSpan
                                        cqs''8
                                        \glissando
                                        d''8
                                        \)
                                        \glissando
                                        \tweak style #'triangle
                                        bqs'8
                                        - \accent
                                        \glissando
                                        \(
                                        \tweak style #'triangle
                                        eqs''8
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        c''8
                                        ]
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'triangle
                                        e''32
                                        [
                                        \glissando
                                        \tweak style #'harmonic-mixed
                                        cqs''32
                                        \glissando
                                        \tweak style #'harmonic-mixed
                                        d''32
                                        \glissando
                                        \tweak style #'harmonic-mixed
                                        bqs'32
                                        \glissando
                                        \tweak style #'harmonic-mixed
                                        eqs''32
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'harmonic-mixed
                                        c''32
                                        \!
                                        \)
                                        \stopTextSpan
                                        ]
                                        \set suggestAccidentals = ##f
                                    }
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
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { cb. }
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
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
                                    \times 4/7
                                    {
                                        \set suggestAccidentals = ##t
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <g a>32
                                        \fff
                                        - \accent
                                        - \tweak circled-tip ##t
                                        \>
                                        [
                                        \glissando
                                        \(
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { MSP } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { MST }
                                        - \tweak padding 15.5
                                        \startTextSpan
                                        \boxed-markup "low string portamento" 1
                                        <gqf g>32
                                        \glissando
                                        <g bqf>32
                                        \glissando
                                        <g af>32
                                        \glissando
                                        <g a>32
                                        \glissando
                                        <gqf g>32
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        <g bqf>32
                                        ]
                                        \glissando
                                    }
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <g af>32
                                        [
                                        \glissando
                                        <g a>32
                                        \glissando
                                        <gqf g>32
                                        \glissando
                                        <g bqf>32
                                        \glissando
                                        <g af>32
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        <g a>32
                                        ]
                                        \glissando
                                    }
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <gqf g>16
                                        [
                                        \glissando
                                        <g bqf>16
                                        \)
                                        <d e>16
                                        - \accent
                                        \glissando
                                        \(
                                        <dqf d>16
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        <d fqs>16
                                        ]
                                        \glissando
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d ef>16.
                                    [
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    <d e>32
                                    ~
                                    ]
                                    \glissando
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    <d e>16
                                    [
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <dqf d>16
                                    ~
                                    \glissando
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    <dqf d>32
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <d fqs>16.
                                    \)
                                    ]
                                    \glissando
                                    \times 4/5
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <d ef>32
                                        - \accent
                                        [
                                        \glissando
                                        \(
                                        <d e>32
                                        \glissando
                                        <dqf d>32
                                        \glissando
                                        <d fqs>32
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        <d ef>32
                                        ]
                                        \glissando
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d e>32
                                    [
                                    \glissando
                                    <dqf d>32
                                    \glissando
                                    <d fqs>32
                                    \glissando
                                    \revert Staff.Stem.stemlet-length
                                    <d ef>32
                                    ]
                                    \glissando
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <d e>8
                                        [
                                        \glissando
                                        <dqf d>8
                                        \glissando
                                        \revert Staff.Stem.stemlet-length
                                        <d fqs>8
                                        \)
                                        ]
                                    }
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a, b,>8.
                                    - \accent
                                    [
                                    \glissando
                                    \(
                                    \revert Staff.Stem.stemlet-length
                                    <aqf, a,>16
                                    ~
                                    ]
                                    \glissando
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    <aqf, a,>8
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <a, cqs>8
                                    ~
                                    ]
                                    \glissando
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \hide NoteHead
                                    \override Accidental.stencil = ##f
                                    \override NoteColumn.glissando-skip = ##t
                                    \override NoteHead.no-ledgers = ##t
                                    <a, cqs>16
                                    [
                                    \revert Staff.Stem.stemlet-length
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <a, bf,>8.
                                    \)
                                    \stopTextSpan
                                    ]
                                    \set suggestAccidentals = ##f
                                    r4
                                    \!
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
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
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b'''32
                                    - \tweak transparent ##t
                                    \fff
                                    - \accent
                                    [
                                    \change Staff = "piano 2 staff"
                                    b'''32
                                    \change Staff = "piano 1 staff"
                                    b'''32
                                    \change Staff = "piano 2 staff"
                                    \revert Staff.Stem.stemlet-length
                                    b'''32
                                    - \accent
                                    ]
                                    \tweak direction #up
                                    \times 4/5
                                    {
                                        \change Staff = "piano 1 staff"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'''32
                                        [
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        \change Staff = "piano 1 staff"
                                        b'''32
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        \change Staff = "piano 1 staff"
                                        \revert Staff.Stem.stemlet-length
                                        b'''32
                                        - \accent
                                        ]
                                    }
                                    \change Staff = "piano 2 staff"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b'''32
                                    [
                                    \change Staff = "piano 1 staff"
                                    b'''32
                                    \change Staff = "piano 2 staff"
                                    b'''32
                                    \change Staff = "piano 1 staff"
                                    \revert Staff.Stem.stemlet-length
                                    b'''32
                                    ]
                                    \times 4/5
                                    {
                                        \change Staff = "piano 2 staff"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'''32
                                        [
                                        \change Staff = "piano 1 staff"
                                        b'''32
                                        - \accent
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        \change Staff = "piano 1 staff"
                                        b'''32
                                        \change Staff = "piano 2 staff"
                                        \revert Staff.Stem.stemlet-length
                                        b'''32
                                        ]
                                    }
                                    \tweak direction #up
                                    \times 2/3
                                    {
                                        \change Staff = "piano 1 staff"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'''16
                                        - \accent
                                        [
                                        \change Staff = "piano 2 staff"
                                        b'''16
                                        \change Staff = "piano 1 staff"
                                        b'''16
                                        \change Staff = "piano 2 staff"
                                        b'''16
                                        \change Staff = "piano 1 staff"
                                        b'''16
                                        - \accent
                                        \change Staff = "piano 2 staff"
                                        \revert Staff.Stem.stemlet-length
                                        b'''16
                                        ]
                                    }
                                    \tweak direction #up
                                    \times 4/5
                                    {
                                        \change Staff = "piano 1 staff"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'''32
                                        [
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        \change Staff = "piano 1 staff"
                                        b'''32
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        \change Staff = "piano 1 staff"
                                        \revert Staff.Stem.stemlet-length
                                        b'''32
                                        ]
                                    }
                                    \change Staff = "piano 2 staff"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b'''16
                                    [
                                    \change Staff = "piano 1 staff"
                                    \revert Staff.Stem.stemlet-length
                                    b'''16
                                    - \accent
                                    ]
                                    \change Staff = "piano 2 staff"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b'''16
                                    [
                                    \change Staff = "piano 2 staff"
                                    \change Staff = "piano 1 staff"
                                    b'''16
                                    \change Staff = "piano 2 staff"
                                    b'''16
                                    \change Staff = "piano 1 staff"
                                    \revert Staff.Stem.stemlet-length
                                    b'''16
                                    - \accent
                                    ]
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        \change Staff = "piano 2 staff"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'''16
                                        [
                                        \change Staff = "piano 1 staff"
                                        b'''16
                                        \change Staff = "piano 2 staff"
                                        b'''16
                                        \change Staff = "piano 1 staff"
                                        b'''16
                                        - \accent
                                        \change Staff = "piano 2 staff"
                                        \revert Staff.Stem.stemlet-length
                                        b'''16
                                        ]
                                    }
                                    \change Staff = "piano 1 staff"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''32
                                    [
                                    \change Staff = "piano 2 staff"
                                    a''32
                                    \change Staff = "piano 1 staff"
                                    a''32
                                    \change Staff = "piano 2 staff"
                                    \revert Staff.Stem.stemlet-length
                                    a''32
                                    ]
                                    \tweak direction #up
                                    \times 2/3
                                    {
                                        \change Staff = "piano 1 staff"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a''8
                                        [
                                        \change Staff = "piano 2 staff"
                                        a''8
                                        - \accent
                                        \change Staff = "piano 2 staff"
                                        \change Staff = "piano 1 staff"
                                        \revert Staff.Stem.stemlet-length
                                        a''8
                                        - \accent
                                        ]
                                    }
                                    \change Staff = "piano 2 staff"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''16
                                    [
                                    \change Staff = "piano 1 staff"
                                    a''16
                                    \change Staff = "piano 2 staff"
                                    a''16
                                    \change Staff = "piano 1 staff"
                                    \revert Staff.Stem.stemlet-length
                                    a''16
                                    - \accent
                                    ]
                                    \times 2/3
                                    {
                                        \change Staff = "piano 2 staff"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a''8
                                        [
                                        \change Staff = "piano 1 staff"
                                        a''8
                                        \change Staff = "piano 2 staff"
                                        \revert Staff.Stem.stemlet-length
                                        a''8
                                        - \accent
                                        ]
                                    }
                                    \override TupletNumber.text = \markup \italic { 4:5 }
                                    \times 15/12
                                    {
                                        \change Staff = "piano 1 staff"
                                        a''4
                                        a''4
                                        - \accent
                                    }
                                    \revert TupletNumber.text
                                    \tweak direction #up
                                    \times 2/3
                                    {
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'''8
                                        [
                                        \change Staff = "piano 2 staff"
                                        e'''8
                                        \change Staff = "piano 1 staff"
                                        \revert Staff.Stem.stemlet-length
                                        e'''8
                                        ]
                                    }
                                    \change Staff = "piano 2 staff"
                                    e'''8
                                    - \accent
                                    ~
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'''16
                                    [
                                    \change Staff = "piano 1 staff"
                                    \revert Staff.Stem.stemlet-length
                                    e'''8.
                                    ]
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
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
                                    \clef "treble"
                                    s1 * 3/4
                                    \fff
                                    - \tweak circled-tip ##t
                                    \>
                                    s1 * 1/2
                                    s1 * 3/4
                                    s1 * 1/2
                                    s1 * 3/4
                                    s1 * 1/2
                                    \ppp
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
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

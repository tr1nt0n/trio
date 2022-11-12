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
            % COMMANDS:
            \boxed-markup "Skyward, {diagonal moves} (i)" 1.5
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
            % OPENING:
            % COMMANDS:
            \time 3/4
            s1 * 3/4
            % OPENING:
            % COMMANDS:
            \time 1/8
            s1 * 1/8
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
                                    \once \override Rest.transparent = ##t
                                    \set PianoStaff.shortInstrumentName = \markup { vc. }
                                    r1 * 5/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
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
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \set suggestAccidentals = ##t
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a'''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \fff
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    \>
                                    - \tweak padding #15.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { MSP } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { ST }
                                    \startTextSpan
                                    \(
                                    \glissando
                                    % COMMANDS:
                                    \boxed-markup "I" 1
                                    cs''''32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    aqs'''32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b'''32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        aqf'''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        dqf''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        \tweak style #'triangle
                                        a'''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        cs''''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        aqs'''32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'triangle
                                    b'''32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \glissando
                                    \tweak style #'triangle
                                    aqf'''32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % SPANNER_STARTS:
                                    \glissando
                                    dqf''''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a'''32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        cs''''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        aqs'''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'triangle
                                    aqf'''8
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    dqf''''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a'''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        cs''''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        aqs'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        \tweak style #'triangle
                                        b'''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        aqf'''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        dqf''''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        a'''32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    \tweak style #'triangle
                                    cs''''8
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
                                    cs''''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    aqs'''8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        aqf'''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        dqf''''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        a'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        cs''''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        aqs'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        b'''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % COMMANDS:
                                        \ottava 0
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        g''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        % COMMANDS:
                                        \boxed-markup "III" 1
                                        b''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        gqs''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        a''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        gqf''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        bqs''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        g''32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        gqs''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        a''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        gqf''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        bqs''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        g''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        gqs''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        a''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        gqf''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        bqs''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    g''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \glissando
                                    b''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % SPANNER_STARTS:
                                    \glissando
                                    gqs''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    % OPEN_BRACKETS:
                                    \times 15/18
                                    {
                                        gqf''4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        bqs''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        \tweak style #'triangle
                                        g''4
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 1
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'triangle
                                        d'''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        % COMMANDS:
                                        \boxed-markup "II" 1
                                        \tweak style #'triangle
                                        fs'''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        dqs'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        e'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        dqf'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        gqf'''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        d'''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        fs'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        dqs'''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        e'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        dqf'''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    \tweak style #'triangle
                                    gqf'''32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \glissando
                                    d'''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    - \tweak padding #10
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { ST } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { MSP }
                                    \startTextSpan
                                    \(
                                    \glissando
                                    fs'''32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    dqs'''32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        dqf'''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        gqf'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        d'''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        fs'''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    dqs'''16.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e'''32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
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
                                    e'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    dqf'''16
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
                                    dqf'''32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    gqf'''16.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \(
                                    % COMMANDS:
                                    \ottava 0
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c''8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        % COMMANDS:
                                        \boxed-markup "IV" 1
                                        e''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak padding #8
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { MSP } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { MST }
                                        \startTextSpan
                                        \glissando
                                        cqs''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        d''8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'triangle
                                        bqs'8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        \tweak style #'triangle
                                        eqs''8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'triangle
                                        c''8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        \tweak style #'triangle
                                        e''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'harmonic-mixed
                                        cqs''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'harmonic-mixed
                                        d''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'harmonic-mixed
                                        bqs'32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'harmonic-mixed
                                        eqs''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        \tweak style #'harmonic-mixed
                                        c''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        \)
                                        \stopTextSpan
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##f
                                    % CLOSE_BRACKETS:
                                    }
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set PianoStaff.shortInstrumentName = \markup { cb. }
                                    r1 * 5/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
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
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <g a>32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \fff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        - \tweak padding #15.5
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { MSP } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { MST }
                                        \startTextSpan
                                        \(
                                        \glissando
                                        % COMMANDS:
                                        \boxed-markup "low string portamento" 1
                                        <gqf g>32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <g bqf>32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <g af>32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <g a>32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <gqf g>32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        <g bqf>32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <g af>32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        <g a>32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <gqf g>32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <g bqf>32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <g af>32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        <g a>32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <gqf g>16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        <g bqf>16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        <d e>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <dqf d>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        <d fqs>16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d ef>16.
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <d e>32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
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
                                    <d e>16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <dqf d>16
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
                                    <dqf d>32
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    \revert Staff.Stem.stemlet-length
                                    <d fqs>16.
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <d ef>32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <d e>32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <dqf d>32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <d fqs>32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        <d ef>32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <d e>32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \glissando
                                    <dqf d>32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    <d fqs>32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <d ef>32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <d e>8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        <dqf d>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        <d fqs>8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <a, b,>8.
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <aqf, a,>16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
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
                                    <aqf, a,>8
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
                                    <a, cqs>8
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
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
                                    <a, cqs>16
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
                                    <a, bf,>8.
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    \stopTextSpan
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \set suggestAccidentals = ##f
                                    r4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 5/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
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
                                    \ottava 1
                                    \set PianoStaff.shortInstrumentName = \markup { pno. }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b'''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \fff
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    b'''32
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    b'''32
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b'''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        b'''32
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        b'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b'''32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    b'''32
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    b'''32
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b'''32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        b'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        b'''32
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        b'''32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b'''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        b'''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b'''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        b'''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        b'''32
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        b'''32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    b'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    \change Staff = "piano 2 staff"
                                    b'''16
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    b'''16
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    b'''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        b'''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        b'''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b'''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        b'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        b'''16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    a''32
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    a''32
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a''32
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a''8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        a''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        \change Staff = "piano 2 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        a''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    a''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    a''16
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    a''16
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    a''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        a''8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        a''8
                                        % AFTER:
                                        % COMMANDS:
                                        \ottava 0
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        a''8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 4:5 }
                                    % OPEN_BRACKETS:
                                    \times 15/12
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        a''4
                                        a''4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        e'''8
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        e'''8
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        e'''8
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    e'''8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % SPANNER_STARTS:
                                    ~
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e'''16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e'''8.
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    s1 * 3/4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \>
                                    s1 * 1/2
                                    s1 * 3/4
                                    s1 * 1/2
                                    % AFTER:
                                    % COMMANDS:
                                    \ottava 0
                                    s1 * 3/4
                                    s1 * 1/2
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
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

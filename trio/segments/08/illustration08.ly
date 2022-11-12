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
            \tempo 4=47
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % AFTER:
            % MARKUP:
            - \markup \box \italic \fontsize #1.5 { \center-column { ... thick-veined hand (ii) } }
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 1/12
            s1 * 1/12
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 2/12
            s1 * 1/6
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #3
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-1 \abs-fontsize #8.5 { Accel. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            \startTextSpan
            % BEFORE:
            % COMMANDS:
            \tempo 4=60
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 1/12
            s1 * 1/12
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 2/12
            s1 * 1/6
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #3
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-1 \abs-fontsize #8.5 { Accel. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            \startTextSpan
            % BEFORE:
            % COMMANDS:
            \tempo 4=69
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % AFTER:
            % SPANNER_STOPS:
            \stopTextSpan
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
                                    % OPENING:
                                    % COMMANDS:
                                    \override Accidental.transparent = ##t
                                    <g bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    \f
                                    % COMMANDS:
                                    \boxed-markup "Arco sempre" 1
                                    s1 * 1/12
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        <g bf>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \staccato
                                        % START_BEAM:
                                        [
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        <g bf>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \staccato
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    r4
                                    <g bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    \ff
                                    s1 * 1/12
                                    <g bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    s1 * 1/6
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % SPANNER_STARTS:
                                    \<
                                    <g bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    <g bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    \fff
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
                                    c,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \snappizzicato
                                    - \staccato
                                    % COMMANDS:
                                    \boxed-markup "Pizz." 1
                                    s1 * 1/12
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    c,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    c,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \snappizzicato
                                    - \staccato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    c,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \override Staff.Stem.stemlet-length = 0.75
                                        c,8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \snappizzicato
                                        - \staccato
                                        % START_BEAM:
                                        [
                                        % OPENING:
                                        % COMMANDS:
                                        \revert Staff.Stem.stemlet-length
                                        c,8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \staccato
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    c,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    r4
                                    c,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \snappizzicato
                                    - \staccato
                                    s1 * 1/12
                                    c,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \snappizzicato
                                    - \staccato
                                    c,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    s1 * 1/6
                                    c,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    c,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \snappizzicato
                                    - \staccato
                                    c,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \snappizzicato
                                    - \staccato
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
                                    % OPENING:
                                    % COMMANDS:
                                    \override Accidental.transparent = ##t
                                    <g bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    \f
                                    % COMMANDS:
                                    \boxed-markup "Arco sempre" 1
                                    s1 * 1/12
                                    r8
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        r8
                                        <g bf>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \staccato
                                        % SPANNER_STARTS:
                                        \<
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    r8
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    \ff
                                    % STOP_BEAM:
                                    ]
                                    s4
                                    s1 * 1/12
                                    <g bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    r8
                                    s1 * 1/6
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    r4
                                    <g bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    \fff
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
                                    e,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \snappizzicato
                                    - \staccato
                                    % COMMANDS:
                                    \boxed-markup "Pizz." 1
                                    s1 * 1/12
                                    r8
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \snappizzicato
                                    - \staccato
                                    % STOP_BEAM:
                                    ]
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        r8
                                        e,8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \staccato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    r8
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    e,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \snappizzicato
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    e,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % STOP_BEAM:
                                    ]
                                    s4
                                    s1 * 1/12
                                    e,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    r8
                                    s1 * 1/6
                                    e,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \snappizzicato
                                    - \staccato
                                    r4
                                    e,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \snappizzicato
                                    - \staccato
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
                                    <cs' d' ef' fs' af'>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    \f
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <d'' ef'' f'' fs'' a''>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \staccato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <cs d ef f bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    <c e af>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <bf, b, fs g a>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % STOP_BEAM:
                                    ]
                                    % COMMANDS:
                                    \ottava 0
                                    s1 * 1/6
                                    <cs' d' ef' fs' af'>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % SPANNER_STARTS:
                                    \<
                                    r8
                                    <c' e' f'>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava -1
                                    <cs d ef f bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    \ff
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <cs''' d''' e''' g''' af'''>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \staccato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <cs' d' ef' fs' af'>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    r8
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <cs''' d''' e''' g''' af'''>4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \staccato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    r8
                                    <cs' d' ef' fs' af'>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % SPANNER_STARTS:
                                    \<
                                    <d'' ef'' f'' fs'' a''>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    \fff
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
                                    <bf,, c, f, fs, g,>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <b,, e, a,>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \staccato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPENING:
                                    % COMMANDS:
                                    \override Staff.Stem.stemlet-length = 0.75
                                    <cs, d, ef, fs, af,>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % START_BEAM:
                                    [
                                    <bf,, c, f, fs, g,>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % OPENING:
                                    % COMMANDS:
                                    \revert Staff.Stem.stemlet-length
                                    <b,, e, a,>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % STOP_BEAM:
                                    ]
                                    s1 * 1/6
                                    <cs, d, ef, fs, af,>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    r8
                                    <bf,, c, f, fs, g,>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    <b,, e, a,>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <cs, d, ef, fs, af,>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \staccato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <bf,, c, f, fs, g,>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    r8
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <b,, e, a,>4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \staccato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    r8
                                    <cs, d, ef, fs, af,>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
                                    <bf,, c, f, fs, g,>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \staccato
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

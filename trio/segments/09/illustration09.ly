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
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #10.5
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-1 \abs-fontsize #8.5 { Accel. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % BEFORE:
            % COMMANDS:
            \tempo 4=105
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
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #10.5
            - \abjad-dashed-line-with-arrow
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-1 \abs-fontsize #8.5 { Accel. } \hspace #0.5 }
            - \tweak bound-details.right.text \markup { . }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % AFTER:
            % COMMANDS:
            \bar ".|:"
            \once \override Score.BarLine.transparent = ##f
            % BEFORE:
            % COMMANDS:
            \tempo 4=130
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % AFTER:
            % MARKUP:
            ^ \markup \abs-fontsize #22 { ×6 }
            % SPANNER_STOPS:
            \stopTextSpan
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 1/6
            s1 * 1/6
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 1/6
            s1 * 1/6
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            #(ly:expect-warning "strange time signature found")
            \time 1/6
            s1 * 1/6
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % AFTER:
            % COMMANDS:
            \bar ":|."
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
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set GrandStaff.shortInstrumentName = \markup { vc. }
                                        <g bf>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    s4.
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <g bf>4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % SPANNER_STARTS:
                                        \<
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <g bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    <g bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \ffff
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <g bf>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    s4.
                                    s1 * 1/6
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \<
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    <g bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        % OPEN_BRACKETS:
                                        \repeat tremolo 4 {
                                            f'32
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \marcato
                                            \fffff
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            - \tweak stencil #abjad-flared-hairpin
                                            \>
                                            \(
                                            d'32
                                            % AFTER:
                                            % SPANNER_STOPS:
                                            \)
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        % OPEN_BRACKETS:
                                        \repeat tremolo 4 {
                                            f'32
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \marcato
                                            \fffff
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            - \tweak stencil #abjad-flared-hairpin
                                            \>
                                            \(
                                            d'32
                                            % AFTER:
                                            % SPANNER_STOPS:
                                            \)
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 4/6
                                    {
                                        % OPEN_BRACKETS:
                                        \repeat tremolo 4 {
                                            f'32
                                            % AFTER:
                                            % ARTICULATIONS:
                                            - \marcato
                                            \fffff
                                            % SPANNER_STARTS:
                                            - \tweak circled-tip ##t
                                            - \tweak stencil #abjad-flared-hairpin
                                            \>
                                            \(
                                            d'32
                                            % AFTER:
                                            % SPANNER_STOPS:
                                            \)
                                        % CLOSE_BRACKETS:
                                        }
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        \(
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
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
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        c,8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \marcato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \times 6/7
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'triangle
                                        d''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        % COMMANDS:
                                        \boxed-markup "Arco, XSB" 1
                                        \tweak style #'triangle
                                        f''16
                                        \tweak style #'triangle
                                        g''16
                                        \tweak style #'triangle
                                        fs''16
                                        \tweak style #'triangle
                                        c''16
                                        \tweak style #'triangle
                                        a''16
                                        \tweak style #'triangle
                                        ef''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \slurSolid
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        c,4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \marcato
                                        % COMMANDS:
                                        \boxed-markup "NB., Pizz." 1
                                    % CLOSE_BRACKETS:
                                    }
                                    c,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \marcato
                                    - \snappizzicato
                                    c,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    c,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \marcato
                                    - \snappizzicato
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        c,8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \marcato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    r8
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'triangle
                                        e''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        % COMMANDS:
                                        \boxed-markup "Arco, XSB" 1
                                        \tweak style #'triangle
                                        b'16
                                        \tweak style #'triangle
                                        bf''16
                                        \tweak style #'triangle
                                        bf'16
                                        \tweak style #'triangle
                                        cs''16
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
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/9
                                    {
                                        af''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        cs''32
                                        bf'32
                                        bf''32
                                        b'32
                                        e''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        )
                                        % STOP_BEAM:
                                        ]
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
                                    \clef "bass"
                                    c,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \marcato
                                    % COMMANDS:
                                    \boxed-markup "NB., Pizz." 1
                                    c,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \snappizzicato
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % COMMANDS:
                                        \boxed-markup "Arco" 1
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
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
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
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
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
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            c
                                        >16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/9
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
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
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            cs'
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >4.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
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
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
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
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
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
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            c
                                        >16
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/9
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            a'
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
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
                                        % ARTICULATIONS:
                                        - \marcato
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
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
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
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
                                        % SPANNER_STARTS:
                                        \glissando
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
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            c
                                        >8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >4.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##f
                                    % CLOSE_BRACKETS:
                                    }
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
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set GrandStaff.shortInstrumentName = \markup { cb. }
                                        <g bf>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    <g bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <g bf>4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % SPANNER_STARTS:
                                        \<
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    s4.
                                    s4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ffff
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <g bf>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <g bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    <g bf>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <g bf>4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % SPANNER_STARTS:
                                        \<
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    s1 * 3/8
                                    s1 * 1/4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fffff
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/6
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/6
                                    s1 * 1/4
                                    s1 * 1/6
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/4
                                    s1 * 1/4
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
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        e,8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    e,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    e,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    - \snappizzicato
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        e,4
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
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \times 15/18
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        <a, b,>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % COMMANDS:
                                        \boxed-markup "Arco" 1
                                        <aqf, a,>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, cqs>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, bf,>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>8
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
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        e,8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \snappizzicato
                                        % COMMANDS:
                                        \boxed-markup "Pizz." 1
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    e,4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    e,8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        e,4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        - \snappizzicato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \times 6/7
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        <a, cqs>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % COMMANDS:
                                        \boxed-markup "Arco" 1
                                        <a, bf,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, cqs>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, bf,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>16
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
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        <aqf, a,>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % COMMANDS:
                                        \boxed-markup "low string portamento" 1
                                        <a, cqs>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, bf,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, cqs>16
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
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <a, bf,>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <a, b,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, cqs>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, bf,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>16
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
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        <a, cqs>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <a, bf,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, cqs>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, bf,>16
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
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        <a, b,>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <aqf, a,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, cqs>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, bf,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        <aqf, a,>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        \glissando
                                        <a, cqs>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, bf,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, cqs>16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <a, bf,>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        \glissando
                                        <a, b,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, cqs>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, bf,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        <a, b,>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        \glissando
                                        <aqf, a,>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, cqs>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, bf,>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        <a, cqs>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        \glissando
                                        <a, bf,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, cqs>16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        <a, bf,>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        \glissando
                                        <a, b,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, cqs>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, bf,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        <aqf, a,>16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        \(
                                        \glissando
                                        <a, cqs>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, bf,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    % OPEN_BRACKETS:
                                    \times 15/18
                                    {
                                        <a, b,>4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fffff
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <aqf, a,>4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, cqs>4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, bf,>4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>4
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
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set GrandStaff.shortInstrumentName = \markup { pno. }
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <c e fs af bf>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                    % CLOSE_BRACKETS:
                                    }
                                    <b, g a>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    <bf, cs d ef f>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <c e fs af bf>4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % SPANNER_STARTS:
                                        \<
                                    % CLOSE_BRACKETS:
                                    }
                                    <b, g a>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    <bf, cs d ef f>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 1
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        d'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \ffff
                                        % START_BEAM:
                                        [
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        fs'''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        d'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        af'''16
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        c'''16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % STOP_BEAM:
                                        ]
                                        % COMMANDS:
                                        \ottava 0
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <c e fs af bf>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <ef'' bf'' b'' fs'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    <a'' g''' a'''>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    % COMMANDS:
                                    \ottava 0
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <b, g a>4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % SPANNER_STARTS:
                                        \<
                                    % CLOSE_BRACKETS:
                                    }
                                    <bf, cs d ef f>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    <c e fs af bf>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <f'' a'' cs''' fs'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <a'' e''' fs''' a'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <a'' cs''' af''' bf'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <b'' d''' e''' af'''>4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        - \marcato
                                        \arpeggio
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                    % CLOSE_BRACKETS:
                                    }
                                    <ef'' bf'' b'' fs'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <a'' g''' a'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <f'' a'' cs''' fs'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <a'' e''' fs''' a'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <a'' cs''' af''' bf'''>4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        - \marcato
                                        \arpeggio
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                    % CLOSE_BRACKETS:
                                    }
                                    <b'' d''' e''' af'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <ef'' bf'' b'' fs'''>4
                                        % AFTER:
                                        % STEM_TREMOLOS:
                                        :32
                                        % ARTICULATIONS:
                                        - \marcato
                                        \arpeggio
                                        \fffff
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                    % CLOSE_BRACKETS:
                                    }
                                    <a'' g''' a'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <f'' a'' cs''' fs'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <a'' e''' fs''' a'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <a'' cs''' af''' bf'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fffff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    <b'' d''' e''' af'''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    \fffff
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
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava -1
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <a,,, bf,,, b,,, d,, af,,>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <cs,, e,, f,,>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    <c,, ef,, fs,, g,, a,,>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        <a,,, bf,,, b,,, d,, af,,>4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <cs,, e,, f,,>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    <c,, ef,, fs,, g,, a,,>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    s4
                                    % AFTER:
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava -1
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <a,,, bf,,, b,,, d,, af,,>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % COMMANDS:
                                        \ottava 0
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <bf c''>4
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    <d' cs''>8
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :64
                                    % ARTICULATIONS:
                                    - \marcato
                                    \arpeggio
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 2/3
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava -1
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <cs,, e,, f,,>4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    <c,, ef,, fs,, g,, a,,>8
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    <a,,, bf,,, b,,, d,, af,,>4
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        f,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        cs,16
                                        f,16
                                        cs,16
                                        f,16
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
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        f,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        ef,16
                                        fs,16
                                        ef,16
                                        f,16
                                        d,16
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
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        cs,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        f,16
                                        cs,16
                                        f,16
                                        fs,16
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
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 3:2 }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/9
                                    {
                                        c,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        d,32
                                        f,32
                                        ef,32
                                        fs,32
                                        e,32
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
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        f,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        fs,16
                                        f,16
                                        fs,16
                                        f,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        af,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        e,16
                                        af,16
                                        e,16
                                        fs,16
                                        e,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        fs,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        f,16
                                        cs,16
                                        f,16
                                        fs,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        af,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        e,16
                                        fs,16
                                        e,16
                                        af,16
                                        e,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        g,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        fs,16
                                        g,16
                                        af,16
                                        g,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        af,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        e,16
                                        fs,16
                                        ef,16
                                        f,16
                                        d,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak edge-height #'(0.7 . 0)
                                    \times 8/15
                                    {
                                        fs,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        g,16
                                        fs,16
                                        g,16
                                        af,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        c,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        d,16
                                        c,16
                                        bf,,16
                                        c,16
                                        bf,,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        a,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        ef,16
                                        a,16
                                        ef,16
                                        a,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        a,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        bf,,16
                                        a,16
                                        bf,,16
                                        a,16
                                        b,,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        ef,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        b,,16
                                        ef,16
                                        a,16
                                        af,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        g,16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        b,,16
                                        g,16
                                        cs,16
                                        g,16
                                        cs,16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
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

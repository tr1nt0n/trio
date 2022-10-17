\version "2.20.0"
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
            \tempo 8=130
            % OPENING:
            % COMMANDS:
            \time 12/8
            s1 * 3/2
            % AFTER:
            % COMMANDS:
            \left-aligned-boxed-markup "Toccata" 1.5
            % BEFORE:
            % COMMANDS:
            \tempo 8=69
            % OPENING:
            % COMMANDS:
            \time 2/8
            s1 * 1/4
            % OPENING:
            % COMMANDS:
            \time 11/8
            s1 * 11/8
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \pageBreak
            % OPENING:
            % COMMANDS:
            \time 3/16
            s1 * 3/16
            % OPENING:
            % COMMANDS:
            \time 9/8
            s1 * 9/8
            % OPENING:
            % COMMANDS:
            \time 1/8
            s1 * 1/8
            % BEFORE:
            % COMMANDS:
            \tempo 8=105
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % BEFORE:
            % COMMANDS:
            \tempo 8=60
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
            % BEFORE:
            % COMMANDS:
            \tempo 8=69
            % OPENING:
            % COMMANDS:
            \time 12/8
            s1 * 3/2
            % OPENING:
            % COMMANDS:
            \time 11/8
            s1 * 11/8
            % AFTER:
            % SPANNER_STARTS:
            - \tweak padding #3
            - \abjad-dashed-line-with-hook
            - \tweak bound-details.left.text \markup \concat { \italic \halign #-1.5 \abs-fontsize #8.5 { Accel. poco a poco (to approx. 135 BPM) } \hspace #0.5 }
            \startTextSpan
            % OPENING:
            % COMMANDS:
            \time 9/8
            s1 * 9/8
            % OPENING:
            % COMMANDS:
            \time 8/8
            s1 * 1
            % AFTER:
            % MARKUP:
            - \markup \italic \abs-fontsize #8.5 { a tempo }
            % SPANNER_STOPS:
            \stopTextSpan
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
            % OPENING:
            % COMMANDS:
            \time 2/8
            s1 * 1/4
            % BEFORE:
            % COMMANDS:
            \tempo 4=130
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    \set PianoStaff.shortInstrumentName = \markup { vc. }
                                    r1 * 3/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
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
                                    r1 * 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    r4
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % SPANNER_STARTS:
                                        \(
                                        % COMMANDS:
                                        \boxed-markup "NB" 1
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \evans-BAD-spanner-right-text #0
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak staff-padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
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
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 13:11
                                    % OPEN_BRACKETS:
                                    \times 44/52
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        \tweak style #'#'harmonic-mixed
                                        cs''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        % COMMANDS:
                                        \boxed-markup "Ord., FB" 1
                                        \tweak style #'#'harmonic-mixed
                                        c''32
                                        \tweak style #'#'harmonic-mixed
                                        af''32
                                        \tweak style #'#'harmonic-mixed
                                        f''32
                                        \tweak style #'#'harmonic-mixed
                                        af''32
                                        \tweak style #'#'harmonic-mixed
                                        f''32
                                        \tweak style #'#'harmonic-mixed
                                        af''32
                                        \tweak style #'#'harmonic-mixed
                                        c''32
                                        \tweak style #'#'harmonic-mixed
                                        cs''32
                                        \tweak style #'#'harmonic-mixed
                                        e''32
                                        \tweak style #'#'harmonic-mixed
                                        cs''32
                                        \tweak style #'#'harmonic-mixed
                                        c''32
                                        \tweak style #'#'harmonic-mixed
                                        af''32
                                        \tweak style #'#'harmonic-mixed
                                        f''32
                                        \tweak style #'#'harmonic-mixed
                                        b'32
                                        \tweak style #'#'harmonic-mixed
                                        f''32
                                        \tweak style #'#'harmonic-mixed
                                        b'32
                                        \tweak style #'#'harmonic-mixed
                                        d''32
                                        \tweak style #'#'harmonic-mixed
                                        ef''32
                                        \tweak style #'#'harmonic-mixed
                                        d''32
                                        \tweak style #'#'harmonic-mixed
                                        ef''32
                                        \tweak style #'#'harmonic-mixed
                                        d''32
                                        \tweak style #'#'harmonic-mixed
                                        b'32
                                        \tweak style #'#'harmonic-mixed
                                        d''32
                                        \tweak style #'#'harmonic-mixed
                                        ef''32
                                        \tweak style #'#'harmonic-mixed
                                        d''32
                                        \tweak style #'#'harmonic-mixed
                                        b'32
                                        \tweak style #'#'harmonic-mixed
                                        d''32
                                        \tweak style #'#'harmonic-mixed
                                        b'32
                                        \tweak style #'#'harmonic-mixed
                                        d''32
                                        \tweak style #'#'harmonic-mixed
                                        b'32
                                        \tweak style #'#'harmonic-mixed
                                        f''32
                                        \tweak style #'#'harmonic-mixed
                                        af''32
                                        \tweak style #'#'harmonic-mixed
                                        c''32
                                        \tweak style #'#'harmonic-mixed
                                        af''32
                                        \tweak style #'#'harmonic-mixed
                                        c''32
                                        \tweak style #'#'harmonic-mixed
                                        cs''32
                                        \tweak style #'#'harmonic-mixed
                                        e''32
                                        \tweak style #'#'harmonic-mixed
                                        cs''32
                                        \tweak style #'#'harmonic-mixed
                                        c''32
                                        \tweak style #'#'harmonic-mixed
                                        cs''32
                                        \tweak style #'#'harmonic-mixed
                                        c''32
                                        \tweak style #'#'harmonic-mixed
                                        cs''32
                                        \tweak style #'#'harmonic-mixed
                                        c''32
                                        \tweak style #'#'harmonic-mixed
                                        af''32
                                        \tweak style #'#'harmonic-mixed
                                        f''32
                                        \tweak style #'#'harmonic-mixed
                                        b'32
                                        \tweak style #'#'harmonic-mixed
                                        d''32
                                        \tweak style #'#'harmonic-mixed
                                        b'32
                                        \tweak style #'#'harmonic-mixed
                                        d''32
                                        \tweak style #'#'harmonic-mixed
                                        b'32
                                        \tweak style #'#'harmonic-mixed
                                        f''32
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    r2
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \set suggestAccidentals = ##t
                                    c''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    \f
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    - \tweak padding #11.5
                                    - \abjad-dashed-line-with-hook
                                    - \tweak bound-details.left.text \markup \concat { { IV } \hspace #0.5 }
                                    \startTextSpan
                                    \(
                                    \glissando
                                    % COMMANDS:
                                    \boxed-markup "NB" 1
                                    e''16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 7:4
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        cqs''16
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        d''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        bqs'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        eqs''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        c''16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        e''16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'#'triangle
                                        cqs''16
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
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 3:2
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        \tweak style #'#'triangle
                                        d''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'#'triangle
                                        bqs'32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'#'triangle
                                        eqs''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'#'triangle
                                        c''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'#'triangle
                                        e''32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        \tweak style #'#'triangle
                                        cqs''32
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
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    \tweak style #'#'harmonic-mixed
                                    b'32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak padding #9
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XSB }
                                    \startTextSpan
                                    \tweak style #'#'harmonic-mixed
                                    c''32
                                    \tweak style #'#'harmonic-mixed
                                    f''32
                                    \tweak style #'#'harmonic-mixed
                                    fs''32
                                    \tweak style #'#'harmonic-mixed
                                    f''32
                                    \tweak style #'#'harmonic-mixed
                                    c''32
                                    \tweak style #'#'harmonic-mixed
                                    b'32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'#'harmonic-mixed
                                    c''32
                                    \tweak style #'#'harmonic-mixed
                                    b'32
                                    \tweak style #'#'harmonic-mixed
                                    g''32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    \tweak style #'#'harmonic-mixed
                                    b'32
                                    \tweak style #'#'harmonic-mixed
                                    c''32
                                    \tweak style #'#'harmonic-mixed
                                    f''32
                                    \tweak style #'#'harmonic-mixed
                                    fs''32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % SPANNER_STARTS:
                                    - \tweak padding #9
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XFB }
                                    \startTextSpan
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenor"
                                    \tweak style #'#'harmonic-mixed
                                    f'32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \tweak style #'#'harmonic-mixed
                                    c'32
                                    \tweak style #'#'harmonic-mixed
                                    f'32
                                    \tweak style #'#'harmonic-mixed
                                    ef'32
                                    \tweak style #'#'harmonic-mixed
                                    af'32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'#'harmonic-mixed
                                    ef'32
                                    \tweak style #'#'harmonic-mixed
                                    fs'32
                                    \tweak style #'#'harmonic-mixed
                                    ef'32
                                    \tweak style #'#'harmonic-mixed
                                    af'32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'#'triangle
                                    f''32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \tweak style #'#'triangle
                                    fs''32
                                    \tweak style #'#'triangle
                                    f''32
                                    \tweak style #'#'triangle
                                    c''32
                                    \tweak style #'#'triangle
                                    b'32
                                    \tweak style #'#'triangle
                                    c''32
                                    \tweak style #'#'triangle
                                    b'32
                                    \tweak style #'#'triangle
                                    g''32
                                    \tweak style #'#'triangle
                                    b'32
                                    \tweak style #'#'triangle
                                    g''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    - \tweak padding #9
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XSB }
                                    \startTextSpan
                                    \tweak style #'#'triangle
                                    b'32
                                    \tweak style #'#'triangle
                                    c''32
                                    \tweak style #'#'triangle
                                    f''32
                                    \tweak style #'#'triangle
                                    c''32
                                    \tweak style #'#'triangle
                                    b'32
                                    \tweak style #'#'triangle
                                    g''32
                                    \tweak style #'#'triangle
                                    b'32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenor"
                                    \tweak style #'#'triangle
                                    ef'32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \tweak style #'#'triangle
                                    fs'32
                                    \tweak style #'#'triangle
                                    ef'32
                                    \tweak style #'#'triangle
                                    fs'32
                                    \tweak style #'#'triangle
                                    ef'32
                                    \tweak style #'#'triangle
                                    fs'32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'#'triangle
                                    cs'32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    \tweak style #'#'triangle
                                    d'32
                                    cs'32
                                    fs'32
                                    cs'32
                                    d'32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    cs32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    bf32
                                    cs32
                                    bf32
                                    cs32
                                    bf32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak padding #9
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XFB }
                                    \startTextSpan
                                    fs32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    bf32
                                    fs32
                                    c32
                                    d32
                                    a32
                                    b,32
                                    a32
                                    b,32
                                    f32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenor"
                                    \tweak style #'#'triangle
                                    e'32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \tweak style #'#'triangle
                                    d'32
                                    \tweak style #'#'triangle
                                    cs'32
                                    \tweak style #'#'triangle
                                    fs'32
                                    \tweak style #'#'triangle
                                    ef'32
                                    \tweak style #'#'triangle
                                    af'32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    \tweak style #'#'triangle
                                    ef'32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'#'triangle
                                    fs'32
                                    \tweak style #'#'triangle
                                    ef'32
                                    \tweak style #'#'triangle
                                    fs'32
                                    \tweak style #'#'triangle
                                    ef'32
                                    \tweak style #'#'triangle
                                    fs'32
                                    \tweak style #'#'triangle
                                    cs'32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % SPANNER_STARTS:
                                    - \tweak padding #9
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XSB }
                                    \startTextSpan
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \tweak style #'#'triangle
                                    c''32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \tweak style #'#'triangle
                                    b'32
                                    \tweak style #'#'triangle
                                    c''32
                                    \tweak style #'#'triangle
                                    f''32
                                    \tweak style #'#'triangle
                                    fs''32
                                    \tweak style #'#'triangle
                                    f''32
                                    \tweak style #'#'triangle
                                    fs''32
                                    \tweak style #'#'triangle
                                    f''32
                                    \tweak style #'#'triangle
                                    fs''32
                                    \tweak style #'#'triangle
                                    f''32
                                    \tweak style #'#'triangle
                                    fs''32
                                    \tweak style #'#'harmonic-mixed
                                    f''32
                                    \tweak style #'#'harmonic-mixed
                                    fs''32
                                    \tweak style #'#'harmonic-mixed
                                    f''32
                                    \tweak style #'#'harmonic-mixed
                                    c''32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    \tweak style #'#'harmonic-mixed
                                    f''32
                                    \tweak style #'#'harmonic-mixed
                                    c''32
                                    \tweak style #'#'harmonic-mixed
                                    f''32
                                    \tweak style #'#'harmonic-mixed
                                    fs''32
                                    \tweak style #'#'harmonic-mixed
                                    f''32
                                    \tweak style #'#'harmonic-mixed
                                    fs''32
                                    \tweak style #'#'harmonic-mixed
                                    f''32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak padding #9
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XFB }
                                    \startTextSpan
                                    \tweak style #'#'harmonic-mixed
                                    fs''32
                                    \tweak style #'#'harmonic-mixed
                                    f''32
                                    \tweak style #'#'harmonic-mixed
                                    c''32
                                    \tweak style #'#'harmonic-mixed
                                    b'32
                                    \tweak style #'#'harmonic-mixed
                                    g''32
                                    \tweak style #'#'harmonic-mixed
                                    b'32
                                    \tweak style #'#'harmonic-mixed
                                    c''32
                                    \tweak style #'#'harmonic-mixed
                                    b'32
                                    \tweak style #'#'triangle
                                    c''32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    \tweak style #'#'triangle
                                    f''32
                                    \tweak style #'#'triangle
                                    fs''32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'#'triangle
                                    f''32
                                    \tweak style #'#'triangle
                                    c''32
                                    \tweak style #'#'triangle
                                    b'32
                                    \tweak style #'#'triangle
                                    c''32
                                    \tweak style #'#'triangle
                                    b'32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XSB }
                                    \startTextSpan
                                    \tweak style #'#'triangle
                                    g''32
                                    \tweak style #'#'triangle
                                    b'32
                                    \tweak style #'#'triangle
                                    c''32
                                    \tweak style #'#'triangle
                                    f''32
                                    \tweak style #'#'triangle
                                    fs''32
                                    \tweak style #'#'triangle
                                    f''32
                                    \tweak style #'#'triangle
                                    fs''32
                                    \tweak style #'#'triangle
                                    f''32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenor"
                                    \tweak style #'#'triangle
                                    ef'32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    af'64
                                    ef'64
                                    fs'64
                                    ef'64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    af'64
                                    ef'64
                                    fs'64
                                    cs'64
                                    d'64
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    a64
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XFB }
                                    \startTextSpan
                                    d64
                                    a64
                                    d64
                                    a64
                                    d64
                                    a64
                                    b,64
                                    f64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \mf
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    af64
                                    f64
                                    af64
                                    f64
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XSB }
                                    \startTextSpan
                                    b,64
                                    f64
                                    b,64
                                    f64
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenor"
                                    cs'64
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    d'64
                                    cs'64
                                    fs'64
                                    ef'64
                                    fs'64
                                    \tweak style #'#'triangle
                                    ef'64
                                    \tweak style #'#'triangle
                                    af'64
                                    \tweak style #'#'triangle
                                    ef'64
                                    \tweak style #'#'triangle
                                    af'64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'#'triangle
                                    ef'64
                                    \tweak style #'#'triangle
                                    fs'64
                                    \tweak style #'#'triangle
                                    cs'64
                                    \tweak style #'#'triangle
                                    d'64
                                    \tweak style #'#'triangle
                                    e'64
                                    \tweak style #'#'triangle
                                    f'64
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    \stopTextSpan
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \tweak style #'#'triangle
                                    c'64
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \tweak style #'#'triangle
                                    af64
                                    \tweak style #'#'triangle
                                    g64
                                    \tweak style #'#'triangle
                                    af64
                                    \tweak style #'#'triangle
                                    g64
                                    \tweak style #'#'triangle
                                    ef64
                                    \tweak style #'#'triangle
                                    g64
                                    \tweak style #'#'triangle
                                    ef64
                                    \tweak style #'#'triangle
                                    e64
                                    \tweak style #'#'triangle
                                    ef64
                                    \tweak style #'#'triangle
                                    g64
                                    \tweak style #'#'triangle
                                    ef64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \f
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XFB }
                                    \startTextSpan
                                    \tweak style #'#'triangle
                                    g64
                                    \tweak style #'#'triangle
                                    af64
                                    \tweak style #'#'triangle
                                    f64
                                    \tweak style #'#'triangle
                                    b,64
                                    \tweak style #'#'triangle
                                    f64
                                    \tweak style #'#'triangle
                                    b,64
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "tenor"
                                    \tweak style #'#'triangle
                                    c'64
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \tweak style #'#'triangle
                                    fs'64
                                    \tweak style #'#'triangle
                                    cs'64
                                    \tweak style #'#'triangle
                                    fs'64
                                    \tweak style #'#'harmonic-mixed
                                    cs'64
                                    \tweak style #'#'harmonic-mixed
                                    fs'64
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    \tweak style #'#'harmonic-mixed
                                    cs'64
                                    \tweak style #'#'harmonic-mixed
                                    fs'64
                                    \tweak style #'#'harmonic-mixed
                                    c'64
                                    \tweak style #'#'harmonic-mixed
                                    af'64
                                    \tweak style #'#'harmonic-mixed
                                    c'64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'#'harmonic-mixed
                                    fs'64
                                    \tweak style #'#'harmonic-mixed
                                    cs'64
                                    \tweak style #'#'harmonic-mixed
                                    e'64
                                    \tweak style #'#'harmonic-mixed
                                    cs'64
                                    \tweak style #'#'harmonic-mixed
                                    e'64
                                    \tweak style #'#'harmonic-mixed
                                    cs'64
                                    \tweak style #'#'harmonic-mixed
                                    fs'64
                                    \tweak style #'#'harmonic-mixed
                                    cs'64
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    \tweak style #'#'harmonic-mixed
                                    af64
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \tweak style #'#'harmonic-mixed
                                    f64
                                    \tweak style #'#'harmonic-mixed
                                    af64
                                    \tweak style #'#'harmonic-mixed
                                    g64
                                    \tweak style #'#'harmonic-mixed
                                    ef64
                                    \tweak style #'#'harmonic-mixed
                                    g64
                                    \tweak style #'#'harmonic-mixed
                                    af64
                                    \tweak style #'#'harmonic-mixed
                                    f64
                                    \tweak style #'#'harmonic-mixed
                                    cs64
                                    \tweak style #'#'harmonic-mixed
                                    bf64
                                    \tweak style #'#'harmonic-mixed
                                    cs64
                                    \tweak style #'#'harmonic-mixed
                                    bf64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    - \tweak padding #10.5
                                    - \abjad-dashed-line-with-arrow
                                    - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                    - \tweak bound-details.right.text \markup \italic { XSB }
                                    \startTextSpan
                                    \tweak style #'#'harmonic-mixed
                                    cs64
                                    \tweak style #'#'triangle
                                    bf64
                                    \tweak style #'#'triangle
                                    fs64
                                    \tweak style #'#'triangle
                                    bf64
                                    \tweak style #'#'triangle
                                    fs64
                                    \tweak style #'#'triangle
                                    c64
                                    \tweak style #'#'triangle
                                    d64
                                    \tweak style #'#'triangle
                                    a64
                                    \tweak style #'#'triangle
                                    b,64
                                    \tweak style #'#'triangle
                                    a64
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    )
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \slurDashed
                                    \tweak style #'#'triangle
                                    b,64
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    (
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    \tweak style #'#'triangle
                                    a,64
                                    \tweak style #'#'triangle
                                    ef,64
                                    \tweak style #'#'triangle
                                    c,64
                                    \tweak style #'#'triangle
                                    af,64
                                    \tweak style #'#'triangle
                                    bf,64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \fff
                                    % SPANNER_STARTS:
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \>
                                    \tweak style #'#'triangle
                                    af,64
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \stopTextSpan
                                    \tweak style #'#'triangle
                                    bf,64
                                    \tweak style #'#'triangle
                                    af,64
                                    \tweak style #'#'triangle
                                    bf,64
                                    \tweak style #'#'triangle
                                    b,64
                                    \tweak style #'#'triangle
                                    f,64
                                    \tweak style #'#'triangle
                                    fs,64
                                    \tweak style #'#'triangle
                                    f,64
                                    \tweak style #'#'triangle
                                    fs,64
                                    \tweak style #'#'triangle
                                    f,64
                                    \tweak style #'#'triangle
                                    b,64
                                    \tweak style #'#'triangle
                                    f,64
                                    \tweak style #'#'triangle
                                    b,64
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \!
                                    % SPANNER_STOPS:
                                    )
                                    % STOP_BEAM:
                                    ]
                                    % ABSOLUTE_AFTER:
                                    % COMMANDS:
                                    \slurSolid
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    r4
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 3:2
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            b,
                                            \tweak style #'harmonic-mixed
                                            fs
                                        >8
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
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >8
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
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >2
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
                                    r1 * 3/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/16
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
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
                                    r1 * 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    r4
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \evans-BAD-spanner-right-text #0
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak staff-padding #2.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
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
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 13:11
                                    % OPEN_BRACKETS:
                                    \times 44/52
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        % COMMANDS:
                                        \boxed-markup "Ord., FB" 1
                                        \tweak style #'#'harmonic-mixed
                                        g'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        g'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        g'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        f'32
                                        \tweak style #'#'harmonic-mixed
                                        fs'32
                                        \tweak style #'#'harmonic-mixed
                                        f'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        g'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        g'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        g'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        f'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        g'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        f'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        g'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        f'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        f'32
                                        \tweak style #'#'harmonic-mixed
                                        fs'32
                                        \tweak style #'#'harmonic-mixed
                                        f'32
                                        \tweak style #'#'harmonic-mixed
                                        fs'32
                                        \tweak style #'#'harmonic-mixed
                                        f'32
                                        \tweak style #'#'harmonic-mixed
                                        fs'32
                                        \tweak style #'#'harmonic-mixed
                                        f'32
                                        \tweak style #'#'harmonic-mixed
                                        fs'32
                                        \tweak style #'#'harmonic-mixed
                                        c'32
                                        \tweak style #'#'harmonic-mixed
                                        a'32
                                        \tweak style #'#'harmonic-mixed
                                        b32
                                        \tweak style #'#'harmonic-mixed
                                        a'32
                                        \tweak style #'#'harmonic-mixed
                                        b32
                                        \tweak style #'#'harmonic-mixed
                                        a'32
                                        \tweak style #'#'harmonic-mixed
                                        b32
                                        \tweak style #'#'harmonic-mixed
                                        a'32
                                        \tweak style #'#'harmonic-mixed
                                        c'32
                                        \tweak style #'#'harmonic-mixed
                                        fs'32
                                        \tweak style #'#'harmonic-mixed
                                        f'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        g'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        f'32
                                        \tweak style #'#'harmonic-mixed
                                        e'32
                                        \tweak style #'#'harmonic-mixed
                                        f'32
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/16
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 10:9
                                    % OPEN_BRACKETS:
                                    \times 72/80
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        \tweak style #'#'harmonic-mixed
                                        ef64
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \tweak circled-tip ##t
                                        \<
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XSB }
                                        \startTextSpan
                                        \tweak style #'#'harmonic-mixed
                                        d64
                                        \tweak style #'#'harmonic-mixed
                                        ef64
                                        \tweak style #'#'harmonic-mixed
                                        c64
                                        \tweak style #'#'harmonic-mixed
                                        ef64
                                        \tweak style #'#'harmonic-mixed
                                        d64
                                        \tweak style #'#'harmonic-mixed
                                        ef64
                                        \tweak style #'#'harmonic-mixed
                                        c64
                                        \tweak style #'#'harmonic-mixed
                                        ef64
                                        \tweak style #'#'harmonic-mixed
                                        c64
                                        \tweak style #'#'harmonic-mixed
                                        fs64
                                        \tweak style #'#'harmonic-mixed
                                        c64
                                        \tweak style #'#'harmonic-mixed
                                        fs64
                                        \tweak style #'#'harmonic-mixed
                                        a64
                                        \tweak style #'#'harmonic-mixed
                                        cs64
                                        \tweak style #'#'harmonic-mixed
                                        b,64
                                        \tweak style #'#'harmonic-mixed
                                        cs64
                                        \tweak style #'#'harmonic-mixed
                                        a64
                                        \tweak style #'#'harmonic-mixed
                                        d64
                                        \tweak style #'#'harmonic-mixed
                                        a64
                                        \tweak style #'#'harmonic-mixed
                                        d64
                                        \tweak style #'#'harmonic-mixed
                                        a64
                                        \tweak style #'#'harmonic-mixed
                                        cs64
                                        \tweak style #'#'harmonic-mixed
                                        b,64
                                        \tweak style #'#'harmonic-mixed
                                        ef64
                                        \tweak style #'#'triangle
                                        f64
                                        \tweak style #'#'triangle
                                        bf,64
                                        \tweak style #'#'triangle
                                        bf64
                                        \tweak style #'#'triangle
                                        bf,64
                                        \tweak style #'#'triangle
                                        c64
                                        \tweak style #'#'triangle
                                        bf,64
                                        \tweak style #'#'triangle
                                        bf64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        \tweak style #'#'triangle
                                        bf,64
                                        \tweak style #'#'triangle
                                        bf64
                                        \tweak style #'#'triangle
                                        bf,64
                                        \tweak style #'#'triangle
                                        c64
                                        \tweak style #'#'triangle
                                        e64
                                        \tweak style #'#'triangle
                                        c64
                                        \tweak style #'#'triangle
                                        e64
                                        \tweak style #'#'triangle
                                        f64
                                        \tweak style #'#'triangle
                                        fs64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \f
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        \tweak style #'#'triangle
                                        f64
                                        \tweak style #'#'triangle
                                        c64
                                        \tweak style #'#'triangle
                                        f64
                                        \tweak style #'#'triangle
                                        fs64
                                        \tweak style #'#'triangle
                                        f64
                                        \tweak style #'#'triangle
                                        c64
                                        \tweak style #'#'triangle
                                        e64
                                        \tweak style #'#'triangle
                                        bf64
                                        \tweak style #'#'triangle
                                        d64
                                        \tweak style #'#'triangle
                                        bf64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XFB }
                                        \startTextSpan
                                        \tweak style #'#'triangle
                                        e64
                                        \tweak style #'#'triangle
                                        c64
                                        \tweak style #'#'triangle
                                        g64
                                        \tweak style #'#'triangle
                                        c64
                                        \tweak style #'#'triangle
                                        g64
                                        \tweak style #'#'triangle
                                        c64
                                        b,64
                                        fs64
                                        af64
                                        bf64
                                        af64
                                        fs64
                                        b,64
                                        fs64
                                        e64
                                        c64
                                        bf,64
                                        bf64
                                        af64
                                        f64
                                        a64
                                        ef64
                                        d64
                                        ef64
                                        d64
                                        ef64
                                        d64
                                        ef64
                                        a64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        )
                                        \stopTextSpan
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 5:4
                                    % OPEN_BRACKETS:
                                    \times 16/20
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \slurDashed
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        af'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \fp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        (
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XSB }
                                        \startTextSpan
                                        \<
                                        c'16
                                        af'16
                                        e'16
                                        af'16
                                        e'16
                                        a'16
                                        ef'16
                                        \tweak style #'#'triangle
                                        a'16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \stopTextSpan
                                        \tweak style #'#'triangle
                                        e'16
                                        \tweak style #'#'triangle
                                        af'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mf
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \>
                                        \tweak style #'#'triangle
                                        e'16
                                        \tweak style #'#'triangle
                                        a'16
                                        \tweak style #'#'triangle
                                        e'16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        - \tweak padding #9
                                        - \abjad-dashed-line-with-arrow
                                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                                        - \tweak bound-details.right.text \markup \italic { XFB }
                                        \startTextSpan
                                        \tweak style #'#'triangle
                                        a'16
                                        \tweak style #'#'triangle
                                        ef'16
                                        \tweak style #'#'harmonic-mixed
                                        cs'16
                                        \tweak style #'#'harmonic-mixed
                                        d'16
                                        \tweak style #'#'harmonic-mixed
                                        cs'16
                                        d'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \!
                                        % SPANNER_STOPS:
                                        )
                                        \stopTextSpan
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
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/2
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
                                    r1 * 1
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 6:7
                                    % OPEN_BRACKETS:
                                    \times 7/6
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <a, b,>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        - \tweak circled-tip ##t
                                        \<
                                        \(
                                        \glissando
                                        % COMMANDS:
                                        \boxed-markup "NB" 1
                                        <aqf, a,>8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, cqs>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <a, bf,>8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <a, b,>8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                        <aqf, a,>8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \ff
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
                                    r4
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic 7:4
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        ^ \p
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
                                            g'''
                                        >8
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
                                            b
                                        >8
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
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >2
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
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 13:12
                                    % OPEN_BRACKETS:
                                    \times 48/52
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 2
                                        \set PianoStaff.shortInstrumentName = \markup { pno. }
                                        b''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        ef'''32
                                        cs'''32
                                        e'''32
                                        fs'''32
                                        g'''32
                                        af'''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        c'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \f
                                        b''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        g'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        g'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        c'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        f''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STARTS:
                                        \(
                                        cs''''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        a''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \f
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        bf'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STARTS:
                                        \(
                                        g''''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        a''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \f
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        e''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STARTS:
                                        \(
                                        cs''''32
                                        g''''32
                                        f''''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        ef''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \f
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \f
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        ef''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        d''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % COMMANDS:
                                        \ottava 0
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        af'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STARTS:
                                        \(
                                        fs'32
                                        a'32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        ef'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \f
                                        % SPANNER_STARTS:
                                        \(
                                        e'''32
                                        af'''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 2
                                        d'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STARTS:
                                        \(
                                        g'''32
                                        cs'''32
                                        c'''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        f'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \f
                                        fs'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \f
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        fs'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        f'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        c'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        fs'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        f'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        d'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        f'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        d'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        f'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % STOP_BEAM:
                                        ]
                                        % COMMANDS:
                                        \ottava 0
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/16
                                    r2.
                                    <ef'' bf'' b'' fs'''>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    \mp
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 13:12
                                    % OPEN_BRACKETS:
                                    \times 48/52
                                    {
                                        % BEFORE:
                                        % COMMANDS:
                                        \ottava 2
                                        ef''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        b'''32
                                        ef''''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        bf,,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \mf
                                        e,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        b'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % SPANNER_STARTS:
                                        \(
                                        ef''''32
                                        b'''32
                                        d''''32
                                        b'''32
                                        d''''32
                                        g''''32
                                        e''''32
                                        c''''32
                                        a'''32
                                        c''''32
                                        a'''32
                                        fs''''32
                                        a'''32
                                        c''''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        af,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \mf
                                        e,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        fs,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        e''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % SPANNER_STARTS:
                                        \(
                                        c''''32
                                        e''''32
                                        c''''32
                                        e''''32
                                        c''''32
                                        a'''32
                                        fs''''32
                                        a''''32
                                        fs''''32
                                        a''''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        cs,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \mf
                                        f,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        fs,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        g,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        af,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        fs''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % SPANNER_STARTS:
                                        \(
                                        a'''32
                                        fs''''32
                                        a'''32
                                        fs''''32
                                        a''''32
                                        bf'''32
                                        a''''32
                                        bf'''32
                                        af''''32
                                        bf'''32
                                        af''''32
                                        cs''''32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 13:11
                                    % OPEN_BRACKETS:
                                    \times 44/52
                                    {
                                        af''''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        bf'''32
                                        af''''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        c'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \mf
                                        b''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        bf'''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % SPANNER_STARTS:
                                        \(
                                        a''''32
                                        fs''''32
                                        a'''32
                                        fs''''32
                                        a'''32
                                        fs''''32
                                        a''''32
                                        fs''''32
                                        a''''32
                                        bf'''32
                                        af''''32
                                        bf'''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        e''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \mf
                                        c''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        a''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        d''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        b'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        ef''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        af''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        a''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % SPANNER_STARTS:
                                        \(
                                        fs''''32
                                        ef''''32
                                        b'''32
                                        ef''''32
                                        b'''32
                                        ef''''32
                                        b'''32
                                        d''''32
                                        b'''32
                                        d''''32
                                        g''''32
                                        e''''32
                                        c''''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        b32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \mf
                                        af'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        d'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        af''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ppp
                                        % SPANNER_STARTS:
                                        \(
                                        a'''32
                                        af''''32
                                        ef''''32
                                        af''''32
                                        a'''32
                                        af''''32
                                        ef''''32
                                        af''''32
                                        ef''''32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 10:9
                                    % OPEN_BRACKETS:
                                    \times 36/40
                                    {
                                        af''''32
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        ef''''32
                                        a''''32
                                        c''''32
                                        a''''32
                                        ef''''32
                                        a''''32
                                        c''''32
                                        b'''32
                                        c''''32
                                        a''''32
                                        ef''''32
                                        af''''32
                                        a'''32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        bf,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fff
                                        cs32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        fs32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        c32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        d32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        a32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        b,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        f32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        af32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        g32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        ef32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        e32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        ef32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        g32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        af32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        f32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        b,32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        a32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        d32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        c32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        fs32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        cs32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        af''''32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STARTS:
                                        \(
                                        ef''''32
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletBracket.padding = 3
                                    \override TupletNumber.text = \markup \italic 5:4
                                    % OPEN_BRACKETS:
                                    \times 64/80
                                    {
                                        af''''64
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        ef''''64
                                        af''''64
                                        ef''''64
                                        a''''64
                                        ef''''64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        a''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \mf
                                        cs''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        c''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        g''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        f''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        af''''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \mp
                                        % SPANNER_STARTS:
                                        \(
                                        a'''64
                                        af''''64
                                        ef''''64
                                        af''''64
                                        a'''64
                                        af''''64
                                        ef''''64
                                        a''''64
                                        c''''64
                                        a''''64
                                        c''''64
                                        a''''64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        bf'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \mf
                                        e''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        f''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        c''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        bf''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        cs''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        af''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        cs''''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % SPANNER_STARTS:
                                        \(
                                        d''''64
                                        a''''64
                                        d''''64
                                        a''''64
                                        b'''64
                                        fs''''64
                                        b'''64
                                        a''''64
                                        d''''64
                                        a''''64
                                        d''''64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        e''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \f
                                        f''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        b'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        g''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        ef''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        c''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        bf''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        af''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        cs''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        a''''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \p
                                        % SPANNER_STARTS:
                                        \(
                                        d''''64
                                        a''''64
                                        b'''64
                                        a''''64
                                        b'''64
                                        a''''64
                                        b'''64
                                        fs''''64
                                        b'''64
                                        fs''''64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        fs'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \f
                                        b64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        c'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        a'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        e'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        cs'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        d'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        af'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        f'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        g'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        ef'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        a'''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pp
                                        % SPANNER_STARTS:
                                        \(
                                        af''''64
                                        a'''64
                                        af''''64
                                        e''''64
                                        f''''64
                                        % AFTER:
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletBracket.padding
                                    \revert TupletNumber.text
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletBracket.direction = #down
                                    \override TupletNumber.text = \markup \italic 8:7
                                    % OPEN_BRACKETS:
                                    \times 56/64
                                    {
                                        e''''64
                                        % AFTER:
                                        % START_BEAM:
                                        [
                                        af''''64
                                        e''''64
                                        af''''64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        c'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \ff
                                        f'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        cs'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        e'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        ef'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        af'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        a'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        b64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        g'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        d'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        fs'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        d'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        g'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        e''''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \pp
                                        % SPANNER_STARTS:
                                        \(
                                        af''''64
                                        e''''64
                                        f''''64
                                        bf'''64
                                        f''''64
                                        e''''64
                                        af''''64
                                        e''''64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        bf64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \ff
                                        d64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        ef64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        cs64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        f64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        e64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        af64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        c64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        g64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        fs64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        a64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        bf,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        b,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        bf,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        a64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        fs64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        g64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 1 staff"
                                        af''''64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        \ppp
                                        % SPANNER_STARTS:
                                        \(
                                        e''''64
                                        af''''64
                                        e''''64
                                        f''''64
                                        e''''64
                                        f''''64
                                        bf'''64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % COMMANDS:
                                        \ottava 0
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \change Staff = "piano 2 staff"
                                        f,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        \fff
                                        af,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        e,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        g,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        b,,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        c,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        a,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        fs,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        d,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        ef,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        cs,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        bf,,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        cs,64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \marcato
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletBracket.direction
                                    \revert TupletNumber.text
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    c'''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % START_BEAM:
                                    [
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    bf''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \fff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    b''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    \(
                                    c'''''16
                                    b''''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    bf''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \fff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    b''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    bf''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \fff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    c'''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 2 staff"
                                    bf''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \marcato
                                    \fff
                                    % ABSOLUTE_BEFORE:
                                    % COMMANDS:
                                    \change Staff = "piano 1 staff"
                                    c'''''16
                                    % AFTER:
                                    % ARTICULATIONS:
                                    \ppp
                                    % SPANNER_STARTS:
                                    \(
                                    b''''16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
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
                                    % COMMANDS:
                                    \ottava 2
                                    s1.
                                    % AFTER:
                                    % COMMANDS:
                                    \ottava 0
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 11/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/16
                                    r2.
                                    <bf c''>4.
                                    % AFTER:
                                    % STEM_TREMOLOS:
                                    :32
                                    % ARTICULATIONS:
                                    \arpeggio
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    s1 * 3/2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    s1 * 7/8
                                    s1 * 1/4
                                    s1 * 1/4
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    s1 * 3/4
                                    s1 * 3/8
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    s1 * 1
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    s1 * 7/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \ottava 2
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    s2.
                                    % AFTER:
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
}

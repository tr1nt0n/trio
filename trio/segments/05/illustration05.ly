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
            \tempo 4=69
            % OPENING:
            % COMMANDS:
            \time 5/4
            s1 * 5/4
            % AFTER:
            % COMMANDS:
            \boxed-markup "in th posession of nymphs and naiads" 1.5
            % OPENING:
            % COMMANDS:
            \time 9/8
            s1 * 9/8
            % OPENING:
            % COMMANDS:
            \time 1/4
            s1 * 1/4
            % ABSOLUTE_AFTER:
            % COMMANDS:
            \pageBreak
            % OPENING:
            % COMMANDS:
            \time 6/4
            s1 * 3/2
            % OPENING:
            % COMMANDS:
            \time 11/8
            s1 * 11/8
            % OPENING:
            % COMMANDS:
            \time 12/8
            s1 * 3/2
            % OPENING:
            % COMMANDS:
            \time 7/8
            s1 * 7/8
            % OPENING:
            % COMMANDS:
            \time 13/8
            s1 * 13/8
            % OPENING:
            % COMMANDS:
            \time 3/8
            s1 * 3/8
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
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set PianoStaff.shortInstrumentName = \markup { vc. }
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'128
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
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \f
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \p
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \mf
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'8.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \p
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \f
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
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
                                        d'32..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32..
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'128
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
                                        f'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \mp
                                        % SPANNER_STARTS:
                                        \(
                                        \<
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        \tweak Accidental.transparent ##t
                                        g64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \evans-BAD-spanner-right-text #0
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak staff-padding #3.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \evans-BAD-spanner-right-text #0
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak staff-padding #3.5
                                        \evansStartTextSpanBAD
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
                                    % OPEN_BRACKETS:
                                    \times 4/5
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >2
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
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
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
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
                                        >4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >32
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
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
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
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    % OPEN_BRACKETS:
                                    \times 15/18
                                    {
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
                                        <
                                            \tweak style #'harmonic-mixed
                                            d
                                            \tweak style #'harmonic-mixed
                                            a
                                        >8
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
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
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >8.
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
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
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
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            cs'
                                        >4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
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
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
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
                                            d'
                                            \tweak style #'harmonic-mixed
                                            a'
                                        >8
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
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
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
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >2
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >32
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
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            a'''
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            e'
                                        >8
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
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
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
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >16
                                        % AFTER:
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
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
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
                                        >8.
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
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/8
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
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
                                        >1..
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
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
                                        >1.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    <
                                        \tweak style #'harmonic-mixed
                                        f,
                                        \tweak style #'harmonic-mixed
                                        c
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
                                        \tweak style #'harmonic-mixed
                                        c''
                                        \tweak style #'harmonic-mixed
                                        g''
                                    >16
                                    % AFTER:
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    ~
                                    <
                                        \tweak style #'harmonic-mixed
                                        c''
                                        \tweak style #'harmonic-mixed
                                        g''
                                    >4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    <
                                        \tweak style #'harmonic-mixed
                                        g''
                                        \tweak style #'harmonic-mixed
                                        d'''
                                    >8
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        b,
                                        \tweak style #'harmonic-mixed
                                        fs
                                    >4
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
                                    <
                                        \tweak style #'harmonic-mixed
                                        b,
                                        \tweak style #'harmonic-mixed
                                        fs
                                    >4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 3/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        \revert Accidental.stencil
                                        \revert NoteColumn.glissando-skip
                                        \revert NoteHead.no-ledgers
                                        \undo \hide NoteHead
                                        <
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >8
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
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
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
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >4.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        af,
                                        \tweak style #'harmonic-mixed
                                        ef
                                    >16.
                                    % AFTER:
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
                                    >32
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
                                        g''
                                        \tweak style #'harmonic-mixed
                                        d'''
                                    >32
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        af,
                                        \tweak style #'harmonic-mixed
                                        ef
                                    >32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    <
                                        \tweak style #'harmonic-mixed
                                        d
                                        \tweak style #'harmonic-mixed
                                        a
                                    >16
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
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
                                    % SPANNER_STARTS:
                                    \glissando
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
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        g''
                                        \tweak style #'harmonic-mixed
                                        d'''
                                    >32.
                                    % AFTER:
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
                                    >128
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        g''
                                        \tweak style #'harmonic-mixed
                                        d'''
                                    >128
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        fs
                                        \tweak style #'harmonic-mixed
                                        cs'
                                    >64
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
                                        d'''
                                        \tweak style #'harmonic-mixed
                                        a'''
                                    >16..
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            a'
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
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
                                        >4.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/6
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            bf
                                        >8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >2
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        ~
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/13
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
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
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
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
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
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
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/6
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >8
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
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
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
                                            e,
                                            \tweak style #'harmonic-mixed
                                            b,
                                        >4.
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
                                        >8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
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
                                            c
                                            \tweak style #'harmonic-mixed
                                            g
                                        >16
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
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
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
                                    % OPEN_BRACKETS:
                                    \times 8/13
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            c''
                                            \tweak style #'harmonic-mixed
                                            g''
                                        >32
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
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs,
                                            \tweak style #'harmonic-mixed
                                            af,
                                        >32
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
                                        >32
                                        % AFTER:
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
                                        >32
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
                                        >32
                                        % AFTER:
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
                                        >32
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
                                        >32
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
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            c
                                        >32
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
                                        >32
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
                                        >32
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
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            c
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
                                            \tweak style #'harmonic-mixed
                                            g''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >16.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
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
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >8.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            b,
                                            \tweak style #'harmonic-mixed
                                            fs
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
                                    \repeat tremolo 4 {
                                        % BEFORE:
                                        % COMMANDS:
                                        \set PianoStaff.shortInstrumentName = \markup { cb. }
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'32
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'128
                                        \tweak Accidental.transparent ##t
                                        f'128
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \f
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf64.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g64.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \p
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \mf
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'8.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \p
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'128
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \f
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
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
                                        d'32..
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
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
                                        d'32.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
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
                                        d'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        \mp
                                        % SPANNER_STARTS:
                                        \(
                                        \<
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        f'64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g16
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        \tweak Accidental.transparent ##t
                                        g64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        bf16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        g16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-counterclockwise-BAD-spanner-left-text #-45
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak padding #5.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'64
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \evans-BAD-spanner-right-text #0
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak staff-padding #3.5
                                        \evansStartTextSpanBAD
                                        \tweak Accidental.transparent ##t
                                        bf64
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % ABSOLUTE_AFTER:
                                        % COMMANDS:
                                        \evansStopTextSpanBAD
                                        - \abjad-dashed-line-with-arrow
                                        - \evans-clockwise-BAD-spanner-left-text #45
                                        - \evans-BAD-spanner-right-text #0
                                        - \tweak bound-details.right.padding 1.4
                                        - \tweak staff-padding #3.5
                                        \evansStartTextSpanBAD
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
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 13:10 }
                                    % OPEN_BRACKETS:
                                    \times 30/39
                                    {
                                        % ABSOLUTE_BEFORE:
                                        % COMMANDS:
                                        \set suggestAccidentals = ##t
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >32
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
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
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
                                        >32
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
                                            g'''
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            g'
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
                                        >32
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
                                            g'''
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >32
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
                                            g'''
                                        >32
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        fs
                                        \tweak style #'harmonic-mixed
                                        b
                                    >32
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
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        d'''
                                        \tweak style #'harmonic-mixed
                                        g'''
                                    >32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    <
                                        \tweak style #'harmonic-mixed
                                        d'
                                        \tweak style #'harmonic-mixed
                                        g'
                                    >16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    <
                                        \tweak style #'harmonic-mixed
                                        d'''
                                        \tweak style #'harmonic-mixed
                                        g'''
                                    >32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
                                        >8.
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
                                            g'''
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
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
                                    % OPEN_BRACKETS:
                                    \times 8/13
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >16
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
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
                                            g'''
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
                                            b
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
                                            g'''
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'
                                            \tweak style #'harmonic-mixed
                                            g'
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
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
                                            g'''
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        af,
                                        \tweak style #'harmonic-mixed
                                        cs
                                    >16
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
                                    <
                                        \tweak style #'harmonic-mixed
                                        af,
                                        \tweak style #'harmonic-mixed
                                        cs
                                    >32
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <
                                        \tweak style #'harmonic-mixed
                                        e''
                                        \tweak style #'harmonic-mixed
                                        a''
                                    >32
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e
                                            \tweak style #'harmonic-mixed
                                            a
                                        >8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >4.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
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
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            a,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 8/13
                                    {
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
                                        % ARTICULATIONS:
                                        - \accent
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
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            b,
                                            \tweak style #'harmonic-mixed
                                            e
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e
                                            \tweak style #'harmonic-mixed
                                            a
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            a,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    <
                                        \tweak style #'harmonic-mixed
                                        b,
                                        \tweak style #'harmonic-mixed
                                        e
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    <
                                        \tweak style #'harmonic-mixed
                                        f,
                                        \tweak style #'harmonic-mixed
                                        bf,
                                    >32
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    <
                                        \tweak style #'harmonic-mixed
                                        e''
                                        \tweak style #'harmonic-mixed
                                        a''
                                    >16.
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    \glissando
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
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            bf,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >16
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
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >8.
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            cs
                                            \tweak style #'harmonic-mixed
                                            fs
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >8
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            d'''
                                            \tweak style #'harmonic-mixed
                                            g'''
                                        >1
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            fs
                                            \tweak style #'harmonic-mixed
                                            b
                                        >4
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
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
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "bass"
                                    <
                                        \tweak style #'harmonic-mixed
                                        e
                                        \tweak style #'harmonic-mixed
                                        a
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
                                        e''
                                        \tweak style #'harmonic-mixed
                                        a''
                                    >4
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
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
                                        <
                                            \tweak style #'harmonic-mixed
                                            a,
                                            \tweak style #'harmonic-mixed
                                            d
                                        >4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >4
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >1
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
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >32
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
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
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
                                            \tweak style #'harmonic-mixed
                                            bf,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    <
                                        \tweak style #'harmonic-mixed
                                        d
                                        \tweak style #'harmonic-mixed
                                        g
                                    >16
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
                                    <
                                        \tweak style #'harmonic-mixed
                                        d
                                        \tweak style #'harmonic-mixed
                                        g
                                    >4
                                    % AFTER:
                                    % SPANNER_STARTS:
                                    ~
                                    <
                                        \tweak style #'harmonic-mixed
                                        d
                                        \tweak style #'harmonic-mixed
                                        g
                                    >16
                                    % AFTER:
                                    % START_BEAM:
                                    [
                                    % OPENING:
                                    % COMMANDS:
                                    \clef "treble"
                                    \revert Accidental.stencil
                                    \revert NoteColumn.glissando-skip
                                    \revert NoteHead.no-ledgers
                                    \undo \hide NoteHead
                                    <
                                        \tweak style #'harmonic-mixed
                                        a''
                                        \tweak style #'harmonic-mixed
                                        d'''
                                    >16
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 6/5
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            bf,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >4
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            e
                                            \tweak style #'harmonic-mixed
                                            a
                                        >16
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % BEFORE:
                                    % GROB_OVERRIDES:
                                    \override TupletNumber.text = \markup \italic { 6:5 }
                                    % OPEN_BRACKETS:
                                    \times 15/18
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            bf,
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
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
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
                                            cs
                                            \tweak style #'harmonic-mixed
                                            fs
                                        >2
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                    % CLOSE_BRACKETS:
                                    }
                                    % AFTER:
                                    % GROB_REVERTS:
                                    \revert TupletNumber.text
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
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
                                        % ARTICULATIONS:
                                        - \accent
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
                                            d'
                                            \tweak style #'harmonic-mixed
                                            g'
                                        >8
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
                                            g'''
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
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >2
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \times 2/3
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            g
                                            \tweak style #'harmonic-mixed
                                            c'
                                        >8
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
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
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
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            ef
                                            \tweak style #'harmonic-mixed
                                            af
                                        >32
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                    % CLOSE_BRACKETS:
                                    }
                                    <
                                        \tweak style #'harmonic-mixed
                                        b,
                                        \tweak style #'harmonic-mixed
                                        e
                                    >32
                                    % AFTER:
                                    % ARTICULATIONS:
                                    - \accent
                                    % START_BEAM:
                                    [
                                    % SPANNER_STARTS:
                                    \(
                                    \glissando
                                    <
                                        \tweak style #'harmonic-mixed
                                        f,
                                        \tweak style #'harmonic-mixed
                                        bf,
                                    >8..
                                    % AFTER:
                                    % SPANNER_STOPS:
                                    \)
                                    % STOP_BEAM:
                                    ]
                                    % SPANNER_STARTS:
                                    \glissando
                                    % OPEN_BRACKETS:
                                    \times 4/7
                                    {
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
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            af,
                                            \tweak style #'harmonic-mixed
                                            cs
                                        >4.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
                                    % CLOSE_BRACKETS:
                                    }
                                    % OPEN_BRACKETS:
                                    \tweak text #tuplet-number::calc-fraction-text
                                    \times 5/9
                                    {
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >8.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            e
                                            \tweak style #'harmonic-mixed
                                            a
                                        >2...
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % SPANNER_STARTS:
                                        \glissando
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
                                            e''
                                            \tweak style #'harmonic-mixed
                                            a''
                                        >8
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            f,
                                            \tweak style #'harmonic-mixed
                                            bf,
                                        >2
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
                                            a''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >16
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
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a
                                            \tweak style #'harmonic-mixed
                                            d'
                                        >16
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >8.
                                        % AFTER:
                                        % SPANNER_STOPS:
                                        \)
                                        % STOP_BEAM:
                                        ]
                                        % SPANNER_STARTS:
                                        \glissando
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
                                            bf,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >32.
                                        % AFTER:
                                        % ARTICULATIONS:
                                        - \accent
                                        % START_BEAM:
                                        [
                                        % SPANNER_STARTS:
                                        \(
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            d
                                            \tweak style #'harmonic-mixed
                                            g
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "treble"
                                        <
                                            \tweak style #'harmonic-mixed
                                            a''
                                            \tweak style #'harmonic-mixed
                                            d'''
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        % OPENING:
                                        % COMMANDS:
                                        \clef "bass"
                                        <
                                            \tweak style #'harmonic-mixed
                                            bf,
                                            \tweak style #'harmonic-mixed
                                            ef
                                        >64
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            e
                                            \tweak style #'harmonic-mixed
                                            a
                                        >32
                                        % AFTER:
                                        % SPANNER_STARTS:
                                        \glissando
                                        <
                                            \tweak style #'harmonic-mixed
                                            bf,
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
                                            \tweak style #'harmonic-mixed
                                            a''
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
                                            \tweak style #'harmonic-mixed
                                            cs
                                            \tweak style #'harmonic-mixed
                                            fs
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
                                    \once \override Rest.transparent = ##t
                                    \set PianoStaff.shortInstrumentName = \markup { pno. }
                                    r1 * 5/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
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
                                    r1 * 3/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 13/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
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
                                    r1 * 5/4
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 9/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 1/4
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
                                    r1 * 3/2
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 7/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 13/8
                                    % BEFORE:
                                    % COMMANDS:
                                    \once \override Rest.transparent = ##t
                                    r1 * 3/8
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

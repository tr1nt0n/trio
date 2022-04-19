\version "2.20.0"
\language english
#(set-default-paper-size "arch a")
#(set-global-staff-size 9.5)
#(ly:set-option 'relative-includes #t)

\include "../library.ily"
\include "/Users/trintonprater/evans/lilypond/evans-markups.ily"
\include "/Users/trintonprater/evans/lilypond/evans-spanners.ily"
\include "/Users/trintonprater/baca/lilypond/baca-circle-bow-markups.ily"

\header {
    dedication = \markup \override #'(font-name . "Bodoni72") \fontsize #3 \center-column {"to Natasia Reinhardt" \fontsize #0.25 \with-color #white "."}
    title = \markup \override #'(font-name . "Bodoni72") \fontsize #10 \center-column {"PIANO  TRIO" \fontsize #0.01 \with-color #white "."}
    subtitle = \markup \override #'(font-name . "Bodoni72") \fontsize #3 \center-column {"for Violoncello, Contrabass, and Piano" \fontsize #0.01 \with-color #white "."}
    composer = \markup \override #'(font-name . "Bodoni72") \fontsize #3 {"Trinton (*2000)"}
}

\layout {
    \accidentalStyle dodecaphonic
    % ragged-bottom = ##t
    ragged-last = ##t
    % ragged-right = ##t
    \context {
        \name TimeSignatureContext
        \numericTimeSignature
        \type Engraver_group
        \consists Axis_group_engraver
        \consists Time_signature_engraver
		\consists Mark_engraver
		\consists Metronome_mark_engraver
		\consists Text_engraver
		\consists Text_spanner_engraver
        \override MetronomeMark.stencil = ##f
        \override VerticalAxisGroup.staff-staff-spacing = #'((basic-distance . 2) (minimum-distance . 2) (padding . 2) (stretchability . 0))
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.transparent = ##t
    }

    \context {
        \Score
        \numericTimeSignature
        \accepts TimeSignatureContext
        proportionalNotationDuration = #(ly:make-moment 1 30)
        \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 8) (minimum distance . 8) (padding . 6))

        \override AccidentalSuggestion.avoid-slur = #'ignore

        \override BarLine.hair-thickness = 0.5
        \override BarLine.transparent = ##t
        % \override BarLine.X-extent = #'(0 . 0)
        \override BarLine.thick-thickness = #8

        \override BarNumber.stencil = #(make-stencil-circler 0.1 0.75 ly:text-interface::print)
        \override BarNumber.Y-extent = ##f
		\override BarNumber.Y-offset = 0
		\override BarNumber.extra-offset = #'(-4 . -4)
        \override BarNumber.font-size = 2
        \override BarNumber.font-name = "Bodoni72"
		\override BarNumber.padding = 1

        autoBeaming = ##f
        \override Beam.breakable = ##t
        \override Beam.damping = 99
        \override Beam.concaveness = #10000

        \override Clef.whiteout-style = #'outline
        \override Clef.whiteout = 1

        \override DynamicText.font-size = #-2
        \override DynamicLineSpanner.staff-padding = 4

        \override Glissando.thickness = #2
        \override Glissando.breakable = ##t

        \override Hairpin.to-barline = ##f

        \override MetronomeMark.padding = 2.5
        \override MetronomeMark.font-size = 4
        \override MetronomeMark.extra-offset = #'(4.5 . 0)

        \override Staff.thickness = #0.5

        \override Stem.stemlet-length = 0.75

        \override StemTremolo.beam-width = 1.5
        \override StemTremolo.beam-width = 1.5
        \override StemTremolo.flag-count = 4
        \override StemTremolo.slope = 0.5

        \override Tie.stencil = #flare-tie
        \override Tie.height-limit = 6
        \override Tie.thickness = 1.5

        tupletFullLength = ##t
        \override TupletBracket.full-length-to-extent = ##f
        \override TupletBracket.padding = 2
        \override TupletNumber.font-size = 3
        \override TupletBracket.bracket-visibility = ##t
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override TupletBracket #'stencil =
            #(lambda (grob)
               (let* ((pos (ly:grob-property grob 'positions))
                      (dir (ly:grob-property grob 'direction))
                      (new-pos (if (= dir 1)
                                   (max (car pos)(cdr pos))
                                   (min (car pos)(cdr pos)))))
                 (ly:grob-set-property! grob 'positions (cons new-pos new-pos))
                 (ly:tuplet-bracket::print grob)))
    }

    \context {
        \Staff
        fontSize = #-1
        \override InstrumentName.self-alignment-X = #CENTER
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = 7
		\override TimeSignature.font-name = "Bodoni72"
        \override TimeSignature.whiteout-style = #'outline
        \override TimeSignature.whiteout = 1
    }

    \context {
        \Voice
        \remove Forbid_line_break_engraver
        \override Accidental.font-size = 1
    }
}
%
\paper {
    system-system-spacing = #'((basic-distance . 12) (minimum-distance . 12) (padding . 12))
    indent = 20\mm
    short-indent = 15\mm
    bottom-margin = 10\mm
    left-margin = 10\mm
    right-margin = 10\mm
    top-margin = 10\mm

    oddHeaderMarkup = \markup ""
    evenHeaderMarkup = \markup ""
    oddFooterMarkup = \markup
        \fill-line {
            "Piano Trio - Trinton"
        \concat {
            \fontsize #3
                \fromproperty #'page:page-number-string
        }
        }

        evenFooterMarkup = \markup
            \fill-line {
                \concat {
                    \fontsize #3
                        \fromproperty #'page:page-number-string
                }
                "Piano Trio - Trinton"
            }
}

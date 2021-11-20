\version "2.20.0"
\language english
#(set-default-paper-size "11x17landscape")
#(set-global-staff-size 16)

\include "/Users/trintonprater/scores/trio/trio/library.ily"

\header {
    title = \markup \override #'(font-name . "Bodoni72") \fontsize #5.4 \center-column {"PIANO TRIO" \fontsize #7 \with-color #white "."}
    subtitle = \markup \override #'(font-name . "Bodoni72") \fontsize #3 \center-column {"to Kate Ragan, Cori Trenczer, and Zoe Markle" \fontsize #3.4 \with-color #white "."}
    composer = \markup \override #'(font-name . "Bodoni72") \fontsize #3 {"Trinton (*2000)"}
}

\layout {
    \accidentalStyle dodecaphonic
    ragged-right = ##t
    \context {
        \name TimeSignatureContext
        \numericTimeSignature
        \type Engraver_group
        \consists Axis_group_engraver
		\consists Bar_number_engraver
        \consists Time_signature_engraver
		\consists Mark_engraver
		\consists Metronome_mark_engraver
		\consists Text_engraver
		\consists Text_spanner_engraver
        \override BarNumber.font-size = 3
        \override MetronomeMark.stencil = ##f
		% \override BarNumber.padding = 1
		\override BarNumber.font-name = "Bodoni72"
		% \override TextScript.font-size = 6
        % \override TextSpanner.font-size = 6
        %
		\override TimeSignature.X-extent = #'(0 . 0)
        \override VerticalAxisGroup.default-staff-staff-spacing = #'((basic-distance . 6) (minimum-distance . 6) (padding . 6) (stretchability . 0))
        % \override TimeSignature.break-align-symbol = #'left-edge
        \override TimeSignature.break-visibility = #end-of-line-invisible
        \override TimeSignature.font-size = 5
		\override TimeSignature.font-name = "Bodoni72"
    }
    \context {
        \Score
        \numericTimeSignature
        \override StaffGrouper.staff-staff-spacing = #'((basic-distance . 11) (minimum distance . 11) (padding . 2))
        autoBeaming = ##f
        proportionalNotationDuration = #(ly:make-moment 1 30)
        \remove Bar_number_engraver
        \accepts TimeSignatureContext
        \override DynamicText.font-size = #-2
        \override DynamicLineSpanner.staff-padding = 4
        \override MetronomeMark.padding = 6
        \override MetronomeMark.font-size = 4
        \override MetronomeMark.extra-offset = #'(0.3 . 0)
        tupletFullLength = ##t
        \override Beam.breakable = ##t
        \override TupletBracket.full-length-to-extent = ##f
        \override TupletBracket.padding = 2
        \override TupletNumber.font-size = 1
        \override TupletBracket.bracket-visibility = ##t
        \override TupletNumber.text = #tuplet-number::calc-fraction-text
        \override Stem.stemlet-length = 0.75
        \override Glissando.thickness = #2
        \override Glissando.breakable = ##t
    }
    \context {
        \Staff
        fontSize = #-1
        \remove Time_signature_engraver
        \RemoveAllEmptyStaves
    }
}
%
\paper {
    system-system-spacing = #'((basic-distance . 16) (minimum-distance . 16) (padding . 2))
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

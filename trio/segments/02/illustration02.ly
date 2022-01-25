\version "2.20.0"
\language "english"
\include "/Users/trintonprater/scores/trio/trio/build/trio-stylesheet.ily"
\include "/Users/trintonprater/abjad/docs/source/_stylesheets/abjad.ily"
\score
{
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
                            \context Staff = "piano 1 staff"
                            {
                                \context Voice = "piano 1 voice"
                                {
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { pno. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/8
                                    R1 * 9/8
                                    \stopStaff \startStaff
                                    \ottava -1
                                    \clef "bass"
                                    <g,, b,, ef,>4
                                    :32
                                    \mp
                                    \arpeggio
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
                                    ~
                                    <af, bf, cs>4.
                                    :32
                                    \arpeggio
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
                                    \>
                                    \ottava 0
                                    \ottava -1
                                    <e fs a c'>4.
                                    :32
                                    \arpeggio
                                    \ottava 0
                                    <a' g'' af'' a''>2..
                                    :32
                                    \ppp
                                    \arpeggio
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    <a' g'' af'' a''>4
                                    :32
                                    \arpeggio
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
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        cs''''32
                                        \p
                                        \(
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        bf'''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        af''''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        e''''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        fs''''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        g''''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        b'''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        a'''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        c''''32
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
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    \clef "treble"
                                    <b'' fs'''>4.
                                    :32
                                    \arpeggio
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
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        ef'''32
                                        \f
                                        \(
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        e'''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        af'''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        d'''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        g'''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        cs'''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        c'''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        f'''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        fs'''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        b''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        fs'''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        f'''32
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        c'''32
                                        \)
                                        \ottava 0
                                    }
                                    \revert TupletNumber.text
                                    r1
                                    \ottava 1
                                    <d''' e''' af''' c''''>2.
                                    :32
                                    \p
                                    \arpeggio
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <d''' e''' af''' c''''>4.
                                    :32
                                    \f
                                    \arpeggio
                                    \ottava 0
                                    <af' fs'' g'' af''>2..
                                    :32
                                    \fp
                                    \arpeggio
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \ottava 1
                                    <a'' e''' fs''' a''' c''''>4.
                                    :32
                                    \pp
                                    \arpeggio
                                    \(
                                    <a'' g''' af''' a'''>4
                                    :32
                                    \arpeggio
                                    \)
                                    \ottava 0
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \ottava -1
                                    \clef "bass"
                                    <af,, bf,, cs,>2.
                                    :32
                                    \fp
                                    \arpeggio
                                    \<
                                    ~
                                    <af,, bf,, cs,>2
                                    :32
                                    \arpeggio
                                    \ottava 0
                                    \ottava 1
                                    \clef "treble"
                                    <a'' e''' fs''' a''' c''''>1.
                                    :32
                                    \arpeggio
                                    ~
                                    <a'' e''' fs''' a''' c''''>1..
                                    :32
                                    \arpeggio
                                    \ottava 0
                                    \override TupletNumber.text = \markup \italic 10:9
                                    \times 36/40
                                    {
                                        \ottava 1
                                        ef'''16
                                        [
                                        \(
                                        e'''16
                                        af'''16
                                        d'''16
                                        g'''16
                                        cs'''16
                                        c'''16
                                        f'''16
                                        fs'''16
                                        b''16
                                        fs'''16
                                        f'''16
                                        c'''16
                                        cs'''16
                                        g'''16
                                        d'''16
                                        cs''''16
                                        bf'''16
                                        af''''16
                                        e''''16
                                        fs''''16
                                        g''''16
                                        b'''16
                                        a'''16
                                        c''''16
                                        f''''16
                                        d''''16
                                        a''''16
                                        af'''16
                                        d'''16
                                        g'''16
                                        e'''16
                                        cs'''16
                                        f''16
                                        c''16
                                        e''16
                                        bf''16
                                        fs''16
                                        cs''16
                                        g''16
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    <f'' a'' cs''' fs''' a'''>1.
                                    :32
                                    \fp
                                    \arpeggio
                                    \<
                                    ~
                                    <f'' a'' cs''' fs''' a'''>2.
                                    :32
                                    \arpeggio
                                    ~
                                    <f'' a'' cs''' fs''' a'''>1..
                                    :32
                                    \arpeggio
                                    \ottava 0
                                    \ottava -1
                                    \clef "bass"
                                    <b,, fs,>1.
                                    :32
                                    \arpeggio
                                    \ottava 0
                                    \ottava 1
                                    \clef "treble"
                                    <af''' bf''' cs''''>2.
                                    :32
                                    \arpeggio
                                    ~
                                    <af''' bf''' cs''''>2
                                    :32
                                    \arpeggio
                                    \ottava 0
                                    \ottava -1
                                    \clef "bass"
                                    <af,, bf,, cs,>4
                                    :32
                                    \fff
                                    \arpeggio
                                    - \marcato
                                    \ottava 0
                                    \ottava 1
                                    \clef "treble"
                                    <af''' cs'''' e''''>4
                                    :32
                                    \arpeggio
                                    - \marcato
                                    \ottava 0
                                    \clef "bass"
                                    <bf,, f,>2.
                                    :32
                                    \p
                                    \arpeggio
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <bf,, f,>2
                                    :32
                                    \arpeggio
                                }
                            }
                        }
                        \tag #'voice2
                        {
                            \context Staff = "piano 2 staff"
                            {
                                \context Voice = "piano 2 voice"
                                {
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/8
                                    R1 * 9/8
                                    \stopStaff \startStaff
                                    \ottava -1
                                    \clef "bass"
                                    <a,,, f,,>4
                                    :32
                                    \arpeggio
                                    \ottava 0
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    <a,, cs,>8
                                    :64
                                    \arpeggio
                                    ~
                                    <a,, cs,>4.
                                    :32
                                    \arpeggio
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \clef "treble"
                                    <cs' d'' a''>8
                                    :64
                                    \arpeggio
                                    \ottava -1
                                    \clef "bass"
                                    <d,, c, a,>4.
                                    :32
                                    \arpeggio
                                    \ottava 0
                                    <d cs'>2..
                                    :32
                                    \ppp
                                    \arpeggio
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    <d cs'>4
                                    :32
                                    \arpeggio
                                    ~
                                    <d cs'>4
                                    :32
                                    \!
                                    \arpeggio
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    <fs, af,>8
                                    :64
                                    \arpeggio
                                    \clef "treble"
                                    <bf'>4.
                                    :32
                                    \arpeggio
                                    \ottava -1
                                    \clef "bass"
                                    <ef,, f,, af,,>2..
                                    :32
                                    \p
                                    \arpeggio
                                    - \tweak stencil #constante-hairpin
                                    \<
                                    ~
                                    <ef,, f,, af,,>4
                                    :32
                                    \arpeggio
                                    ~
                                    <ef,, f,, af,,>4
                                    :32
                                    \!
                                    \arpeggio
                                    \ottava 0
                                    \clef "treble"
                                    <af' b''>2.
                                    :32
                                    \arpeggio
                                    ~
                                    <af' b''>4.
                                    :32
                                    \arpeggio
                                    \clef "bass"
                                    <cs a>2..
                                    :32
                                    \arpeggio
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \clef "treble"
                                    <d' c''>4.
                                    :32
                                    \arpeggio
                                    \(
                                    <d' cs''>4
                                    :32
                                    \arpeggio
                                    \)
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \ottava -1
                                    \clef "bass"
                                    <c,, e,,>2.
                                    :32
                                    \arpeggio
                                    ~
                                    <c,, e,,>2
                                    :32
                                    \arpeggio
                                    \ottava 0
                                    \clef "treble"
                                    <d' c''>1.
                                    :32
                                    \arpeggio
                                    ~
                                    <d' c''>1..
                                    :32
                                    \arpeggio
                                    \ottava -1
                                    \clef "bass"
                                    <b,,, cs,, f,, a,,>1.
                                    :32
                                    \arpeggio
                                    ~
                                    <b,,, cs,, f,, a,,>2.
                                    :32
                                    \arpeggio
                                    \ottava 0
                                    \clef "treble"
                                    <b b'>1.
                                    :32
                                    \arpeggio
                                    ~
                                    <b b'>2.
                                    :32
                                    \arpeggio
                                    ~
                                    <b b'>1..
                                    :32
                                    \arpeggio
                                    \ottava -1
                                    \clef "bass"
                                    <ef,, bf,,>1.
                                    :32
                                    \arpeggio
                                    \ottava 0
                                    \ottava 1
                                    \clef "treble"
                                    <a'' cs'''>2.
                                    :32
                                    \arpeggio
                                    ~
                                    <a'' cs'''>2
                                    :32
                                    \arpeggio
                                    \ottava 0
                                    \ottava -1
                                    \clef "bass"
                                    <a,,, cs,,>4
                                    :32
                                    \arpeggio
                                    - \marcato
                                    \ottava 0
                                    \ottava 1
                                    \clef "treble"
                                    <g'' b''>4
                                    :32
                                    \arpeggio
                                    - \marcato
                                    \ottava 0
                                    \ottava -1
                                    \clef "bass"
                                    <d,, a,,>2.
                                    :32
                                    \arpeggio
                                    ~
                                    <d,, a,,>2
                                    :32
                                    \arpeggio
                                    \ottava 0
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
                            \context Staff = "cello 1 staff"
                            {
                                \context Voice = "cello 1 voice"
                                {
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { vc. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/8
                                    R1 * 9/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 11/16
                                    R1 * 11/16
                                    \stopStaff \startStaff
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 11/16
                                    R1 * 11/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/16
                                    R1 * 9/16
                                    \stopStaff \startStaff
                                    r8
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        d'32.
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32.
                                        \)
                                    }
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        f'32.
                                        \(
                                        \tweak Accidental.transparent ##t
                                        d'32.
                                        \)
                                    }
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/16
                                    R1 * 5/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    r4
                                    \repeat tremolo 4 {
                                        \tweak Accidental.transparent ##t
                                        g32
                                        \mf
                                        \(
                                        \tweak Accidental.transparent ##t
                                        bf32
                                        \)
                                    }
                                    r1 * 3/4
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/8
                                    R1 * 7/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/8
                                    R1 * 9/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/8
                                    R1 * 9/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/8
                                    R1 * 7/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice4
                        {
                            \context Staff = "cello 2 staff"
                            {
                                \context Voice = "cello 2 voice"
                                {
                                    \clef "bass"
                                    <c' ef'>2.
                                    \fp
                                    - \upbow
                                    ^ \markup -14
                                    ^ \markup +0
                                    \<
                                    ~
                                    <c' ef'>4
                                    ~
                                    <c' ef'>8
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
                                        ^ \markup -14
                                        ^ \markup +0
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        <c' ef'>32 * 25/16
                                        - \staccato
                                        ^ \markup -14
                                        ^ \markup +0
                                        r32 * 51/32
                                        <c' ef'>32 * 53/32
                                        - \staccato
                                        ^ \markup -14
                                        ^ \markup +0
                                        r32 * 55/32
                                        <c' ef'>32 * 59/32
                                        - \staccato
                                        ^ \markup -14
                                        ^ \markup +0
                                        <c' ef'>32 * 63/32
                                        - \staccato
                                        ^ \markup -14
                                        ^ \markup +0
                                        r32 * 69/32
                                        r32 * 19/8
                                        <c' ef'>32 * 83/32
                                        - \staccato
                                        ^ \markup -14
                                        ^ \markup +0
                                        <c' ef'>32 * 23/8
                                        - \staccato
                                        ^ \markup -14
                                        ^ \markup +0
                                        <c' ef'>32 * 101/32
                                        - \staccato
                                        ^ \markup -14
                                        ^ \markup +0
                                        r32 * 55/16
                                        <c' ef'>32 * 59/16
                                        - \staccato
                                        ^ \markup -14
                                        ^ \markup +0
                                        \)
                                        r32 * 123/32
                                        \!
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    r4.
                                    r4
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
                                        \clef "treble"
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        a'''32
                                        - \accent
                                        - \tweak circled-tip ##t
                                        \<
                                        \glissando
                                        \(
                                        - \abjad-dashed-line-with-hook
                                        - \tweak bound-details.left.text \markup \concat { { I } \hspace #0.5 }
                                        - \tweak padding 16.5
                                        \startTextSpan
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        cs''''32
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        aqs'''32
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        b'''32
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        aqf'''32
                                        \)
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        dqf''''32
                                        - \accent
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
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        a'''32
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        cs''''32
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        aqs'''32
                                        \)
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        b'''32
                                        - \accent
                                        \glissando
                                        \(
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        aqf'''32
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
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        dqf''''32
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        a'''32
                                        \)
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        cs''''32
                                        - \accent
                                        \glissando
                                        \(
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        aqs'''32
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        b'''32
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        aqf'''32
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
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        dqf''''32
                                        \)
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        a'''32
                                        - \accent
                                        \glissando
                                        \(
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        cs''''32
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        aqs'''32
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        b'''32
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
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        aqf'''32
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        dqf''''32
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        a'''32
                                        \)
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        cs''''32
                                        - \accent
                                        \glissando
                                        \(
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        aqs'''32
                                        \glissando
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        b'''32
                                        \p
                                        \)
                                        \stopTextSpan
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
                                    ^ \markup +0
                                    ^ \markup +3
                                    <bf>4.
                                    \p
                                    ^ \markup -3
                                    \<
                                    ~
                                    <bf>8
                                    \f
                                    r4
                                    r1
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/16
                                    R1 * 9/16
                                    \stopStaff \startStaff
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
                                    ^ \markup +26
                                    ^ \markup -6
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/16
                                    R1 * 5/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    r4
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
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r2.
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
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
                                        ^ \markup +17
                                        ^ \markup +23
                                        - \tweak circled-tip ##t
                                        \>
                                        [
                                        \(
                                        <b d'>32 * 49/32
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 25/16
                                        <b d'>32 * 51/32
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 13/8
                                        <b d'>32 * 27/16
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 7/4
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 59/32
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 63/32
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 67/32
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 71/32
                                        <b d'>32 * 77/32
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 83/32
                                        <b d'>32 * 89/32
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 3
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 103/32
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 55/16
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        <b d'>32 * 115/32
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        r32 * 15/4
                                        <b d'>32 * 61/16
                                        - \staccato
                                        ^ \markup +17
                                        ^ \markup +23
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r8
                                    \!
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
                                        ^ \markup +32
                                        ^ \markup +8
                                        - \tweak circled-tip ##t
                                        \<
                                        [
                                        \(
                                        <af, c>32 * 51/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 51/32
                                        <af, c>32 * 13/8
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 13/8
                                        <af, c>32 * 53/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 27/16
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 7/4
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 57/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 59/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 61/32
                                        <af, c>32 * 63/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 33/16
                                        <af, c>32 * 17/8
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 71/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 75/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 79/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 83/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 87/32
                                        <af, c>32 * 91/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 3
                                        <af, c>32 * 101/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 53/16
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 111/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 115/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        <af, c>32 * 119/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        r32 * 123/32
                                        <af, c>32 * 125/32
                                        - \staccato
                                        ^ \markup +32
                                        ^ \markup +8
                                        \)
                                        r32 * 4
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \clef "treble"
                                    <b' f''>1.
                                    \fp
                                    ^ \markup +3
                                    ^ \markup +4
                                    \<
                                    ~
                                    <b' f''>2.
                                    ~
                                    <b' f''>1..
                                    \clef "bass"
                                    <fs,>1.
                                    ^ \markup +7
                                    \clef "treble"
                                    <d'' a''>2.
                                    ^ \markup -16
                                    ^ \markup +16
                                    ~
                                    <d'' a''>2
                                    \clef "bass"
                                    <d, a,>4
                                    \fff
                                    - \marcato
                                    ^ \markup -16
                                    ^ \markup +16
                                    \clef "treble"
                                    <b' f''>4
                                    - \marcato
                                    ^ \markup +3
                                    ^ \markup +4
                                    \clef "bass"
                                    <bf, b,>2.
                                    \p
                                    ^ \markup -5
                                    ^ \markup +7
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <bf, b,>2
                                    :32
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
                            \context Staff = "contrabass 1 staff"
                            {
                                \context Voice = "contrabass 1 voice"
                                {
                                    \set PianoStaff.shortInstrumentName =
                                    \markup { cb. }
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/8
                                    R1 * 9/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 11/16
                                    R1 * 11/16
                                    \stopStaff \startStaff
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 11/16
                                    R1 * 11/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/16
                                    R1 * 9/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/16
                                    R1 * 7/16
                                    \stopStaff \startStaff
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/16
                                    R1 * 5/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/8
                                    R1 * 7/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/8
                                    R1 * 9/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 9/8
                                    R1 * 9/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 7/8
                                    R1 * 7/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/4
                                    R1 * 3/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/4
                                    R1 * 1/4
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/8
                                    R1 * 5/8
                                    \stopStaff \startStaff
                                }
                            }
                        }
                        \tag #'voice6
                        {
                            \context Staff = "contrabass 2 staff"
                            {
                                \context Voice = "contrabass 2 voice"
                                {
                                    \clef "bass"
                                    <b,>2.
                                    \fp
                                    - \upbow
                                    ^ \markup -2
                                    \<
                                    ~
                                    \boxed-markup "NB" 1
                                    <b,>4
                                    ~
                                    <b,>8
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
                                        ^ \markup -2
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        <b,>32 * 25/16
                                        - \staccato
                                        ^ \markup -2
                                        r32 * 51/32
                                        <b,>32 * 53/32
                                        - \staccato
                                        ^ \markup -2
                                        r32 * 55/32
                                        <b,>32 * 59/32
                                        - \staccato
                                        ^ \markup -2
                                        <b,>32 * 63/32
                                        - \staccato
                                        ^ \markup -2
                                        r32 * 69/32
                                        r32 * 19/8
                                        <b,>32 * 83/32
                                        - \staccato
                                        ^ \markup -2
                                        <b,>32 * 23/8
                                        - \staccato
                                        ^ \markup -2
                                        <b,>32 * 101/32
                                        - \staccato
                                        ^ \markup -2
                                        r32 * 55/16
                                        <b,>32 * 59/16
                                        - \staccato
                                        ^ \markup -2
                                        \)
                                        r32 * 123/32
                                        \!
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/8
                                    R1 * 1/8
                                    \stopStaff \startStaff
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 11/16
                                    R1 * 11/16
                                    \stopStaff \startStaff
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                                    \once \override MultiMeasureRest.transparent = ##t
                                    R1 * 1/4
                                    - \markup \huge { \musicglyph "scripts.ufermata" }
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 3/16
                                    R1 * 3/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 11/16
                                    R1 * 11/16
                                    \stopStaff \startStaff
                                    r8
                                    <b>4
                                    ^ \markup -2
                                    - \tweak circled-tip ##t
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <b>2.
                                    \clef "treble"
                                    <cs''>2..
                                    \fp
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
                                    ^ \markup -25
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 5/16
                                    R1 * 5/16
                                    \stopStaff \startStaff
                                    \once \override Rest.transparent = ##t
                                    \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                                    r1 * 1/16
                                    R1 * 1/16
                                    \stopStaff \startStaff
                                    r2
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
                                        ^ \markup +15
                                        ^ \markup +32
                                        - \tweak circled-tip ##t
                                        - \tweak stencil #abjad-flared-hairpin
                                        \>
                                        [
                                        \(
                                        <e' af'>32 * 51/32
                                        - \staccato
                                        ^ \markup +15
                                        ^ \markup +32
                                        r32 * 27/16
                                        <e' af'>32 * 29/16
                                        - \staccato
                                        ^ \markup +15
                                        ^ \markup +32
                                        r32 * 65/32
                                        <e' af'>32 * 73/32
                                        - \staccato
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 21/8
                                        - \staccato
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 97/32
                                        - \staccato
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 111/32
                                        - \staccato
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 31/8
                                        - \staccato
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
                                        [
                                        <e' af'>32 * 51/32
                                        - \staccato
                                        ^ \markup +15
                                        ^ \markup +32
                                        \(
                                        r32 * 27/16
                                        <e' af'>32 * 29/16
                                        - \staccato
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 65/32
                                        - \staccato
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 73/32
                                        - \staccato
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 21/8
                                        - \staccato
                                        ^ \markup +15
                                        ^ \markup +32
                                        <e' af'>32 * 97/32
                                        - \staccato
                                        ^ \markup +15
                                        ^ \markup +32
                                        r32 * 111/32
                                        <e' af'>32 * 31/8
                                        - \staccato
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
                                        \clef "bass"
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        \tweak style #'harmonic-mixed
                                        bf64
                                        \f
                                        \(
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        \tweak style #'harmonic-mixed
                                        e64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        \tweak style #'harmonic-mixed
                                        bf64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        \tweak style #'harmonic-mixed
                                        fs64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        \tweak style #'harmonic-mixed
                                        c64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        \tweak style #'harmonic-mixed
                                        af64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        \tweak style #'triangle
                                        g64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        \tweak style #'triangle
                                        b,64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        \tweak style #'triangle
                                        g64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        \tweak style #'triangle
                                        b,64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        \tweak style #'triangle
                                        a64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        \tweak style #'triangle
                                        b,64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        \tweak style #'triangle
                                        a64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        bf,64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        a64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        bf,64
                                        \tweak Beam.transparent ##t
                                        \tweak Dots.transparent ##t
                                        \tweak Flag.transparent ##t
                                        \tweak Stem.transparent ##t
                                        a64
                                        \)
                                    }
                                    \revert TupletNumber.text
                                    r2
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
                                        ^ \markup +7
                                        ^ \markup +8
                                        - \tweak circled-tip ##t
                                        \>
                                        [
                                        \(
                                        <b fs'>32 * 3/2
                                        - \staccato
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 49/32
                                        <b fs'>32 * 25/16
                                        - \staccato
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 13/8
                                        <b fs'>32 * 55/32
                                        - \staccato
                                        ^ \markup +7
                                        ^ \markup +8
                                        <b fs'>32 * 29/16
                                        - \staccato
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 63/32
                                        r32 * 17/8
                                        <b fs'>32 * 37/16
                                        - \staccato
                                        ^ \markup +7
                                        ^ \markup +8
                                        <b fs'>32 * 5/2
                                        - \staccato
                                        ^ \markup +7
                                        ^ \markup +8
                                        <b fs'>32 * 11/4
                                        - \staccato
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 3
                                        <b fs'>32 * 13/4
                                        - \staccato
                                        ^ \markup +7
                                        ^ \markup +8
                                        r32 * 111/32
                                        <b fs'>32 * 117/32
                                        - \staccato
                                        ^ \markup +7
                                        ^ \markup +8
                                        <b fs'>32 * 119/32
                                        - \staccato
                                        ^ \markup +7
                                        ^ \markup +8
                                        \)
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    r2
                                    \!
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
                                        ^ \markup +23
                                        - \tweak circled-tip ##t
                                        \<
                                        [
                                        \(
                                        <d'>32 * 51/32
                                        - \staccato
                                        ^ \markup +23
                                        r32 * 51/32
                                        <d'>32 * 13/8
                                        - \staccato
                                        ^ \markup +23
                                        r32 * 13/8
                                        <d'>32 * 53/32
                                        - \staccato
                                        ^ \markup +23
                                        <d'>32 * 27/16
                                        - \staccato
                                        ^ \markup +23
                                        r32 * 7/4
                                        r32 * 57/32
                                        <d'>32 * 59/32
                                        - \staccato
                                        ^ \markup +23
                                        <d'>32 * 61/32
                                        - \staccato
                                        ^ \markup +23
                                        <d'>32 * 63/32
                                        - \staccato
                                        ^ \markup +23
                                        r32 * 33/16
                                        <d'>32 * 17/8
                                        - \staccato
                                        ^ \markup +23
                                        r32 * 71/32
                                        <d'>32 * 75/32
                                        - \staccato
                                        ^ \markup +23
                                        <d'>32 * 79/32
                                        - \staccato
                                        ^ \markup +23
                                        r32 * 83/32
                                        r32 * 87/32
                                        <d'>32 * 91/32
                                        - \staccato
                                        ^ \markup +23
                                        <d'>32 * 3
                                        - \staccato
                                        ^ \markup +23
                                        <d'>32 * 101/32
                                        - \staccato
                                        ^ \markup +23
                                        r32 * 53/16
                                        <d'>32 * 111/32
                                        - \staccato
                                        ^ \markup +23
                                        r32 * 115/32
                                        <d'>32 * 119/32
                                        - \staccato
                                        ^ \markup +23
                                        <d'>32 * 123/32
                                        - \staccato
                                        ^ \markup +23
                                        \)
                                        r32 * 125/32
                                        r32 * 4
                                        ]
                                    }
                                    \revert TupletNumber.text
                                    \clef "treble"
                                    <b'>1.
                                    \fp
                                    ^ \markup +0
                                    \<
                                    ~
                                    <b'>2.
                                    ~
                                    <b'>1..
                                    \clef "bass"
                                    <fs>1.
                                    ^ \markup +8
                                    \clef "treble"
                                    <bf'>2.
                                    ^ \markup -3
                                    ~
                                    <bf'>2
                                    \clef "bass"
                                    <g>4
                                    \fff
                                    - \marcato
                                    ^ \markup -25
                                    \clef "treble"
                                    <b'>4
                                    - \marcato
                                    ^ \markup +0
                                    \clef "bass"
                                    <f, a,>2.
                                    \p
                                    ^ \markup +4
                                    ^ \markup +14
                                    - \tweak stencil #abjad-flared-hairpin
                                    \<
                                    ~
                                    <f, a,>2
                                    :32
                                }
                            }
                        }
                    >>
                }
            >>
        }
    >>
}

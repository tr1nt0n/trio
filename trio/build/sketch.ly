    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \time 8/8
            s1 * 1
            \boxed-markup "Skyward, {diagonal moves} (i)" 0.5
            \once \override Score.TimeSignature.transparent = ##t
            \once \override MultiMeasureRest.transparent = ##t
            \time 1/4
            s1 * 1/8
            \once \override Rest.transparent = ##t
            r1 * 1/8
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \times 2/3
                        {
                            \change Staff = "piano 2 staff"
                            \set PianoStaff.instrumentName =
                            \markup { Piano }
                            \override Beam.auto-knee-gap = #0
                            \override Staff.Stem.stemlet-length = 0.75
                            e'''16
                            \fp
                            - \accent
                            [
                            \change Staff = "piano 1 staff"
                            e'''16
                            \fp
                            - \accent
                            \change Staff = "piano 2 staff"
                            \revert Staff.Stem.stemlet-length
                            e'''16
                            ]
                        }
                        \change Staff = "piano 1 staff"
                        \override Staff.Stem.stemlet-length = 0.75
                        e'''32
                        \fp
                        - \accent
                        [
                        \change Staff = "piano 2 staff"
                        e'''32
                        \change Staff = "piano 1 staff"
                        e'''32
                        \fp
                        - \accent
                        \change Staff = "piano 2 staff"
                        \revert Staff.Stem.stemlet-length
                        e'''32
                        ]
                        \times 2/3
                        {
                            \change Staff = "piano 1 staff"
                            \override Staff.Stem.stemlet-length = 0.75
                            e'''16
                            \fp
                            - \accent
                            [
                            \change Staff = "piano 2 staff"
                            e'''16
                            \change Staff = "piano 1 staff"
                            \revert Staff.Stem.stemlet-length
                            e'''16
                            ]
                        }
                        \change Staff = "piano 2 staff"
                        \override Staff.Stem.stemlet-length = 0.75
                        e'''16
                        [
                        \change Staff = "piano 1 staff"
                        \revert Staff.Stem.stemlet-length
                        e'''16
                        \fp
                        - \accent
                        ]
                        \times 2/3
                        {
                            \change Staff = "piano 2 staff"
                            \override Staff.Stem.stemlet-length = 0.75
                            e'''16
                            [
                            \change Staff = "piano 1 staff"
                            e'''16
                            \fp
                            - \accent
                            \change Staff = "piano 2 staff"
                            \revert Staff.Stem.stemlet-length
                            e'''16
                            ]
                        }
                        \change Staff = "piano 1 staff"
                        \override Staff.Stem.stemlet-length = 0.75
                        e'''16
                        [
                        \change Staff = "piano 2 staff"
                        \revert Staff.Stem.stemlet-length
                        e'''16
                        ]
                        \times 4/7
                        {
                            \change Staff = "piano 1 staff"
                            \override Staff.Stem.stemlet-length = 0.75
                            e'''32
                            \fp
                            - \accent
                            [
                            \change Staff = "piano 2 staff"
                            e'''32
                            \change Staff = "piano 1 staff"
                            e'''32
                            \fp
                            - \accent
                            \change Staff = "piano 2 staff"
                            e'''32
                            \change Staff = "piano 1 staff"
                            e'''32
                            \change Staff = "piano 2 staff"
                            e'''32
                            \change Staff = "piano 1 staff"
                            \revert Staff.Stem.stemlet-length
                            e'''32
                            \fp
                            - \accent
                            ]
                        }
                        \change Staff = "piano 2 staff"
                        \override Staff.Stem.stemlet-length = 0.75
                        e'''16
                        [
                        \change Staff = "piano 1 staff"
                        \override Beam.auto-knee-gap = #15
                        \revert Staff.Stem.stemlet-length
                        e'''16
                        ]
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        - \markup \huge { \musicglyph "scripts.ufermata" }
                        \stopStaff \startStaff
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        s1
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        - \markup \huge { \musicglyph "scripts.ufermata" }
                        \stopStaff \startStaff
                    }
                }
            >>
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "cello 1 staff"
                {
                    \context Voice = "cello 1 voice"
                    {
                        \staff-line-count 1
                        \set PianoStaff.instrumentName =
                        \markup { Violoncello }
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        \clef "percussion"
                        r1 * 1/2
                        R1 * 1/2
                        \stopStaff \startStaff
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        - \markup \huge { \musicglyph "scripts.ufermata" }
                        \stopStaff \startStaff
                    }
                }
                \context Staff = "cello 2 staff"
                {
                    \context Voice = "cello 2 voice"
                    {
                        \override Staff.Stem.stemlet-length = 0.75
                        d'''8
                        \f
                        - \accent
                        - \tweak circled-tip ##t
                        \>
                        \glissando
                        \(
                        [
                        \boxed-markup "II" 1
                        \revert Staff.Stem.stemlet-length
                        fs'''8
                        \glissando
                        ]
                        \override Staff.Stem.stemlet-length = 0.75
                        dqs'''8
                        \)
                        \glissando
                        [
                        \set suggestAccidentals = ##t
                        e'''32
                        \f
                        - \accent
                        - \tweak circled-tip ##t
                        \>
                        \glissando
                        \(
                        dqf'''32
                        \glissando
                        gqf'''32
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        d'''32
                        \glissando
                        ]
                        \times 2/3
                        {
                            fs'''4
                            \)
                            \glissando
                            \set suggestAccidentals = ##f
                            dqs'''4
                            \f
                            - \accent
                            - \tweak circled-tip ##t
                            \>
                            \glissando
                            \(
                            e'''4
                            \!
                            \)
                        }
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        - \markup \huge { \musicglyph "scripts.ufermata" }
                        \stopStaff \startStaff
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "contrabass 1 staff"
                {
                    \context Voice = "contrabass 1 voice"
                    {
                        \staff-line-count 1
                        \set PianoStaff.instrumentName =
                        \markup { Contrabass }
                        \once \override Rest.transparent = ##t
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #1 \startStaff
                        \clef "percussion"
                        r1 * 1/2
                        R1 * 1/2
                        \stopStaff \startStaff
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        - \markup \huge { \musicglyph "scripts.ufermata" }
                        \stopStaff \startStaff
                    }
                }
                \context Staff = "contrabass 2 staff"
                {
                    \context Voice = "contrabass 2 voice"
                    {
                        \clef "bass"
                        <d e>4
                        \f
                        - \accent
                        - \tweak circled-tip ##t
                        \>
                        \glissando
                        \(
                        <dqf d>4
                        \glissando
                        <d fqs>4
                        \glissando
                        \set suggestAccidentals = ##t
                        \override Staff.Stem.stemlet-length = 0.75
                        <d ef>16
                        \)
                        \glissando
                        [
                        <d e>16
                        \f
                        - \accent
                        - \tweak circled-tip ##t
                        \>
                        \glissando
                        \(
                        <dqf d>16
                        \glissando
                        \revert Staff.Stem.stemlet-length
                        <d fqs>16
                        \!
                        \)
                        ]
                        \set suggestAccidentals = ##f
                        \stopStaff \once \override Staff.StaffSymbol.line-count = #0 \startStaff
                        \once \override MultiMeasureRest.transparent = ##t
                        R1 * 1/4
                        - \markup \huge { \musicglyph "scripts.ufermata" }
                        \stopStaff \startStaff
                    }
                }
            >>
        >>
    >>

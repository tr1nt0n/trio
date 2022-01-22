    \context Score = "Score"
    <<
        \context TimeSignatureContext = "Global Context"
        {
            \tempo 8=130
            \time 12/8
            s1 * 3/2
            \left-aligned-boxed-markup "Toccata" 1.5
            \tempo 8=69
            \time 2/8
            s1 * 1/4
            \time 11/8
            s1 * 11/8
            \time 3/16
            s1 * 3/16
            \time 9/8
            s1 * 9/8
            \time 1/8
            s1 * 1/8
            \tempo 8=105
            \time 8/8
            s1 * 1
            \tempo 8=60
            \time 3/8
            s1 * 3/8
            \tempo 8=69
            \time 12/8
            s1 * 3/2
            \time 11/8
            s1 * 11/8
            - \markup \italic \abs-fontsize #8.5 { Accel. poco a poco }
            \time 9/8
            s1 * 9/8
            \time 8/8
            s1 * 1
            - \markup \italic \abs-fontsize #8.5 { a tempo }
            \time 7/8
            s1 * 7/8
            \time 2/8
            s1 * 1/4
            \tempo 4=130
            \time 3/4
            s1 * 3/4
            \bar "||"
        }
        \context ChoirStaff = "Staff Group"
        <<
            \context PianoStaff = "sub group 1"
            <<
                \context Staff = "piano 1 staff"
                {
                    \context Voice = "piano 1 voice"
                    {
                        \override TupletNumber.text = \markup \italic 13:12
                        \times 48/52
                        {
                            \set PianoStaff.shortInstrumentName =
                            \markup { pno. }
                            \ottava 2
                            b''32
                            \mp
                            ^ \markup 0
                            [
                            \(
                            ef'''32
                            ^ \markup 1
                            cs'''32
                            ^ \markup 2
                            e'''32
                            ^ \markup 3
                            fs'''32
                            ^ \markup 4
                            g'''32
                            ^ \markup 5
                            af'''32
                            ^ \markup 6
                            \)
                            \change Staff = "piano 2 staff"
                            c'''32
                            \f
                            - \marcato
                            ^ \markup 7
                            b''32
                            - \marcato
                            ^ \markup 8
                            \change Staff = "piano 1 staff"
                            g'''32
                            - \marcato
                            ^ \markup 9
                            \change Staff = "piano 2 staff"
                            b''32
                            - \marcato
                            ^ \markup 10
                            \change Staff = "piano 1 staff"
                            g'''32
                            - \marcato
                            ^ \markup 11
                            \change Staff = "piano 2 staff"
                            b''32
                            - \marcato
                            ^ \markup 12
                            c'''32
                            - \marcato
                            ^ \markup 13
                            \change Staff = "piano 1 staff"
                            f''''32
                            \mp
                            ^ \markup 14
                            \(
                            cs''''32
                            ^ \markup 15
                            \)
                            \change Staff = "piano 2 staff"
                            a''''32
                            \f
                            - \marcato
                            ^ \markup 16
                            \change Staff = "piano 1 staff"
                            bf'''32
                            \mp
                            ^ \markup 17
                            \(
                            g''''32
                            ^ \markup 18
                            \)
                            \change Staff = "piano 2 staff"
                            a''''32
                            \f
                            - \marcato
                            ^ \markup 19
                            \change Staff = "piano 1 staff"
                            e''''32
                            \mp
                            ^ \markup 20
                            \(
                            cs''''32
                            ^ \markup 21
                            g''''32
                            ^ \markup 22
                            f''''32
                            ^ \markup 23
                            \)
                            ef''''32
                            \f
                            - \marcato
                            ^ \markup 24
                            \change Staff = "piano 2 staff"
                            b'''32
                            \f
                            - \marcato
                            ^ \markup 25
                            \change Staff = "piano 1 staff"
                            ef''''32
                            - \marcato
                            ^ \markup 26
                            \change Staff = "piano 2 staff"
                            b'''32
                            - \marcato
                            ^ \markup 27
                            \change Staff = "piano 1 staff"
                            d''''32
                            - \marcato
                            ^ \markup 28
                            \ottava 0
                            \change Staff = "piano 2 staff"
                            b'''32
                            - \marcato
                            ^ \markup 29
                            \change Staff = "piano 1 staff"
                            af'32
                            \mp
                            ^ \markup 30
                            \(
                            fs'32
                            ^ \markup 31
                            a'32
                            ^ \markup 32
                            \)
                            \change Staff = "piano 2 staff"
                            ef'''32
                            \f
                            - \marcato
                            ^ \markup 33
                            \(
                            e'''32
                            ^ \markup 34
                            af'''32
                            ^ \markup 35
                            \)
                            \change Staff = "piano 1 staff"
                            \ottava 2
                            d'''32
                            \mp
                            ^ \markup 36
                            \(
                            g'''32
                            ^ \markup 37
                            cs'''32
                            ^ \markup 38
                            c'''32
                            ^ \markup 39
                            \)
                            f'''32
                            \f
                            - \marcato
                            ^ \markup 40
                            fs'''32
                            - \marcato
                            ^ \markup 41
                            \change Staff = "piano 2 staff"
                            b''32
                            \f
                            - \marcato
                            ^ \markup 42
                            \change Staff = "piano 1 staff"
                            fs'''32
                            - \marcato
                            ^ \markup 43
                            f'''32
                            - \marcato
                            ^ \markup 44
                            \change Staff = "piano 2 staff"
                            c'''32
                            - \marcato
                            ^ \markup 45
                            \change Staff = "piano 1 staff"
                            fs'''32
                            - \marcato
                            ^ \markup 46
                            f'''32
                            - \marcato
                            ^ \markup 47
                            \change Staff = "piano 2 staff"
                            d'''32
                            - \marcato
                            ^ \markup 48
                            \change Staff = "piano 1 staff"
                            f'''32
                            - \marcato
                            ^ \markup 49
                            \change Staff = "piano 2 staff"
                            d'''32
                            - \marcato
                            ^ \markup 50
                            \change Staff = "piano 1 staff"
                            f'''32
                            - \marcato
                            ^ \markup 51
                            ]
                            \ottava 0
                        }
                        \revert TupletNumber.text
                        r4
                        ^ \markup 52
                        r2..
                        ^ \markup 53
                        r4
                        ^ \markup 54
                        r4
                        ^ \markup 55
                        r8.
                        ^ \markup 56
                        r2.
                        ^ \markup 57
                        <ef'' bf'' b'' fs'''>4.
                        :32
                        \mp
                        \arpeggio
                        ^ \markup 58
                        r8
                        ^ \markup 59
                        r1
                        ^ \markup 60
                        \change Staff = "piano 1 staff"
                        r4.
                        ^ \markup 61
                        \override TupletNumber.text = \markup \italic 13:12
                        \times 48/52
                        {
                            \ottava 2
                            ef''''32
                            \p
                            ^ \markup 62
                            [
                            \(
                            b'''32
                            ^ \markup 63
                            ef''''32
                            ^ \markup 64
                            \)
                            \change Staff = "piano 2 staff"
                            bf,,32
                            \mf
                            - \marcato
                            ^ \markup 65
                            e,32
                            - \marcato
                            ^ \markup 66
                            \change Staff = "piano 1 staff"
                            b'''32
                            \p
                            ^ \markup 67
                            \(
                            ef''''32
                            ^ \markup 68
                            b'''32
                            ^ \markup 69
                            d''''32
                            ^ \markup 70
                            b'''32
                            ^ \markup 71
                            d''''32
                            ^ \markup 72
                            g''''32
                            ^ \markup 73
                            e''''32
                            ^ \markup 74
                            c''''32
                            ^ \markup 75
                            a'''32
                            ^ \markup 76
                            c''''32
                            ^ \markup 77
                            a'''32
                            ^ \markup 78
                            fs''''32
                            ^ \markup 79
                            a'''32
                            ^ \markup 80
                            c''''32
                            ^ \markup 81
                            \)
                            \change Staff = "piano 2 staff"
                            af,32
                            \mf
                            - \marcato
                            ^ \markup 82
                            e,32
                            - \marcato
                            ^ \markup 83
                            fs,32
                            - \marcato
                            ^ \markup 84
                            \change Staff = "piano 1 staff"
                            e''''32
                            \p
                            ^ \markup 85
                            \(
                            c''''32
                            ^ \markup 86
                            e''''32
                            ^ \markup 87
                            c''''32
                            ^ \markup 88
                            e''''32
                            ^ \markup 89
                            c''''32
                            ^ \markup 90
                            a'''32
                            ^ \markup 91
                            fs''''32
                            ^ \markup 92
                            a''''32
                            ^ \markup 93
                            fs''''32
                            ^ \markup 94
                            a''''32
                            ^ \markup 95
                            \)
                            \change Staff = "piano 2 staff"
                            cs,32
                            \mf
                            - \marcato
                            ^ \markup 96
                            f,32
                            - \marcato
                            ^ \markup 97
                            fs,32
                            - \marcato
                            ^ \markup 98
                            g,32
                            - \marcato
                            ^ \markup 99
                            af,32
                            - \marcato
                            ^ \markup 100
                            \change Staff = "piano 1 staff"
                            fs''''32
                            \p
                            ^ \markup 101
                            \(
                            a'''32
                            ^ \markup 102
                            fs''''32
                            ^ \markup 103
                            a'''32
                            ^ \markup 104
                            fs''''32
                            ^ \markup 105
                            a''''32
                            ^ \markup 106
                            bf'''32
                            ^ \markup 107
                            a''''32
                            ^ \markup 108
                            bf'''32
                            ^ \markup 109
                            af''''32
                            ^ \markup 110
                            bf'''32
                            ^ \markup 111
                            af''''32
                            ^ \markup 112
                            cs''''32
                            ^ \markup 113
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \italic 13:11
                        \times 44/52
                        {
                            af''''32
                            ^ \markup 114
                            [
                            bf'''32
                            ^ \markup 115
                            af''''32
                            ^ \markup 116
                            \)
                            \change Staff = "piano 2 staff"
                            c'''32
                            \mf
                            - \marcato
                            ^ \markup 117
                            b''32
                            - \marcato
                            ^ \markup 118
                            \change Staff = "piano 1 staff"
                            bf'''32
                            \p
                            ^ \markup 119
                            \(
                            a''''32
                            ^ \markup 120
                            fs''''32
                            ^ \markup 121
                            a'''32
                            ^ \markup 122
                            fs''''32
                            ^ \markup 123
                            a'''32
                            ^ \markup 124
                            fs''''32
                            ^ \markup 125
                            a''''32
                            ^ \markup 126
                            fs''''32
                            ^ \markup 127
                            a''''32
                            ^ \markup 128
                            bf'''32
                            ^ \markup 129
                            af''''32
                            ^ \markup 130
                            bf'''32
                            ^ \markup 131
                            \)
                            \change Staff = "piano 2 staff"
                            e''32
                            \mf
                            - \marcato
                            ^ \markup 132
                            c''32
                            - \marcato
                            ^ \markup 133
                            a''32
                            - \marcato
                            ^ \markup 134
                            d''32
                            - \marcato
                            ^ \markup 135
                            b'32
                            - \marcato
                            ^ \markup 136
                            ef''32
                            - \marcato
                            ^ \markup 137
                            af''32
                            - \marcato
                            ^ \markup 138
                            \change Staff = "piano 1 staff"
                            a''''32
                            \p
                            ^ \markup 139
                            \(
                            fs''''32
                            ^ \markup 140
                            ef''''32
                            ^ \markup 141
                            b'''32
                            ^ \markup 142
                            ef''''32
                            ^ \markup 143
                            b'''32
                            ^ \markup 144
                            ef''''32
                            ^ \markup 145
                            b'''32
                            ^ \markup 146
                            d''''32
                            ^ \markup 147
                            b'''32
                            ^ \markup 148
                            d''''32
                            ^ \markup 149
                            g''''32
                            ^ \markup 150
                            e''''32
                            ^ \markup 151
                            c''''32
                            ^ \markup 152
                            \)
                            \change Staff = "piano 2 staff"
                            b32
                            \mf
                            - \marcato
                            ^ \markup 153
                            af'32
                            - \marcato
                            ^ \markup 154
                            d'32
                            - \marcato
                            ^ \markup 155
                            \change Staff = "piano 1 staff"
                            af''''32
                            \ppp
                            ^ \markup 156
                            \(
                            a'''32
                            ^ \markup 157
                            af''''32
                            ^ \markup 158
                            ef''''32
                            ^ \markup 159
                            af''''32
                            ^ \markup 160
                            a'''32
                            ^ \markup 161
                            af''''32
                            ^ \markup 162
                            ef''''32
                            ^ \markup 163
                            af''''32
                            ^ \markup 164
                            ef''''32
                            ^ \markup 165
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \italic 10:9
                        \times 36/40
                        {
                            af''''32
                            ^ \markup 166
                            [
                            ef''''32
                            ^ \markup 167
                            a''''32
                            ^ \markup 168
                            c''''32
                            ^ \markup 169
                            a''''32
                            ^ \markup 170
                            ef''''32
                            ^ \markup 171
                            a''''32
                            ^ \markup 172
                            c''''32
                            ^ \markup 173
                            b'''32
                            ^ \markup 174
                            c''''32
                            ^ \markup 175
                            a''''32
                            ^ \markup 176
                            ef''''32
                            ^ \markup 177
                            af''''32
                            ^ \markup 178
                            a'''32
                            ^ \markup 179
                            \)
                            \change Staff = "piano 2 staff"
                            bf,32
                            \fff
                            - \marcato
                            ^ \markup 180
                            cs32
                            - \marcato
                            ^ \markup 181
                            bf32
                            - \marcato
                            ^ \markup 182
                            fs32
                            - \marcato
                            ^ \markup 183
                            c32
                            - \marcato
                            ^ \markup 184
                            d32
                            - \marcato
                            ^ \markup 185
                            a32
                            - \marcato
                            ^ \markup 186
                            b,32
                            - \marcato
                            ^ \markup 187
                            f32
                            - \marcato
                            ^ \markup 188
                            af32
                            - \marcato
                            ^ \markup 189
                            g32
                            - \marcato
                            ^ \markup 190
                            ef32
                            - \marcato
                            ^ \markup 191
                            e32
                            - \marcato
                            ^ \markup 192
                            ef32
                            - \marcato
                            ^ \markup 193
                            g32
                            - \marcato
                            ^ \markup 194
                            af32
                            - \marcato
                            ^ \markup 195
                            f32
                            - \marcato
                            ^ \markup 196
                            b,32
                            - \marcato
                            ^ \markup 197
                            a32
                            - \marcato
                            ^ \markup 198
                            d32
                            - \marcato
                            ^ \markup 199
                            c32
                            - \marcato
                            ^ \markup 200
                            fs32
                            - \marcato
                            ^ \markup 201
                            bf32
                            - \marcato
                            ^ \markup 202
                            cs32
                            - \marcato
                            ^ \markup 203
                            \change Staff = "piano 1 staff"
                            af''''32
                            \mp
                            ^ \markup 204
                            \(
                            ef''''32
                            ^ \markup 205
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \italic 5:4
                        \times 64/80
                        {
                            af''''64
                            ^ \markup 206
                            [
                            ef''''64
                            ^ \markup 207
                            af''''64
                            ^ \markup 208
                            ef''''64
                            ^ \markup 209
                            a''''64
                            ^ \markup 210
                            ef''''64
                            ^ \markup 211
                            \)
                            \change Staff = "piano 2 staff"
                            a''64
                            \mf
                            - \marcato
                            ^ \markup 212
                            cs''64
                            - \marcato
                            ^ \markup 213
                            c''64
                            - \marcato
                            ^ \markup 214
                            g''64
                            - \marcato
                            ^ \markup 215
                            f''64
                            - \marcato
                            ^ \markup 216
                            \change Staff = "piano 1 staff"
                            af''''64
                            \mp
                            ^ \markup 217
                            \(
                            a'''64
                            ^ \markup 218
                            af''''64
                            ^ \markup 219
                            ef''''64
                            ^ \markup 220
                            af''''64
                            ^ \markup 221
                            a'''64
                            ^ \markup 222
                            af''''64
                            ^ \markup 223
                            ef''''64
                            ^ \markup 224
                            a''''64
                            ^ \markup 225
                            c''''64
                            ^ \markup 226
                            a''''64
                            ^ \markup 227
                            c''''64
                            ^ \markup 228
                            a''''64
                            ^ \markup 229
                            \)
                            \change Staff = "piano 2 staff"
                            bf'64
                            \mf
                            - \marcato
                            ^ \markup 230
                            e''64
                            - \marcato
                            ^ \markup 231
                            f''64
                            - \marcato
                            ^ \markup 232
                            c''64
                            - \marcato
                            ^ \markup 233
                            bf''64
                            - \marcato
                            ^ \markup 234
                            cs''64
                            - \marcato
                            ^ \markup 235
                            af''64
                            - \marcato
                            ^ \markup 236
                            \change Staff = "piano 1 staff"
                            cs''''64
                            \p
                            ^ \markup 237
                            \(
                            d''''64
                            ^ \markup 238
                            a''''64
                            ^ \markup 239
                            d''''64
                            ^ \markup 240
                            a''''64
                            ^ \markup 241
                            b'''64
                            ^ \markup 242
                            fs''''64
                            ^ \markup 243
                            b'''64
                            ^ \markup 244
                            a''''64
                            ^ \markup 245
                            d''''64
                            ^ \markup 246
                            a''''64
                            ^ \markup 247
                            d''''64
                            ^ \markup 248
                            \)
                            \change Staff = "piano 2 staff"
                            e''64
                            \f
                            - \marcato
                            ^ \markup 249
                            f''64
                            - \marcato
                            ^ \markup 250
                            b'64
                            - \marcato
                            ^ \markup 251
                            g''64
                            - \marcato
                            ^ \markup 252
                            ef''64
                            - \marcato
                            ^ \markup 253
                            c''64
                            - \marcato
                            ^ \markup 254
                            bf''64
                            - \marcato
                            ^ \markup 255
                            af''64
                            - \marcato
                            ^ \markup 256
                            cs''64
                            - \marcato
                            ^ \markup 257
                            \change Staff = "piano 1 staff"
                            a''''64
                            \p
                            ^ \markup 258
                            \(
                            d''''64
                            ^ \markup 259
                            a''''64
                            ^ \markup 260
                            b'''64
                            ^ \markup 261
                            a''''64
                            ^ \markup 262
                            b'''64
                            ^ \markup 263
                            a''''64
                            ^ \markup 264
                            b'''64
                            ^ \markup 265
                            fs''''64
                            ^ \markup 266
                            b'''64
                            ^ \markup 267
                            fs''''64
                            ^ \markup 268
                            \)
                            \change Staff = "piano 2 staff"
                            fs'64
                            \f
                            - \marcato
                            ^ \markup 269
                            b64
                            - \marcato
                            ^ \markup 270
                            c'64
                            - \marcato
                            ^ \markup 271
                            a'64
                            - \marcato
                            ^ \markup 272
                            e'64
                            - \marcato
                            ^ \markup 273
                            cs'64
                            - \marcato
                            ^ \markup 274
                            d'64
                            - \marcato
                            ^ \markup 275
                            af'64
                            - \marcato
                            ^ \markup 276
                            f'64
                            - \marcato
                            ^ \markup 277
                            g'64
                            - \marcato
                            ^ \markup 278
                            ef'64
                            - \marcato
                            ^ \markup 279
                            \change Staff = "piano 1 staff"
                            a'''64
                            \pp
                            ^ \markup 280
                            \(
                            af''''64
                            ^ \markup 281
                            a'''64
                            ^ \markup 282
                            af''''64
                            ^ \markup 283
                            e''''64
                            ^ \markup 284
                            f''''64
                            ^ \markup 285
                            ]
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \italic 8:7
                        \times 56/64
                        {
                            e''''64
                            ^ \markup 286
                            [
                            af''''64
                            ^ \markup 287
                            e''''64
                            ^ \markup 288
                            af''''64
                            ^ \markup 289
                            \)
                            \change Staff = "piano 2 staff"
                            c'64
                            \ff
                            - \marcato
                            ^ \markup 290
                            f'64
                            - \marcato
                            ^ \markup 291
                            cs'64
                            - \marcato
                            ^ \markup 292
                            e'64
                            - \marcato
                            ^ \markup 293
                            ef'64
                            - \marcato
                            ^ \markup 294
                            af'64
                            - \marcato
                            ^ \markup 295
                            a'64
                            - \marcato
                            ^ \markup 296
                            b64
                            - \marcato
                            ^ \markup 297
                            g'64
                            - \marcato
                            ^ \markup 298
                            d'64
                            - \marcato
                            ^ \markup 299
                            fs'64
                            - \marcato
                            ^ \markup 300
                            d'64
                            - \marcato
                            ^ \markup 301
                            g'64
                            - \marcato
                            ^ \markup 302
                            \change Staff = "piano 1 staff"
                            e''''64
                            ^ \markup 303
                            \(
                            af''''64
                            ^ \markup 304
                            e''''64
                            ^ \markup 305
                            f''''64
                            ^ \markup 306
                            bf'''64
                            ^ \markup 307
                            f''''64
                            \pp
                            ^ \markup 308
                            e''''64
                            ^ \markup 309
                            af''''64
                            ^ \markup 310
                            e''''64
                            ^ \markup 311
                            \)
                            \change Staff = "piano 2 staff"
                            bf64
                            \ff
                            - \marcato
                            ^ \markup 312
                            d64
                            - \marcato
                            ^ \markup 313
                            ef64
                            - \marcato
                            ^ \markup 314
                            cs64
                            - \marcato
                            ^ \markup 315
                            f64
                            - \marcato
                            ^ \markup 316
                            e64
                            - \marcato
                            ^ \markup 317
                            af64
                            - \marcato
                            ^ \markup 318
                            c64
                            - \marcato
                            ^ \markup 319
                            g64
                            - \marcato
                            ^ \markup 320
                            fs64
                            - \marcato
                            ^ \markup 321
                            a64
                            - \marcato
                            ^ \markup 322
                            bf,64
                            - \marcato
                            ^ \markup 323
                            b,64
                            - \marcato
                            ^ \markup 324
                            bf,64
                            - \marcato
                            ^ \markup 325
                            a64
                            - \marcato
                            ^ \markup 326
                            fs64
                            - \marcato
                            ^ \markup 327
                            g64
                            - \marcato
                            ^ \markup 328
                            \change Staff = "piano 1 staff"
                            af''''64
                            \ppp
                            ^ \markup 329
                            \(
                            e''''64
                            ^ \markup 330
                            af''''64
                            ^ \markup 331
                            e''''64
                            ^ \markup 332
                            f''''64
                            ^ \markup 333
                            e''''64
                            ^ \markup 334
                            f''''64
                            ^ \markup 335
                            bf'''64
                            ^ \markup 336
                            \)
                            \ottava 0
                            \change Staff = "piano 2 staff"
                            f,64
                            \fff
                            - \marcato
                            ^ \markup 337
                            af,64
                            - \marcato
                            ^ \markup 338
                            e,64
                            - \marcato
                            ^ \markup 339
                            g,64
                            - \marcato
                            ^ \markup 340
                            b,,64
                            - \marcato
                            ^ \markup 341
                            c,64
                            - \marcato
                            ^ \markup 342
                            a,64
                            - \marcato
                            ^ \markup 343
                            fs,64
                            - \marcato
                            ^ \markup 344
                            d,64
                            - \marcato
                            ^ \markup 345
                            ef,64
                            - \marcato
                            ^ \markup 346
                            cs,64
                            - \marcato
                            ^ \markup 347
                            bf,,64
                            - \marcato
                            ^ \markup 348
                            cs,64
                            - \marcato
                            ^ \markup 349
                            ]
                        }
                        \revert TupletNumber.text
                        \change Staff = "piano 1 staff"
                        r4
                        ^ \markup 350
                        \ottava 2
                        c'''''16
                        \ppp
                        ^ \markup 351
                        [
                        \change Staff = "piano 2 staff"
                        bf''''16
                        \fff
                        - \marcato
                        ^ \markup 352
                        \change Staff = "piano 1 staff"
                        b''''16
                        \ppp
                        ^ \markup 353
                        \(
                        c'''''16
                        ^ \markup 354
                        b''''16
                        ^ \markup 355
                        \)
                        \change Staff = "piano 2 staff"
                        bf''''16
                        \fff
                        - \marcato
                        ^ \markup 356
                        \change Staff = "piano 1 staff"
                        b''''16
                        \ppp
                        ^ \markup 357
                        \change Staff = "piano 2 staff"
                        bf''''16
                        \fff
                        - \marcato
                        ^ \markup 358
                        \change Staff = "piano 1 staff"
                        c'''''16
                        \ppp
                        ^ \markup 359
                        \change Staff = "piano 2 staff"
                        bf''''16
                        \fff
                        - \marcato
                        ^ \markup 360
                        \change Staff = "piano 1 staff"
                        c'''''16
                        \ppp
                        ^ \markup 361
                        \(
                        b''''16
                        ^ \markup 362
                        \)
                        ]
                        \ottava 0
                    }
                }
                \context Staff = "piano 2 staff"
                {
                    \context Voice = "piano 2 voice"
                    {
                        \ottava 2
                        s1.
                        ^ \markup 0
                        \ottava 0
                        r4
                        ^ \markup 1
                        r2.
                        ^ \markup 2
                        r4.
                        ^ \markup 3
                        r4
                        ^ \markup 4
                        r8.
                        ^ \markup 5
                        r2.
                        ^ \markup 6
                        <bf c''>4.
                        :32
                        \arpeggio
                        ^ \markup 7
                        r8
                        ^ \markup 8
                        r1
                        ^ \markup 9
                        r4.
                        ^ \markup 10
                        \clef "bass"
                        s1 * 3/2
                        ^ \markup 11
                        \clef "treble"
                        s1 * 11/8
                        ^ \markup 12
                        \clef "bass"
                        s1 * 9/8
                        ^ \markup 13
                        \clef "treble"
                        s1 * 1
                        ^ \markup 14
                        \clef "bass"
                        s1 * 7/8
                        ^ \markup 15
                        r4
                        ^ \markup 16
                        \ottava 2
                        \clef "treble"
                        s2.
                        ^ \markup 17
                        \ottava 0
                    }
                }
            >>
            \context PianoStaff = "sub group 2"
            <<
                \context Staff = "cello 1 staff"
                {
                    \context Voice = "cello 1 voice"
                    {
                        \set PianoStaff.shortInstrumentName =
                        \markup { vc. }
                        r1 * 3/2
                        ^ \markup 0
                        r1 * 1/4
                        ^ \markup 1
                        r1 * 11/8
                        ^ \markup 2
                        r1 * 3/16
                        ^ \markup 3
                        r1 * 9/8
                        ^ \markup 4
                        r1 * 1/8
                        ^ \markup 5
                        r1 * 1
                        ^ \markup 6
                        r1 * 3/8
                        ^ \markup 7
                        r1 * 3/2
                        ^ \markup 8
                        r1 * 11/8
                        ^ \markup 9
                        r1 * 9/8
                        ^ \markup 10
                        r1 * 1
                        ^ \markup 11
                        r1 * 7/8
                        ^ \markup 12
                        r1 * 1/4
                        ^ \markup 13
                        r4
                        ^ \markup 14
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            bf16
                            \p
                            ^ \markup 15
                            \(
                            \boxed-markup "NB" 1
                            \evansStopTextSpanBAD
                            - \abjad-dashed-line-with-arrow
                            - \evans-clockwise-BAD-spanner-left-text #-45
                            - \evans-BAD-spanner-right-text #0
                            - \tweak bound-details.right.padding 1.4
                            - \tweak staff-padding #1.5
                            \evansStartTextSpanBAD
                            \tweak Accidental.transparent ##t
                            d'16
                            ^ \markup 16
                            \)
                            \evansStopTextSpanBAD
                        }
                    }
                }
                \context Staff = "cello 2 staff"
                {
                    \context Voice = "cello 2 voice"
                    {
                        r1.
                        ^ \markup 0
                        r4
                        ^ \markup 1
                        \override TupletNumber.text = \markup \italic 13:11
                        \times 44/52
                        {
                            \tweak style #'harmonic-mixed
                            cs''32
                            \mp
                            ^ \markup 2
                            [
                            \(
                            \boxed-markup "Ord., FB" 1
                            \tweak style #'harmonic-mixed
                            c''32
                            ^ \markup 3
                            \tweak style #'harmonic-mixed
                            af''32
                            ^ \markup 4
                            \tweak style #'harmonic-mixed
                            f''32
                            ^ \markup 5
                            \tweak style #'harmonic-mixed
                            af''32
                            ^ \markup 6
                            \tweak style #'harmonic-mixed
                            f''32
                            ^ \markup 7
                            \tweak style #'harmonic-mixed
                            af''32
                            ^ \markup 8
                            \tweak style #'harmonic-mixed
                            c''32
                            ^ \markup 9
                            \tweak style #'harmonic-mixed
                            cs''32
                            ^ \markup 10
                            \tweak style #'harmonic-mixed
                            e''32
                            ^ \markup 11
                            \tweak style #'harmonic-mixed
                            cs''32
                            ^ \markup 12
                            \tweak style #'harmonic-mixed
                            c''32
                            ^ \markup 13
                            \tweak style #'harmonic-mixed
                            af''32
                            ^ \markup 14
                            \tweak style #'harmonic-mixed
                            f''32
                            ^ \markup 15
                            \tweak style #'harmonic-mixed
                            b'32
                            ^ \markup 16
                            \tweak style #'harmonic-mixed
                            f''32
                            ^ \markup 17
                            \tweak style #'harmonic-mixed
                            b'32
                            ^ \markup 18
                            \tweak style #'harmonic-mixed
                            d''32
                            ^ \markup 19
                            \tweak style #'harmonic-mixed
                            ef''32
                            ^ \markup 20
                            \tweak style #'harmonic-mixed
                            d''32
                            ^ \markup 21
                            \tweak style #'harmonic-mixed
                            ef''32
                            ^ \markup 22
                            \tweak style #'harmonic-mixed
                            d''32
                            ^ \markup 23
                            \tweak style #'harmonic-mixed
                            b'32
                            ^ \markup 24
                            \tweak style #'harmonic-mixed
                            d''32
                            ^ \markup 25
                            \tweak style #'harmonic-mixed
                            ef''32
                            ^ \markup 26
                            \tweak style #'harmonic-mixed
                            d''32
                            ^ \markup 27
                            \tweak style #'harmonic-mixed
                            b'32
                            ^ \markup 28
                            \tweak style #'harmonic-mixed
                            d''32
                            ^ \markup 29
                            \tweak style #'harmonic-mixed
                            b'32
                            ^ \markup 30
                            \tweak style #'harmonic-mixed
                            d''32
                            ^ \markup 31
                            \tweak style #'harmonic-mixed
                            b'32
                            ^ \markup 32
                            \tweak style #'harmonic-mixed
                            f''32
                            ^ \markup 33
                            \tweak style #'harmonic-mixed
                            af''32
                            ^ \markup 34
                            \tweak style #'harmonic-mixed
                            c''32
                            ^ \markup 35
                            \tweak style #'harmonic-mixed
                            af''32
                            ^ \markup 36
                            \tweak style #'harmonic-mixed
                            c''32
                            ^ \markup 37
                            \tweak style #'harmonic-mixed
                            cs''32
                            ^ \markup 38
                            \tweak style #'harmonic-mixed
                            e''32
                            ^ \markup 39
                            \tweak style #'harmonic-mixed
                            cs''32
                            ^ \markup 40
                            \tweak style #'harmonic-mixed
                            c''32
                            ^ \markup 41
                            \tweak style #'harmonic-mixed
                            cs''32
                            ^ \markup 42
                            \tweak style #'harmonic-mixed
                            c''32
                            ^ \markup 43
                            \tweak style #'harmonic-mixed
                            cs''32
                            ^ \markup 44
                            \tweak style #'harmonic-mixed
                            c''32
                            ^ \markup 45
                            \tweak style #'harmonic-mixed
                            af''32
                            ^ \markup 46
                            \tweak style #'harmonic-mixed
                            f''32
                            ^ \markup 47
                            \tweak style #'harmonic-mixed
                            b'32
                            ^ \markup 48
                            \tweak style #'harmonic-mixed
                            d''32
                            ^ \markup 49
                            \tweak style #'harmonic-mixed
                            b'32
                            ^ \markup 50
                            \tweak style #'harmonic-mixed
                            d''32
                            ^ \markup 51
                            \tweak style #'harmonic-mixed
                            b'32
                            ^ \markup 52
                            \tweak style #'harmonic-mixed
                            f''32
                            ^ \markup 53
                            \)
                            ]
                        }
                        \revert TupletNumber.text
                        r8.
                        ^ \markup 54
                        r2.
                        ^ \markup 55
                        r4.
                        ^ \markup 56
                        r8
                        ^ \markup 57
                        r2
                        ^ \markup 58
                        \set suggestAccidentals = ##t
                        c''16
                        \f
                        - \accent
                        ^ \markup 59
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        [
                        \(
                        \glissando
                        \boxed-markup "IV, NB" 1
                        e''16
                        ^ \markup 60
                        ]
                        \glissando
                        \override TupletNumber.text = \markup \italic 7:4
                        \times 4/7
                        {
                            cqs''16
                            ^ \markup 61
                            [
                            \glissando
                            d''16
                            ^ \markup 62
                            \glissando
                            bqs'16
                            ^ \markup 63
                            \glissando
                            eqs''16
                            ^ \markup 64
                            \glissando
                            c''16
                            ^ \markup 65
                            \glissando
                            e''16
                            ^ \markup 66
                            \)
                            \glissando
                            \tweak style #'triangle
                            cqs''16
                            - \accent
                            ^ \markup 67
                            ]
                            \(
                            \glissando
                        }
                        \revert TupletNumber.text
                        \override TupletNumber.text = \markup \italic 3:2
                        \times 2/3
                        {
                            \tweak style #'triangle
                            d''32
                            ^ \markup 68
                            [
                            \glissando
                            \tweak style #'triangle
                            bqs'32
                            ^ \markup 69
                            \glissando
                            \tweak style #'triangle
                            eqs''32
                            ^ \markup 70
                            \glissando
                            \tweak style #'triangle
                            c''32
                            ^ \markup 71
                            \glissando
                            \tweak style #'triangle
                            e''32
                            ^ \markup 72
                            \glissando
                            \tweak style #'triangle
                            cqs''32
                            \!
                            ^ \markup 73
                            \)
                            ]
                            \set suggestAccidentals = ##f
                        }
                        \revert TupletNumber.text
                        r4.
                        ^ \markup 74
                        \tweak style #'harmonic-mixed
                        b'32
                        ^ \markup 75
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        [
                        \(
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \italic { XSB }
                        - \tweak padding 9
                        \startTextSpan
                        \boxed-markup "I-IV" 1
                        \tweak style #'harmonic-mixed
                        c''32
                        ^ \markup 76
                        \tweak style #'harmonic-mixed
                        f''32
                        ^ \markup 77
                        \tweak style #'harmonic-mixed
                        fs''32
                        ^ \markup 78
                        \tweak style #'harmonic-mixed
                        f''32
                        ^ \markup 79
                        \tweak style #'harmonic-mixed
                        c''32
                        ^ \markup 80
                        \tweak style #'harmonic-mixed
                        b'32
                        \mf
                        ^ \markup 81
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \tweak style #'harmonic-mixed
                        c''32
                        ^ \markup 82
                        \tweak style #'harmonic-mixed
                        b'32
                        ^ \markup 83
                        \tweak style #'harmonic-mixed
                        g''32
                        ^ \markup 84
                        \stopTextSpan
                        \tweak style #'harmonic-mixed
                        b'32
                        ^ \markup 85
                        \tweak style #'harmonic-mixed
                        c''32
                        ^ \markup 86
                        \tweak style #'harmonic-mixed
                        f''32
                        ^ \markup 87
                        \tweak style #'harmonic-mixed
                        fs''32
                        ^ \markup 88
                        \)
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \italic { XFB }
                        - \tweak padding 9
                        \startTextSpan
                        \clef "tenor"
                        \tweak style #'harmonic-mixed
                        f'32
                        ^ \markup 89
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \(
                        \tweak style #'harmonic-mixed
                        c'32
                        ^ \markup 90
                        \tweak style #'harmonic-mixed
                        f'32
                        ^ \markup 91
                        \tweak style #'harmonic-mixed
                        ef'32
                        ^ \markup 92
                        \tweak style #'harmonic-mixed
                        af'32
                        \mf
                        ^ \markup 93
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \tweak style #'harmonic-mixed
                        ef'32
                        ^ \markup 94
                        \tweak style #'harmonic-mixed
                        fs'32
                        ^ \markup 95
                        \tweak style #'harmonic-mixed
                        ef'32
                        ^ \markup 96
                        \tweak style #'harmonic-mixed
                        af'32
                        ^ \markup 97
                        \)
                        \clef "treble"
                        \tweak style #'triangle
                        f''32
                        ^ \markup 98
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \stopTextSpan
                        \(
                        \tweak style #'triangle
                        fs''32
                        ^ \markup 99
                        \tweak style #'triangle
                        f''32
                        ^ \markup 100
                        \tweak style #'triangle
                        c''32
                        ^ \markup 101
                        \tweak style #'triangle
                        b'32
                        ^ \markup 102
                        \tweak style #'triangle
                        c''32
                        ^ \markup 103
                        \tweak style #'triangle
                        b'32
                        ^ \markup 104
                        \tweak style #'triangle
                        g''32
                        ^ \markup 105
                        \tweak style #'triangle
                        b'32
                        ^ \markup 106
                        \tweak style #'triangle
                        g''32
                        \mf
                        ^ \markup 107
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \italic { XSB }
                        - \tweak padding 9
                        \startTextSpan
                        \tweak style #'triangle
                        b'32
                        ^ \markup 108
                        \tweak style #'triangle
                        c''32
                        ^ \markup 109
                        \tweak style #'triangle
                        f''32
                        ^ \markup 110
                        \tweak style #'triangle
                        c''32
                        ^ \markup 111
                        \tweak style #'triangle
                        b'32
                        ^ \markup 112
                        \tweak style #'triangle
                        g''32
                        ^ \markup 113
                        \tweak style #'triangle
                        b'32
                        ^ \markup 114
                        \)
                        \clef "tenor"
                        \tweak style #'triangle
                        ef'32
                        ^ \markup 115
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \(
                        \tweak style #'triangle
                        fs'32
                        ^ \markup 116
                        \tweak style #'triangle
                        ef'32
                        ^ \markup 117
                        \tweak style #'triangle
                        fs'32
                        ^ \markup 118
                        \tweak style #'triangle
                        ef'32
                        ^ \markup 119
                        \tweak style #'triangle
                        fs'32
                        \mf
                        ^ \markup 120
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \tweak style #'triangle
                        cs'32
                        ^ \markup 121
                        \stopTextSpan
                        \tweak style #'triangle
                        d'32
                        ^ \markup 122
                        cs'32
                        ^ \markup 123
                        fs'32
                        ^ \markup 124
                        cs'32
                        ^ \markup 125
                        d'32
                        ^ \markup 126
                        \)
                        \clef "bass"
                        cs32
                        ^ \markup 127
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \(
                        bf32
                        ^ \markup 128
                        cs32
                        ^ \markup 129
                        bf32
                        ^ \markup 130
                        cs32
                        ^ \markup 131
                        bf32
                        ^ \markup 132
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \italic { XFB }
                        - \tweak padding 9
                        \startTextSpan
                        fs32
                        \mf
                        ^ \markup 133
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        bf32
                        ^ \markup 134
                        fs32
                        ^ \markup 135
                        c32
                        ^ \markup 136
                        d32
                        ^ \markup 137
                        a32
                        ^ \markup 138
                        b,32
                        ^ \markup 139
                        a32
                        ^ \markup 140
                        b,32
                        ^ \markup 141
                        f32
                        ^ \markup 142
                        \)
                        \clef "tenor"
                        \tweak style #'triangle
                        e'32
                        ^ \markup 143
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \(
                        \tweak style #'triangle
                        d'32
                        ^ \markup 144
                        \tweak style #'triangle
                        cs'32
                        ^ \markup 145
                        \tweak style #'triangle
                        fs'32
                        ^ \markup 146
                        \tweak style #'triangle
                        ef'32
                        ^ \markup 147
                        \tweak style #'triangle
                        af'32
                        ^ \markup 148
                        \stopTextSpan
                        \tweak style #'triangle
                        ef'32
                        \mf
                        ^ \markup 149
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \tweak style #'triangle
                        fs'32
                        ^ \markup 150
                        \tweak style #'triangle
                        ef'32
                        ^ \markup 151
                        \tweak style #'triangle
                        fs'32
                        ^ \markup 152
                        \tweak style #'triangle
                        ef'32
                        ^ \markup 153
                        \tweak style #'triangle
                        fs'32
                        ^ \markup 154
                        \tweak style #'triangle
                        cs'32
                        ^ \markup 155
                        \)
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \italic { XSB }
                        - \tweak padding 9
                        \startTextSpan
                        \clef "treble"
                        \tweak style #'triangle
                        c''32
                        ^ \markup 156
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \(
                        \tweak style #'triangle
                        b'32
                        ^ \markup 157
                        \tweak style #'triangle
                        c''32
                        ^ \markup 158
                        \tweak style #'triangle
                        f''32
                        ^ \markup 159
                        \tweak style #'triangle
                        fs''32
                        ^ \markup 160
                        \tweak style #'triangle
                        f''32
                        ^ \markup 161
                        \tweak style #'triangle
                        fs''32
                        ^ \markup 162
                        \tweak style #'triangle
                        f''32
                        ^ \markup 163
                        \tweak style #'triangle
                        fs''32
                        ^ \markup 164
                        \tweak style #'triangle
                        f''32
                        ^ \markup 165
                        \tweak style #'triangle
                        fs''32
                        ^ \markup 166
                        \tweak style #'harmonic-mixed
                        f''32
                        ^ \markup 167
                        \tweak style #'harmonic-mixed
                        fs''32
                        ^ \markup 168
                        \tweak style #'harmonic-mixed
                        f''32
                        ^ \markup 169
                        \tweak style #'harmonic-mixed
                        c''32
                        ^ \markup 170
                        \stopTextSpan
                        \tweak style #'harmonic-mixed
                        f''32
                        ^ \markup 171
                        \tweak style #'harmonic-mixed
                        c''32
                        ^ \markup 172
                        \tweak style #'harmonic-mixed
                        f''32
                        ^ \markup 173
                        \tweak style #'harmonic-mixed
                        fs''32
                        ^ \markup 174
                        \tweak style #'harmonic-mixed
                        f''32
                        ^ \markup 175
                        \tweak style #'harmonic-mixed
                        fs''32
                        ^ \markup 176
                        \tweak style #'harmonic-mixed
                        f''32
                        ^ \markup 177
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \italic { XFB }
                        - \tweak padding 9
                        \startTextSpan
                        \tweak style #'harmonic-mixed
                        fs''32
                        ^ \markup 178
                        \tweak style #'harmonic-mixed
                        f''32
                        ^ \markup 179
                        \tweak style #'harmonic-mixed
                        c''32
                        ^ \markup 180
                        \tweak style #'harmonic-mixed
                        b'32
                        ^ \markup 181
                        \tweak style #'harmonic-mixed
                        g''32
                        ^ \markup 182
                        \tweak style #'harmonic-mixed
                        b'32
                        ^ \markup 183
                        \tweak style #'harmonic-mixed
                        c''32
                        ^ \markup 184
                        \tweak style #'harmonic-mixed
                        b'32
                        ^ \markup 185
                        \tweak style #'triangle
                        c''32
                        ^ \markup 186
                        \stopTextSpan
                        \tweak style #'triangle
                        f''32
                        ^ \markup 187
                        \tweak style #'triangle
                        fs''32
                        \fff
                        ^ \markup 188
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \tweak style #'triangle
                        f''32
                        ^ \markup 189
                        \tweak style #'triangle
                        c''32
                        ^ \markup 190
                        \tweak style #'triangle
                        b'32
                        ^ \markup 191
                        \tweak style #'triangle
                        c''32
                        ^ \markup 192
                        \tweak style #'triangle
                        b'32
                        ^ \markup 193
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \italic { XSB }
                        - \tweak padding 10.5
                        \startTextSpan
                        \tweak style #'triangle
                        g''32
                        ^ \markup 194
                        \tweak style #'triangle
                        b'32
                        ^ \markup 195
                        \tweak style #'triangle
                        c''32
                        ^ \markup 196
                        \tweak style #'triangle
                        f''32
                        ^ \markup 197
                        \tweak style #'triangle
                        fs''32
                        ^ \markup 198
                        \tweak style #'triangle
                        f''32
                        ^ \markup 199
                        \tweak style #'triangle
                        fs''32
                        ^ \markup 200
                        \tweak style #'triangle
                        f''32
                        ^ \markup 201
                        \)
                        \clef "tenor"
                        \tweak style #'triangle
                        ef'32
                        ^ \markup 202
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \(
                        af'64
                        ^ \markup 203
                        ef'64
                        ^ \markup 204
                        fs'64
                        ^ \markup 205
                        ef'64
                        \mf
                        ^ \markup 206
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \stopTextSpan
                        af'64
                        ^ \markup 207
                        ef'64
                        ^ \markup 208
                        fs'64
                        ^ \markup 209
                        cs'64
                        ^ \markup 210
                        d'64
                        ^ \markup 211
                        \)
                        \clef "bass"
                        a64
                        ^ \markup 212
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \(
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \italic { XFB }
                        - \tweak padding 10.5
                        \startTextSpan
                        d64
                        ^ \markup 213
                        a64
                        ^ \markup 214
                        d64
                        ^ \markup 215
                        a64
                        ^ \markup 216
                        d64
                        ^ \markup 217
                        a64
                        ^ \markup 218
                        b,64
                        ^ \markup 219
                        f64
                        \mf
                        ^ \markup 220
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \stopTextSpan
                        af64
                        ^ \markup 221
                        f64
                        ^ \markup 222
                        af64
                        ^ \markup 223
                        f64
                        ^ \markup 224
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \italic { XSB }
                        - \tweak padding 10.5
                        \startTextSpan
                        b,64
                        ^ \markup 225
                        f64
                        ^ \markup 226
                        b,64
                        ^ \markup 227
                        f64
                        ^ \markup 228
                        \)
                        \clef "tenor"
                        cs'64
                        ^ \markup 229
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \(
                        d'64
                        ^ \markup 230
                        cs'64
                        ^ \markup 231
                        fs'64
                        ^ \markup 232
                        ef'64
                        ^ \markup 233
                        fs'64
                        ^ \markup 234
                        \tweak style #'triangle
                        ef'64
                        ^ \markup 235
                        \tweak style #'triangle
                        af'64
                        ^ \markup 236
                        \tweak style #'triangle
                        ef'64
                        ^ \markup 237
                        \tweak style #'triangle
                        af'64
                        \f
                        ^ \markup 238
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \tweak style #'triangle
                        ef'64
                        ^ \markup 239
                        \tweak style #'triangle
                        fs'64
                        ^ \markup 240
                        \tweak style #'triangle
                        cs'64
                        ^ \markup 241
                        \tweak style #'triangle
                        d'64
                        ^ \markup 242
                        \tweak style #'triangle
                        e'64
                        ^ \markup 243
                        \tweak style #'triangle
                        f'64
                        ^ \markup 244
                        \)
                        \stopTextSpan
                        \clef "bass"
                        \tweak style #'triangle
                        c'64
                        ^ \markup 245
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \(
                        \tweak style #'triangle
                        af64
                        ^ \markup 246
                        \tweak style #'triangle
                        g64
                        ^ \markup 247
                        \tweak style #'triangle
                        af64
                        ^ \markup 248
                        \tweak style #'triangle
                        g64
                        ^ \markup 249
                        \tweak style #'triangle
                        ef64
                        ^ \markup 250
                        \tweak style #'triangle
                        g64
                        ^ \markup 251
                        \tweak style #'triangle
                        ef64
                        ^ \markup 252
                        \tweak style #'triangle
                        e64
                        ^ \markup 253
                        \tweak style #'triangle
                        ef64
                        ^ \markup 254
                        \tweak style #'triangle
                        g64
                        ^ \markup 255
                        \tweak style #'triangle
                        ef64
                        \f
                        ^ \markup 256
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \italic { XSB } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \italic { XFB }
                        - \tweak padding 10.5
                        \startTextSpan
                        \tweak style #'triangle
                        g64
                        ^ \markup 257
                        \tweak style #'triangle
                        af64
                        ^ \markup 258
                        \tweak style #'triangle
                        f64
                        ^ \markup 259
                        \tweak style #'triangle
                        b,64
                        ^ \markup 260
                        \tweak style #'triangle
                        f64
                        ^ \markup 261
                        \tweak style #'triangle
                        b,64
                        ^ \markup 262
                        \)
                        \clef "tenor"
                        \tweak style #'triangle
                        c'64
                        ^ \markup 263
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \(
                        \tweak style #'triangle
                        fs'64
                        ^ \markup 264
                        \tweak style #'triangle
                        cs'64
                        ^ \markup 265
                        \tweak style #'triangle
                        fs'64
                        ^ \markup 266
                        \tweak style #'harmonic-mixed
                        cs'64
                        ^ \markup 267
                        \tweak style #'harmonic-mixed
                        fs'64
                        ^ \markup 268
                        \stopTextSpan
                        \tweak style #'harmonic-mixed
                        cs'64
                        ^ \markup 269
                        \tweak style #'harmonic-mixed
                        fs'64
                        ^ \markup 270
                        \tweak style #'harmonic-mixed
                        c'64
                        ^ \markup 271
                        \tweak style #'harmonic-mixed
                        af'64
                        ^ \markup 272
                        \tweak style #'harmonic-mixed
                        c'64
                        \ff
                        ^ \markup 273
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \tweak style #'harmonic-mixed
                        fs'64
                        ^ \markup 274
                        \tweak style #'harmonic-mixed
                        cs'64
                        ^ \markup 275
                        \tweak style #'harmonic-mixed
                        e'64
                        ^ \markup 276
                        \tweak style #'harmonic-mixed
                        cs'64
                        ^ \markup 277
                        \tweak style #'harmonic-mixed
                        e'64
                        ^ \markup 278
                        \tweak style #'harmonic-mixed
                        cs'64
                        ^ \markup 279
                        \tweak style #'harmonic-mixed
                        fs'64
                        ^ \markup 280
                        \tweak style #'harmonic-mixed
                        cs'64
                        ^ \markup 281
                        \)
                        \clef "bass"
                        \tweak style #'harmonic-mixed
                        af64
                        ^ \markup 282
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \(
                        \tweak style #'harmonic-mixed
                        f64
                        ^ \markup 283
                        \tweak style #'harmonic-mixed
                        af64
                        ^ \markup 284
                        \tweak style #'harmonic-mixed
                        g64
                        ^ \markup 285
                        \tweak style #'harmonic-mixed
                        ef64
                        ^ \markup 286
                        \tweak style #'harmonic-mixed
                        g64
                        ^ \markup 287
                        \tweak style #'harmonic-mixed
                        af64
                        ^ \markup 288
                        \tweak style #'harmonic-mixed
                        f64
                        ^ \markup 289
                        \tweak style #'harmonic-mixed
                        cs64
                        ^ \markup 290
                        \tweak style #'harmonic-mixed
                        bf64
                        ^ \markup 291
                        \tweak style #'harmonic-mixed
                        cs64
                        ^ \markup 292
                        \tweak style #'harmonic-mixed
                        bf64
                        \ff
                        ^ \markup 293
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        - \abjad-dashed-line-with-arrow
                        - \tweak bound-details.left.text \markup \concat { \italic { XFB } \hspace #0.5 }
                        - \tweak bound-details.right.text \markup \italic { XSB }
                        - \tweak padding 10.5
                        \startTextSpan
                        \tweak style #'harmonic-mixed
                        cs64
                        ^ \markup 294
                        \tweak style #'triangle
                        bf64
                        ^ \markup 295
                        \tweak style #'triangle
                        fs64
                        ^ \markup 296
                        \tweak style #'triangle
                        bf64
                        ^ \markup 297
                        \tweak style #'triangle
                        fs64
                        ^ \markup 298
                        \tweak style #'triangle
                        c64
                        ^ \markup 299
                        \tweak style #'triangle
                        d64
                        ^ \markup 300
                        \tweak style #'triangle
                        a64
                        ^ \markup 301
                        \tweak style #'triangle
                        b,64
                        ^ \markup 302
                        \tweak style #'triangle
                        a64
                        ^ \markup 303
                        \)
                        \tweak style #'triangle
                        b,64
                        ^ \markup 304
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \<
                        \(
                        \tweak style #'triangle
                        a,64
                        ^ \markup 305
                        \tweak style #'triangle
                        ef,64
                        ^ \markup 306
                        \tweak style #'triangle
                        c,64
                        ^ \markup 307
                        \tweak style #'triangle
                        af,64
                        ^ \markup 308
                        \tweak style #'triangle
                        bf,64
                        \fff
                        ^ \markup 309
                        - \tweak circled-tip ##t
                        - \tweak stencil #abjad-flared-hairpin
                        \>
                        \tweak style #'triangle
                        af,64
                        ^ \markup 310
                        \stopTextSpan
                        \tweak style #'triangle
                        bf,64
                        ^ \markup 311
                        \tweak style #'triangle
                        af,64
                        ^ \markup 312
                        \tweak style #'triangle
                        bf,64
                        ^ \markup 313
                        \tweak style #'triangle
                        b,64
                        ^ \markup 314
                        \tweak style #'triangle
                        f,64
                        ^ \markup 315
                        \tweak style #'triangle
                        fs,64
                        ^ \markup 316
                        \tweak style #'triangle
                        f,64
                        ^ \markup 317
                        \tweak style #'triangle
                        fs,64
                        ^ \markup 318
                        \tweak style #'triangle
                        f,64
                        ^ \markup 319
                        \tweak style #'triangle
                        b,64
                        ^ \markup 320
                        \tweak style #'triangle
                        f,64
                        ^ \markup 321
                        \tweak style #'triangle
                        b,64
                        \!
                        ^ \markup 322
                        \)
                        ]
                        r4
                        ^ \markup 323
                        r4
                        ^ \markup 324
                        \override TupletNumber.text = \markup \italic 3:2
                        \times 2/3
                        {
                            \set suggestAccidentals = ##t
                            <
                                \tweak style #'harmonic-mixed
                                b,
                                \tweak style #'harmonic-mixed
                                fs
                            >8
                            ^ \markup 325
                            [
                            \(
                            \glissando
                            \clef "treble"
                            <
                                \tweak style #'harmonic-mixed
                                g''
                                \tweak style #'harmonic-mixed
                                d'''
                            >8
                            ^ \markup 326
                            ]
                            \glissando
                            \clef "bass"
                            <
                                \tweak style #'harmonic-mixed
                                g
                                \tweak style #'harmonic-mixed
                                d'
                            >2
                            ^ \markup 327
                            \)
                            \set suggestAccidentals = ##f
                        }
                        \revert TupletNumber.text
                    }
                }
            >>
            \context PianoStaff = "sub group 3"
            <<
                \context Staff = "contrabass 1 staff"
                {
                    \context Voice = "contrabass 1 voice"
                    {
                        \set PianoStaff.shortInstrumentName =
                        \markup { cb. }
                        r1 * 3/2
                        ^ \markup 0
                        r1 * 1/4
                        ^ \markup 1
                        r1 * 11/8
                        ^ \markup 2
                        r1 * 3/16
                        ^ \markup 3
                        r1 * 9/8
                        ^ \markup 4
                        r1 * 1/8
                        ^ \markup 5
                        r1 * 1
                        ^ \markup 6
                        r1 * 3/8
                        ^ \markup 7
                        r1 * 3/2
                        ^ \markup 8
                        r1 * 11/8
                        ^ \markup 9
                        r1 * 9/8
                        ^ \markup 10
                        r1 * 1
                        ^ \markup 11
                        r1 * 7/8
                        ^ \markup 12
                        r1 * 1/4
                        ^ \markup 13
                        r4
                        ^ \markup 14
                        \repeat tremolo 4 {
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 15
                            \tweak Accidental.transparent ##t
                            c'16
                            ^ \markup 16
                        }
                    }
                }
                \context Staff = "contrabass 2 staff"
                {
                    \context Voice = "contrabass 2 voice"
                    {
                        r1.
                        ^ \markup 0
                        r4
                        ^ \markup 1
                        \override TupletNumber.text = \markup \italic 13:11
                        \times 44/52
                        {
                            \clef "treble"
                            e'32
                            ^ \markup 2
                            [
                            g'32
                            ^ \markup 3
                            e'32
                            ^ \markup 4
                            g'32
                            ^ \markup 5
                            e'32
                            ^ \markup 6
                            g'32
                            ^ \markup 7
                            e'32
                            ^ \markup 8
                            f'32
                            ^ \markup 9
                            fs'32
                            ^ \markup 10
                            f'32
                            ^ \markup 11
                            e'32
                            ^ \markup 12
                            g'32
                            ^ \markup 13
                            e'32
                            ^ \markup 14
                            g'32
                            ^ \markup 15
                            e'32
                            ^ \markup 16
                            g'32
                            ^ \markup 17
                            e'32
                            ^ \markup 18
                            f'32
                            ^ \markup 19
                            e'32
                            ^ \markup 20
                            g'32
                            ^ \markup 21
                            e'32
                            ^ \markup 22
                            f'32
                            ^ \markup 23
                            e'32
                            ^ \markup 24
                            g'32
                            ^ \markup 25
                            e'32
                            ^ \markup 26
                            f'32
                            ^ \markup 27
                            e'32
                            ^ \markup 28
                            f'32
                            ^ \markup 29
                            fs'32
                            ^ \markup 30
                            f'32
                            ^ \markup 31
                            fs'32
                            ^ \markup 32
                            f'32
                            ^ \markup 33
                            fs'32
                            ^ \markup 34
                            f'32
                            ^ \markup 35
                            fs'32
                            ^ \markup 36
                            c'32
                            ^ \markup 37
                            a'32
                            ^ \markup 38
                            b32
                            ^ \markup 39
                            a'32
                            ^ \markup 40
                            b32
                            ^ \markup 41
                            a'32
                            ^ \markup 42
                            b32
                            ^ \markup 43
                            a'32
                            ^ \markup 44
                            c'32
                            ^ \markup 45
                            fs'32
                            ^ \markup 46
                            f'32
                            ^ \markup 47
                            e'32
                            ^ \markup 48
                            g'32
                            ^ \markup 49
                            e'32
                            ^ \markup 50
                            f'32
                            ^ \markup 51
                            e'32
                            ^ \markup 52
                            f'32
                            ^ \markup 53
                            ]
                        }
                        \revert TupletNumber.text
                        r8.
                        ^ \markup 54
                        \override TupletNumber.text = \markup \italic 10:9
                        \times 72/80
                        {
                            c'64
                            ^ \markup 55
                            [
                            c'64
                            ^ \markup 56
                            c'64
                            ^ \markup 57
                            c'64
                            ^ \markup 58
                            c'64
                            ^ \markup 59
                            c'64
                            ^ \markup 60
                            c'64
                            ^ \markup 61
                            c'64
                            ^ \markup 62
                            c'64
                            ^ \markup 63
                            c'64
                            ^ \markup 64
                            c'64
                            ^ \markup 65
                            c'64
                            ^ \markup 66
                            c'64
                            ^ \markup 67
                            c'64
                            ^ \markup 68
                            c'64
                            ^ \markup 69
                            c'64
                            ^ \markup 70
                            c'64
                            ^ \markup 71
                            c'64
                            ^ \markup 72
                            c'64
                            ^ \markup 73
                            c'64
                            ^ \markup 74
                            c'64
                            ^ \markup 75
                            c'64
                            ^ \markup 76
                            c'64
                            ^ \markup 77
                            c'64
                            ^ \markup 78
                            c'64
                            ^ \markup 79
                            c'64
                            ^ \markup 80
                            c'64
                            ^ \markup 81
                            c'64
                            ^ \markup 82
                            c'64
                            ^ \markup 83
                            c'64
                            ^ \markup 84
                            c'64
                            ^ \markup 85
                            c'64
                            ^ \markup 86
                            c'64
                            ^ \markup 87
                            c'64
                            ^ \markup 88
                            c'64
                            ^ \markup 89
                            c'64
                            ^ \markup 90
                            c'64
                            ^ \markup 91
                            c'64
                            ^ \markup 92
                            c'64
                            ^ \markup 93
                            c'64
                            ^ \markup 94
                            c'64
                            ^ \markup 95
                            c'64
                            ^ \markup 96
                            c'64
                            ^ \markup 97
                            c'64
                            ^ \markup 98
                            c'64
                            ^ \markup 99
                            c'64
                            ^ \markup 100
                            c'64
                            ^ \markup 101
                            c'64
                            ^ \markup 102
                            c'64
                            ^ \markup 103
                            c'64
                            ^ \markup 104
                            c'64
                            ^ \markup 105
                            c'64
                            ^ \markup 106
                            c'64
                            ^ \markup 107
                            c'64
                            ^ \markup 108
                            c'64
                            ^ \markup 109
                            c'64
                            ^ \markup 110
                            c'64
                            ^ \markup 111
                            c'64
                            ^ \markup 112
                            c'64
                            ^ \markup 113
                            c'64
                            ^ \markup 114
                            c'64
                            ^ \markup 115
                            c'64
                            ^ \markup 116
                            c'64
                            ^ \markup 117
                            c'64
                            ^ \markup 118
                            c'64
                            ^ \markup 119
                            c'64
                            ^ \markup 120
                            c'64
                            ^ \markup 121
                            c'64
                            ^ \markup 122
                            c'64
                            ^ \markup 123
                            c'64
                            ^ \markup 124
                            c'64
                            ^ \markup 125
                            c'64
                            ^ \markup 126
                            c'64
                            ^ \markup 127
                            c'64
                            ^ \markup 128
                            c'64
                            ^ \markup 129
                            c'64
                            ^ \markup 130
                            c'64
                            ^ \markup 131
                            c'64
                            ^ \markup 132
                            c'64
                            ^ \markup 133
                            c'64
                            ^ \markup 134
                            ]
                        }
                        \revert TupletNumber.text
                        r8
                        ^ \markup 135
                        \override TupletNumber.text = \markup \italic 5:4
                        \times 16/20
                        {
                            \clef "bass"
                            c'16
                            ^ \markup 136
                            [
                            c'16
                            ^ \markup 137
                            c'16
                            ^ \markup 138
                            c'16
                            ^ \markup 139
                            c'16
                            ^ \markup 140
                            c'16
                            ^ \markup 141
                            c'16
                            ^ \markup 142
                            c'16
                            ^ \markup 143
                            c'16
                            ^ \markup 144
                            c'16
                            ^ \markup 145
                            c'16
                            ^ \markup 146
                            c'16
                            ^ \markup 147
                            c'16
                            ^ \markup 148
                            c'16
                            ^ \markup 149
                            c'16
                            ^ \markup 150
                            c'16
                            ^ \markup 151
                            c'16
                            ^ \markup 152
                            c'16
                            ^ \markup 153
                            c'16
                            ^ \markup 154
                            c'16
                            ^ \markup 155
                            ]
                        }
                        \revert TupletNumber.text
                        r4.
                        ^ \markup 156
                        r1.
                        ^ \markup 157
                        r2..
                        ^ \markup 158
                        r4
                        ^ \markup 159
                        r4
                        ^ \markup 160
                        r2.
                        ^ \markup 161
                        r4.
                        ^ \markup 162
                        r1
                        ^ \markup 163
                        \override TupletNumber.text = \markup \italic 6:7
                        \times 7/6
                        {
                            a'''8
                            ^ \markup 164
                            [
                            cs''''8
                            ^ \markup 165
                            aqs'''8
                            ^ \markup 166
                            b'''8
                            ^ \markup 167
                            aqf'''8
                            ^ \markup 168
                            dqf''''8
                            ^ \markup 169
                            ]
                        }
                        \revert TupletNumber.text
                        r4
                        ^ \markup 170
                        r4
                        ^ \markup 171
                        \override TupletNumber.text = \markup \italic 7:4
                        \times 4/7
                        {
                            c'8
                            ^ \markup 172
                            [
                            c'8
                            ^ \markup 173
                            c'8
                            ^ \markup 174
                            ]
                            c'2
                            ^ \markup 175
                        }
                        \revert TupletNumber.text
                    }
                }
            >>
        >>
    >>

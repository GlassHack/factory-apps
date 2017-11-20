.class public final Lcom/google/android/maps/driveabout/model/ac;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/model/j;


# static fields
.field private static final a:[I


# instance fields
.field private final A:I

.field private final B:Ljava/lang/String;

.field private final C:Ljava/lang/String;

.field private final D:Lcom/google/android/maps/driveabout/model/c;

.field private final E:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;

.field private final F:Ljava/lang/Integer;

.field private final G:Z

.field private final b:J

.field private final c:I

.field private final d:I

.field private final e:Lcom/google/android/maps/driveabout/model/aw;

.field private final f:Lcom/google/android/maps/driveabout/model/ab;

.field private final g:Ljava/lang/String;

.field private final h:Ljava/lang/String;

.field private final i:Ljava/lang/String;

.field private final j:Ljava/lang/String;

.field private final k:Ljava/lang/String;

.field private final l:Lcom/google/android/maps/driveabout/model/k;

.field private final m:Ljava/lang/String;

.field private final n:Lcom/google/android/maps/driveabout/model/aq;

.field private final o:I

.field private final p:[I

.field private final q:I

.field private final r:I

.field private final s:F

.field private final t:I

.field private u:F

.field private v:F

.field private final w:[Lcom/google/android/maps/driveabout/model/a;

.field private final x:Lcom/google/android/maps/driveabout/model/s;

.field private final y:Lcom/google/android/maps/driveabout/model/s;

.field private final z:[Lcom/google/android/maps/driveabout/model/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const/4 v0, 0x0

    new-array v0, v0, [I

    sput-object v0, Lcom/google/android/maps/driveabout/model/ac;->a:[I

    return-void
.end method

.method constructor <init>(Lcom/google/android/maps/driveabout/model/ad;)V
    .locals 2

    .prologue
    const/high16 v0, -0x40800000    # -1.0f

    .line 143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    iput v0, p0, Lcom/google/android/maps/driveabout/model/ac;->u:F

    .line 113
    iput v0, p0, Lcom/google/android/maps/driveabout/model/ac;->v:F

    .line 144
    iget-wide v0, p1, Lcom/google/android/maps/driveabout/model/ad;->c:J

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/model/ac;->b:J

    .line 145
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ad;->g:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ac;->c:I

    .line 146
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ad;->h:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ac;->d:I

    .line 147
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->f:Lcom/google/android/maps/driveabout/model/k;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->l:Lcom/google/android/maps/driveabout/model/k;

    .line 148
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->i:[Lcom/google/android/maps/driveabout/model/a;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->w:[Lcom/google/android/maps/driveabout/model/a;

    .line 149
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->j:Lcom/google/android/maps/driveabout/model/s;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->x:Lcom/google/android/maps/driveabout/model/s;

    .line 150
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->k:Lcom/google/android/maps/driveabout/model/s;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->y:Lcom/google/android/maps/driveabout/model/s;

    .line 151
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->l:[Lcom/google/android/maps/driveabout/model/c;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->z:[Lcom/google/android/maps/driveabout/model/c;

    .line 152
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->m:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->j:Ljava/lang/String;

    .line 153
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->n:Lcom/google/android/maps/driveabout/model/aq;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->n:Lcom/google/android/maps/driveabout/model/aq;

    .line 154
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ad;->o:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ac;->A:I

    .line 155
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->p:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->B:Ljava/lang/String;

    .line 156
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ad;->q:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ac;->o:I

    .line 157
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ad;->r:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ac;->q:I

    .line 158
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ad;->s:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x1e

    :goto_0
    iput v0, p0, Lcom/google/android/maps/driveabout/model/ac;->r:I

    .line 159
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ad;->t:F

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ac;->s:F

    .line 160
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ad;->u:I

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ac;->t:I

    .line 161
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->C:Ljava/lang/String;

    .line 162
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->g:Ljava/lang/String;

    .line 163
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->x:Lcom/google/android/maps/driveabout/model/c;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->D:Lcom/google/android/maps/driveabout/model/c;

    .line 164
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->y:[I

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->p:[I

    .line 165
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->z:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->E:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;

    .line 166
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->C:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->h:Ljava/lang/String;

    .line 167
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->D:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->i:Ljava/lang/String;

    .line 168
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->E:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->m:Ljava/lang/String;

    .line 169
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->f:Lcom/google/android/maps/driveabout/model/k;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->f:Lcom/google/android/maps/driveabout/model/k;

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/k;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->k:Ljava/lang/String;

    .line 172
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->d:Lcom/google/android/maps/driveabout/model/aw;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->e:Lcom/google/android/maps/driveabout/model/aw;

    .line 173
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->e:Lcom/google/android/maps/driveabout/model/ab;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->f:Lcom/google/android/maps/driveabout/model/ab;

    .line 176
    iget-object v0, p1, Lcom/google/android/maps/driveabout/model/ad;->A:Ljava/lang/Integer;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->F:Ljava/lang/Integer;

    .line 177
    iget-boolean v0, p1, Lcom/google/android/maps/driveabout/model/ad;->B:Z

    iput-boolean v0, p0, Lcom/google/android/maps/driveabout/model/ac;->G:Z

    .line 178
    return-void

    .line 158
    :cond_0
    iget v0, p1, Lcom/google/android/maps/driveabout/model/ad;->s:I

    goto :goto_0

    .line 169
    :cond_1
    const-string v0, ""

    goto :goto_1
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ac;
    .locals 23

    .prologue
    .line 205
    const/16 v3, 0x9

    move/from16 v0, p1

    if-ge v0, v3, :cond_2

    .line 206
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ab;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v6

    .line 207
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/maps/driveabout/vector/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    .line 208
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v8

    .line 209
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    .line 210
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    .line 213
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 214
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/model/ar;->a(I)Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v11

    .line 217
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v12

    .line 220
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v13

    .line 222
    const-string v4, ""

    .line 223
    const/4 v3, 0x0

    .line 224
    const/16 v5, 0x8

    move/from16 v0, p1

    if-ne v0, v5, :cond_0

    .line 225
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 229
    :cond_0
    new-array v14, v3, [I

    .line 230
    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_1

    .line 231
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v15

    aput v15, v14, v5

    .line 230
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 233
    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/model/ac;->h()Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 234
    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 235
    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 236
    invoke-virtual {v3, v7}, Lcom/google/android/maps/driveabout/model/ad;->d(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 237
    invoke-virtual {v3, v8}, Lcom/google/android/maps/driveabout/model/ad;->f(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 238
    invoke-virtual {v3, v9}, Lcom/google/android/maps/driveabout/model/ad;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 239
    invoke-static {v10}, Lcom/google/android/maps/driveabout/model/k;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/k;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 240
    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/model/ad;->g(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 241
    invoke-virtual {v3, v11}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/aq;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 242
    invoke-virtual {v3, v12}, Lcom/google/android/maps/driveabout/model/ad;->b(I)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 243
    invoke-virtual {v3, v13}, Lcom/google/android/maps/driveabout/model/ad;->e(I)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 244
    invoke-virtual {v3, v14}, Lcom/google/android/maps/driveabout/model/ad;->a([I)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 245
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ad;->a()Lcom/google/android/maps/driveabout/model/ac;

    move-result-object v3

    .line 350
    :goto_1
    return-object v3

    .line 248
    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v4

    .line 249
    new-array v10, v4, [Lcom/google/android/maps/driveabout/model/a;

    .line 250
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    .line 251
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/android/maps/driveabout/model/a;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;I)Lcom/google/android/maps/driveabout/model/a;

    move-result-object v5

    aput-object v5, v10, v3

    .line 250
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 255
    :cond_3
    const/4 v3, 0x0

    aget-object v3, v10, v3

    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/a;->a()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v11

    .line 258
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v3

    .line 259
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Lcom/google/android/maps/driveabout/model/ar;->a(I)Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v7

    .line 262
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v12

    .line 263
    const/4 v8, 0x0

    .line 264
    move-object/from16 v0, p4

    invoke-static {v12, v0}, Lcom/google/android/maps/driveabout/model/z;->a(I[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 265
    aget-object v8, p4, v12

    :cond_4
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 268
    invoke-static/range {v3 .. v8}, Lcom/google/android/maps/driveabout/model/s;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aq;Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/s;

    move-result-object v13

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    .line 270
    invoke-static/range {v3 .. v8}, Lcom/google/android/maps/driveabout/model/s;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aq;Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/s;

    move-result-object v14

    .line 274
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v4

    .line 275
    new-array v15, v4, [Lcom/google/android/maps/driveabout/model/c;

    .line 277
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_5

    .line 278
    invoke-static/range {p0 .. p1}, Lcom/google/android/maps/driveabout/model/c;->b(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/c;

    move-result-object v5

    aput-object v5, v15, v3

    .line 277
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 282
    :cond_5
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v16

    .line 285
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v17

    .line 286
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v18

    .line 289
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v19

    .line 291
    const/4 v3, 0x0

    .line 292
    const/4 v4, 0x1

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 293
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/k;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v3

    .line 299
    :cond_6
    :goto_4
    const/4 v4, 0x0

    .line 300
    invoke-static/range {v19 .. v19}, Lcom/google/android/maps/driveabout/model/ac;->a(I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 302
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/maps/driveabout/vector/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    .line 306
    :cond_7
    const/4 v5, 0x0

    .line 307
    invoke-static/range {v19 .. v19}, Lcom/google/android/maps/driveabout/model/ac;->c(I)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 308
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    .line 312
    :cond_8
    invoke-static/range {v19 .. v19}, Lcom/google/android/maps/driveabout/model/ac;->b(I)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 313
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v6

    .line 325
    :goto_5
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v20

    .line 326
    move/from16 v0, v20

    new-array v0, v0, [I

    move-object/from16 v21, v0

    .line 327
    const/4 v9, 0x0

    :goto_6
    move/from16 v0, v20

    if-ge v9, v0, :cond_d

    .line 328
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v22

    aput v22, v21, v9

    .line 327
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .line 294
    :cond_9
    const/4 v4, 0x2

    move/from16 v0, v19

    invoke-static {v4, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 295
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/k;->b(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v3

    goto :goto_4

    .line 315
    :cond_a
    invoke-virtual {v13}, Lcom/google/android/maps/driveabout/model/s;->a()Ljava/lang/String;

    move-result-object v6

    .line 316
    invoke-virtual {v14}, Lcom/google/android/maps/driveabout/model/s;->a()Ljava/lang/String;

    move-result-object v9

    .line 317
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_b

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_b

    .line 319
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const/16 v20, 0xa

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v22

    add-int/lit8 v22, v22, 0x1

    invoke-direct/range {v21 .. v22}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object/from16 v0, v21

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move/from16 v0, v20

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 321
    :cond_b
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-static {v9}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    if-eqz v9, :cond_c

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_5

    :cond_c
    new-instance v6, Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-direct {v6, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_5

    .line 331
    :cond_d
    invoke-static {}, Lcom/google/android/maps/driveabout/model/ac;->h()Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v9

    .line 332
    move-object/from16 v0, p2

    invoke-virtual {v9, v0}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v9

    .line 333
    invoke-virtual {v9, v11}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v9

    .line 334
    invoke-virtual {v9, v3}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/k;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 335
    invoke-virtual {v3, v10}, Lcom/google/android/maps/driveabout/model/ad;->a([Lcom/google/android/maps/driveabout/model/a;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 336
    invoke-virtual {v3, v13}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/s;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 337
    invoke-virtual {v3, v14}, Lcom/google/android/maps/driveabout/model/ad;->b(Lcom/google/android/maps/driveabout/model/s;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 338
    invoke-virtual {v3, v15}, Lcom/google/android/maps/driveabout/model/ad;->a([Lcom/google/android/maps/driveabout/model/c;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 339
    invoke-virtual {v3, v4}, Lcom/google/android/maps/driveabout/model/ad;->a(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 340
    invoke-virtual {v3, v7}, Lcom/google/android/maps/driveabout/model/ad;->a(Lcom/google/android/maps/driveabout/model/aq;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 341
    invoke-virtual {v3, v12}, Lcom/google/android/maps/driveabout/model/ad;->a(I)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 342
    invoke-virtual {v3, v8}, Lcom/google/android/maps/driveabout/model/ad;->b(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 343
    move/from16 v0, v16

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/model/ad;->b(I)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 344
    move/from16 v0, v17

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/model/ad;->c(I)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 345
    move/from16 v0, v18

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/model/ad;->d(I)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 346
    move/from16 v0, v19

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/model/ad;->e(I)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 347
    invoke-virtual {v3, v5}, Lcom/google/android/maps/driveabout/model/ad;->c(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 348
    invoke-virtual {v3, v6}, Lcom/google/android/maps/driveabout/model/ad;->d(Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 349
    move-object/from16 v0, v21

    invoke-virtual {v3, v0}, Lcom/google/android/maps/driveabout/model/ad;->a([I)Lcom/google/android/maps/driveabout/model/ad;

    move-result-object v3

    .line 350
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/ad;->a()Lcom/google/android/maps/driveabout/model/ac;

    move-result-object v3

    goto/16 :goto_1
.end method

.method private static a(I)Z
    .locals 1

    .prologue
    .line 557
    const/16 v0, 0x20

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static b(I)Z
    .locals 1

    .prologue
    .line 561
    const/16 v0, 0x80

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method private static c(I)Z
    .locals 1

    .prologue
    .line 565
    const/16 v0, 0x40

    invoke-static {v0, p0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method public static h()Lcom/google/android/maps/driveabout/model/ad;
    .locals 1

    .prologue
    .line 710
    new-instance v0, Lcom/google/android/maps/driveabout/model/ad;

    invoke-direct {v0}, Lcom/google/android/maps/driveabout/model/ad;-><init>()V

    return-object v0
.end method

.method static synthetic i()[I
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lcom/google/android/maps/driveabout/model/ac;->a:[I

    return-object v0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/ab;
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->f:Lcom/google/android/maps/driveabout/model/ab;

    return-object v0
.end method

.method public final b()Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 459
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->n:Lcom/google/android/maps/driveabout/model/aq;

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 425
    const/4 v0, 0x7

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 474
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ac;->o:I

    return v0
.end method

.method public final e()Ljava/lang/String;
    .locals 1

    .prologue
    .line 433
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->g:Ljava/lang/String;

    return-object v0
.end method

.method public final f()F
    .locals 1

    .prologue
    .line 491
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ac;->u:F

    return v0
.end method

.method public final g()Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ac;->E:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 683
    invoke-static {p0}, Lcom/google/common/base/Objects;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "renderOpIndex"

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/model/ac;->b:J

    .line 684
    invoke-virtual {v0, v1, v2, v3}, Lcom/google/common/base/ac;->a(Ljava/lang/String;J)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "serverId"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->l:Lcom/google/android/maps/driveabout/model/k;

    .line 685
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "absolutePositions"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->w:[Lcom/google/android/maps/driveabout/model/a;

    .line 686
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "primaryLabelGroup"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->x:Lcom/google/android/maps/driveabout/model/s;

    .line 687
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "secondaryLabelGroup"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->y:Lcom/google/android/maps/driveabout/model/s;

    .line 688
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "relativePositions"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->z:[Lcom/google/android/maps/driveabout/model/c;

    .line 689
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "snippet"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->j:Ljava/lang/String;

    .line 690
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "style"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->n:Lcom/google/android/maps/driveabout/model/aq;

    .line 691
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "styleIdIndex"

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ac;->A:I

    .line 692
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;I)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "styleId"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->B:Ljava/lang/String;

    .line 693
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "rank"

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ac;->o:I

    .line 694
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;I)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "minZoomLevel"

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ac;->q:I

    .line 695
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;I)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "maxZoomLevel"

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ac;->r:I

    .line 696
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;I)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "attributes"

    iget v2, p0, Lcom/google/android/maps/driveabout/model/ac;->t:I

    .line 697
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;I)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "supplementalLogString"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->C:Ljava/lang/String;

    .line 698
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "name"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->g:Ljava/lang/String;

    .line 699
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "primaryRelativePosition"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->D:Lcom/google/android/maps/driveabout/model/c;

    .line 700
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "providerIndices"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->p:[I

    .line 701
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "tileCoords"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->e:Lcom/google/android/maps/driveabout/model/aw;

    .line 702
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "location"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->f:Lcom/google/android/maps/driveabout/model/ab;

    .line 703
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "trafficIncidentMetadata"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->E:Lcom/google/android/maps/driveabout/model/traffic/TrafficIncidentMetadata;

    .line 704
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    const-string v1, "aliasType"

    iget-object v2, p0, Lcom/google/android/maps/driveabout/model/ac;->F:Ljava/lang/Integer;

    .line 705
    invoke-virtual {v0, v1, v2}, Lcom/google/common/base/ac;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/ac;

    move-result-object v0

    .line 706
    invoke-virtual {v0}, Lcom/google/common/base/ac;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

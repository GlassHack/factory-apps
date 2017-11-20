.class public final Lcom/google/android/maps/driveabout/model/ao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/model/j;


# static fields
.field private static final m:[Ljava/lang/String;

.field private static final n:[Ljava/lang/String;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/k;

.field private final b:Lcom/google/android/maps/driveabout/model/ag;

.field private final c:[Ljava/lang/String;

.field private final d:[Ljava/lang/String;

.field private final e:[Lcom/google/android/maps/driveabout/model/s;

.field private final f:Lcom/google/android/maps/driveabout/model/aq;

.field private final g:I

.field private final h:Ljava/lang/String;

.field private final i:I

.field private final j:I

.field private final k:I

.field private final l:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/google/android/maps/driveabout/model/ao;->m:[Ljava/lang/String;

    .line 38
    sget-object v0, Lcom/google/android/maps/driveabout/model/ao;->m:[Ljava/lang/String;

    sput-object v0, Lcom/google/android/maps/driveabout/model/ao;->n:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/maps/driveabout/model/ag;[Ljava/lang/String;[Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aq;III[I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/ao;->a:Lcom/google/android/maps/driveabout/model/k;

    .line 140
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ao;->b:Lcom/google/android/maps/driveabout/model/ag;

    .line 141
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/ao;->c:[Ljava/lang/String;

    .line 142
    iput-object p3, p0, Lcom/google/android/maps/driveabout/model/ao;->d:[Ljava/lang/String;

    .line 143
    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/ao;->e:[Lcom/google/android/maps/driveabout/model/s;

    .line 144
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/ao;->f:Lcom/google/android/maps/driveabout/model/aq;

    .line 145
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/android/maps/driveabout/model/ao;->g:I

    .line 146
    iput-object v1, p0, Lcom/google/android/maps/driveabout/model/ao;->h:Ljava/lang/String;

    .line 147
    iput p5, p0, Lcom/google/android/maps/driveabout/model/ao;->i:I

    .line 148
    iput p6, p0, Lcom/google/android/maps/driveabout/model/ao;->j:I

    .line 149
    iput p7, p0, Lcom/google/android/maps/driveabout/model/ao;->k:I

    .line 150
    iput-object p8, p0, Lcom/google/android/maps/driveabout/model/ao;->l:[I

    .line 151
    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/ag;[Ljava/lang/String;[Ljava/lang/String;[Lcom/google/android/maps/driveabout/model/s;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;III[I)V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/ao;->a:Lcom/google/android/maps/driveabout/model/k;

    .line 169
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/ao;->b:Lcom/google/android/maps/driveabout/model/ag;

    .line 170
    iput-object p3, p0, Lcom/google/android/maps/driveabout/model/ao;->c:[Ljava/lang/String;

    .line 171
    iput-object p4, p0, Lcom/google/android/maps/driveabout/model/ao;->d:[Ljava/lang/String;

    .line 172
    iput-object p5, p0, Lcom/google/android/maps/driveabout/model/ao;->e:[Lcom/google/android/maps/driveabout/model/s;

    .line 173
    iput-object p6, p0, Lcom/google/android/maps/driveabout/model/ao;->f:Lcom/google/android/maps/driveabout/model/aq;

    .line 174
    iput p7, p0, Lcom/google/android/maps/driveabout/model/ao;->g:I

    .line 175
    iput-object p8, p0, Lcom/google/android/maps/driveabout/model/ao;->h:Ljava/lang/String;

    .line 176
    iput p9, p0, Lcom/google/android/maps/driveabout/model/ao;->i:I

    .line 177
    iput p10, p0, Lcom/google/android/maps/driveabout/model/ao;->j:I

    .line 178
    iput p11, p0, Lcom/google/android/maps/driveabout/model/ao;->k:I

    .line 179
    iput-object p12, p0, Lcom/google/android/maps/driveabout/model/ao;->l:[I

    .line 180
    return-void
.end method

.method public static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ao;
    .locals 21

    .prologue
    .line 205
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/ag;->a(Ljava/io/DataInput;Lcom/google/android/maps/driveabout/model/aw;)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v10

    .line 208
    sget-object v11, Lcom/google/android/maps/driveabout/model/ao;->m:[Ljava/lang/String;

    .line 209
    sget-object v12, Lcom/google/android/maps/driveabout/model/ao;->n:[Ljava/lang/String;

    .line 210
    const/4 v2, 0x7

    move/from16 v0, p1

    if-eq v0, v2, :cond_0

    const/16 v2, 0x8

    move/from16 v0, p1

    if-ne v0, v2, :cond_4

    .line 212
    :cond_0
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v4

    .line 213
    if-nez v4, :cond_1

    sget-object v11, Lcom/google/android/maps/driveabout/model/ao;->m:[Ljava/lang/String;

    .line 214
    :goto_0
    if-nez v4, :cond_2

    sget-object v2, Lcom/google/android/maps/driveabout/model/ao;->n:[Ljava/lang/String;

    .line 215
    :goto_1
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v4, :cond_3

    .line 216
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/google/android/maps/driveabout/vector/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v11, v3

    .line 217
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 215
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 213
    :cond_1
    new-array v11, v4, [Ljava/lang/String;

    goto :goto_0

    .line 214
    :cond_2
    new-array v2, v4, [Ljava/lang/String;

    goto :goto_1

    :cond_3
    move-object v12, v2

    .line 222
    :cond_4
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 223
    move-object/from16 v0, p3

    invoke-virtual {v0, v2}, Lcom/google/android/maps/driveabout/model/ar;->a(I)Lcom/google/android/maps/driveabout/model/aq;

    move-result-object v6

    .line 226
    const/4 v15, -0x1

    .line 227
    const/4 v7, 0x0

    .line 228
    const/16 v2, 0x9

    move/from16 v0, p1

    if-ne v0, v2, :cond_5

    .line 229
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v15

    .line 230
    move-object/from16 v0, p4

    invoke-static {v15, v0}, Lcom/google/android/maps/driveabout/model/z;->a(I[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 231
    aget-object v7, p4, v15

    .line 236
    :cond_5
    const/4 v13, 0x0

    .line 237
    const/16 v2, 0x9

    move/from16 v0, p1

    if-ne v0, v2, :cond_6

    .line 238
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v9

    .line 239
    new-array v13, v9, [Lcom/google/android/maps/driveabout/model/s;

    .line 240
    const/4 v2, 0x0

    move v8, v2

    :goto_3
    if-ge v8, v9, :cond_6

    move-object/from16 v2, p0

    move/from16 v3, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    .line 241
    invoke-static/range {v2 .. v7}, Lcom/google/android/maps/driveabout/model/s;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aq;Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/s;

    move-result-object v2

    aput-object v2, v13, v8

    .line 240
    add-int/lit8 v2, v8, 0x1

    move v8, v2

    goto :goto_3

    .line 247
    :cond_6
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v17

    .line 250
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v18

    .line 253
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v19

    .line 256
    const/4 v2, 0x0

    .line 257
    const/16 v3, 0x9

    move/from16 v0, p1

    if-ne v0, v3, :cond_c

    .line 258
    const/4 v3, 0x1

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 259
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/k;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v2

    .line 265
    :cond_7
    :goto_4
    ushr-int/lit8 v19, v19, 0x2

    move-object v9, v2

    .line 269
    :goto_5
    const/4 v2, 0x0

    .line 270
    const/16 v3, 0x8

    move/from16 v0, p1

    if-eq v0, v3, :cond_8

    const/16 v3, 0x9

    move/from16 v0, p1

    if-ne v0, v3, :cond_9

    .line 272
    :cond_8
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 274
    :cond_9
    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 275
    const/4 v3, 0x0

    :goto_6
    if-ge v3, v2, :cond_b

    .line 276
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v20, v3

    .line 275
    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    .line 260
    :cond_a
    const/4 v3, 0x2

    move/from16 v0, v19

    invoke-static {v3, v0}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 261
    invoke-static/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/k;->b(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/k;

    move-result-object v2

    goto :goto_4

    .line 279
    :cond_b
    new-instance v8, Lcom/google/android/maps/driveabout/model/ao;

    move-object v14, v6

    move-object/from16 v16, v7

    invoke-direct/range {v8 .. v20}, Lcom/google/android/maps/driveabout/model/ao;-><init>(Lcom/google/android/maps/driveabout/model/k;Lcom/google/android/maps/driveabout/model/ag;[Ljava/lang/String;[Ljava/lang/String;[Lcom/google/android/maps/driveabout/model/s;Lcom/google/android/maps/driveabout/model/aq;ILjava/lang/String;III[I)V

    return-object v8

    :cond_c
    move-object v9, v2

    goto :goto_5
.end method

.method private l()Z
    .locals 1

    .prologue
    .line 341
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ao;->e:[Lcom/google/android/maps/driveabout/model/s;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/ag;
    .locals 1

    .prologue
    .line 349
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ao;->b:Lcom/google/android/maps/driveabout/model/ag;

    return-object v0
.end method

.method public final a(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 370
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/ao;->l()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ao;->e:[Lcom/google/android/maps/driveabout/model/s;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/s;->b()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ao;->e:[Lcom/google/android/maps/driveabout/model/s;

    aget-object v0, v0, p1

    const/4 v1, 0x0

    .line 372
    invoke-virtual {v0, v1}, Lcom/google/android/maps/driveabout/model/s;->a(I)Lcom/google/android/maps/driveabout/model/t;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/t;->e()Ljava/lang/String;

    move-result-object v0

    .line 375
    :goto_0
    return-object v0

    .line 372
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 375
    :cond_1
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ao;->d:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0
.end method

.method public final b()Lcom/google/android/maps/driveabout/model/aq;
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ao;->f:Lcom/google/android/maps/driveabout/model/aq;

    return-object v0
.end method

.method public final b(I)Lcom/google/android/maps/driveabout/model/s;
    .locals 1

    .prologue
    .line 380
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ao;->e:[Lcom/google/android/maps/driveabout/model/s;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 428
    const/4 v0, 0x2

    return v0
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 423
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ao;->j:I

    return v0
.end method

.method public final e()I
    .locals 1

    .prologue
    .line 353
    invoke-direct {p0}, Lcom/google/android/maps/driveabout/model/ao;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ao;->e:[Lcom/google/android/maps/driveabout/model/s;

    array-length v0, v0

    .line 356
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ao;->c:[Ljava/lang/String;

    array-length v0, v0

    goto :goto_0
.end method

.method public final f()I
    .locals 1

    .prologue
    .line 384
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/ao;->e:[Lcom/google/android/maps/driveabout/model/s;

    array-length v0, v0

    return v0
.end method

.method public final g()I
    .locals 1

    .prologue
    .line 418
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ao;->i:I

    return v0
.end method

.method public final h()Z
    .locals 2

    .prologue
    .line 435
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ao;->k:I

    const/16 v1, 0x10

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method public final i()Z
    .locals 2

    .prologue
    .line 442
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ao;->k:I

    const/4 v1, 0x4

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method public final j()Z
    .locals 2

    .prologue
    .line 450
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ao;->k:I

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.method public final k()Z
    .locals 2

    .prologue
    .line 458
    iget v0, p0, Lcom/google/android/maps/driveabout/model/ao;->k:I

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/google/android/maps/driveabout/model/z;->a(II)Z

    move-result v0

    return v0
.end method

.class public Lcom/google/android/maps/driveabout/model/be;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/model/i;


# instance fields
.field private final a:Lcom/google/android/maps/driveabout/model/aw;

.field private final b:I

.field private final c:[Lcom/google/android/maps/driveabout/model/j;

.field private final d:Lcom/google/android/maps/driveabout/model/ar;

.field private final e:[Ljava/lang/String;

.field private final f:J

.field private final g:[Ljava/lang/String;

.field private final h:[Ljava/lang/String;

.field private final i:[Ljava/lang/String;

.field private final j:I

.field private final k:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

.field private final l:[Lcom/google/android/maps/driveabout/model/bb;

.field private final m:I

.field private n:J


# direct methods
.method protected constructor <init>(Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aw;II[Ljava/lang/String;[Ljava/lang/String;I[Lcom/google/android/maps/driveabout/model/j;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;[Lcom/google/android/maps/driveabout/model/bb;JJ)V
    .locals 1

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/model/be;->h:[Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lcom/google/android/maps/driveabout/model/be;->d:Lcom/google/android/maps/driveabout/model/ar;

    .line 86
    iput-object p2, p0, Lcom/google/android/maps/driveabout/model/be;->e:[Ljava/lang/String;

    .line 87
    iput-object p3, p0, Lcom/google/android/maps/driveabout/model/be;->a:Lcom/google/android/maps/driveabout/model/aw;

    .line 88
    iput p4, p0, Lcom/google/android/maps/driveabout/model/be;->b:I

    .line 89
    iput-object p6, p0, Lcom/google/android/maps/driveabout/model/be;->g:[Ljava/lang/String;

    .line 90
    iput-object p7, p0, Lcom/google/android/maps/driveabout/model/be;->i:[Ljava/lang/String;

    .line 91
    iput p8, p0, Lcom/google/android/maps/driveabout/model/be;->j:I

    .line 92
    iput-object p9, p0, Lcom/google/android/maps/driveabout/model/be;->c:[Lcom/google/android/maps/driveabout/model/j;

    .line 93
    iput-object p10, p0, Lcom/google/android/maps/driveabout/model/be;->k:Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;

    .line 94
    iput-object p11, p0, Lcom/google/android/maps/driveabout/model/be;->l:[Lcom/google/android/maps/driveabout/model/bb;

    .line 95
    iput p5, p0, Lcom/google/android/maps/driveabout/model/be;->m:I

    .line 96
    iput-wide p12, p0, Lcom/google/android/maps/driveabout/model/be;->f:J

    .line 97
    iput-wide p14, p0, Lcom/google/android/maps/driveabout/model/be;->n:J

    .line 98
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/model/aw;Ljava/io/DataInput;IIILcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;JJ)Lcom/google/android/maps/driveabout/model/be;
    .locals 19

    .prologue
    .line 216
    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/model/be;->a(Ljava/io/DataInput;)V

    .line 221
    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/model/aw;->a(Ljava/io/DataInput;)Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v3

    .line 222
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 223
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v5

    if-ne v4, v5, :cond_0

    .line 224
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v5

    if-eq v4, v5, :cond_1

    .line 225
    :cond_0
    new-instance v4, Ljava/io/IOException;

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x24

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Expected tile coords: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " but received "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v4, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 229
    :cond_1
    const/4 v11, -0x1

    .line 233
    const/16 v3, 0x8

    move/from16 v0, p2

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    move/from16 v0, p2

    if-ne v0, v3, :cond_6

    .line 234
    :cond_2
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v3

    .line 235
    if-lez v3, :cond_3

    .line 236
    add-int/lit16 v3, v3, 0x7d0

    .line 238
    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v5

    .line 239
    new-array v9, v5, [Ljava/lang/String;

    .line 240
    const/4 v4, 0x0

    :goto_0
    if-ge v4, v5, :cond_4

    .line 241
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v9, v4

    .line 240
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 243
    :cond_4
    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v5

    .line 244
    new-array v10, v5, [Ljava/lang/String;

    .line 245
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v5, :cond_5

    .line 246
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v10, v4

    .line 245
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_5
    move v11, v3

    .line 252
    :goto_2
    invoke-static/range {p1 .. p2}, Lcom/google/android/maps/driveabout/model/ar;->a(Ljava/io/DataInput;I)Lcom/google/android/maps/driveabout/model/ar;

    move-result-object v4

    .line 255
    const/4 v5, 0x0

    .line 256
    const/16 v3, 0x9

    move/from16 v0, p2

    if-ne v0, v3, :cond_7

    .line 257
    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v6

    .line 258
    new-array v5, v6, [Ljava/lang/String;

    .line 259
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v6, :cond_7

    .line 260
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, v3

    .line 259
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 249
    :cond_6
    const/4 v3, 0x0

    new-array v9, v3, [Ljava/lang/String;

    .line 250
    const/4 v3, 0x0

    new-array v10, v3, [Ljava/lang/String;

    goto :goto_2

    .line 265
    :cond_7
    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v6

    .line 266
    new-array v12, v6, [Lcom/google/android/maps/driveabout/model/j;

    .line 267
    const/4 v3, 0x0

    :goto_4
    if-ge v3, v6, :cond_8

    .line 268
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/maps/driveabout/model/be;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/j;

    move-result-object v7

    aput-object v7, v12, v3

    .line 267
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 272
    :cond_8
    const/4 v14, 0x0

    .line 273
    const/16 v3, 0x9

    move/from16 v0, p2

    if-ne v0, v3, :cond_9

    .line 274
    invoke-static/range {p1 .. p1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v6

    .line 275
    new-array v14, v6, [Lcom/google/android/maps/driveabout/model/bb;

    .line 276
    const/4 v3, 0x0

    :goto_5
    if-ge v3, v6, :cond_9

    .line 277
    move-object/from16 v0, p1

    move/from16 v1, p2

    move-object/from16 v2, p0

    invoke-static {v0, v1, v2, v4, v5}, Lcom/google/android/maps/driveabout/model/bb;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/bb;

    move-result-object v7

    aput-object v7, v14, v3

    .line 276
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 281
    :cond_9
    new-instance v3, Lcom/google/android/maps/driveabout/model/be;

    move-object/from16 v6, p0

    move/from16 v7, p3

    move/from16 v8, p4

    move-object/from16 v13, p5

    move-wide/from16 v15, p6

    move-wide/from16 v17, p8

    invoke-direct/range {v3 .. v18}, Lcom/google/android/maps/driveabout/model/be;-><init>(Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;Lcom/google/android/maps/driveabout/model/aw;II[Ljava/lang/String;[Ljava/lang/String;I[Lcom/google/android/maps/driveabout/model/j;Lcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;[Lcom/google/android/maps/driveabout/model/bb;JJ)V

    return-object v3
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/aw;[BILcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;JJ)Lcom/google/android/maps/driveabout/model/be;
    .locals 14

    .prologue
    .line 301
    invoke-static/range {p1 .. p2}, Lcom/google/android/maps/driveabout/model/be;->a([BI)[J

    move-result-object v0

    .line 302
    const/4 v1, 0x0

    .line 307
    const/4 v2, 0x1

    aget-wide v3, v0, v1

    long-to-int v8, v3

    .line 309
    const/4 v1, 0x2

    aget-wide v2, v0, v2

    long-to-int v9, v2

    .line 310
    const/4 v2, 0x3

    aget-wide v3, v0, v1

    long-to-int v1, v3

    .line 311
    const/4 v3, 0x4

    aget-wide v4, v0, v2

    long-to-int v2, v4

    .line 314
    aget-wide v3, v0, v3

    .line 316
    const/16 v0, 0x9

    if-ne v1, v0, :cond_1

    const/16 v0, 0x1a

    .line 319
    :goto_0
    add-int v6, p2, v0

    .line 320
    array-length v0, p1

    sub-int v7, v0, v6

    move-object v0, p0

    move-object v5, p1

    .line 322
    invoke-static/range {v0 .. v7}, Lcom/google/android/maps/driveabout/model/be;->a(Lcom/google/android/maps/driveabout/model/aw;IIJ[BII)V

    .line 323
    new-instance v13, Ljava/util/zip/Inflater;

    const/4 v0, 0x1

    invoke-direct {v13, v0}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 326
    :try_start_0
    invoke-virtual {v13, p1, v6, v7}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 330
    mul-int/lit8 v0, v7, 0x4

    .line 331
    invoke-static {v0}, Lcom/google/googlenav/f/c;->a(I)[B

    move-result-object v2

    .line 332
    if-nez v2, :cond_0

    .line 333
    new-array v2, v0, [B

    .line 335
    :cond_0
    invoke-virtual {v13, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    move-object v12, v2

    .line 336
    :goto_1
    invoke-virtual {v13}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    if-lez v2, :cond_2

    .line 337
    array-length v2, v12

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 338
    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v12, v3, v2, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    array-length v3, v2

    sub-int/2addr v3, v0

    invoke-virtual {v13, v2, v0, v3}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v3

    add-int/2addr v0, v3

    move-object v12, v2

    .line 342
    goto :goto_1

    .line 316
    :cond_1
    const/16 v0, 0x10

    goto :goto_0

    .line 343
    :cond_2
    new-instance v3, Lcom/google/android/maps/driveabout/util/a;

    invoke-direct {v3, v12}, Lcom/google/android/maps/driveabout/util/a;-><init>([B)V

    move-object v2, p0

    move v4, v1

    move v5, v8

    move v6, v9

    move-object/from16 v7, p3

    move-wide/from16 v8, p4

    move-wide/from16 v10, p6

    .line 344
    invoke-static/range {v2 .. v11}, Lcom/google/android/maps/driveabout/model/be;->a(Lcom/google/android/maps/driveabout/model/aw;Ljava/io/DataInput;IIILcom/google/android/maps/driveabout/vector/VectorGlobalState$TileType;JJ)Lcom/google/android/maps/driveabout/model/be;

    move-result-object v1

    .line 346
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/util/a;->a()I

    move-result v2

    if-eq v2, v0, :cond_3

    .line 347
    new-instance v0, Ljava/io/IOException;

    .line 348
    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/be;->a()Lcom/google/android/maps/driveabout/model/aw;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Byte stream not fully read for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 354
    :catch_0
    move-exception v0

    .line 355
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 357
    :catchall_0
    move-exception v0

    invoke-virtual {v13}, Ljava/util/zip/Inflater;->end()V

    throw v0

    .line 352
    :cond_3
    :try_start_2
    invoke-static {v12}, Lcom/google/googlenav/f/c;->a([B)V
    :try_end_2
    .catch Ljava/util/zip/DataFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 357
    invoke-virtual {v13}, Ljava/util/zip/Inflater;->end()V

    return-object v1
.end method

.method static a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/j;
    .locals 4

    .prologue
    .line 373
    invoke-static {p0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v0

    .line 374
    packed-switch v0, :pswitch_data_0

    .line 396
    :pswitch_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unknown feature type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 376
    :pswitch_1
    invoke-static {p0, p1, p3}, Lcom/google/android/maps/driveabout/model/h;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/ar;)Lcom/google/android/maps/driveabout/model/h;

    move-result-object v0

    .line 394
    :goto_0
    return-object v0

    .line 378
    :pswitch_2
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/model/ao;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ao;

    move-result-object v0

    goto :goto_0

    .line 380
    :pswitch_3
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/model/d;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/d;

    move-result-object v0

    goto :goto_0

    .line 382
    :pswitch_4
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/model/e;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/e;

    move-result-object v0

    goto :goto_0

    .line 384
    :pswitch_5
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/model/x;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/x;

    move-result-object v0

    goto :goto_0

    .line 386
    :pswitch_6
    invoke-static {p0, p1, p3}, Lcom/google/android/maps/driveabout/model/al;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/ar;)Lcom/google/android/maps/driveabout/model/al;

    move-result-object v0

    goto :goto_0

    .line 388
    :pswitch_7
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/model/ac;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/ac;

    move-result-object v0

    goto :goto_0

    .line 390
    :pswitch_8
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/model/v;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/v;

    move-result-object v0

    goto :goto_0

    .line 392
    :pswitch_9
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/model/ay;->a(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/j;

    move-result-object v0

    goto :goto_0

    .line 394
    :pswitch_a
    invoke-static {p0, p1, p2, p3, p4}, Lcom/google/android/maps/driveabout/model/w;->b(Ljava/io/DataInput;ILcom/google/android/maps/driveabout/model/aw;Lcom/google/android/maps/driveabout/model/ar;[Ljava/lang/String;)Lcom/google/android/maps/driveabout/model/v;

    move-result-object v0

    goto :goto_0

    .line 374
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
    .end packed-switch
.end method

.method public static a(II[B)V
    .locals 1

    .prologue
    .line 672
    const/4 v0, 0x0

    invoke-static {p0, p2, v0}, Lcom/google/android/maps/driveabout/model/z;->a(I[BI)V

    .line 673
    const/4 v0, 0x4

    invoke-static {p1, p2, v0}, Lcom/google/android/maps/driveabout/model/z;->a(I[BI)V

    .line 674
    return-void
.end method

.method private static a(Lcom/google/android/maps/driveabout/model/aw;IIJ[BII)V
    .locals 12

    .prologue
    .line 589
    new-instance v11, Lcom/google/android/maps/driveabout/store/bu;

    invoke-direct {v11}, Lcom/google/android/maps/driveabout/store/bu;-><init>()V

    .line 590
    const/16 v3, 0x9

    if-ge p1, v3, :cond_0

    .line 591
    const/16 v3, 0x20

    new-array v8, v3, [B

    .line 593
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v5

    move v6, p1

    move v7, p2

    .line 592
    invoke-static/range {v3 .. v8}, Lcom/google/android/maps/driveabout/store/bu;->a(IIIII[B)V

    .line 595
    const/16 v3, 0x100

    invoke-virtual {v11, v8, v3}, Lcom/google/android/maps/driveabout/store/bu;->b([BI)V

    .line 603
    :goto_0
    move-object/from16 v0, p5

    move/from16 v1, p6

    move/from16 v2, p7

    invoke-virtual {v11, v0, v1, v2}, Lcom/google/android/maps/driveabout/store/bu;->a([BII)V

    .line 604
    return-void

    .line 597
    :cond_0
    const/16 v3, 0x28

    new-array v10, v3, [B

    .line 599
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v5

    move v6, p1

    move v7, p2

    move-wide v8, p3

    .line 598
    invoke-static/range {v3 .. v10}, Lcom/google/android/maps/driveabout/store/bu;->a(IIIIIJ[B)V

    .line 601
    const/16 v3, 0x100

    invoke-virtual {v11, v10, v3}, Lcom/google/android/maps/driveabout/store/bu;->a([BI)V

    goto :goto_0
.end method

.method private static a(Ljava/io/DataInput;)V
    .locals 4

    .prologue
    .line 610
    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    .line 611
    const v1, 0x44524154

    if-eq v0, v1, :cond_0

    .line 612
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "TILE_MAGIC expected. Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 614
    :cond_0
    return-void
.end method

.method private static a([BI)[J
    .locals 14

    .prologue
    const/4 v13, 0x4

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 631
    new-instance v0, Lcom/google/android/maps/driveabout/util/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/util/a;-><init>([B)V

    .line 632
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/a;->skipBytes(I)I

    .line 640
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v1

    .line 642
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v2

    .line 644
    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/be;->a(Ljava/io/DataInput;)V

    .line 646
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readUnsignedShort()I

    move-result v3

    .line 647
    const/4 v4, 0x7

    if-eq v3, v4, :cond_0

    const/16 v4, 0x8

    if-eq v3, v4, :cond_0

    const/16 v4, 0x9

    if-eq v3, v4, :cond_0

    .line 650
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Version mismatch: 7 or 8 or 9 expected, "

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 655
    :cond_0
    const/4 v4, 0x7

    if-eq v3, v4, :cond_1

    const/16 v4, 0x8

    if-ne v3, v4, :cond_2

    .line 657
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readUnsignedShort()I

    move-result v4

    .line 658
    const/4 v0, 0x5

    new-array v0, v0, [J

    int-to-long v5, v1

    aput-wide v5, v0, v9

    int-to-long v1, v2

    aput-wide v1, v0, v10

    int-to-long v1, v3

    aput-wide v1, v0, v11

    int-to-long v1, v4

    aput-wide v1, v0, v12

    const-wide/16 v1, 0x0

    aput-wide v1, v0, v13

    .line 666
    :goto_0
    return-object v0

    .line 662
    :cond_2
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v4

    .line 665
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readLong()J

    move-result-wide v5

    .line 666
    const/4 v0, 0x5

    new-array v0, v0, [J

    int-to-long v7, v1

    aput-wide v7, v0, v9

    int-to-long v1, v2

    aput-wide v1, v0, v10

    int-to-long v1, v3

    aput-wide v1, v0, v11

    int-to-long v1, v4

    aput-wide v1, v0, v12

    aput-wide v5, v0, v13

    goto :goto_0
.end method

.method public static e()I
    .locals 4

    .prologue
    .line 742
    invoke-static {}, Lcom/google/android/maps/driveabout/model/be;->g()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 743
    const/4 v0, -0x1

    .line 745
    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/android/maps/driveabout/model/be;->g()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method public static f()I
    .locals 1

    .prologue
    .line 750
    const/16 v0, 0x8

    return v0
.end method

.method private static g()J
    .locals 2

    .prologue
    .line 730
    invoke-static {}, Lcom/google/googlenav/e;->a()Lcom/google/googlenav/e;

    invoke-static {}, Lcom/google/googlenav/e;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 731
    invoke-static {}, Lcom/google/googlenav/b/c;->b()Lcom/google/googlenav/b/h;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 732
    invoke-static {}, Lcom/google/googlenav/b/c;->b()Lcom/google/googlenav/b/h;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/googlenav/b/h;->b()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/android/maps/driveabout/model/aw;
    .locals 1

    .prologue
    .line 473
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/be;->a:Lcom/google/android/maps/driveabout/model/aw;

    return-object v0
.end method

.method public a(I)Lcom/google/android/maps/driveabout/model/j;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/be;->c:[Lcom/google/android/maps/driveabout/model/j;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public a(Lcom/google/googlenav/common/a;)Z
    .locals 4

    .prologue
    .line 691
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/model/be;->f:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/model/be;->f:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_()J
    .locals 2

    .prologue
    .line 686
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/model/be;->f:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 478
    iget v0, p0, Lcom/google/android/maps/driveabout/model/be;->b:I

    return v0
.end method

.method public final b(Lcom/google/googlenav/common/a;)Z
    .locals 4

    .prologue
    .line 706
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/model/be;->n:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/model/be;->n:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final b_()J
    .locals 2

    .prologue
    .line 711
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/model/be;->n:J

    return-wide v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 701
    iget v0, p0, Lcom/google/android/maps/driveabout/model/be;->m:I

    return v0
.end method

.method public final c(Lcom/google/googlenav/common/a;)V
    .locals 4

    .prologue
    .line 716
    invoke-static {}, Lcom/google/android/maps/driveabout/model/be;->g()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 717
    invoke-interface {p1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    invoke-static {}, Lcom/google/android/maps/driveabout/model/be;->g()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/model/be;->n:J

    .line 722
    :goto_0
    return-void

    .line 720
    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/android/maps/driveabout/model/be;->n:J

    goto :goto_0
.end method

.method public d()I
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/google/android/maps/driveabout/model/be;->c:[Lcom/google/android/maps/driveabout/model/j;

    array-length v0, v0

    return v0
.end method

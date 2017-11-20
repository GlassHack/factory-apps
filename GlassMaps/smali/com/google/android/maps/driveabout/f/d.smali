.class public final Lcom/google/android/maps/driveabout/f/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/model/i;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private final b:Lcom/google/android/maps/driveabout/model/aw;

.field private final c:I

.field private final d:J

.field private final e:[Lcom/google/android/maps/driveabout/f/e;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-string v0, "RoadGraphPiece"

    sput-object v0, Lcom/google/android/maps/driveabout/f/d;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/googlenav/common/io/b/a;J)V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/model/aw;

    .line 97
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/android/maps/driveabout/f/d;->c:I

    .line 98
    iput-wide p3, p0, Lcom/google/android/maps/driveabout/f/d;->d:J

    .line 99
    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v0

    .line 100
    new-array v0, v0, [Lcom/google/android/maps/driveabout/f/e;

    iput-object v0, p0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    .line 106
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/f/d;->a(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    .line 107
    invoke-direct {p0, p2, v0}, Lcom/google/android/maps/driveabout/f/d;->a(Lcom/google/googlenav/common/io/b/a;[Lcom/google/android/maps/driveabout/model/ab;)V

    .line 108
    invoke-direct {p0, p2}, Lcom/google/android/maps/driveabout/f/d;->b(Lcom/google/googlenav/common/io/b/a;)V

    .line 109
    return-void
.end method

.method public static a([BI)I
    .locals 5

    .prologue
    .line 243
    new-instance v0, Lcom/google/android/maps/driveabout/util/a;

    invoke-direct {v0, p0}, Lcom/google/android/maps/driveabout/util/a;-><init>([B)V

    .line 244
    invoke-virtual {v0, p1}, Lcom/google/android/maps/driveabout/util/a;->skipBytes(I)I

    .line 245
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v1

    .line 246
    const v2, 0x45504752

    if-eq v1, v2, :cond_0

    .line 247
    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "FORMAT_MAGIC expected. Found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_0
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readUnsignedShort()I

    move-result v1

    .line 250
    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    .line 251
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Version mismatch: 1 expected, "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x11

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 254
    :cond_1
    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/util/a;->readInt()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/google/android/maps/driveabout/model/aw;[BIJ)Lcom/google/android/maps/driveabout/f/d;
    .locals 6

    .prologue
    .line 186
    invoke-static {p1, p2}, Lcom/google/android/maps/driveabout/f/d;->a([BI)I

    move-result v0

    .line 187
    add-int/lit8 v1, p2, 0xa

    .line 188
    invoke-static {p0, v0, p1, v1}, Lcom/google/android/maps/driveabout/f/d;->a(Lcom/google/android/maps/driveabout/model/aw;I[BI)V

    .line 189
    array-length v0, p1

    sub-int/2addr v0, v1

    .line 191
    new-instance v3, Ljava/util/zip/Inflater;

    const/4 v2, 0x1

    invoke-direct {v3, v2}, Ljava/util/zip/Inflater;-><init>(Z)V

    .line 194
    :try_start_0
    invoke-virtual {v3, p1, v1, v0}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 198
    mul-int/lit8 v0, v0, 0x4

    new-array v1, v0, [B

    .line 199
    invoke-virtual {v3, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    .line 200
    :goto_0
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->getRemaining()I

    move-result v2

    if-lez v2, :cond_0

    .line 201
    array-length v2, v1

    mul-int/lit8 v2, v2, 0x2

    new-array v2, v2, [B

    .line 202
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v4, v2, v5, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 204
    array-length v1, v2

    sub-int/2addr v1, v0

    invoke-virtual {v3, v2, v0, v1}, Ljava/util/zip/Inflater;->inflate([BII)I

    move-result v1

    add-int/2addr v0, v1

    move-object v1, v2

    .line 206
    goto :goto_0

    .line 207
    :cond_0
    invoke-static {p0, v1, v0, p3, p4}, Lcom/google/android/maps/driveabout/f/d;->b(Lcom/google/android/maps/driveabout/model/aw;[BIJ)Lcom/google/android/maps/driveabout/f/d;
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 211
    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 211
    :catchall_0
    move-exception v0

    invoke-virtual {v3}, Ljava/util/zip/Inflater;->end()V

    throw v0
.end method

.method private static a([BLcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ag;
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 453
    .line 454
    const/4 v0, 0x0

    .line 455
    if-eqz p0, :cond_3

    .line 456
    new-instance v0, Ljava/io/DataInputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 457
    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v1

    .line 459
    :goto_0
    new-instance v5, Lcom/google/android/maps/driveabout/model/ai;

    add-int/lit8 v3, v1, 0x2

    invoke-direct {v5, v3}, Lcom/google/android/maps/driveabout/model/ai;-><init>(I)V

    .line 460
    if-eqz p1, :cond_0

    .line 461
    invoke-virtual {v5, p1}, Lcom/google/android/maps/driveabout/model/ai;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    :cond_0
    move v3, v2

    move v4, v2

    .line 464
    :goto_1
    if-ge v2, v1, :cond_1

    .line 465
    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/ba;->b(Ljava/io/DataInput;)I

    move-result v6

    add-int/2addr v4, v6

    .line 466
    invoke-static {v0}, Lcom/google/android/maps/driveabout/model/ba;->b(Ljava/io/DataInput;)I

    move-result v6

    add-int/2addr v3, v6

    .line 467
    invoke-static {v4, v3}, Lcom/google/android/maps/driveabout/model/ab;->c(II)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/model/ai;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    .line 464
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 469
    :cond_1
    if-eqz p2, :cond_2

    .line 470
    invoke-virtual {v5, p2}, Lcom/google/android/maps/driveabout/model/ai;->a(Lcom/google/android/maps/driveabout/model/ab;)Z

    .line 472
    :cond_2
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/ai;->d()Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v0

    return-object v0

    :cond_3
    move v1, v2

    goto :goto_0
.end method

.method private static a(Lcom/google/android/maps/driveabout/model/aw;I[BI)V
    .locals 4

    .prologue
    .line 224
    const/16 v0, 0x20

    new-array v0, v0, [B

    .line 226
    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->b()I

    move-result v1

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->c()I

    move-result v2

    invoke-virtual {p0}, Lcom/google/android/maps/driveabout/model/aw;->a()I

    move-result v3

    .line 225
    invoke-static {v1, v2, v3, p1, v0}, Lcom/google/android/maps/driveabout/store/bu;->a(IIII[B)V

    .line 227
    new-instance v1, Lcom/google/android/maps/driveabout/store/bu;

    invoke-direct {v1}, Lcom/google/android/maps/driveabout/store/bu;-><init>()V

    .line 228
    const/16 v2, 0x100

    invoke-virtual {v1, v0, v2}, Lcom/google/android/maps/driveabout/store/bu;->b([BI)V

    .line 229
    array-length v0, p2

    sub-int/2addr v0, p3

    invoke-virtual {v1, p2, p3, v0}, Lcom/google/android/maps/driveabout/store/bu;->a([BII)V

    .line 230
    return-void
.end method

.method private a(Lcom/google/googlenav/common/io/b/a;[Lcom/google/android/maps/driveabout/model/ab;)V
    .locals 17

    .prologue
    .line 295
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/model/aw;

    invoke-virtual {v1}, Lcom/google/android/maps/driveabout/model/aw;->e()Lcom/google/android/maps/driveabout/model/am;

    .line 296
    const/4 v1, 0x0

    move v10, v1

    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    array-length v1, v1

    div-int/lit8 v1, v1, 0x2

    if-ge v10, v1, :cond_4

    .line 297
    mul-int/lit8 v12, v10, 0x2

    .line 298
    mul-int/lit8 v1, v10, 0x2

    add-int/lit8 v13, v1, 0x1

    .line 299
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v12}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v6

    .line 300
    const/4 v1, 0x2

    invoke-static {v6, v1}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v7

    .line 302
    const/4 v1, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v13}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v11

    .line 303
    const/4 v1, 0x2

    invoke-static {v11, v1}, Lcom/google/googlenav/common/io/b/f;->c(Lcom/google/googlenav/common/io/b/a;I)I

    move-result v14

    .line 305
    const/4 v1, 0x0

    .line 306
    const/4 v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v10}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v2

    .line 308
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 309
    const/4 v1, 0x1

    invoke-virtual {v2, v1}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v1

    .line 311
    :cond_0
    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v9

    .line 313
    const/4 v3, 0x3

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v8

    .line 316
    move-object/from16 v0, p1

    invoke-static {v6, v8, v0}, Lcom/google/android/maps/driveabout/f/d;->a(Lcom/google/googlenav/common/io/b/a;ILcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/f/f;

    move-result-object v4

    .line 318
    const/4 v3, 0x0

    .line 319
    const/4 v2, 0x4

    .line 321
    aget-object v15, p2, v13

    .line 322
    aget-object v16, p2, v12

    .line 323
    move-object/from16 v0, v16

    invoke-static {v1, v15, v0}, Lcom/google/android/maps/driveabout/f/d;->a([BLcom/google/android/maps/driveabout/model/ab;Lcom/google/android/maps/driveabout/model/ab;)Lcom/google/android/maps/driveabout/model/ag;

    move-result-object v5

    .line 325
    if-nez v15, :cond_1

    if-nez v16, :cond_1

    .line 326
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Both polyline endpoints are missing for segment: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    aget-object v3, v3, v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/model/aw;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 329
    :cond_1
    if-nez v15, :cond_2

    .line 330
    const/4 v2, 0x2

    .line 331
    const/4 v1, 0x5

    .line 337
    :goto_1
    const/4 v3, 0x4

    const/4 v15, 0x0

    invoke-static {v6, v3, v15}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v3

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    .line 339
    or-int/lit8 v6, v2, 0x8

    .line 341
    :goto_2
    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v11, v2, v3}, Lcom/google/googlenav/common/io/b/f;->a(Lcom/google/googlenav/common/io/b/a;II)I

    move-result v2

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_5

    .line 343
    or-int/lit8 v1, v1, 0x8

    move v11, v1

    .line 346
    :goto_3
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    new-instance v1, Lcom/google/android/maps/driveabout/f/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/model/aw;

    invoke-static {v2, v12}, Lcom/google/android/maps/driveabout/f/e;->a(Lcom/google/android/maps/driveabout/model/aw;I)J

    move-result-wide v2

    invoke-direct/range {v1 .. v9}, Lcom/google/android/maps/driveabout/f/e;-><init>(J[Lcom/google/android/maps/driveabout/f/f;Lcom/google/android/maps/driveabout/model/ag;IIII)V

    aput-object v1, v15, v12

    .line 348
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    new-instance v1, Lcom/google/android/maps/driveabout/f/e;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/model/aw;

    invoke-static {v2, v13}, Lcom/google/android/maps/driveabout/f/e;->a(Lcom/google/android/maps/driveabout/model/aw;I)J

    move-result-wide v2

    move v6, v11

    move v7, v14

    invoke-direct/range {v1 .. v9}, Lcom/google/android/maps/driveabout/f/e;-><init>(J[Lcom/google/android/maps/driveabout/f/f;Lcom/google/android/maps/driveabout/model/ag;IIII)V

    aput-object v1, v15, v13

    .line 351
    invoke-virtual {v5}, Lcom/google/android/maps/driveabout/model/ag;->b()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_3

    .line 352
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Segment polyline had fewer than two points for segment: "

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    aget-object v3, v3, v12

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/model/aw;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, 0xa

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in tile: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_2
    if-nez v16, :cond_7

    .line 333
    const/4 v2, 0x1

    .line 334
    const/4 v1, 0x6

    goto/16 :goto_1

    .line 296
    :cond_3
    add-int/lit8 v1, v10, 0x1

    move v10, v1

    goto/16 :goto_0

    .line 356
    :cond_4
    return-void

    :cond_5
    move v11, v1

    goto/16 :goto_3

    :cond_6
    move v6, v2

    goto/16 :goto_2

    :cond_7
    move v1, v2

    move v2, v3

    goto/16 :goto_1
.end method

.method private static a([B)[I
    .locals 5

    .prologue
    .line 428
    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 429
    invoke-static {v1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v2

    .line 430
    new-array v3, v2, [I

    .line 431
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 432
    invoke-static {v1}, Lcom/google/android/maps/driveabout/model/ba;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v3, v0

    .line 431
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 434
    :cond_0
    return-object v3
.end method

.method private static a(Lcom/google/googlenav/common/io/b/a;ILcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/f/f;
    .locals 10

    .prologue
    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 485
    invoke-virtual {p0, v9}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v5

    .line 487
    if-ne p1, v4, :cond_1

    move v3, v4

    .line 488
    :goto_0
    if-lez v5, :cond_3

    .line 489
    new-array v1, v5, [Lcom/google/android/maps/driveabout/f/f;

    .line 490
    :goto_1
    if-ge v2, v5, :cond_2

    .line 491
    invoke-virtual {p0, v9, v2}, Lcom/google/googlenav/common/io/b/a;->c(II)I

    move-result v0

    .line 492
    const/4 v6, 0x5

    invoke-virtual {p2, v6, v0}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v6

    .line 493
    const/4 v0, 0x0

    .line 494
    invoke-virtual {v6, v8}, Lcom/google/googlenav/common/io/b/a;->i(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 495
    invoke-virtual {v6, v8}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v0

    .line 497
    :cond_0
    new-instance v7, Lcom/google/android/maps/driveabout/f/f;

    .line 498
    invoke-virtual {v6, v4}, Lcom/google/googlenav/common/io/b/a;->g(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v7, v6, v0, v3}, Lcom/google/android/maps/driveabout/f/f;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v7, v1, v2

    .line 490
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_1
    move v3, v2

    .line 487
    goto :goto_0

    :cond_2
    move-object v0, v1

    .line 504
    :goto_2
    return-object v0

    .line 503
    :cond_3
    new-array v0, v4, [Lcom/google/android/maps/driveabout/f/f;

    sget-object v1, Lcom/google/android/maps/driveabout/f/e;->a:Lcom/google/android/maps/driveabout/f/f;

    aput-object v1, v0, v2

    goto :goto_2
.end method

.method private a(Lcom/google/googlenav/common/io/b/a;)[Lcom/google/android/maps/driveabout/model/ab;
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v1, 0x0

    .line 265
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    array-length v0, v0

    new-array v3, v0, [Lcom/google/android/maps/driveabout/model/ab;

    .line 267
    invoke-virtual {p1, v8}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v4

    move v2, v1

    .line 268
    :goto_0
    if-ge v2, v4, :cond_1

    .line 269
    invoke-virtual {p1, v8, v2}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v0

    .line 271
    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v5

    .line 272
    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/b/a;->d(I)I

    move-result v6

    .line 273
    invoke-static {v5, v6}, Lcom/google/android/maps/driveabout/model/ab;->a(II)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    .line 274
    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/maps/driveabout/f/d;->a([B)[I

    move-result-object v6

    move v0, v1

    .line 276
    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_0

    .line 277
    aget v7, v6, v0

    aput-object v5, v3, v7

    .line 276
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 280
    :cond_1
    return-object v3
.end method

.method private static b(Lcom/google/android/maps/driveabout/model/aw;[BIJ)Lcom/google/android/maps/driveabout/f/d;
    .locals 2

    .prologue
    .line 167
    new-instance v0, Lcom/google/googlenav/common/io/b/a;

    sget-object v1, Lcom/google/f/c/a/a/b;->e:Lcom/google/googlenav/common/io/b/d;

    invoke-direct {v0, v1}, Lcom/google/googlenav/common/io/b/a;-><init>(Lcom/google/googlenav/common/io/b/d;)V

    .line 168
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v0, v1, p2}, Lcom/google/googlenav/common/io/b/a;->a(Ljava/io/InputStream;I)I

    .line 169
    new-instance v1, Lcom/google/android/maps/driveabout/f/d;

    invoke-direct {v1, p0, v0, p3, p4}, Lcom/google/android/maps/driveabout/f/d;-><init>(Lcom/google/android/maps/driveabout/model/aw;Lcom/google/googlenav/common/io/b/a;J)V

    return-object v1
.end method

.method private b(Lcom/google/googlenav/common/io/b/a;)V
    .locals 18

    .prologue
    .line 366
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/google/googlenav/common/io/b/a;->j(I)I

    move-result v7

    .line 367
    new-instance v8, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v8}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 368
    new-instance v9, Lcom/google/android/maps/driveabout/model/ab;

    invoke-direct {v9}, Lcom/google/android/maps/driveabout/model/ab;-><init>()V

    .line 369
    const/4 v1, 0x0

    move v6, v1

    :goto_0
    if-ge v6, v7, :cond_4

    .line 370
    const/4 v1, 0x4

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v6}, Lcom/google/googlenav/common/io/b/a;->e(II)Lcom/google/googlenav/common/io/b/a;

    move-result-object v1

    .line 371
    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/maps/driveabout/f/d;->a([B)[I

    move-result-object v10

    .line 373
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/google/googlenav/common/io/b/a;->c(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/maps/driveabout/f/d;->a([B)[I

    move-result-object v11

    .line 374
    const/4 v2, 0x0

    .line 375
    array-length v1, v10

    new-array v12, v1, [Lcom/google/android/maps/driveabout/f/a;

    .line 376
    const/4 v1, 0x0

    :goto_1
    array-length v3, v10

    if-ge v1, v3, :cond_3

    .line 377
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    aget v4, v10, v1

    aget-object v13, v3, v4

    .line 378
    const/4 v4, 0x0

    .line 379
    const/4 v3, 0x0

    move/from16 v17, v3

    move v3, v4

    move v4, v1

    move/from16 v1, v17

    :goto_2
    array-length v5, v10

    if-ge v1, v5, :cond_2

    .line 380
    array-length v5, v11

    if-lt v2, v5, :cond_1

    .line 383
    array-length v1, v10

    move v4, v1

    .line 379
    :cond_0
    :goto_3
    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 386
    :cond_1
    aget v14, v11, v2

    .line 387
    if-eqz v14, :cond_0

    .line 397
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    aget v15, v10, v1

    xor-int/lit8 v15, v15, 0x1

    aget-object v15, v5, v15

    .line 398
    add-int/lit8 v5, v3, 0x1

    new-instance v16, Lcom/google/android/maps/driveabout/f/a;

    move-object/from16 v0, v16

    invoke-direct {v0, v15, v14}, Lcom/google/android/maps/driveabout/f/a;-><init>(Lcom/google/android/maps/driveabout/f/e;I)V

    aput-object v16, v12, v3

    .line 399
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v3

    if-nez v3, :cond_5

    .line 401
    invoke-virtual {v13, v8}, Lcom/google/android/maps/driveabout/f/e;->a(Lcom/google/android/maps/driveabout/model/ab;)V

    .line 402
    const/4 v3, 0x0

    invoke-virtual {v15, v3, v9}, Lcom/google/android/maps/driveabout/f/e;->a(ILcom/google/android/maps/driveabout/model/ab;)V

    .line 403
    invoke-virtual {v8, v9}, Lcom/google/android/maps/driveabout/model/ab;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 404
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Polylines did not line up when creating arc:  intersection: "

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 408
    invoke-virtual {v8}, Lcom/google/android/maps/driveabout/model/ab;->j()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 409
    invoke-virtual {v9}, Lcom/google/android/maps/driveabout/model/ab;->j()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0x49

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v6, " fromIndex: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " toIndex: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " point1: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " point2: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 413
    :cond_2
    new-array v1, v3, [Lcom/google/android/maps/driveabout/f/a;

    .line 414
    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v14, v1

    invoke-static {v12, v3, v1, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 415
    invoke-virtual {v13, v1}, Lcom/google/android/maps/driveabout/f/e;->a([Lcom/google/android/maps/driveabout/f/a;)V

    .line 376
    add-int/lit8 v1, v4, 0x1

    goto/16 :goto_1

    .line 369
    :cond_3
    add-int/lit8 v1, v6, 0x1

    move v6, v1

    goto/16 :goto_0

    .line 418
    :cond_4
    return-void

    :cond_5
    move v3, v5

    goto/16 :goto_3
.end method


# virtual methods
.method public final a(I)Lcom/google/android/maps/driveabout/f/e;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final a(Lcom/google/android/maps/driveabout/f/e;)Lcom/google/android/maps/driveabout/f/e;
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 130
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 131
    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    aget-object v2, v2, v0

    .line 132
    invoke-virtual {v2}, Lcom/google/android/maps/driveabout/f/e;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2, p1}, Lcom/google/android/maps/driveabout/f/e;->a(Lcom/google/android/maps/driveabout/f/e;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 152
    :goto_1
    return-object v0

    .line 130
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_1
    invoke-static {}, Lcom/google/android/maps/driveabout/a;->a()Z

    move-result v0

    if-nez v0, :cond_3

    .line 137
    sget-object v0, Lcom/google/android/maps/driveabout/f/d;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/model/aw;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/model/aw;

    .line 139
    invoke-virtual {v3}, Lcom/google/android/maps/driveabout/model/aw;->e()Lcom/google/android/maps/driveabout/model/am;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 141
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/f/e;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x56

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "No entering segment found in tile: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v6, " with bound: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " for leaving segment: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " with endpoint: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 137
    invoke-static {v0, v2}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/maps/driveabout/model/ab;->e()D

    move-result-wide v2

    const-wide/high16 v4, 0x4024000000000000L    # 10.0

    mul-double/2addr v2, v4

    move v0, v1

    .line 143
    :goto_2
    iget-object v4, p0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    array-length v4, v4

    if-ge v0, v4, :cond_3

    .line 144
    iget-object v4, p0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    aget-object v4, v4, v0

    .line 145
    invoke-virtual {v4, v1}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    invoke-virtual {p1, v1}, Lcom/google/android/maps/driveabout/f/e;->b(I)Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v5, v5, v2

    if-gez v5, :cond_2

    .line 146
    invoke-virtual {v4}, Lcom/google/android/maps/driveabout/f/e;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v5

    .line 147
    invoke-virtual {p1}, Lcom/google/android/maps/driveabout/f/e;->d()Lcom/google/android/maps/driveabout/model/ab;

    move-result-object v6

    .line 146
    invoke-virtual {v5, v6}, Lcom/google/android/maps/driveabout/model/ab;->c(Lcom/google/android/maps/driveabout/model/ab;)F

    move-result v5

    float-to-double v5, v5

    cmpg-double v5, v5, v2

    if-gez v5, :cond_2

    .line 148
    sget-object v5, Lcom/google/android/maps/driveabout/f/d;->a:Ljava/lang/String;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/lit8 v7, v7, 0x10

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Nearby segment: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Lcom/google/android/maps/driveabout/b;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 152
    :cond_3
    const/4 v0, 0x0

    goto/16 :goto_1
.end method

.method public final a()Lcom/google/android/maps/driveabout/model/aw;
    .locals 1

    .prologue
    .line 515
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/d;->b:Lcom/google/android/maps/driveabout/model/aw;

    return-object v0
.end method

.method public final a(Lcom/google/googlenav/common/a;)Z
    .locals 4

    .prologue
    .line 510
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/f/d;->d:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-interface {p1}, Lcom/google/googlenav/common/a;->b()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/maps/driveabout/f/d;->d:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final a_()J
    .locals 2

    .prologue
    .line 576
    iget-wide v0, p0, Lcom/google/android/maps/driveabout/f/d;->d:J

    return-wide v0
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 520
    iget v0, p0, Lcom/google/android/maps/driveabout/f/d;->c:I

    return v0
.end method

.method public final b(Lcom/google/googlenav/common/a;)Z
    .locals 1

    .prologue
    .line 561
    const/4 v0, 0x0

    return v0
.end method

.method public final b_()J
    .locals 2

    .prologue
    .line 570
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 556
    const/4 v0, -0x1

    return v0
.end method

.method public final c(Lcom/google/googlenav/common/a;)V
    .locals 0

    .prologue
    .line 566
    return-void
.end method

.method public final d()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/google/android/maps/driveabout/f/d;->e:[Lcom/google/android/maps/driveabout/f/e;

    array-length v0, v0

    return v0
.end method

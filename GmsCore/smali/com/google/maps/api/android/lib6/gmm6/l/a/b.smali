.class public final Lcom/google/maps/api/android/lib6/gmm6/l/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/co;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field private final b:I

.field private final c:J

.field private final d:[Lcom/google/maps/api/android/lib6/gmm6/l/a/c;


# direct methods
.method private constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/g/a/b/b/f;J)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->b:I

    iput-wide p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->c:J

    const/4 v0, 0x2

    invoke-virtual {p2, v0}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v0

    new-array v0, v0, [Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->d:[Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a(Lcom/google/g/a/b/b/f;)[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    invoke-direct {p0, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a(Lcom/google/g/a/b/b/f;[Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-direct {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->b(Lcom/google/g/a/b/b/f;)V

    return-void
.end method

.method public static a([BI)I
    .locals 4

    new-instance v0, Lcom/google/g/a/b/c/a;

    invoke-direct {v0, p0}, Lcom/google/g/a/b/c/a;-><init>([B)V

    invoke-virtual {v0, p1}, Lcom/google/g/a/b/c/a;->skipBytes(I)I

    invoke-virtual {v0}, Lcom/google/g/a/b/c/a;->readInt()I

    move-result v1

    const v2, 0x45504752

    if-eq v1, v2, :cond_0

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "FORMAT_MAGIC expected. Found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/g/a/b/c/a;->readUnsignedShort()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_1

    new-instance v0, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Version mismatch: 1 expected, "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " found"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    invoke-virtual {v0}, Lcom/google/g/a/b/c/a;->readInt()I

    move-result v0

    return v0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;[BIJ)Lcom/google/maps/api/android/lib6/gmm6/l/a/b;
    .locals 7

    invoke-static {p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a([BI)I

    move-result v0

    add-int/lit8 v1, p2, 0xa

    const/16 v2, 0x20

    new-array v2, v2, [B

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v3

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v4

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v5

    invoke-static {v3, v4, v5, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/x;->a(IIII[B)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/m/x;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/x;-><init>()V

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/x;->b([B)V

    array-length v2, p1

    sub-int/2addr v2, v1

    invoke-virtual {v0, p1, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/m/x;->a([BII)V

    array-length v0, p1

    sub-int/2addr v0, v1

    new-instance v2, Ljava/util/zip/Inflater;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljava/util/zip/Inflater;-><init>(Z)V

    :try_start_0
    invoke-static {p1, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/d;->a([BII)Lcom/google/maps/api/android/lib6/gmm6/n/e;

    move-result-object v0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/n/e;->a:[B

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/n/e;->b:I

    new-instance v3, Lcom/google/g/a/b/b/f;

    sget-object v4, Lcom/google/maps/c/a/a/b;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v3, v4}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-direct {v4, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-virtual {v3, v4, v0}, Lcom/google/g/a/b/b/f;->a(Ljava/io/InputStream;I)I

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;

    invoke-direct {v0, p0, v3, p3, p4}, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/g/a/b/b/f;J)V
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    return-object v0

    :catch_0
    move-exception v0

    :try_start_1
    new-instance v1, Ljava/io/IOException;

    invoke-virtual {v0}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {v2}, Ljava/util/zip/Inflater;->end()V

    throw v0
.end method

.method private a(Lcom/google/g/a/b/b/f;[Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 20

    const/4 v2, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->d:[Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    array-length v3, v3

    div-int/lit8 v3, v3, 0x2

    if-ge v2, v3, :cond_b

    mul-int/lit8 v11, v2, 0x2

    mul-int/lit8 v3, v2, 0x2

    add-int/lit8 v12, v3, 0x1

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v11}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v13

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v13, v3, v4}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;II)I

    const/4 v3, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v12}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v14

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-static {v14, v3, v4}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;II)I

    const/4 v3, 0x0

    const/4 v4, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v2}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v3, 0x1

    invoke-virtual {v4, v3}, Lcom/google/g/a/b/b/f;->c(I)[B

    move-result-object v3

    :cond_0
    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;II)I

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;II)I

    move-result v4

    const/4 v5, 0x3

    invoke-virtual {v13, v5}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v8

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    const/4 v4, 0x1

    move v7, v4

    :goto_1
    if-lez v8, :cond_3

    new-array v6, v8, [Lcom/google/maps/api/android/lib6/gmm6/l/a/d;

    const/4 v4, 0x0

    move v5, v4

    :goto_2
    if-ge v5, v8, :cond_4

    const/4 v4, 0x3

    invoke-virtual {v13, v4, v5}, Lcom/google/g/a/b/b/f;->b(II)I

    move-result v4

    const/4 v9, 0x5

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v4}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v10

    if-eqz v10, :cond_1

    const/4 v4, 0x2

    invoke-virtual {v9, v4}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    :cond_1
    new-instance v10, Lcom/google/maps/api/android/lib6/gmm6/l/a/d;

    const/4 v15, 0x1

    invoke-virtual {v9, v15}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v10, v9, v4, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/a/d;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    aput-object v10, v6, v5

    add-int/lit8 v4, v5, 0x1

    move v5, v4

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    move v7, v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    new-array v6, v4, [Lcom/google/maps/api/android/lib6/gmm6/l/a/d;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->a:Lcom/google/maps/api/android/lib6/gmm6/l/a/d;

    aput-object v5, v6, v4

    :cond_4
    const/4 v9, 0x0

    const/4 v8, 0x4

    aget-object v15, p2, v12

    aget-object v16, p2, v11

    const/4 v5, 0x0

    const/4 v4, 0x0

    if-eqz v3, :cond_f

    new-instance v4, Ljava/io/DataInputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    move-object/from16 v19, v4

    move v4, v3

    move-object/from16 v3, v19

    :goto_3
    new-instance v17, Lcom/google/maps/api/android/lib6/gmm6/l/n;

    add-int/lit8 v5, v4, 0x2

    move-object/from16 v0, v17

    invoke-direct {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/n;-><init>(I)V

    if-eqz v15, :cond_5

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    :cond_5
    const/4 v10, 0x0

    const/4 v7, 0x0

    const/4 v5, 0x0

    :goto_4
    if-ge v5, v4, :cond_6

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->b(Ljava/io/DataInput;)I

    move-result v18

    add-int v10, v10, v18

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->b(Ljava/io/DataInput;)I

    move-result v18

    add-int v7, v7, v18

    invoke-static {v10, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(II)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_6
    if-eqz v16, :cond_7

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Z

    :cond_7
    invoke-virtual/range {v17 .. v17}, Lcom/google/maps/api/android/lib6/gmm6/l/n;->d()Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v7

    if-nez v15, :cond_8

    if-nez v16, :cond_8

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Both polyline endpoints are missing for segment: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->d:[Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    aget-object v4, v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in tile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_8
    if-nez v15, :cond_9

    const/4 v4, 0x2

    const/4 v3, 0x5

    :goto_5
    const/4 v5, 0x4

    const/4 v8, 0x0

    invoke-static {v13, v5, v8}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;II)I

    move-result v5

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_d

    or-int/lit8 v8, v4, 0x8

    :goto_6
    const/4 v4, 0x4

    const/4 v5, 0x0

    invoke-static {v14, v4, v5}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;II)I

    move-result v4

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_c

    or-int/lit8 v3, v3, 0x8

    move v9, v3

    :goto_7
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->d:[Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-static {v4, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;I)J

    move-result-wide v4

    invoke-direct/range {v3 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;-><init>(J[Lcom/google/maps/api/android/lib6/gmm6/l/a/d;Lcom/google/maps/api/android/lib6/gmm6/l/l;I)V

    aput-object v3, v10, v11

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->d:[Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-static {v4, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;I)J

    move-result-wide v4

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;-><init>(J[Lcom/google/maps/api/android/lib6/gmm6/l/a/d;Lcom/google/maps/api/android/lib6/gmm6/l/l;I)V

    aput-object v3, v10, v12

    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->b()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_a

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Segment polyline had fewer than two points for segment: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->d:[Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    aget-object v4, v4, v11

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in tile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_9
    if-nez v16, :cond_e

    const/4 v4, 0x1

    const/4 v3, 0x6

    goto :goto_5

    :cond_a
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    :cond_b
    return-void

    :cond_c
    move v9, v3

    goto :goto_7

    :cond_d
    move v8, v4

    goto :goto_6

    :cond_e
    move v3, v8

    move v4, v9

    goto :goto_5

    :cond_f
    move-object v3, v4

    move v4, v5

    goto/16 :goto_3
.end method

.method private static a([B)[I
    .locals 5

    new-instance v1, Ljava/io/DataInputStream;

    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v1, v0}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v2

    new-array v3, v2, [I

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v4

    aput v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v3
.end method

.method private a(Lcom/google/g/a/b/b/f;)[Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 9

    const/4 v8, 0x4

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->d:[Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    array-length v0, v0

    new-array v3, v0, [Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p1, v8}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v4

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_1

    invoke-virtual {p1, v8, v2}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/4 v5, 0x1

    invoke-virtual {v0, v5}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v5

    const/4 v6, 0x2

    invoke-virtual {v0, v6}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v6

    invoke-static {v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(II)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v0, v6}, Lcom/google/g/a/b/b/f;->c(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a([B)[I

    move-result-object v6

    move v0, v1

    :goto_1
    array-length v7, v6

    if-ge v0, v7, :cond_0

    aget v7, v6, v0

    aput-object v5, v3, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_1
    return-object v3
.end method

.method private b(Lcom/google/g/a/b/b/f;)V
    .locals 14

    const/4 v13, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v13}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v7

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    move v6, v1

    :goto_0
    if-ge v6, v7, :cond_4

    invoke-virtual {p1, v13, v6}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v0

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Lcom/google/g/a/b/b/f;->c(I)[B

    move-result-object v2

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a([B)[I

    move-result-object v8

    invoke-virtual {v0, v13}, Lcom/google/g/a/b/b/f;->c(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a([B)[I

    move-result-object v9

    array-length v0, v8

    new-array v10, v0, [Lcom/google/maps/api/android/lib6/gmm6/l/a/a;

    move v0, v1

    move v2, v1

    :goto_1
    array-length v3, v8

    if-ge v0, v3, :cond_3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->d:[Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    aget v4, v8, v0

    aget-object v11, v3, v4

    move v3, v1

    move v4, v0

    move v0, v1

    :goto_2
    array-length v5, v8

    if-ge v0, v5, :cond_2

    array-length v5, v9

    if-lt v2, v5, :cond_1

    array-length v0, v8

    move v4, v0

    :cond_0
    :goto_3
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_1
    aget v5, v9, v2

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->d:[Lcom/google/maps/api/android/lib6/gmm6/l/a/c;

    add-int/lit8 v5, v3, 0x1

    new-instance v12, Lcom/google/maps/api/android/lib6/gmm6/l/a/a;

    invoke-direct {v12}, Lcom/google/maps/api/android/lib6/gmm6/l/a/a;-><init>()V

    aput-object v12, v10, v3

    move v3, v5

    goto :goto_3

    :cond_2
    new-array v0, v3, [Lcom/google/maps/api/android/lib6/gmm6/l/a/a;

    array-length v3, v0

    invoke-static {v10, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-virtual {v11, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/a/c;->a([Lcom/google/maps/api/android/lib6/gmm6/l/a/a;)V

    add-int/lit8 v0, v4, 0x1

    goto :goto_1

    :cond_3
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_4
    return-void
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    return-object v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/l/av;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/l/av;->i:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->b:I

    return v0
.end method

.method public final d()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->c:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->c:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final f()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final g()V
    .locals 0

    return-void
.end method

.method public final h()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final m()J
    .locals 2

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/a/b;->c:J

    return-wide v0
.end method

.method public final o()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

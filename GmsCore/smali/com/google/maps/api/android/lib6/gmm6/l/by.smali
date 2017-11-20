.class public Lcom/google/maps/api/android/lib6/gmm6/l/by;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/l/co;


# instance fields
.field private final a:J

.field private final b:[Ljava/lang/String;

.field public final c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field final d:I

.field final e:B

.field public final f:[Lcom/google/maps/api/android/lib6/gmm6/l/cp;

.field public final g:I

.field public final h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

.field final i:[Lcom/google/maps/api/android/lib6/gmm6/l/bt;

.field public final j:I

.field k:J

.field private final l:[Ljava/lang/String;


# direct methods
.method protected constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;IBI[Ljava/lang/String;[Ljava/lang/String;I[Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/l/av;[Lcom/google/maps/api/android/lib6/gmm6/l/bt;JJ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->d:I

    iput-byte p3, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->e:B

    iput-object p5, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->b:[Ljava/lang/String;

    iput-object p6, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->l:[Ljava/lang/String;

    iput p7, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->g:I

    iput-object p8, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    iput-object p9, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    iput-object p10, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->i:[Lcom/google/maps/api/android/lib6/gmm6/l/bt;

    iput p4, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->j:I

    iput-wide p11, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->a:J

    iput-wide p13, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->k:J

    return-void
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Ljava/io/DataInput;IBIILcom/google/maps/api/android/lib6/gmm6/l/av;JJ)Lcom/google/maps/api/android/lib6/gmm6/l/by;
    .locals 19

    invoke-static/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->a(Ljava/io/DataInput;)V

    invoke-static/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v4

    if-ne v3, v4, :cond_0

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v4

    if-eq v3, v4, :cond_1

    :cond_0
    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Expected tile coords: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " but received "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v10

    if-lez v10, :cond_2

    add-int/lit16 v10, v10, 0x7d0

    :cond_2
    invoke-static/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    new-array v8, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_3

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    invoke-static/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    new-array v9, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    const/16 v2, 0xb

    move/from16 v0, p2

    if-ne v0, v2, :cond_5

    invoke-static/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    const/4 v2, 0x0

    :goto_2
    if-ge v2, v3, :cond_5

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    invoke-static/range {p1 .. p2}, Lcom/google/maps/api/android/lib6/gmm6/l/ab;->a(Ljava/io/DataInput;I)Lcom/google/maps/api/android/lib6/gmm6/l/ab;

    move-result-object v5

    const/16 v2, 0xb

    move/from16 v0, p2

    if-ne v0, v2, :cond_7

    const/4 v2, 0x0

    new-array v6, v2, [Ljava/lang/String;

    move-object/from16 v0, p1

    invoke-static {v0, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/z;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ab;)Lcom/google/maps/api/android/lib6/gmm6/l/z;

    move-result-object v7

    :cond_6
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/l/aj;

    move/from16 v3, p2

    move-object/from16 v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/google/maps/api/android/lib6/gmm6/l/aj;-><init>(ILcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/ab;[Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/z;)V

    invoke-static/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v4

    new-array v11, v4, [Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_8

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v5

    aput-object v5, v11, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_7
    const/4 v7, 0x0

    invoke-static/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    new-array v6, v3, [Ljava/lang/String;

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_6

    invoke-interface/range {p1 .. p1}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v6, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_8
    invoke-static/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v4

    new-array v13, v4, [Lcom/google/maps/api/android/lib6/gmm6/l/bt;

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v4, :cond_9

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bt;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/bt;

    move-result-object v5

    aput-object v5, v13, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_9
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/by;

    move-object/from16 v4, p0

    move/from16 v5, p4

    move/from16 v6, p3

    move/from16 v7, p5

    move-object/from16 v12, p6

    move-wide/from16 v14, p7

    move-wide/from16 v16, p9

    invoke-direct/range {v3 .. v17}, Lcom/google/maps/api/android/lib6/gmm6/l/by;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;IBI[Ljava/lang/String;[Ljava/lang/String;I[Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/l/av;[Lcom/google/maps/api/android/lib6/gmm6/l/bt;JJ)V

    return-object v3
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;[BILcom/google/maps/api/android/lib6/gmm6/l/av;JJ)Lcom/google/maps/api/android/lib6/gmm6/l/by;
    .locals 16

    new-instance v2, Lcom/google/g/a/b/c/a;

    move-object/from16 v0, p1

    invoke-direct {v2, v0}, Lcom/google/g/a/b/c/a;-><init>([B)V

    move/from16 v0, p2

    invoke-virtual {v2, v0}, Lcom/google/g/a/b/c/a;->skipBytes(I)I

    invoke-virtual {v2}, Lcom/google/g/a/b/c/a;->readInt()I

    move-result v3

    invoke-virtual {v2}, Lcom/google/g/a/b/c/a;->readInt()I

    move-result v4

    invoke-static {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->a(Ljava/io/DataInput;)V

    invoke-virtual {v2}, Lcom/google/g/a/b/c/a;->readUnsignedShort()I

    move-result v5

    const/16 v6, 0xa

    if-eq v5, v6, :cond_0

    const/16 v6, 0xb

    if-eq v5, v6, :cond_0

    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Version mismatch: 10 or 11 expected, "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_0
    invoke-virtual {v2}, Lcom/google/g/a/b/c/a;->readInt()I

    move-result v6

    invoke-virtual {v2}, Lcom/google/g/a/b/c/a;->readLong()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/google/g/a/b/c/a;->readUnsignedByte()I

    move-result v2

    const/4 v7, 0x6

    new-array v10, v7, [J

    const/4 v7, 0x0

    int-to-long v12, v3

    aput-wide v12, v10, v7

    const/4 v3, 0x1

    int-to-long v12, v4

    aput-wide v12, v10, v3

    const/4 v3, 0x2

    int-to-long v4, v5

    aput-wide v4, v10, v3

    const/4 v3, 0x3

    int-to-long v4, v6

    aput-wide v4, v10, v3

    const/4 v3, 0x4

    aput-wide v8, v10, v3

    const/4 v3, 0x5

    int-to-long v4, v2

    aput-wide v4, v10, v3

    const/4 v2, 0x0

    aget-wide v2, v10, v2

    long-to-int v2, v2

    const/4 v3, 0x1

    aget-wide v4, v10, v3

    long-to-int v11, v4

    const/4 v3, 0x2

    aget-wide v4, v10, v3

    long-to-int v6, v4

    const/4 v3, 0x3

    aget-wide v4, v10, v3

    long-to-int v7, v4

    const/4 v3, 0x4

    aget-wide v8, v10, v3

    const/4 v3, 0x5

    aget-wide v4, v10, v3

    long-to-int v3, v4

    int-to-byte v12, v3

    add-int/lit8 v13, p2, 0x1b

    move-object/from16 v0, p1

    array-length v3, v0

    sub-int v14, v3, v13

    new-instance v15, Lcom/google/maps/api/android/lib6/gmm6/m/x;

    invoke-direct {v15}, Lcom/google/maps/api/android/lib6/gmm6/m/x;-><init>()V

    const/16 v3, 0x28

    new-array v10, v3, [B

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v4

    invoke-virtual/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v5

    invoke-static/range {v3 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/m/x;->a(IIIIIJ[B)V

    invoke-virtual {v15, v10}, Lcom/google/maps/api/android/lib6/gmm6/m/x;->a([B)V

    move-object/from16 v0, p1

    invoke-virtual {v15, v0, v13, v14}, Lcom/google/maps/api/android/lib6/gmm6/m/x;->a([BII)V

    :try_start_0
    move-object/from16 v0, p1

    invoke-static {v0, v13, v14}, Lcom/google/maps/api/android/lib6/gmm6/n/d;->a([BII)Lcom/google/maps/api/android/lib6/gmm6/n/e;

    move-result-object v3

    iget-object v15, v3, Lcom/google/maps/api/android/lib6/gmm6/n/e;->a:[B

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/n/e;->b:I

    new-instance v5, Lcom/google/g/a/b/c/a;

    invoke-direct {v5, v15}, Lcom/google/g/a/b/c/a;-><init>([B)V

    move-object/from16 v4, p0

    move v7, v12

    move v8, v2

    move v9, v11

    move-object/from16 v10, p3

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    invoke-static/range {v4 .. v14}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Ljava/io/DataInput;IBIILcom/google/maps/api/android/lib6/gmm6/l/av;JJ)Lcom/google/maps/api/android/lib6/gmm6/l/by;

    move-result-object v2

    invoke-virtual {v5}, Lcom/google/g/a/b/c/a;->a()I

    move-result v4

    if-eq v4, v3, :cond_1

    new-instance v3, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Byte stream not fully read for: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/by;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v2

    new-instance v3, Ljava/io/IOException;

    invoke-virtual {v2}, Ljava/util/zip/DataFormatException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_1
    :try_start_1
    invoke-static {v15}, Lcom/google/maps/api/android/lib6/gmm6/n/p;->a([B)V
    :try_end_1
    .catch Ljava/util/zip/DataFormatException; {:try_start_1 .. :try_end_1} :catch_0

    return-object v2
.end method

.method static a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/cp;
    .locals 23

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v4

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->a:I

    const/16 v5, 0xb

    if-ne v3, v5, :cond_0

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v5

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    move-object/from16 v0, p0

    invoke-interface {v0, v3}, Ljava/io/DataInput;->skipBytes(I)I

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/r;

    invoke-direct {v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/r;-><init>(I)V

    move-object/from16 v20, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    :pswitch_0
    new-instance v3, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown feature type: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/r;

    const/4 v5, -0x1

    invoke-direct {v3, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/r;-><init>(I)V

    move-object/from16 v20, v3

    goto :goto_0

    :pswitch_1
    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->a:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v4

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v4, :cond_1

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/cn;

    move-object/from16 v0, v20

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/r;->a:I

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->a()Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/cn;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/x;)V

    :goto_2
    return-object v3

    :pswitch_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v5

    invoke-static/range {p0 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/aa;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v4

    new-array v6, v4, [Lcom/google/maps/api/android/lib6/gmm6/l/db;

    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_2

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/aa;)Lcom/google/maps/api/android/lib6/gmm6/l/db;

    move-result-object v7

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :cond_2
    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v9

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v10

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    const/4 v4, 0x0

    const/4 v7, 0x1

    invoke-static {v7, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/a/a/a;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/b;

    move-result-object v4

    :cond_3
    :goto_4
    ushr-int/lit8 v11, v3, 0x2

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v7

    new-array v12, v7, [I

    const/4 v3, 0x0

    :goto_5
    if-ge v3, v7, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v13

    aput v13, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_4
    const/4 v7, 0x2

    invoke-static {v7, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/a/a/a;->b(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/c;

    move-result-object v4

    goto :goto_4

    :cond_5
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/s;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/google/maps/api/android/lib6/gmm6/l/r;->a:I

    iget-object v7, v8, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget v13, v8, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->c:I

    iget-object v8, v8, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->b:Ljava/lang/String;

    invoke-direct/range {v3 .. v12}, Lcom/google/maps/api/android/lib6/gmm6/l/s;-><init>(Lcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/l;[Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;III[I)V

    goto :goto_2

    :pswitch_3
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/bp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/bp;->a()I

    move-result v3

    new-array v6, v3, [B

    move-object/from16 v0, p0

    invoke-interface {v0, v6}, Ljava/io/DataInput;->readFully([B)V

    invoke-static/range {p0 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/aa;

    move-result-object v9

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v10

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v11

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-static {v3, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/a/a/a;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/b;

    move-result-object v4

    :cond_6
    :goto_6
    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v7

    new-array v12, v7, [I

    const/4 v3, 0x0

    :goto_7
    if-ge v3, v7, :cond_8

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v8

    aput v8, v12, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_7
    const/4 v3, 0x2

    invoke-static {v3, v11}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/a/a/a;->b(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/c;

    move-result-object v4

    goto :goto_6

    :cond_8
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/ch;

    move-object/from16 v0, v20

    iget v7, v0, Lcom/google/maps/api/android/lib6/gmm6/l/r;->a:I

    iget-object v7, v9, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget v8, v9, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->c:I

    iget-object v9, v9, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->b:Ljava/lang/String;

    invoke-direct/range {v3 .. v12}, Lcom/google/maps/api/android/lib6/gmm6/l/ch;-><init>(Lcom/google/maps/api/android/lib6/a/a/a;Lcom/google/maps/api/android/lib6/gmm6/l/bp;[BLcom/google/maps/api/android/lib6/gmm6/l/x;ILjava/lang/String;II[I)V

    goto/16 :goto_2

    :pswitch_4
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ci;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/r;)Lcom/google/maps/api/android/lib6/gmm6/l/ci;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_5
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-object/from16 v0, p0

    invoke-static {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/l;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/l;

    move-result-object v4

    invoke-static/range {p0 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/aa;

    move-result-object v6

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v7

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v5

    new-array v8, v5, [I

    const/4 v3, 0x0

    :goto_8
    if-ge v3, v5, :cond_9

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v9

    aput v9, v8, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    :cond_9
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/dg;

    move-object/from16 v0, v20

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/l/r;->a:I

    iget-object v5, v6, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget v9, v6, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->c:I

    iget-object v6, v6, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->b:Ljava/lang/String;

    invoke-direct/range {v3 .. v8}, Lcom/google/maps/api/android/lib6/gmm6/l/dg;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/l;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;I[I)V

    goto/16 :goto_2

    :pswitch_6
    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v3

    new-array v4, v3, [B

    move-object/from16 v0, p0

    invoke-interface {v0, v4}, Ljava/io/DataInput;->readFully([B)V

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v5

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v6

    new-array v7, v6, [I

    const/4 v3, 0x0

    :goto_9
    if-ge v3, v6, :cond_a

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v8

    aput v8, v7, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_a
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/o;

    move-object/from16 v0, v20

    iget v6, v0, Lcom/google/maps/api/android/lib6/gmm6/l/r;->a:I

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->a()Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-result-object v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/l/o;-><init>([BILcom/google/maps/api/android/lib6/gmm6/l/x;[I)V

    goto/16 :goto_2

    :pswitch_7
    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v12

    new-array v0, v12, [Lcom/google/maps/api/android/lib6/gmm6/l/a;

    move-object/from16 v21, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->b:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-object/from16 v22, v0

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->a:I

    const/4 v3, 0x0

    move v11, v3

    :goto_a
    if-ge v11, v12, :cond_d

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v4

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUnsignedByte()I

    move-result v5

    const/high16 v6, 0x7fc00000    # NaNf

    const/4 v3, 0x1

    invoke-static {v5, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v6, 0x41200000    # 10.0f

    div-float v6, v3, v6

    :cond_b
    const/4 v7, 0x0

    const/high16 v8, 0x7fc00000    # NaNf

    const/high16 v9, 0x7fc00000    # NaNf

    const/high16 v10, 0x7fc00000    # NaNf

    const/4 v3, 0x2

    invoke-static {v5, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_c

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v7

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v8, 0x41200000    # 10.0f

    div-float v8, v3, v8

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v9, 0x41000000    # 8.0f

    div-float v9, v3, v9

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v3

    int-to-float v3, v3

    const/high16 v10, 0x41000000    # 8.0f

    div-float v10, v3, v10

    :cond_c
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/a;

    invoke-direct/range {v3 .. v10}, Lcom/google/maps/api/android/lib6/gmm6/l/a;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/h;IFLcom/google/maps/api/android/lib6/gmm6/l/h;FFF)V

    aput-object v3, v21, v11

    add-int/lit8 v3, v11, 0x1

    move v11, v3

    goto :goto_a

    :cond_d
    const/4 v3, 0x0

    aget-object v3, v21, v3

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static/range {p0 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;)Lcom/google/maps/api/android/lib6/gmm6/l/aa;

    move-result-object v4

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/aa;)Lcom/google/maps/api/android/lib6/gmm6/l/db;

    move-result-object v7

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-static {v0, v1, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/aa;)Lcom/google/maps/api/android/lib6/gmm6/l/db;

    move-result-object v8

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v5

    new-array v9, v5, [Lcom/google/maps/api/android/lib6/gmm6/l/ag;

    const/4 v3, 0x0

    :goto_b
    if-ge v3, v5, :cond_e

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ag;->b(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/ag;

    move-result-object v6

    aput-object v6, v9, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_b

    :cond_e
    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v13

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v14

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readByte()B

    move-result v15

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readInt()I

    move-result v16

    const/4 v5, 0x0

    const/4 v3, 0x1

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/a/a/a;->a(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/b;

    move-result-object v5

    :cond_f
    :goto_c
    const/4 v10, 0x0

    const/16 v3, 0x20

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/e/j;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->intern()Ljava/lang/String;

    move-result-object v10

    :cond_10
    const/16 v17, 0x0

    const/16 v3, 0x40

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_11

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v17

    :cond_11
    const/16 v3, 0x80

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface/range {p0 .. p0}, Ljava/io/DataInput;->readUTF()Ljava/lang/String;

    move-result-object v18

    :goto_d
    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/maps/api/android/lib6/gmm6/l/aj;->a:I

    const/16 v6, 0xb

    if-ne v3, v6, :cond_16

    const/16 v3, 0x200

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/ag;->b(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/gmm6/l/ag;

    :goto_e
    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v6

    new-array v0, v6, [I

    move-object/from16 v19, v0

    const/4 v3, 0x0

    :goto_f
    if-ge v3, v6, :cond_17

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/gmm6/l/br;->a(Ljava/io/DataInput;)I

    move-result v11

    aput v11, v19, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_f

    :cond_12
    const/4 v3, 0x2

    move/from16 v0, v16

    invoke-static {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/d;->a(II)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-static/range {p0 .. p0}, Lcom/google/maps/api/android/lib6/a/a/a;->b(Ljava/io/DataInput;)Lcom/google/maps/api/android/lib6/a/a/c;

    move-result-object v5

    goto :goto_c

    :cond_13
    invoke-virtual {v7}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8}, Lcom/google/maps/api/android/lib6/gmm6/l/db;->a()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_14

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_14

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v11, 0xa

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    :cond_14
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    goto :goto_d

    :cond_15
    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/l/ag;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ag;

    goto :goto_e

    :cond_16
    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/l/ag;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ag;

    goto :goto_e

    :cond_17
    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/l/i;

    move-object/from16 v0, v20

    iget v6, v0, Lcom/google/maps/api/android/lib6/gmm6/l/r;->a:I

    iget-object v11, v4, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->a:Lcom/google/maps/api/android/lib6/gmm6/l/x;

    iget v6, v4, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->c:I

    iget-object v12, v4, Lcom/google/maps/api/android/lib6/gmm6/l/aa;->b:Ljava/lang/String;

    move-object/from16 v4, v22

    move-object/from16 v6, v21

    invoke-direct/range {v3 .. v19}, Lcom/google/maps/api/android/lib6/gmm6/l/i;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/a/a/a;[Lcom/google/maps/api/android/lib6/gmm6/l/a;Lcom/google/maps/api/android/lib6/gmm6/l/db;Lcom/google/maps/api/android/lib6/gmm6/l/db;[Lcom/google/maps/api/android/lib6/gmm6/l/ag;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/x;Ljava/lang/String;IIIILjava/lang/String;Ljava/lang/String;[I)V

    goto/16 :goto_2

    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/de;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/r;)Lcom/google/maps/api/android/lib6/gmm6/l/de;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_9
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/bm;->a(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/r;)Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v3

    goto/16 :goto_2

    :pswitch_a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v20

    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/df;->b(Ljava/io/DataInput;Lcom/google/maps/api/android/lib6/gmm6/l/aj;Lcom/google/maps/api/android/lib6/gmm6/l/r;)Lcom/google/maps/api/android/lib6/gmm6/l/de;

    move-result-object v3

    goto/16 :goto_2

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

.method private static a(Ljava/io/DataInput;)V
    .locals 4

    invoke-interface {p0}, Ljava/io/DataInput;->readInt()I

    move-result v0

    const v1, 0x44524154

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "TILE_MAGIC expected. Found: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method public static p()I
    .locals 4

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->r()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->r()J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    div-long/2addr v0, v2

    long-to-int v0, v0

    goto :goto_0
.end method

.method private q()Z
    .locals 1

    iget-byte v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->e:B

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static r()J
    .locals 4

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->a()Lcom/google/maps/api/android/lib6/gmm6/f;

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/f;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->c()Lcom/google/maps/api/android/lib6/gmm6/d/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->c()Lcom/google/maps/api/android/lib6/gmm6/d/k;

    move-result-object v0

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/d/k;->a:I

    int-to-long v0, v0

    const-wide/32 v2, 0xea60

    mul-long/2addr v0, v2

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    goto :goto_0
.end method


# virtual methods
.method public final a()Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->c:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    return-object v0
.end method

.method public a(I)Lcom/google/maps/api/android/lib6/gmm6/l/cp;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/l/av;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->h:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    return-object v0
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->d:I

    return v0
.end method

.method public d()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->a:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->a:J

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

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->j:I

    return v0
.end method

.method public final f()Z
    .locals 4

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->k:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->k:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final g()V
    .locals 4

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->r()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->r()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->k:J

    :goto_0
    return-void

    :cond_0
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->k:J

    goto :goto_0
.end method

.method public final h()Z
    .locals 3

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->c()Lcom/google/maps/api/android/lib6/gmm6/d/k;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/d/g;->c()Lcom/google/maps/api/android/lib6/gmm6/d/k;

    move-result-object v2

    iget-boolean v2, v2, Lcom/google/maps/api/android/lib6/gmm6/d/k;->c:Z

    if-eqz v2, :cond_4

    :cond_0
    iget-byte v2, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->e:B

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_2

    move v2, v0

    :goto_0
    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->q()Z

    move-result v2

    if-nez v2, :cond_3

    :cond_1
    :goto_1
    return v0

    :cond_2
    move v2, v1

    goto :goto_0

    :cond_3
    move v0, v1

    goto :goto_1

    :cond_4
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/l/by;->q()Z

    move-result v2

    if-eqz v2, :cond_1

    move v0, v1

    goto :goto_1
.end method

.method public i()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->b:[Ljava/lang/String;

    return-object v0
.end method

.method public j()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->l:[Ljava/lang/String;

    return-object v0
.end method

.method public k()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->f:[Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    array-length v0, v0

    return v0
.end method

.method public l()Lcom/google/maps/api/android/lib6/gmm6/l/ca;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/cb;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cb;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/by;B)V

    return-object v0
.end method

.method public m()J
    .locals 2

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->a:J

    return-wide v0
.end method

.method public final n()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->i:[Lcom/google/maps/api/android/lib6/gmm6/l/bt;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->i:[Lcom/google/maps/api/android/lib6/gmm6/l/bt;

    array-length v0, v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final o()J
    .locals 2

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/l/by;->k:J

    return-wide v0
.end method

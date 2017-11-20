.class public final Lcom/google/maps/api/android/lib6/gmm6/k/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:I

.field private static b:[B


# instance fields
.field private c:Lcom/google/g/a/b/b/f;

.field private d:Lcom/google/g/a/b/b/f;

.field private e:Lcom/google/g/a/b/b/f;

.field private f:Lcom/google/g/a/b/b/f;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    invoke-static {v0}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x1f

    sput v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->a:I

    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->b:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x4ct
        0x54t
        0x49t
        0x50t
        0xat
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(II)I
    .locals 2

    rsub-int/lit8 v0, p1, 0x1e

    sget v1, Lcom/google/maps/api/android/lib6/gmm6/k/b;->a:I

    sub-int/2addr v0, v1

    shl-int v0, p0, v0

    return v0
.end method

.method private e()Lcom/google/g/a/b/b/f;
    .locals 2

    const/4 v1, 0x4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->d:Lcom/google/g/a/b/b/f;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c:Lcom/google/g/a/b/b/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c:Lcom/google/g/a/b/b/f;

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c:Lcom/google/g/a/b/b/f;

    invoke-virtual {v0, v1}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->d:Lcom/google/g/a/b/b/f;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->d:Lcom/google/g/a/b/b/f;

    return-object v0
.end method


# virtual methods
.method public final a([B)[B
    .locals 7

    const/4 v6, 0x4

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-object v3, Lcom/google/maps/api/android/lib6/gmm6/k/b;->b:[B

    array-length v0, p1

    array-length v4, v3

    add-int/lit8 v4, v4, 0x0

    if-ge v0, v4, :cond_2

    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    :try_start_0
    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->b:[B

    array-length v0, v0

    const/4 v1, 0x4

    new-array v1, v1, [B

    const/4 v2, 0x0

    array-length v3, v1

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v2, v1

    if-eq v2, v6, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "byte[] must be size 4, there are 4 bytes to an int"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception v0

    :goto_1
    const-string v1, "IOException reading map tile info"

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/b/q;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    return-object p1

    :cond_2
    move v0, v1

    :goto_3
    array-length v4, v3

    if-ge v0, v4, :cond_3

    add-int/lit8 v4, v0, 0x0

    aget-byte v4, p1, v4

    aget-byte v5, v3, v0

    if-ne v4, v5, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    const/4 v2, 0x0

    :try_start_1
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x18

    const/4 v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    const/4 v3, 0x2

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    const/4 v3, 0x3

    aget-byte v1, v1, v3

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v2, v1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    add-int/lit8 v0, v0, 0x4

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1, v0, v3}, Ljava/io/ByteArrayInputStream;-><init>([BII)V

    if-gez v2, :cond_5

    new-instance v0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {v0, v1}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    :goto_4
    new-instance v1, Lcom/google/g/a/b/b/f;

    sget-object v2, Lcom/google/n/c/a/a/d;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v1, v2}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c:Lcom/google/g/a/b/b/f;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c:Lcom/google/g/a/b/b/f;

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/f;->a(Ljava/io/InputStream;)Lcom/google/g/a/b/b/f;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->d:Lcom/google/g/a/b/b/f;

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->b:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x4

    add-int v1, v0, v3

    array-length v0, p1

    sub-int/2addr v0, v1

    new-array v0, v0, [B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/4 v2, 0x0

    :try_start_2
    array-length v3, v0

    invoke-static {p1, v1, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    move-object p1, v0

    goto :goto_2

    :catch_1
    move-exception v1

    move-object p1, v0

    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v1

    goto :goto_4
.end method

.method public final a()[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/k/b;->e()Lcom/google/g/a/b/b/f;

    move-result-object v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v2, v5}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v5, v1}, Lcom/google/g/a/b/b/f;->d(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final b()[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/k/b;->e()Lcom/google/g/a/b/b/f;

    move-result-object v2

    if-nez v2, :cond_1

    new-array v0, v1, [Ljava/lang/String;

    :cond_0
    return-object v0

    :cond_1
    invoke-virtual {v2, v5}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v3

    new-array v0, v3, [Ljava/lang/String;

    :goto_0
    if-ge v1, v3, :cond_0

    invoke-virtual {v2, v5, v1}, Lcom/google/g/a/b/b/f;->d(II)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public final c()I
    .locals 4

    const/4 v3, 0x3

    const/4 v0, -0x1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/k/b;->e()Lcom/google/g/a/b/b/f;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v3}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v3}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "year=0"

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/b/z;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public final d()Ljava/util/List;
    .locals 17

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->e:Lcom/google/g/a/b/b/f;

    if-nez v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c:Lcom/google/g/a/b/b/f;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c:Lcom/google/g/a/b/b/f;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c:Lcom/google/g/a/b/b/f;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->e:Lcom/google/g/a/b/b/f;

    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->e:Lcom/google/g/a/b/b/f;

    if-nez v5, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    return-object v1

    :cond_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->f:Lcom/google/g/a/b/b/f;

    if-nez v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c:Lcom/google/g/a/b/b/f;

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c:Lcom/google/g/a/b/b/f;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/f;->i(I)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c:Lcom/google/g/a/b/b/f;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->f:Lcom/google/g/a/b/b/f;

    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->f:Lcom/google/g/a/b/b/f;

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;II)I

    move-result v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c:Lcom/google/g/a/b/b/f;

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v2

    const/4 v1, 0x0

    :goto_1
    if-ge v1, v2, :cond_3

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/maps/api/android/lib6/gmm6/k/b;->c:Lcom/google/g/a/b/b/f;

    const/4 v4, 0x3

    invoke-virtual {v3, v4, v1}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v3

    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v8

    const/4 v1, 0x0

    move v3, v1

    :goto_2
    if-ge v3, v8, :cond_9

    const/4 v1, 0x1

    invoke-virtual {v5, v1, v3}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v9

    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v11

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/g/a/b/b/f;

    const/4 v12, 0x2

    const/4 v13, 0x0

    invoke-virtual {v1, v12, v13}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v12

    const/4 v13, 0x2

    invoke-virtual {v12, v13}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v12

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/google/g/a/b/b/f;->d(I)I

    move-result v13

    if-nez v13, :cond_4

    const/4 v13, 0x3

    invoke-virtual {v1, v13}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v1

    const/16 v13, 0x1f

    invoke-virtual {v1, v13}, Lcom/google/g/a/b/b/f;->f(I)Lcom/google/g/a/b/b/f;

    move-result-object v13

    invoke-static {v13}, Lcom/google/maps/api/android/lib6/gmm6/n/c;->a(Lcom/google/g/a/b/b/f;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v13

    const/16 v14, 0x20

    const/4 v15, 0x0

    invoke-static {v1, v14, v15}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;II)I

    move-result v14

    invoke-static {v14, v6}, Lcom/google/maps/api/android/lib6/gmm6/k/b;->a(II)I

    move-result v14

    const/16 v15, 0x21

    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-static {v1, v15, v0}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/f;II)I

    move-result v1

    invoke-static {v1, v6}, Lcom/google/maps/api/android/lib6/gmm6/k/b;->a(II)I

    move-result v1

    new-instance v15, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    div-int/lit8 v14, v14, 0x2

    div-int/lit8 v1, v1, 0x2

    invoke-direct {v15, v14, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>(II)V

    invoke-virtual {v13, v15}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->e(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-virtual {v13, v15}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v13

    invoke-static {v1, v13}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/p;

    :cond_4
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/di;

    invoke-direct {v1, v12}, Lcom/google/maps/api/android/lib6/gmm6/l/di;-><init>(Ljava/lang/String;)V

    invoke-interface {v11, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_5
    if-eqz v9, :cond_7

    const/4 v1, 0x1

    invoke-virtual {v9, v1}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v12

    const/4 v1, 0x0

    move v4, v1

    :goto_4
    if-ge v4, v12, :cond_7

    const/4 v1, 0x1

    invoke-virtual {v9, v1, v4}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v1

    const/4 v13, 0x1

    invoke-virtual {v1, v13}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/l/di;

    if-nez v1, :cond_6

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/di;

    invoke-direct {v1, v13}, Lcom/google/maps/api/android/lib6/gmm6/l/di;-><init>(Ljava/lang/String;)V

    :cond_6
    invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_4

    :cond_7
    if-eqz v9, :cond_8

    const/4 v1, 0x2

    invoke-virtual {v9, v1}, Lcom/google/g/a/b/b/f;->g(I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    :cond_8
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/dh;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/dh;-><init>()V

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_2

    :cond_9
    move-object v1, v2

    goto/16 :goto_0
.end method

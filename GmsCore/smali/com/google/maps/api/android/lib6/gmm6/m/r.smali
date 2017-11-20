.class final Lcom/google/maps/api/android/lib6/gmm6/m/r;
.super Lcom/google/maps/api/android/lib6/gmm6/m/h;


# instance fields
.field private a:[Lcom/google/g/a/b/b/f;

.field private b:Lcom/google/g/a/d;


# direct methods
.method constructor <init>(Lcom/google/g/a/d;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/h;-><init>()V

    const/16 v0, 0x8

    new-array v0, v0, [Lcom/google/g/a/b/b/f;

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/r;->a:[Lcom/google/g/a/b/b/f;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/r;->b:Lcom/google/g/a/d;

    return-void
.end method

.method private l()Lcom/google/g/a/b/b/f;
    .locals 11

    const/16 v7, 0x16

    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x2

    const/4 v1, 0x0

    new-instance v2, Lcom/google/g/a/b/b/f;

    sget-object v0, Lcom/google/n/c/a/a/t;->a:Lcom/google/g/a/b/b/h;

    invoke-direct {v2, v0}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/16 v0, 0x80

    invoke-virtual {v2, v9, v0}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/s;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/s;->k()Lcom/google/maps/api/android/lib6/gmm6/l/dd;

    move-result-object v0

    invoke-virtual {v2, v8}, Lcom/google/g/a/b/b/f;->a(I)Lcom/google/g/a/b/b/f;

    move-result-object v3

    const/16 v4, 0x15

    iget-object v5, v0, Lcom/google/maps/api/android/lib6/gmm6/l/dd;->a:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/l/dd;->b:[Ljava/lang/String;

    move v0, v1

    :goto_0
    array-length v5, v4

    if-ge v0, v5, :cond_0

    invoke-virtual {v3, v7}, Lcom/google/g/a/b/b/f;->a(I)Lcom/google/g/a/b/b/f;

    move-result-object v5

    aget-object v6, v4, v0

    invoke-virtual {v5, v9, v6}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    add-int/lit8 v6, v0, 0x1

    aget-object v6, v4, v6

    invoke-virtual {v5, v8, v6}, Lcom/google/g/a/b/b/f;->a(ILjava/lang/String;)Lcom/google/g/a/b/b/f;

    invoke-virtual {v3, v7, v5}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    :cond_0
    invoke-virtual {v2, v8, v3}, Lcom/google/g/a/b/b/f;->b(ILcom/google/g/a/b/b/f;)Lcom/google/g/a/b/b/f;

    move v0, v1

    :goto_1
    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    if-ge v0, v3, :cond_1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    new-instance v4, Lcom/google/g/a/b/b/f;

    sget-object v5, Lcom/google/n/c/a/a/d;->e:Lcom/google/g/a/b/b/h;

    invoke-direct {v4, v5}, Lcom/google/g/a/b/b/f;-><init>(Lcom/google/g/a/b/b/h;)V

    const/16 v5, 0x8

    invoke-virtual {v4, v9, v5}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/16 v5, 0x1e

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v6

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v7

    invoke-virtual {v3}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v3

    invoke-static {v6, v7, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/bq;->a(III)J

    move-result-wide v6

    invoke-virtual {v4, v5, v6, v7}, Lcom/google/g/a/b/b/f;->a(IJ)Lcom/google/g/a/b/b/f;

    invoke-virtual {v4, v8, v1}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    invoke-virtual {v4, v10, v1}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    const/4 v3, 0x4

    invoke-virtual {v4, v3, v1}, Lcom/google/g/a/b/b/f;->f(II)Lcom/google/g/a/b/b/f;

    invoke-virtual {v2, v10, v4}, Lcom/google/g/a/b/b/f;->a(ILcom/google/g/a/b/b/f;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-object v2
.end method


# virtual methods
.method public final a(Ljava/io/DataOutput;)V
    .locals 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/m/r;->l()Lcom/google/g/a/b/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/g/a/b/b/f;->b(Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    invoke-interface {p1, v1}, Ljava/io/DataOutput;->writeInt(I)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/io/DataOutput;->write([B)V

    return-void
.end method

.method protected final a(Lcom/google/maps/api/android/lib6/gmm6/m/k;)Z
    .locals 3

    const/4 v2, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/s;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v1, v1, v2

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    check-cast v1, Lcom/google/maps/api/android/lib6/gmm6/m/s;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/m/s;->a(Lcom/google/maps/api/android/lib6/gmm6/m/s;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final a(Ljava/io/DataInput;)Z
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    sget-object v0, Lcom/google/n/c/a/a/t;->b:Lcom/google/g/a/b/b/h;

    invoke-static {v0, p1}, Lcom/google/g/a/b/b/j;->a(Lcom/google/g/a/b/b/h;Ljava/io/DataInput;)Lcom/google/g/a/b/b/f;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->d:I

    if-eq v2, v0, :cond_1

    :cond_0
    return v5

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/m/r;->a:[Lcom/google/g/a/b/b/f;

    invoke-virtual {v1, v6, v0}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v4

    aput-object v4, v3, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public final b(I)Lcom/google/maps/api/android/lib6/gmm6/l/ae;
    .locals 12

    const/4 v9, 0x3

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/r;->a:[Lcom/google/g/a/b/b/f;

    aget-object v2, v0, p1

    if-nez v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v5, Lcom/google/maps/api/android/lib6/gmm6/l/ab;

    invoke-direct {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/ab;-><init>()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/m/h;->c:[Lcom/google/maps/api/android/lib6/gmm6/m/k;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/m/k;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/m/s;

    invoke-virtual {v2, v9}, Lcom/google/g/a/b/b/f;->j(I)I

    move-result v3

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move v1, v4

    :goto_1
    if-ge v1, v3, :cond_2

    invoke-virtual {v2, v9, v1}, Lcom/google/g/a/b/b/f;->c(II)Lcom/google/g/a/b/b/f;

    move-result-object v7

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/l/x;->a()Lcom/google/maps/api/android/lib6/gmm6/l/x;

    move-result-object v8

    invoke-static {v7, v8, v0}, Lcom/google/maps/api/android/lib6/gmm6/m/q;->a(Lcom/google/g/a/b/b/f;Lcom/google/maps/api/android/lib6/gmm6/l/x;Lcom/google/maps/api/android/lib6/gmm6/l/ah;)Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v7

    const/16 v8, 0x14

    if-eq v7, v8, :cond_2

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/m/s;->k()Lcom/google/maps/api/android/lib6/gmm6/l/dd;

    move-result-object v6

    const-wide/16 v2, -0x1

    iget-wide v8, v6, Lcom/google/maps/api/android/lib6/gmm6/l/dd;->c:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-ltz v7, :cond_3

    const/4 v4, 0x1

    :cond_3
    if-eqz v4, :cond_4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/m/r;->b:Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v6, v6, Lcom/google/maps/api/android/lib6/gmm6/l/dd;->c:J

    add-long/2addr v2, v6

    :cond_4
    new-instance v4, Lcom/google/maps/api/android/lib6/gmm6/l/bz;

    invoke-direct {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/bz;-><init>()V

    iput-object v5, v4, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->e:Lcom/google/maps/api/android/lib6/gmm6/l/ab;

    iput-object v0, v4, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iput-object v1, v4, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->d:[Lcom/google/maps/api/android/lib6/gmm6/l/cp;

    iput-wide v2, v4, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->f:J

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/bz;->a()Lcom/google/maps/api/android/lib6/gmm6/l/by;

    move-result-object v0

    goto :goto_0
.end method

.method public final h()I
    .locals 1

    const/16 v0, 0x24

    return v0
.end method

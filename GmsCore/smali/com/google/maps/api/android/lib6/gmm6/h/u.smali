.class Lcom/google/maps/api/android/lib6/gmm6/h/u;
.super Lcom/google/maps/api/android/lib6/gmm6/h/y;

# interfaces
.implements Lcom/google/c/i/c;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/h/r;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/a;)V

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a(Lcom/google/maps/api/android/lib6/gmm6/h/a;)V

    return-void
.end method

.method protected constructor <init>([D)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/h/y;-><init>([D)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a(Lcom/google/maps/api/android/lib6/gmm6/h/a;)V

    return-void
.end method

.method private constructor <init>([D[I)V
    .locals 1

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/h/r;->a([D)Lcom/google/maps/api/android/lib6/gmm6/h/r;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/y;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/a;[I)V

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/h/a;)V
    .locals 3

    const/4 v1, 0x0

    iget v0, p1, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b:[I

    move v0, v1

    :goto_0
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c:I

    if-ge v0, v2, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b:[I

    aput v0, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/google/c/i/b;->a()Lcom/google/c/i/d;

    move-result-object v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c:I

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, p0, v1, v2}, Lcom/google/c/i/d;->a(Lcom/google/c/i/c;II)V

    return-void
.end method

.method private c(II)[I
    .locals 7

    const/4 v0, 0x0

    if-le p1, p2, :cond_3

    sub-int v1, p1, p2

    add-int/lit8 v3, v1, -0x1

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c:I

    sub-int/2addr v1, v3

    new-array v1, v1, [I

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b:[I

    array-length v5, v4

    move v2, v0

    :goto_0
    if-ge v2, v5, :cond_2

    aget v6, v4, v2

    if-gt v6, p2, :cond_0

    aput v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    :cond_0
    if-lt v6, p1, :cond_1

    sub-int/2addr v6, v3

    aput v6, v1, v0

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move-object v0, v1

    :goto_1
    return-object v0

    :cond_3
    sub-int v1, p2, p1

    add-int/lit8 v1, v1, 0x1

    new-array v1, v1, [I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b:[I

    array-length v4, v3

    move v2, v0

    :goto_2
    if-ge v2, v4, :cond_5

    aget v5, v3, v2

    if-lt v5, p1, :cond_4

    if-gt v5, p2, :cond_4

    sub-int/2addr v5, p1

    aput v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    move-object v0, v1

    goto :goto_1
.end method


# virtual methods
.method public final a()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SortedVertexMapping is immutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SortedVertexMapping is immutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(II)Z
    .locals 9

    const/4 v8, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b:[I

    aget v3, v3, p1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b:[I

    aget v4, v4, p2

    invoke-virtual {v0, v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(II)I

    move-result v0

    if-eqz v0, :cond_2

    if-gez v0, :cond_1

    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b:[I

    aget v0, v0, p1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b:[I

    aget v3, v3, p2

    new-array v4, v8, [I

    aput v0, v4, v2

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-virtual {v5, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->d(I)I

    move-result v5

    aput v5, v4, v1

    new-array v5, v8, [I

    aput v3, v5, v2

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-virtual {v6, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->d(I)I

    move-result v6

    aput v6, v5, v1

    new-array v6, v8, [I

    aput v0, v6, v2

    iget-object v7, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-virtual {v7, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->c(I)I

    move-result v7

    aput v7, v6, v1

    new-array v7, v8, [I

    aput v3, v7, v2

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-virtual {v8, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->c(I)I

    move-result v3

    aput v3, v7, v1

    new-instance v3, Lcom/google/maps/api/android/lib6/gmm6/h/b;

    iget-object v8, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-direct {v3, v8, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/h/a;I)V

    invoke-virtual {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/b;->a([I[I)I

    move-result v0

    if-gez v0, :cond_3

    move v0, v1

    :goto_1
    invoke-virtual {v3, v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/b;->a([I[I)I

    move-result v8

    if-gez v8, :cond_4

    invoke-virtual {v3, v6, v5}, Lcom/google/maps/api/android/lib6/gmm6/h/b;->a([I[I)I

    move-result v3

    if-ltz v3, :cond_0

    if-nez v0, :cond_0

    move v1, v2

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_1

    :cond_4
    invoke-virtual {v3, v4, v7}, Lcom/google/maps/api/android/lib6/gmm6/h/b;->a([I[I)I

    move-result v3

    if-gez v3, :cond_5

    if-nez v0, :cond_0

    :cond_5
    move v1, v2

    goto :goto_0
.end method

.method public final b()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SortedVertexMapping is immutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final b(II)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b:[I

    aget v0, v0, p1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b:[I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b:[I

    aget v2, v2, p2

    aput v2, v1, p1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->b:[I

    aput v0, v1, p2

    return-void
.end method

.method public final varargs b([I)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SortedVertexMapping is immutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final d(II)Lcom/google/maps/api/android/lib6/gmm6/h/u;
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a()I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot create a sorted sublist when there are holes."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-le p1, p2, :cond_1

    add-int/lit8 v0, p2, 0x1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e()I

    move-result v1

    add-int/2addr v0, v1

    sub-int/2addr v0, p1

    mul-int/lit8 v0, v0, 0x2

    new-array v1, v0, [D

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {v0, v3, v1, v3, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I[DII)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    add-int/lit8 v2, p2, 0x1

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->e()I

    move-result v3

    sub-int/2addr v3, p1

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I[DII)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/u;

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c(II)[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;-><init>([D[I)V

    :goto_0
    return-object v0

    :cond_1
    sub-int v0, p2, p1

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v0, 0x2

    new-array v1, v1, [D

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/h/u;->a:Lcom/google/maps/api/android/lib6/gmm6/h/a;

    invoke-virtual {v2, p1, v1, v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/h/a;->a(I[DII)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/h/u;

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;->c(II)[I

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/h/u;-><init>([D[I)V

    goto :goto_0
.end method

.method public final e(II)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SortedVertexMapping is immutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final f(II)V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "SortedVertexMapping is immutable."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

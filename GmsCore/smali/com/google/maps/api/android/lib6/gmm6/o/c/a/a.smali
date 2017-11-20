.class public Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;
.super Ljava/lang/Object;


# instance fields
.field protected a:[B

.field protected b:I

.field c:Ljava/nio/ByteBuffer;

.field protected d:I

.field protected e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

.field private f:I

.field private g:I

.field private h:Z

.field private i:I


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->d:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->i:I

    iput-boolean p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->h:Z

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->f:I

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->f:I

    mul-int/lit8 v0, v0, 0x4

    const/16 v1, 0x1000

    if-lt v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->h:Z

    if-eqz v1, :cond_2

    :cond_0
    new-array v0, v0, [B

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    :cond_1
    :goto_0
    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c:Ljava/nio/ByteBuffer;

    return-void

    :cond_2
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/e/b;

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b;-><init>(I)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b;->a()V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c()V

    goto :goto_0
.end method

.method private c()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/b;->b(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/b;->c:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/b;->d:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    :cond_0
    return-void
.end method


# virtual methods
.method public final a()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->d:I

    return v0
.end method

.method public final a(I)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->f:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->f:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v0, v1, 0x4

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    if-nez v2, :cond_3

    const/16 v2, 0x1000

    if-lt v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->h:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->h:Z

    new-array v0, v0, [B

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    :goto_0
    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->f:I

    :cond_1
    return-void

    :cond_2
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/e/b;

    invoke-direct {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b;-><init>(I)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/e/b;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/b;->c:Ljava/lang/Object;

    check-cast v0, [B

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/b;->d:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b;->c(I)V

    goto :goto_0
.end method

.method public final a(II)V
    .locals 8

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v1, v0

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v2, v0

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v3, v0

    int-to-byte v4, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    aput-byte v1, v5, v6

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    aput-byte v2, v5, v6

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    aput-byte v3, v5, v6

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    aput-byte v4, v5, v6

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    const/16 v6, 0x1000

    if-lt v5, v6, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b:I

    return-void
.end method

.method protected final a(IZ)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    invoke-virtual {p0, v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a([BI)V

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c:Ljava/nio/ByteBuffer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b;->c()V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    :cond_0
    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    :cond_1
    return-void

    :cond_2
    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/b;

    invoke-direct {v1, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/b;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;)V

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/b;->a(Lcom/google/maps/api/android/lib6/gmm6/e/d;)V

    goto :goto_0
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    return-void
.end method

.method final a([BI)V
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->i:I

    if-lez v1, :cond_0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-byte v1, p1, v0

    and-int/lit16 v1, v1, 0xff

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->i:I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->i:I

    rsub-int v3, v3, 0xff

    mul-int/2addr v1, v3

    div-int/lit16 v1, v1, 0xff

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c:Ljava/nio/ByteBuffer;

    int-to-byte v1, v1

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, v0, p2}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    :cond_1
    return-void
.end method

.method public b()I
    .locals 2

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x20

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c:Ljava/nio/ByteBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x20

    goto :goto_0
.end method

.method public final b(II)V
    .locals 8

    ushr-int/lit8 v0, p1, 0x18

    int-to-byte v1, v0

    ushr-int/lit8 v0, p1, 0x10

    int-to-byte v2, v0

    ushr-int/lit8 v0, p1, 0x8

    int-to-byte v3, v0

    int-to-byte v4, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    aput-byte v2, v5, v6

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    aput-byte v3, v5, v6

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    aput-byte v4, v5, v6

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    add-int/lit8 v7, v6, 0x1

    iput v7, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    aput-byte v1, v5, v6

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->g:I

    const/16 v6, 0x1000

    if-lt v5, v6, :cond_0

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b:I

    add-int/2addr v0, p2

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b:I

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b;->c()V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    :cond_0
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a:[B

    return-void
.end method

.method public c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c:Ljava/nio/ByteBuffer;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->d:I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/4 v1, 0x4

    const/16 v2, 0x1401

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c:Ljava/nio/ByteBuffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glColorPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method protected d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->b:I

    mul-int/lit8 v0, v0, 0x4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->m()Lcom/google/maps/api/android/lib6/gmm6/o/c/l;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/l;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c:Ljava/nio/ByteBuffer;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->a(IZ)V

    return-void
.end method

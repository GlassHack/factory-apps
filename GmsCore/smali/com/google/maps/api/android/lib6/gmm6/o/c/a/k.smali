.class public Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;
.super Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;


# instance fields
.field private final k:[I

.field private volatile l:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->l:J

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;-><init>(IZ)V

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->l:J

    return-void
.end method

.method public constructor <init>(IC)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;-><init>(II)V

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->l:J

    return-void
.end method

.method private f(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 6

    const v5, 0x8892

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    invoke-interface {v0, v2, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    aget v1, v3, v1

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->limit()I

    move-result v1

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->g:I

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->a:I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    const v4, 0x88e4

    invoke-interface {v0, v5, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    move v0, v2

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    aput v1, v0, v1

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V
    .locals 7

    const v6, 0x8892

    const/4 v5, 0x0

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->l:J

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->H()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    aget v0, v0, v5

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->f(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    aget v1, v1, v5

    invoke-interface {v0, v6, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->f:I

    mul-int/lit8 v3, p2, 0x2

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->g:I

    mul-int/2addr v3, v4

    invoke-interface {v0, v1, v2, v5, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    invoke-interface {v0, v6, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    aget v0, v0, v3

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->l:J

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->b(J)Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    move-result-object v0

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    aput v3, v0, v3

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->a:I

    :cond_1
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->l:J

    return-void
.end method

.method public final d()I
    .locals 2

    const/16 v0, 0x38

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x38

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->b:[I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->b:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x38

    goto :goto_0
.end method

.method public final d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 5

    const v4, 0x8892

    const/4 v3, 0x0

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->l:J

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->H()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    aget v0, v0, v3

    if-nez v0, :cond_2

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->f(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->k:[I

    aget v1, v1, v3

    invoke-interface {v0, v4, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->f:I

    invoke-interface {v0, v1, v2, v3, v3}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    invoke-interface {v0, v4, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method

.method protected final e(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->H()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->d:I

    mul-int/lit8 v1, v0, 0x2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->f:I

    const/16 v2, 0x1402

    if-ne v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->L()Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;->b()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->a(Ljava/nio/ShortBuffer;I)V

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/a/b;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c()V

    iput-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    :cond_0
    iput-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->b:[I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->a()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->h:I

    invoke-virtual {v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a(Ljava/nio/ShortBuffer;I)V

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->f:I

    const/16 v2, 0x1401

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->f:I

    const/16 v2, 0x1400

    if-ne v0, v2, :cond_6

    :cond_4
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->L()Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->a()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->h:I

    invoke-virtual {v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    :cond_6
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->L()Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;->c()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->b:[I

    invoke-virtual {v0, v2, v4, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    goto :goto_0

    :cond_7
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->a()V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/k;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a(Ljava/nio/IntBuffer;)V

    goto :goto_0

    :cond_8
    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    goto :goto_1
.end method

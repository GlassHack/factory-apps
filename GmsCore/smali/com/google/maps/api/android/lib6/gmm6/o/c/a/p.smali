.class public Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;
.super Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;


# instance fields
.field private final h:[I

.field private volatile i:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->h:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->i:J

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;-><init>(IZ)V

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->h:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->i:J

    return-void
.end method


# virtual methods
.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->h:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->h:[I

    aput v1, v0, v1

    :cond_0
    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->h:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->h:[I

    aget v0, v0, v3

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->i:J

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->b(J)Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    move-result-object v0

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->h:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->h:[I

    aput v3, v0, v3

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->a:I

    :cond_1
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->i:J

    return-void
.end method

.method public final d()I
    .locals 2

    const/16 v0, 0x38

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x38

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->b:[I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->b:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x38

    goto :goto_0
.end method

.method public final d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 6

    const v5, 0x8892

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->i:J

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->H()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->h:[I

    aget v1, v1, v4

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->e:Ljava/nio/IntBuffer;

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->e(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->h:[I

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->h:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->a:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->a:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->e:Ljava/nio/IntBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->e:Ljava/nio/IntBuffer;

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->h:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v1, 0x3

    const/16 v2, 0x140c

    invoke-interface {v0, v1, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    invoke-interface {v0, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method

.method protected final e(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->H()Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->d:I

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->L()Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;->c()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->e:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->e:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->b:[I

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Ljava/nio/IntBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/a/b;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c()V

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    :cond_0
    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->b:[I

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->a()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/p;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a(Ljava/nio/IntBuffer;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    goto :goto_1
.end method

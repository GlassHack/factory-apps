.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;
.super Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;


# instance fields
.field private final f:[I

.field private volatile g:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->f:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->g:J

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;-><init>(IZ)V

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->f:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->g:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->f:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->f:[I

    aput v1, v0, v1

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V
    .locals 6

    const v5, 0x8893

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->g:J

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->H()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->f:[I

    aget v1, v1, v4

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->c:Ljava/nio/ShortBuffer;

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->c:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->f:[I

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->f:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->c:Ljava/nio/ShortBuffer;

    invoke-virtual {v1}, Ljava/nio/ShortBuffer;->limit()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->d:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->d:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->c:Ljava/nio/ShortBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->c:Ljava/nio/ShortBuffer;

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->f:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->b:I

    const/16 v2, 0x1403

    invoke-interface {v0, p2, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glDrawElements(IIII)V

    invoke-interface {v0, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->f:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->f:[I

    aget v0, v0, v3

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->g:J

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->b(J)Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    move-result-object v0

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->f:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->f:[I

    aput v3, v0, v3

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->d:I

    :cond_1
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->g:J

    return-void
.end method

.method public final d()I
    .locals 2

    const/16 v0, 0x38

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/h;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x38

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->a:[S

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->a:[S

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x38

    goto :goto_0
.end method

.method protected final d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->H()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->L()Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;->b()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->c:Ljava/nio/ShortBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->c:Ljava/nio/ShortBuffer;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->a:[S

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->b:I

    invoke-virtual {v0, v1, v3, v2}, Ljava/nio/ShortBuffer;->put([SII)Ljava/nio/ShortBuffer;

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->c:Ljava/nio/ShortBuffer;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->b:I

    invoke-virtual {v0, v1}, Ljava/nio/ShortBuffer;->limit(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->c:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/ShortBuffer;->position(I)Ljava/nio/Buffer;

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/a/b;->a:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/h;->c()V

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    :cond_0
    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->a:[S

    :cond_1
    :goto_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->e:Lcom/google/maps/api/android/lib6/gmm6/e/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/f;->c:Ljava/nio/ShortBuffer;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/h;->a(Ljava/nio/ShortBuffer;)V

    goto :goto_0

    :cond_3
    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/d;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    goto :goto_1
.end method

.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;
.super Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;


# instance fields
.field private final f:[I

.field private volatile g:J


# direct methods
.method public constructor <init>(I)V
    .locals 2

    invoke-direct {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;-><init>(I)V

    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->f:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->g:J

    return-void
.end method

.method public constructor <init>(IB)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;-><init>(IZ)V

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->f:[I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->g:J

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->f:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->f:[I

    aget v0, v0, v3

    if-eqz v0, :cond_1

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->g:J

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->b(J)Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    move-result-object v0

    if-ne v0, p1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->f:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->f:[I

    aput v3, v0, v3

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->d:I

    :cond_1
    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->g:J

    return-void
.end method

.method public final b()I
    .locals 2

    const/16 v0, 0x38

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->e:Lcom/google/maps/api/android/lib6/gmm6/e/b;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/b;->b()I

    move-result v0

    add-int/lit8 v0, v0, 0x38

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->a:[B

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->a:[B

    array-length v0, v0

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x38

    goto :goto_0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 6

    const v5, 0x8892

    const/4 v4, 0x0

    invoke-static {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->g:J

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->H()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->f:[I

    aget v1, v1, v4

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->c:Ljava/nio/ByteBuffer;

    if-nez v1, :cond_2

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->f:[I

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->f:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->c:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->d:I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->d:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->c:Ljava/nio/ByteBuffer;

    const v3, 0x88e4

    invoke-interface {v0, v5, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->c:Ljava/nio/ByteBuffer;

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->f:[I

    aget v1, v1, v4

    invoke-interface {v0, v5, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    const/4 v1, 0x4

    const/16 v2, 0x1401

    invoke-interface {v0, v1, v2, v4, v4}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    invoke-interface {v0, v5, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0
.end method

.method protected final d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->H()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->b:I

    mul-int/lit8 v1, v0, 0x4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->L()Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/m;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->c:Ljava/nio/ByteBuffer;

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/a/b;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/c;->a(IZ)V

    :goto_1
    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/a;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    goto :goto_1
.end method

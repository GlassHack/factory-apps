.class public Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;
.super Ljava/lang/Object;


# instance fields
.field public a:I

.field private b:Ljava/nio/ByteBuffer;

.field private final c:Z

.field private final d:Z

.field private e:I

.field private final f:[I

.field private g:Z


# direct methods
.method public constructor <init>(I)V
    .locals 3

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->f:[I

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->g:Z

    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_2

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->c:Z

    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_3

    :goto_1
    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->d:Z

    const/16 v0, 0xc

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->e:I

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->d:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->e:I

    add-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->e:I

    :cond_0
    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->c:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->e:I

    add-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->e:I

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 8

    const/16 v2, 0xc

    const/16 v7, 0x1406

    const v6, 0x8892

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->f:[I

    aget v1, v1, v5

    if-nez v1, :cond_2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    check-cast v1, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->f:[I

    invoke-interface {v1, v3, v4, v5}, Ljavax/microedition/khronos/opengles/GL11;->glGenBuffers(I[II)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->f:[I

    aget v3, v3, v5

    invoke-interface {v1, v6, v3}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    :goto_0
    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->b:Ljava/nio/ByteBuffer;

    const v4, 0x88e4

    invoke-interface {v0, v6, v1, v3, v4}, Ljavax/microedition/khronos/opengles/GL11;->glBufferData(IILjava/nio/Buffer;I)V

    iput-boolean v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->g:Z

    :cond_0
    const/4 v1, 0x3

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->e:I

    invoke-interface {v0, v1, v7, v3, v5}, Ljavax/microedition/khronos/opengles/GL11;->glVertexPointer(IIII)V

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->d:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->e:I

    invoke-interface {v0, v1, v7, v3, v2}, Ljavax/microedition/khronos/opengles/GL11;->glColorPointer(IIII)V

    const/16 v1, 0x1c

    :goto_1
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->c:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->e:I

    invoke-interface {v0, v2, v7, v3, v1}, Ljavax/microedition/khronos/opengles/GL11;->glTexCoordPointer(IIII)V

    :cond_1
    invoke-interface {v0, v6, v5}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    return-void

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->f:[I

    aget v1, v1, v5

    invoke-interface {v0, v6, v1}, Ljavax/microedition/khronos/opengles/GL11;->glBindBuffer(II)V

    goto :goto_0

    :cond_3
    move v1, v2

    goto :goto_1
.end method

.method public a(Ljava/nio/ByteBuffer;)V
    .locals 2

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->b:Ljava/nio/ByteBuffer;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->g:Z

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->e:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->a:I

    return-void
.end method

.method public b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->b:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->f:[I

    aget v0, v0, v3

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->f:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL11;->glDeleteBuffers(I[II)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->f:[I

    aput v3, v0, v3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->b:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/g;->b:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    :cond_1
    return-void
.end method

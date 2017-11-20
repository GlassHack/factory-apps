.class public Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/a/o;


# instance fields
.field protected a:I

.field b:[I

.field c:I

.field d:I

.field e:Ljava/nio/IntBuffer;

.field f:I

.field protected g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

.field private h:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;-><init>(IZ)V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a:I

    iput-boolean p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->h:Z

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c:I

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c:I

    mul-int/lit8 v0, v0, 0x3

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->h:Z

    if-eqz v1, :cond_2

    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    :cond_1
    :goto_0
    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e:Ljava/nio/IntBuffer;

    return-void

    :cond_2
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;-><init>(I)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a()V

    goto :goto_0
.end method


# virtual methods
.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->b(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->d:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    :cond_0
    return-void
.end method

.method public a(FFF)V
    .locals 4

    const/high16 v3, 0x47800000    # 65536.0f

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    mul-float v2, p1, v3

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    mul-float v2, p2, v3

    float-to-int v2, v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    mul-float v2, p3, v3

    float-to-int v2, v2

    aput v2, v0, v1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a()V

    :cond_0
    return-void
.end method

.method public final a(I)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v0, v1, 0x3

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-nez v2, :cond_3

    const/16 v2, 0x400

    if-lt v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->h:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->h:Z

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    :goto_0
    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->c:I

    :cond_1
    return-void

    :cond_2
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-direct {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;-><init>(I)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->d:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c(I)V

    goto :goto_0
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(I[II)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    add-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->f:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a()V

    :cond_0
    return-void
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e()V

    return-void
.end method

.method public final b()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d:I

    return v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;I)V

    return-void
.end method

.method public b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a:I

    return v0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c()V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    :cond_0
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    return-void
.end method

.method public d()I
    .locals 2

    const/16 v0, 0x20

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x20

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e:Ljava/nio/IntBuffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v1}, Ljava/nio/IntBuffer;->capacity()I

    move-result v1

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x20

    goto :goto_0
.end method

.method public d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 5

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e:Ljava/nio/IntBuffer;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0}, Ljava/nio/IntBuffer;->limit()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a:I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/4 v1, 0x3

    const/16 v2, 0x140c

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e:Ljava/nio/IntBuffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected e(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d:I

    mul-int/lit8 v0, v0, 0x3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->m()Lcom/google/maps/api/android/lib6/gmm6/o/c/l;

    move-result-object v1

    mul-int/lit8 v2, v0, 0x4

    invoke-virtual {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/l;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e:Ljava/nio/IntBuffer;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e:Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    invoke-virtual {v1, v2, v3, v0}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v3}, Ljava/nio/IntBuffer;->position(I)Ljava/nio/Buffer;

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->b:[I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->a()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->e:Ljava/nio/IntBuffer;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a(Ljava/nio/IntBuffer;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c()V

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->g:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    goto :goto_0
.end method

.class public Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/a/j;


# instance fields
.field protected a:I

.field b:[I

.field c:I

.field d:I

.field e:Ljava/nio/Buffer;

.field protected final f:I

.field protected final g:I

.field protected final h:I

.field i:I

.field protected j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

.field private k:Z


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a:I

    const/16 v0, 0x140c

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->f:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->g:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->h:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;-><init>(IZ)V

    return-void
.end method

.method protected constructor <init>(II)V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a:I

    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->k:Z

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->g:I

    const/16 v0, 0x1402

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->f:I

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->h:I

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e()V

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a:I

    iput-boolean p2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->k:Z

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c:I

    const/16 v0, 0x140c

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->f:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->g:I

    const/4 v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->h:I

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e()V

    return-void
.end method

.method private e()V
    .locals 3

    const/4 v2, 0x0

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    if-nez v0, :cond_3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c:I

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->k:Z

    if-eqz v1, :cond_2

    :cond_0
    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    :cond_1
    :goto_0
    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    return-void

    :cond_2
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;-><init>(I)V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a()V

    goto :goto_0
.end method


# virtual methods
.method public final E_()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d:I

    return v0
.end method

.method protected final a()V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->b(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->d:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    :cond_0
    return-void
.end method

.method public a(FF)V
    .locals 4

    const/high16 v3, 0x47800000    # 65536.0f

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    mul-float v2, p1, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    mul-float v2, p2, v3

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    aput v2, v0, v1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a()V

    :cond_0
    return-void
.end method

.method public a(II)V
    .locals 3

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    aput p1, v0, v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    aput p2, v0, v1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    const/16 v1, 0x400

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a()V

    :cond_0
    return-void
.end method

.method public final a(III)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    aput p1, v1, v2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    aput p2, v1, v2

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    const/16 v2, 0x400

    if-lt v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d:I

    return-void
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e()V

    return-void
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;I)V
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    mul-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    sub-int/2addr v0, p2

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->g:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a:I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->f:I

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    invoke-interface {v0, v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method protected final a(Ljava/nio/ByteBuffer;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->h:I

    div-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ByteBuffer;->put(B)Ljava/nio/ByteBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method protected final a(Ljava/nio/ShortBuffer;I)V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    aget v1, v1, v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->h:I

    div-int/2addr v1, v2

    int-to-short v1, v1

    invoke-virtual {p1, v1}, Ljava/nio/ShortBuffer;->put(S)Ljava/nio/ShortBuffer;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final a([I)V
    .locals 2

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a([III)V

    return-void
.end method

.method public a([III)V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    add-int/2addr v0, p3

    const/16 v1, 0x400

    if-ge v0, v1, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    :cond_1
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d:I

    div-int/lit8 v1, p3, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d:I

    return-void

    :cond_2
    add-int v0, p2, p3

    :goto_0
    if-ge p2, v0, :cond_1

    sub-int v1, v0, p2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    rsub-int v2, v2, 0x400

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    invoke-static {p1, p2, v2, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/2addr p2, v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a()V

    goto :goto_0
.end method

.method public b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    return-void
.end method

.method public final c()I
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a:I

    return v0
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 2

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c()V

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    :cond_0
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    return-void
.end method

.method public d()I
    .locals 3

    const/16 v0, 0x2c

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->b()I

    move-result v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2c

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    invoke-virtual {v1}, Ljava/nio/Buffer;->capacity()I

    move-result v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->g:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    :cond_1
    return v0

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x10

    add-int/lit8 v0, v0, 0x2c

    goto :goto_0
.end method

.method public d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    invoke-virtual {v0, v4}, Ljava/nio/Buffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    invoke-virtual {v0}, Ljava/nio/Buffer;->limit()I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->g:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a:I

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/4 v1, 0x2

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->f:I

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    invoke-interface {v0, v1, v2, v4, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    return-void
.end method

.method public final d_(I)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c:I

    if-le p1, v0, :cond_1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    mul-int/lit8 v0, v1, 0x2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-nez v2, :cond_3

    const/16 v2, 0x400

    if-lt v0, v2, :cond_0

    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->k:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->k:Z

    new-array v0, v0, [I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    invoke-static {v2, v4, v0, v4, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    :goto_0
    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c:I

    :cond_1
    return-void

    :cond_2
    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-direct {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;-><init>(I)V

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    invoke-virtual {v0, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a(Ljava/lang/Object;I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c:Ljava/lang/Object;

    check-cast v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/e/f;->d:I

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->i:I

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c(I)V

    goto :goto_0
.end method

.method protected e(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 5

    const/4 v4, 0x0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d:I

    mul-int/lit8 v1, v0, 0x2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->m()Lcom/google/maps/api/android/lib6/gmm6/o/c/l;

    move-result-object v0

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->g:I

    mul-int/2addr v2, v1

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/l;->a(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->f:I

    const/16 v3, 0x1402

    if-ne v2, v3, :cond_2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asShortBuffer()Ljava/nio/ShortBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(Ljava/nio/ShortBuffer;I)V

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->c()V

    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    :cond_0
    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ShortBuffer;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->h:I

    invoke-virtual {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a(Ljava/nio/ShortBuffer;I)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->f:I

    const/16 v3, 0x1400

    if-eq v2, v3, :cond_3

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->f:I

    const/16 v3, 0x1401

    if-ne v2, v3, :cond_5

    :cond_3
    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    :cond_4
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/ByteBuffer;

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->h:I

    invoke-virtual {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a(Ljava/nio/ByteBuffer;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asIntBuffer()Ljava/nio/IntBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->b:[I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3, v1}, Ljava/nio/IntBuffer;->put([III)Ljava/nio/IntBuffer;

    goto :goto_0

    :cond_6
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->j:Lcom/google/maps/api/android/lib6/gmm6/e/f;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->e:Ljava/nio/Buffer;

    check-cast v0, Ljava/nio/IntBuffer;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/e/f;->a(Ljava/nio/IntBuffer;)V

    goto :goto_0
.end method

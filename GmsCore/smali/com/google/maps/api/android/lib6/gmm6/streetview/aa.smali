.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;
.super Ljava/lang/Object;


# instance fields
.field final a:[F

.field final b:[C

.field final c:I

.field final d:I

.field private final e:Ljava/nio/FloatBuffer;

.field private final f:Ljava/nio/FloatBuffer;

.field private final g:Ljava/nio/CharBuffer;

.field private final h:I


# direct methods
.method public constructor <init>(II)V
    .locals 12

    const/4 v0, 0x2

    const/high16 v2, 0x10000

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-lt p1, v0, :cond_0

    if-lt p1, v2, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "w"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-lt p2, v0, :cond_2

    if-lt p2, v2, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "h"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    mul-int v0, p1, p2

    if-lt v0, v2, :cond_4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "w * h >= 65536"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->c:I

    iput p2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->d:I

    mul-int v0, p1, p2

    mul-int/lit8 v2, v0, 0x3

    new-array v2, v2, [F

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->a:[F

    mul-int/lit8 v2, v0, 0x4

    mul-int/lit8 v2, v2, 0x3

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->e:Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, v0, 0x4

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asFloatBuffer()Ljava/nio/FloatBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->f:Ljava/nio/FloatBuffer;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->c:I

    add-int/lit8 v4, v0, -0x1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->d:I

    add-int/lit8 v5, v0, -0x1

    mul-int v0, v4, v5

    mul-int/lit8 v0, v0, 0x6

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->h:I

    new-array v2, v0, [C

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->b:[C

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->asCharBuffer()Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->g:Ljava/nio/CharBuffer;

    move v3, v1

    move v0, v1

    :goto_0
    if-ge v3, v5, :cond_6

    move v2, v0

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_5

    iget v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->c:I

    mul-int/2addr v6, v3

    add-int/2addr v6, v0

    add-int/lit8 v7, v6, 0x1

    int-to-char v7, v7

    iget v8, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->c:I

    add-int/2addr v8, v6

    int-to-char v8, v8

    iget v9, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->c:I

    add-int/2addr v9, v6

    add-int/lit8 v9, v9, 0x1

    int-to-char v9, v9

    iget-object v10, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->b:[C

    add-int/lit8 v11, v2, 0x1

    int-to-char v6, v6

    aput-char v6, v10, v2

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->b:[C

    add-int/lit8 v6, v11, 0x1

    aput-char v7, v2, v11

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->b:[C

    add-int/lit8 v10, v6, 0x1

    aput-char v8, v2, v6

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->b:[C

    add-int/lit8 v6, v10, 0x1

    aput-char v7, v2, v10

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->b:[C

    add-int/lit8 v7, v6, 0x1

    aput-char v8, v2, v6

    iget-object v6, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->b:[C

    add-int/lit8 v2, v7, 0x1

    aput-char v9, v6, v7

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    move v0, v2

    goto :goto_0

    :cond_6
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->g:Ljava/nio/CharBuffer;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->b:[C

    invoke-virtual {v0, v2}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->g:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method final a(IIFFFFF)V
    .locals 4

    if-ltz p1, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->c:I

    if-lt p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "i"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->d:I

    if-lt p2, v0, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "j"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->c:I

    mul-int/2addr v0, p2

    add-int/2addr v0, p1

    mul-int/lit8 v1, v0, 0x3

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->a:[F

    aput p3, v2, v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->a:[F

    add-int/lit8 v3, v1, 0x1

    aput p4, v2, v3

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->a:[F

    add-int/lit8 v3, v1, 0x2

    aput p5, v2, v3

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->e:Ljava/nio/FloatBuffer;

    invoke-virtual {v2, v1, p3}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 v3, v1, 0x1

    invoke-virtual {v2, v3, p4}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->e:Ljava/nio/FloatBuffer;

    add-int/lit8 v1, v1, 0x2

    invoke-virtual {v2, v1, p5}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->f:Ljava/nio/FloatBuffer;

    invoke-virtual {v1, v0, p6}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->f:Ljava/nio/FloatBuffer;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0, p7}, Ljava/nio/FloatBuffer;->put(IF)Ljava/nio/FloatBuffer;

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;Z)V
    .locals 6

    const v5, 0x8078

    const/16 v4, 0x1406

    const/16 v3, 0xde1

    const/4 v2, 0x0

    const v0, 0x8074

    invoke-interface {p1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->e:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glVertexPointer(IIILjava/nio/Buffer;)V

    if-eqz p2, :cond_0

    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glEnableClientState(I)V

    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->f:Ljava/nio/FloatBuffer;

    invoke-interface {p1, v0, v4, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glTexCoordPointer(IIILjava/nio/Buffer;)V

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glEnable(I)V

    :goto_0
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->h:I

    const/16 v2, 0x1403

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/aa;->g:Ljava/nio/CharBuffer;

    invoke-interface {p1, v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawElements(IIILjava/nio/Buffer;)V

    return-void

    :cond_0
    invoke-interface {p1, v5}, Ljavax/microedition/khronos/opengles/GL10;->glDisableClientState(I)V

    invoke-interface {p1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDisable(I)V

    goto :goto_0
.end method

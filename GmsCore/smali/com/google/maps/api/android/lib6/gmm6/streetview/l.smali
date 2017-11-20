.class final Lcom/google/maps/api/android/lib6/gmm6/streetview/l;
.super Lcom/google/maps/api/android/lib6/gmm6/streetview/ag;


# instance fields
.field final a:[I

.field private final c:Ljava/util/BitSet;

.field private final d:Ljava/util/BitSet;

.field private e:Ljavax/microedition/khronos/opengles/GL10;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/16 v1, 0x11

    invoke-direct {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ag;-><init>(I)V

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->c:Ljava/util/BitSet;

    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->d:Ljava/util/BitSet;

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->a:[I

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->a:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->e:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->e:Ljavax/microedition/khronos/opengles/GL10;

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->b:I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->a:[I

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDeleteTextures(I[II)V

    :cond_0
    invoke-super {p0, v3}, Lcom/google/maps/api/android/lib6/gmm6/streetview/ag;->a(I)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->d:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->e:Ljavax/microedition/khronos/opengles/GL10;

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/streetview/au;Landroid/graphics/Bitmap;)V
    .locals 5

    if-eqz p2, :cond_5

    :try_start_0
    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Already cached "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->b()V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->c:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->nextClearBit(I)I

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->b:I

    if-lt v0, v1, :cond_1

    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Ran out of texture cache slots."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->e:Ljavax/microedition/khronos/opengles/GL10;

    if-eqz v1, :cond_4

    const/16 v2, 0xde1

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->a:[I

    aget v3, v3, v0

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBindTexture(II)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->d:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->get(I)Z

    move-result v2

    if-nez v2, :cond_2

    const/16 v2, 0xde1

    const/16 v3, 0x2801

    const/high16 v4, 0x46180000    # 9728.0f

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2800

    const v4, 0x46180400    # 9729.0f

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2802

    const v4, 0x47012f00    # 33071.0f

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v2, 0xde1

    const/16 v3, 0x2803

    const v4, 0x47012f00    # 33071.0f

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexParameterf(IIF)V

    const/16 v2, 0x2300

    const/16 v3, 0x2200

    const v4, 0x45f00800    # 7681.0f

    invoke-interface {v1, v2, v3, v4}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvf(IIF)V

    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, p2, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->d:Ljava/util/BitSet;

    invoke-virtual {v2, v0}, Ljava/util/BitSet;->set(I)V

    :goto_0
    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glGetError()I

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "glError: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v2, 0xde1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {v2, v3, p2, v4}, Landroid/opengl/GLUtils;->texImage2D(IILandroid/graphics/Bitmap;I)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->c:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->a(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_5
    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;)V
    .locals 3

    check-cast p1, Ljava/lang/Integer;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->c:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Ejecting unused texture "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->c:Ljava/util/BitSet;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->clear(I)V

    return-void
.end method

.method public final a(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 3

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->e:Ljavax/microedition/khronos/opengles/GL10;

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->b:I

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/streetview/l;->a:[I

    const/4 v2, 0x0

    invoke-interface {p1, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glGenTextures(I[II)V

    return-void
.end method

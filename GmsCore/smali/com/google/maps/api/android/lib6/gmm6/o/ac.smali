.class public final Lcom/google/maps/api/android/lib6/gmm6/o/ac;
.super Ljava/lang/Object;


# direct methods
.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->i:[F

    invoke-static {p0, p1, p2, p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F[F)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->i:[F

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Ljavax/microedition/khronos/opengles/GL10;[F)V

    return-void
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;FZ[F)V
    .locals 4

    if-nez p0, :cond_1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    :goto_0
    invoke-virtual {p1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-static {p2, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    if-eqz p4, :cond_0

    invoke-virtual {v1, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->i(Lcom/google/maps/api/android/lib6/gmm6/l/h;)V

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r()F

    move-result v0

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->f()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    aput v3, p5, v2

    const/4 v2, 0x1

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->g()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v3, v0

    aput v3, p5, v2

    const/4 v2, 0x2

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->h()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, v0

    aput v1, p5, v2

    const/4 v1, 0x3

    mul-float/2addr v0, p3

    aput v0, p5, v1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->j:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->k:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    goto :goto_0
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F[F)V
    .locals 6

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;FZ[F)V

    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)V
    .locals 4

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v0

    neg-float v0, v0

    invoke-interface {p0, v0, v2, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v0

    const/high16 v1, 0x42b40000    # 90.0f

    sub-float/2addr v0, v1

    invoke-interface {p0, v0, v3, v2, v2}, Ljavax/microedition/khronos/opengles/GL10;->glRotatef(FFFF)V

    return-void
.end method

.method public static a(Ljavax/microedition/khronos/opengles/GL10;[F)V
    .locals 4

    const/4 v3, 0x3

    const/4 v0, 0x0

    aget v0, p1, v0

    const/4 v1, 0x1

    aget v1, p1, v1

    const/4 v2, 0x2

    aget v2, p1, v2

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    aget v0, p1, v3

    aget v1, p1, v3

    aget v2, p1, v3

    invoke-interface {p0, v0, v1, v2}, Ljavax/microedition/khronos/opengles/GL10;->glScalef(FFF)V

    return-void
.end method

.method public static b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V
    .locals 6

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->i:[F

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;FZ[F)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->i:[F

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Ljavax/microedition/khronos/opengles/GL10;[F)V

    return-void
.end method

.class public final Lcom/google/maps/api/android/lib6/gmm6/j/k;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/k;


# instance fields
.field private final a:Ljava/util/Map;

.field private b:Ljava/util/Set;

.field private final c:F

.field private d:J

.field private e:I

.field private f:F

.field private g:Z


# direct methods
.method private constructor <init>(F)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->d:J

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->f:F

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->g:Z

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->c:F

    return-void
.end method

.method constructor <init>(Lcom/google/maps/api/android/lib6/c/ek;)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/c/c/gc;->a()Ljava/util/HashMap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a:Ljava/util/Map;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->d:J

    iput v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->f:F

    iput-boolean v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->g:Z

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ek;->e()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->c:F

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(Lcom/google/maps/api/android/lib6/c/ek;)Z

    return-void
.end method

.method private static a(F)F
    .locals 3

    mul-float v0, p0, p0

    const/high16 v1, 0x40400000    # 3.0f

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, p0

    sub-float/2addr v1, v2

    mul-float/2addr v0, v1

    return v0
.end method

.method private static a(FFFFF)F
    .locals 2

    cmpg-float v0, p0, p1

    if-gtz v0, :cond_0

    :goto_0
    return p3

    :cond_0
    cmpl-float v0, p0, p2

    if-ltz v0, :cond_1

    move p3, p4

    goto :goto_0

    :cond_1
    sub-float v0, p0, p1

    sub-float v1, p2, p1

    div-float/2addr v0, v1

    sub-float v1, p4, p3

    mul-float/2addr v0, v1

    add-float/2addr p3, v0

    goto :goto_0
.end method

.method private g()Z
    .locals 2

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->e:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->f:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F
    .locals 10

    const/high16 v9, 0x42c80000    # 100.0f

    const/high16 v8, 0x41a00000    # 20.0f

    const/high16 v7, 0x41900000    # 18.0f

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->e:I

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->f:F

    iget v5, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->c:F

    cmpl-float v6, v5, v1

    if-lez v6, :cond_1

    const/high16 v5, 0x40400000    # 3.0f

    invoke-static {v0, v7, v8, v5, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(FFFFF)F

    move-result v0

    :goto_0
    const/high16 v5, 0x41200000    # 10.0f

    invoke-static {v2, v1, v5, v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(FFFFF)F

    move-result v0

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(F)F

    move-result v1

    and-int/lit8 v2, v3, 0x2

    if-eqz v2, :cond_3

    mul-float/2addr v1, v9

    add-float/2addr v0, v1

    :cond_0
    :goto_1
    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->b()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->a(D)D

    move-result-wide v2

    double-to-float v1, v2

    mul-float/2addr v0, v1

    return v0

    :cond_1
    cmpg-float v5, v5, v1

    if-gez v5, :cond_2

    const/high16 v5, -0x3fc00000    # -3.0f

    const/high16 v6, -0x40800000    # -1.0f

    invoke-static {v0, v7, v8, v5, v6}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(FFFFF)F

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    and-int/lit8 v2, v3, 0x1

    if-eqz v2, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v1, v2, v1

    mul-float/2addr v1, v9

    add-float/2addr v0, v1

    goto :goto_1
.end method

.method final a(Lcom/google/maps/api/android/lib6/a/a/d;)Lcom/google/maps/api/android/lib6/gmm6/j/k;
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-object p0

    :cond_0
    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/j/k;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ek;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ek;->e()I

    move-result v0

    int-to-float v0, v0

    invoke-direct {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;-><init>(F)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/c/ek;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/ek;->b()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/maps/api/android/lib6/a/a/d;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(Lcom/google/maps/api/android/lib6/c/ek;)Z

    goto :goto_1

    :cond_2
    move-object p0, v1

    goto :goto_0
.end method

.method public final a()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->b:Ljava/util/Set;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Lcom/google/c/c/fc;->a(Ljava/util/Collection;)Lcom/google/c/c/fc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->b:Ljava/util/Set;

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->b:Ljava/util/Set;

    return-object v0
.end method

.method public final a(I)V
    .locals 2

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->b()Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput p1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->e:I

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->d:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->f:F

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 8

    const/16 v7, 0x1e00

    const/4 v6, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v2

    invoke-interface {v2}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-virtual {p0, p2, p4}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->r()F

    move-result v3

    mul-float/2addr v3, v0

    invoke-interface {v2, v6, v6, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->e:I

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->f:F

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(F)F

    move-result v0

    and-int/lit8 v5, v4, 0x4

    if-nez v5, :cond_0

    and-int/lit8 v5, v4, 0x8

    if-eqz v5, :cond_3

    sub-float v0, v1, v0

    :cond_0
    :goto_0
    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_4

    const v4, 0x3f19999a    # 0.6f

    invoke-static {v0, v6, v1, v4, v1}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a(FFFFF)F

    move-result v0

    invoke-static {v1, v0, v0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/d;->a(FFFF)I

    move-result v0

    :goto_1
    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/d;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    iget-object v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->f:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->g:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-eq v0, v1, :cond_1

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->h:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-ne v0, v1, :cond_5

    cmpg-float v0, v3, v6

    if-gez v0, :cond_5

    :cond_1
    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->g:Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->g:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->w()V

    invoke-interface {v2, v7, v7, v7}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    const/16 v0, 0x202

    const/16 v1, 0xff

    const/16 v3, 0x80

    invoke-interface {v2, v0, v1, v3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    :cond_2
    return-void

    :cond_3
    move v0, v1

    goto :goto_0

    :cond_4
    invoke-static {v0, v0, v0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/d;->a(FFFF)I

    move-result v0

    goto :goto_1

    :cond_5
    const/4 v0, 0x0

    goto :goto_2
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->g:Z

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->x()V

    :cond_0
    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/d;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/c/ek;)Z
    .locals 4

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ek;->e()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->c:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/google/c/a/cj;->a(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->b:Ljava/util/Set;

    if-eqz v0, :cond_2

    :cond_0
    :goto_1
    return v2

    :cond_1
    move v0, v2

    goto :goto_0

    :cond_2
    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ek;->e()I

    move-result v0

    int-to-float v0, v0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->c:F

    cmpl-float v0, v0, v3

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a:Ljava/util/Map;

    invoke-interface {p1}, Lcom/google/maps/api/android/lib6/c/ek;->b()Lcom/google/maps/api/android/lib6/a/a/d;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move v2, v1

    goto :goto_1
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->c:F

    return v0
.end method

.method public final c()Z
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->e:I

    and-int/lit8 v0, v0, 0x3

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final synthetic compareTo(Ljava/lang/Object;)I
    .locals 2

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/o/k;

    const/4 v0, 0x0

    instance-of v1, p1, Lcom/google/maps/api/android/lib6/gmm6/j/k;

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->c:F

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/j/k;

    iget v1, p1, Lcom/google/maps/api/android/lib6/gmm6/j/k;->c:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    :cond_0
    return v0
.end method

.method public final d()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->e:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->f:F

    return-void
.end method

.method public final e()Z
    .locals 6

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/b/e;->b()Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->d:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    const/high16 v3, 0x43fa0000    # 500.0f

    div-float/2addr v2, v3

    cmpg-float v3, v2, v0

    if-gez v3, :cond_0

    :goto_0
    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->f:F

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/j/k;->g()Z

    move-result v0

    return v0

    :cond_0
    cmpl-float v0, v2, v1

    if-lez v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public final f()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->a:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 4

    invoke-static {p0}, Lcom/google/c/a/ce;->a(Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "height"

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->c:F

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;F)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "animationStartTimeMs"

    iget-wide v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->d:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/c/a/cf;->a(Ljava/lang/String;J)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "animationPosition"

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->f:F

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;F)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "animationType"

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->e:I

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;I)Lcom/google/c/a/cf;

    move-result-object v0

    const-string v1, "featureIds"

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/j/k;->b:Ljava/util/Set;

    invoke-virtual {v0, v1, v2}, Lcom/google/c/a/cf;->a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/c/a/cf;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/c/a/cf;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

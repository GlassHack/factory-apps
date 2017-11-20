.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;
.super Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/ax;


# instance fields
.field private final u:Lcom/google/maps/api/android/lib6/gmm6/l/h;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/i;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/a;FFZZLcom/google/maps/api/android/lib6/gmm6/o/c/b/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ak;Z)V
    .locals 14

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move-object/from16 v10, p9

    move-object/from16 v11, p10

    move-object/from16 v12, p11

    move/from16 v13, p12

    invoke-direct/range {v0 .. v13}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/cp;Lcom/google/maps/api/android/lib6/gmm6/o/e/b;Ljava/lang/String;Lcom/google/maps/api/android/lib6/gmm6/l/a;Lcom/google/maps/api/android/lib6/gmm6/l/a;FFZZLcom/google/maps/api/android/lib6/gmm6/o/c/b/o;Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;[Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ak;Z)V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->u:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-void
.end method


# virtual methods
.method public final A_()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)I
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->l:Lcom/google/maps/api/android/lib6/gmm6/l/a;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p3, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)[I

    move-result-object v0

    const/4 v1, 0x0

    aget v1, v0, v1

    int-to-float v1, v1

    sub-float v1, p1, v1

    const/4 v2, 0x1

    aget v0, v0, v2

    int-to-float v0, v0

    sub-float v0, p2, v0

    mul-float/2addr v1, v1

    mul-float/2addr v0, v0

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->l:Lcom/google/maps/api/android/lib6/gmm6/l/a;

    iget-object v2, v2, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(Lcom/google/maps/api/android/lib6/gmm6/l/h;)[I

    move-result-object v2

    aget v3, v2, v1

    int-to-float v3, v3

    aget v2, v2, v0

    int-to-float v2, v2

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->p:F

    add-float/2addr v4, v3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v5

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gez v4, :cond_0

    iget v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->q:F

    add-float/2addr v3, v4

    cmpl-float v3, v3, v6

    if-ltz v3, :cond_0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->r:F

    add-float/2addr v3, v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->g()I

    move-result v4

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->s:F

    add-float/2addr v2, v3

    cmpl-float v2, v2, v6

    if-ltz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->l:Lcom/google/maps/api/android/lib6/gmm6/l/a;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->m:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->b:F

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->n:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->o:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ak;

    iget-object v3, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ak;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aj;

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aj;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aj;

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->n:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;

    iget v3, v3, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/o;->b:F

    add-float/2addr v0, v3

    :cond_0
    float-to-int v0, v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->u:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-static {p1, v1, v2, v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/bo;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;IILcom/google/maps/api/android/lib6/gmm6/l/h;)V

    invoke-super {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z

    move-result v0

    return v0
.end method

.method public final b()V
    .locals 0

    return-void
.end method

.method public final c()V
    .locals 0

    return-void
.end method

.method public final d()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->l:Lcom/google/maps/api/android/lib6/gmm6/l/a;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-object v0
.end method

.method public final g()Lcom/google/maps/api/android/lib6/a/a/g;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public final h()Lcom/google/maps/api/android/lib6/gmm6/l/h;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/l;->u:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    return-object v0
.end method

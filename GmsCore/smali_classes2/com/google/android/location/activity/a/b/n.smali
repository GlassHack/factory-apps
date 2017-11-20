.class public abstract Lcom/google/android/location/activity/a/b/n;
.super Lcom/google/android/location/activity/a/n;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/google/android/location/activity/a/n;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract a(FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)I
.end method

.method public final a(Lcom/google/android/location/activity/a/r;)Lcom/google/android/location/activity/a/s;
    .locals 51

    .prologue
    .line 20
    move-object/from16 v0, p1

    instance-of v1, v0, Lcom/google/android/location/activity/a/b/p;

    if-nez v1, :cond_0

    .line 21
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Expected ActivityWatchFeatures2."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 23
    :cond_0
    check-cast p1, Lcom/google/android/location/activity/a/b/p;

    .line 24
    move-object/from16 v0, p1

    iget v2, v0, Lcom/google/android/location/activity/a/b/p;->b:F

    move-object/from16 v0, p1

    iget v3, v0, Lcom/google/android/location/activity/a/b/p;->s:F

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->n:[F

    const/4 v4, 0x0

    aget v4, v1, v4

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->n:[F

    const/4 v5, 0x1

    aget v5, v1, v5

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->n:[F

    const/4 v6, 0x2

    aget v6, v1, v6

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->n:[F

    const/4 v7, 0x3

    aget v7, v1, v7

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->q:[F

    const/4 v8, 0x0

    aget v8, v1, v8

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->q:[F

    const/4 v9, 0x1

    aget v9, v1, v9

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->q:[F

    const/4 v10, 0x2

    aget v10, v1, v10

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->q:[F

    const/4 v11, 0x3

    aget v11, v1, v11

    move-object/from16 v0, p1

    iget v12, v0, Lcom/google/android/location/activity/a/b/p;->r:F

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->m:[F

    const/4 v13, 0x0

    aget v13, v1, v13

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->m:[F

    const/4 v14, 0x1

    aget v14, v1, v14

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->m:[F

    const/4 v15, 0x2

    aget v15, v1, v15

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->m:[F

    const/16 v16, 0x3

    aget v16, v1, v16

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->p:[F

    const/16 v17, 0x0

    aget v17, v1, v17

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->p:[F

    const/16 v18, 0x1

    aget v18, v1, v18

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->p:[F

    const/16 v19, 0x2

    aget v19, v1, v19

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->p:[F

    const/16 v20, 0x3

    aget v20, v1, v20

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->o:[F

    const/16 v21, 0x0

    aget v21, v1, v21

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->o:[F

    const/16 v22, 0x1

    aget v22, v1, v22

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->o:[F

    const/16 v23, 0x2

    aget v23, v1, v23

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/google/android/location/activity/a/b/p;->o:[F

    const/16 v24, 0x3

    aget v24, v1, v24

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->a:F

    move/from16 v25, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->w:F

    move/from16 v26, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->v:F

    move/from16 v27, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->u:F

    move/from16 v28, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->l:F

    move/from16 v29, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->t:F

    move/from16 v30, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->k:F

    move/from16 v31, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->e:F

    move/from16 v32, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->g:F

    move/from16 v33, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->i:F

    move/from16 v34, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->d:F

    move/from16 v35, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->j:F

    move/from16 v36, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->h:F

    move/from16 v37, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->f:F

    move/from16 v38, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->c:F

    move/from16 v39, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->x:F

    move/from16 v40, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->y:F

    move/from16 v41, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->z:F

    move/from16 v42, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->A:F

    move/from16 v43, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->B:F

    move/from16 v44, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->C:F

    move/from16 v45, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->D:F

    move/from16 v46, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->E:F

    move/from16 v47, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->F:F

    move/from16 v48, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->G:F

    move/from16 v49, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/google/android/location/activity/a/b/p;->H:F

    move/from16 v50, v0

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v50}, Lcom/google/android/location/activity/a/b/n;->a(FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF)I

    move-result v1

    .line 73
    invoke-static {}, Lcom/google/android/location/activity/a/t;->values()[Lcom/google/android/location/activity/a/t;

    move-result-object v2

    shr-int/lit8 v3, v1, 0x4

    and-int/lit8 v3, v3, 0xf

    aget-object v2, v2, v3

    .line 74
    and-int/lit8 v1, v1, 0xf

    .line 75
    new-instance v3, Lcom/google/android/location/activity/a/s;

    invoke-direct {v3, v2, v1}, Lcom/google/android/location/activity/a/s;-><init>(Lcom/google/android/location/activity/a/t;I)V

    return-object v3
.end method

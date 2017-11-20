.class public final Lcom/google/maps/api/android/lib6/gmm6/o/ab;
.super Lcom/google/maps/api/android/lib6/gmm6/o/x;


# instance fields
.field private e:F

.field private f:Z


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/f/i;IILcom/google/maps/api/android/lib6/gmm6/o/bu;)V
    .locals 15

    invoke-virtual/range {p1 .. p1}, Lcom/google/maps/api/android/lib6/gmm6/m/c/d;->a()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v1

    const/4 v6, 0x0

    const/16 v8, 0x100

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v7, p5

    invoke-direct/range {v0 .. v14}, Lcom/google/maps/api/android/lib6/gmm6/o/x;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/f/i;IIILcom/google/maps/api/android/lib6/gmm6/o/bu;IZZZZZZ)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ab;->f:Z

    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ab;->e:F

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 2

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v0

    iget v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ab;->e:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ab;->f:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z

    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ab;->c:Z

    goto :goto_0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 3

    const/4 v0, 0x1

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v1

    iget v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ab;->e:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ab;->f:Z

    invoke-super {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/ab;->f:Z

    goto :goto_0
.end method

.method protected final i()Lcom/google/maps/api/android/lib6/gmm6/o/j;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/j;->i:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    return-object v0
.end method

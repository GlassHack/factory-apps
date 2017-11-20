.class public final Lcom/google/maps/api/android/lib6/gmm6/o/bb;
.super Lcom/google/maps/api/android/lib6/gmm6/o/x;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/k/a;

    const v1, 0x243d580

    const v2, 0x81b3200

    invoke-direct {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/k/a;-><init>(II)V

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/c;->a(Lcom/google/maps/api/android/lib6/gmm6/k/a;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v0

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/k/a;

    const v2, 0x1f78a40

    const v3, 0x88601c0

    invoke-direct {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/k/a;-><init>(II)V

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/n/c;->a(Lcom/google/maps/api/android/lib6/gmm6/k/a;)Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/l/p;

    return-void
.end method

.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/f/i;IILcom/google/maps/api/android/lib6/gmm6/o/bu;)V
    .locals 15

    const/4 v6, 0x0

    const/16 v8, 0x100

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v14}, Lcom/google/maps/api/android/lib6/gmm6/o/x;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/m/c/d;Lcom/google/maps/api/android/lib6/gmm6/f/i;IIILcom/google/maps/api/android/lib6/gmm6/o/bu;IZZZZZZ)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 4

    const/4 v1, 0x1

    invoke-static {}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->a()Lcom/google/maps/api/android/lib6/gmm6/j/q;

    move-result-object v0

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->n()F

    move-result v2

    invoke-virtual {p2}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_3

    invoke-super {p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V

    :goto_1
    return-void

    :cond_0
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->h()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/j/q;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x41900000    # 18.0f

    cmpg-float v0, v2, v0

    if-gtz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    iput-boolean v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bb;->c:Z

    goto :goto_1
.end method

.method protected final i()Lcom/google/maps/api/android/lib6/gmm6/o/j;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/j;->c:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    return-object v0
.end method

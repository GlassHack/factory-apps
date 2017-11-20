.class public final Lcom/google/maps/api/android/lib6/gmm6/f/d;
.super Lcom/google/maps/api/android/lib6/gmm6/f/j;


# instance fields
.field private d:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

.field private final e:Ljava/util/List;

.field private final f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

.field private g:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

.field private h:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

.field private i:F

.field private final j:F

.field private k:J


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;ILcom/google/maps/api/android/lib6/gmm6/l/au;)V
    .locals 2

    invoke-direct {p0, p1, p3}, Lcom/google/maps/api/android/lib6/gmm6/f/j;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/au;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->e:Ljava/util/List;

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->k:J

    mul-int v0, p2, p2

    int-to-float v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->j:F

    return-void
.end method

.method private a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/h;Z)V
    .locals 10

    const/4 v1, 0x0

    const/4 v9, 0x1

    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->h:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    const/high16 v2, 0x20000000

    shr-int/2addr v2, v0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->e()I

    move-result v4

    add-int/2addr v4, v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->f()I

    move-result v5

    add-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->d(II)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->g:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->f:Lcom/google/maps/api/android/lib6/gmm6/l/h;

    invoke-virtual {v3, v4, v9}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Z)F

    move-result v3

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->g:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    mul-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-virtual {v4, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->b(FF)F

    move-result v2

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->i:F

    mul-float/2addr v3, v2

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->j:F

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    const/16 v2, 0x1e

    if-ge v0, v2, :cond_5

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-super {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/f/j;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)Lcom/google/maps/api/android/lib6/gmm6/o/at;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/at;->b(I)I

    move-result v4

    if-ltz v4, :cond_3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->b()I

    move-result v0

    sub-int v5, v4, v0

    shl-int v6, v9, v5

    move v2, v1

    :goto_1
    if-ge v2, v6, :cond_3

    move v0, v1

    :goto_2
    if-ge v0, v6, :cond_2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->c()I

    move-result v7

    shl-int/2addr v7, v5

    add-int/2addr v7, v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->d()I

    move-result v8

    shl-int/2addr v8, v5

    add-int/2addr v8, v2

    invoke-virtual {p1, v4, v7, v8}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(III)Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    move-result-object v7

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    :cond_3
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-direct {p0, v0, p2, v9}, Lcom/google/maps/api/android/lib6/gmm6/f/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/h;Z)V

    goto :goto_3

    :cond_5
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->e:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->k:J

    return-wide v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/List;
    .locals 6

    const/4 v2, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->e:Ljava/util/List;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->e:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->j()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->b:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->k:J

    const-wide/16 v4, 0x1

    add-long/2addr v0, v4

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->k:J

    iget-object v0, v3, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->b:Lcom/google/maps/api/android/lib6/gmm6/l/cq;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/cq;

    iget-object v1, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cq;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v4, 0x3

    aget-object v1, v1, v4

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/l/cq;->a:[Lcom/google/maps/api/android/lib6/gmm6/l/h;

    const/4 v4, 0x2

    aget-object v0, v0, v4

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/h;->c(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->f()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c(FF)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->g:Lcom/google/maps/api/android/lib6/gmm6/o/b/b;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v1

    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->h:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v1

    const v4, 0x3c8efa35

    mul-float/2addr v1, v4

    invoke-static {v1}, Landroid/util/FloatMath;->cos(F)F

    move-result v1

    iput v1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->i:F

    iget-object v1, v3, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->b:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v4

    invoke-static {v1, v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cd;ILcom/google/maps/api/android/lib6/gmm6/l/at;)Ljava/util/ArrayList;

    move-result-object v4

    move v1, v2

    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v5

    invoke-direct {p0, v0, v5, v2}, Lcom/google/maps/api/android/lib6/gmm6/f/d;->a(Lcom/google/maps/api/android/lib6/gmm6/l/ah;Lcom/google/maps/api/android/lib6/gmm6/l/h;Z)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->d:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/d;->e:Ljava/util/List;

    goto :goto_1
.end method

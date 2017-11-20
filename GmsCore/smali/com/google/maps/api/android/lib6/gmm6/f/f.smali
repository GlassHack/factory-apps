.class public Lcom/google/maps/api/android/lib6/gmm6/f/f;
.super Lcom/google/maps/api/android/lib6/gmm6/f/j;


# instance fields
.field private d:Z

.field private e:J

.field private f:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

.field private g:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

.field private h:Ljava/util/List;

.field private i:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/au;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/f/j;-><init>(Lcom/google/maps/api/android/lib6/gmm6/l/av;Lcom/google/maps/api/android/lib6/gmm6/l/au;)V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->e:J

    invoke-static {}, Lcom/google/maps/api/android/lib6/b/e;->e()Lcom/google/maps/api/android/lib6/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/b/e;->l()D

    move-result-wide v0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->j:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->k:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-eq p1, v2, :cond_0

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/l/av;->l:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    if-ne p1, v2, :cond_1

    :cond_0
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->d:Z

    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static a(Lcom/google/maps/api/android/lib6/gmm6/l/cc;Ljava/util/ArrayList;)V
    .locals 5

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v4

    move v3, v0

    move v2, v0

    :goto_0
    if-ge v3, v4, :cond_0

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->b(Lcom/google/maps/api/android/lib6/gmm6/l/q;)Z

    move-result v1

    if-eqz v1, :cond_2

    add-int/lit8 v1, v2, 0x1

    invoke-virtual {p1, v2, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v0, v1

    :goto_1
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    move v2, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v0, v4, -0x1

    :goto_2
    if-lt v0, v2, :cond_1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_1
    return-void

    :cond_2
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F
    .locals 2

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->d:Z

    if-eqz v0, :cond_0

    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/j;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;)F

    move-result v0

    goto :goto_0
.end method

.method public final a()J
    .locals 2

    iget-wide v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->e:J

    return-wide v0
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/List;
    .locals 9

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v8, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->f:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->f:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->h:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->h:Ljava/util/List;

    :goto_1
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->h:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->j()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v0

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->b:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-virtual {v4}, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/google/maps/api/android/lib6/gmm6/l/at;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->e:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->e:J

    iget-object v0, v3, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/f;->c(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)I

    move-result v4

    iget-object v5, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->b:Lcom/google/maps/api/android/lib6/gmm6/l/au;

    invoke-virtual {v5}, Lcom/google/maps/api/android/lib6/gmm6/l/au;->a()Lcom/google/maps/api/android/lib6/gmm6/l/at;

    move-result-object v5

    invoke-static {v0, v4, v5}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cd;ILcom/google/maps/api/android/lib6/gmm6/l/at;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v0

    cmpl-float v0, v0, v8

    if-nez v0, :cond_3

    move v0, v1

    :goto_2
    if-nez v0, :cond_2

    invoke-static {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/f/f;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cc;Ljava/util/ArrayList;)V

    :cond_2
    iput-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->h:Ljava/util/List;

    iput-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->f:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->h:Ljava/util/List;

    goto :goto_1

    :cond_3
    move v0, v2

    goto :goto_2
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Ljava/util/List;
    .locals 4

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->v()Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    move-result-object v1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->g:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->g:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->i:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, v1, Lcom/google/maps/api/android/lib6/gmm6/l/cc;->c:Lcom/google/maps/api/android/lib6/gmm6/l/cd;

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/f/f;->c(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cd;I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->l()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->k()F

    move-result v0

    cmpl-float v0, v0, v3

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_1

    invoke-static {v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/f/f;->a(Lcom/google/maps/api/android/lib6/gmm6/l/cc;Ljava/util/ArrayList;)V

    :cond_1
    iput-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->g:Lcom/google/maps/api/android/lib6/gmm6/l/cc;

    iput-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->i:Ljava/util/List;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->i:Ljava/util/List;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method protected c(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)I
    .locals 4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->m()F

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->c:Lcom/google/maps/api/android/lib6/gmm6/o/au;

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/b/b;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v2

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/f/f;->a:Lcom/google/maps/api/android/lib6/gmm6/l/av;

    invoke-virtual {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/au;->a(Lcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/l/av;)Lcom/google/maps/api/android/lib6/gmm6/o/at;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/at;->a(F)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    float-to-int v0, v0

    goto :goto_0
.end method

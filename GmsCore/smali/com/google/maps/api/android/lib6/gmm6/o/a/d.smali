.class final Lcom/google/maps/api/android/lib6/gmm6/o/a/d;
.super Lcom/google/maps/api/android/lib6/gmm6/n/f;


# instance fields
.field final d:Ljava/util/List;

.field private final e:Ljava/lang/Long;

.field private synthetic f:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;J)V
    .locals 2

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->f:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/n/f;-><init>(I)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->d:Ljava/util/List;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->e:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/a/b;)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->d:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 5

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    iget-object v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    invoke-interface {v2, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->f:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->f:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;)I

    move-result v3

    iget v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    sub-int/2addr v3, v4

    invoke-static {v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;I)I

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->f:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->f:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    invoke-static {v3}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;)I

    move-result v3

    iget v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->c:I

    sub-int v0, v3, v0

    invoke-static {v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;I)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method protected final synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 4

    const/4 v3, 0x0

    check-cast p1, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    check-cast p2, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    invoke-super {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a(Ljava/lang/Object;Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->f:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->f:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;)I

    move-result v1

    iget v2, p2, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;I)I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->f:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->f:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;)I

    move-result v1

    iget v2, p2, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->c:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->b(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;I)I

    iget-object v0, p2, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eqz v0, :cond_0

    iput v3, p2, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    iput v3, p2, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->c:I

    invoke-virtual {p0, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->a(Lcom/google/maps/api/android/lib6/gmm6/o/a/b;)V

    :cond_0
    return-void
.end method

.method public final c()V
    .locals 8

    new-instance v1, Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/n/f;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->b()Lcom/google/maps/api/android/lib6/gmm6/n/g;

    move-result-object v2

    :goto_0
    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/n/g;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/n/g;->a()Lcom/google/maps/api/android/lib6/gmm6/n/h;

    move-result-object v3

    iget-object v0, v3, Lcom/google/maps/api/android/lib6/gmm6/n/h;->a:Ljava/lang/Object;

    sget-object v4, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    if-eq v0, v4, :cond_2

    iget-object v0, v3, Lcom/google/maps/api/android/lib6/gmm6/n/h;->b:Ljava/lang/Object;

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    iget-object v4, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;

    if-eqz v4, :cond_0

    invoke-interface {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->a()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    iget-object v0, v3, Lcom/google/maps/api/android/lib6/gmm6/n/h;->a:Ljava/lang/Object;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->e:Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-static {v6, v7}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->b(J)Lcom/google/maps/api/android/lib6/gmm6/o/c/h;

    move-result-object v3

    invoke-interface {v4, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->f:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->f:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    invoke-static {v4}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;)I

    move-result v4

    iget v5, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;I)I

    const/4 v3, 0x0

    iput v3, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->b:I

    goto :goto_0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_3
    return-void
.end method

.method public final d()Lcom/google/maps/api/android/lib6/gmm6/n/h;
    .locals 2

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->b()Lcom/google/maps/api/android/lib6/gmm6/n/g;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/g;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/n/g;->a()Lcom/google/maps/api/android/lib6/gmm6/n/h;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final e()V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->f:Lcom/google/maps/api/android/lib6/gmm6/o/a/a;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->c(Lcom/google/maps/api/android/lib6/gmm6/o/a/a;)Lcom/google/g/a/d;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/a;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    new-instance v1, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;

    invoke-direct {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;-><init>(J)V

    invoke-virtual {p0, v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/a/d;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_0
    return-void

    :cond_0
    iput-wide v2, v0, Lcom/google/maps/api/android/lib6/gmm6/o/a/b;->d:J

    goto :goto_0
.end method

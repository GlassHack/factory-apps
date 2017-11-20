.class public abstract Lcom/google/maps/api/android/lib6/gmm6/i/e;
.super Ljava/lang/Object;


# instance fields
.field protected final a:Lcom/google/maps/api/android/lib6/gmm6/i/n;

.field b:Z


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/i/n;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/i/e;->a:Lcom/google/maps/api/android/lib6/gmm6/i/n;

    return-void
.end method

.method protected static a(FF)F
    .locals 6

    cmpl-float v0, p1, p0

    if-ltz v0, :cond_0

    sub-float v0, p1, p0

    const-wide v2, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v4, p0

    add-double/2addr v2, v4

    float-to-double v4, p1

    sub-double/2addr v2, v4

    double-to-float v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p1, p0}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->a(FF)F

    move-result v0

    neg-float v0, v0

    goto :goto_0
.end method


# virtual methods
.method protected abstract a(JLjava/util/LinkedList;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/i/f;
.end method

.method public final a(JLjava/util/LinkedList;ZLjava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/i/f;
    .locals 3

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/i/e;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->a()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->c()Z

    move-result v0

    if-eq p4, v0, :cond_3

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/i/f;->a:Lcom/google/maps/api/android/lib6/gmm6/i/f;

    goto :goto_0

    :cond_3
    invoke-virtual {p0, p1, p2, p3, p5}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->a(JLjava/util/LinkedList;Ljava/util/List;)Lcom/google/maps/api/android/lib6/gmm6/i/f;

    move-result-object v0

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/e;->b:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Gesture already active: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->b(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/e;->b:Z

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/e;->b:Z

    return v0
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract b(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
.end method

.method public final c(Lcom/google/maps/api/android/lib6/gmm6/i/k;)V
    .locals 3

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/e;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Gesture already inactive: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/e;->b:Z

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->d(Lcom/google/maps/api/android/lib6/gmm6/i/k;)V

    return-void
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected abstract d(Lcom/google/maps/api/android/lib6/gmm6/i/k;)V
.end method

.method public final e(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
    .locals 3

    iget-boolean v0, p0, Lcom/google/maps/api/android/lib6/gmm6/i/e;->b:Z

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Gesture is not active: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/i/e;->f(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z

    move-result v0

    return v0
.end method

.method protected abstract f(Lcom/google/maps/api/android/lib6/gmm6/i/k;)Z
.end method

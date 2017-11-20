.class public abstract Lcom/google/maps/api/android/lib6/gmm6/o/bt;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/b/h;


# instance fields
.field t:Lcom/google/maps/api/android/lib6/gmm6/o/bv;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method protected static a(Ljavax/microedition/khronos/opengles/GL10;I)V
    .locals 5

    const v4, 0xff00

    shr-int/lit8 v0, p1, 0x10

    and-int/2addr v0, v4

    shr-int/lit8 v1, p1, 0x8

    and-int/2addr v1, v4

    and-int v2, p1, v4

    shl-int/lit8 v3, p1, 0x8

    and-int/2addr v3, v4

    invoke-interface {p0, v1, v2, v3, v0}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    return-void
.end method


# virtual methods
.method protected B_()Z
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->t:Lcom/google/maps/api/android/lib6/gmm6/o/bv;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->t:Lcom/google/maps/api/android/lib6/gmm6/o/bv;

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bv;->a()V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public F_()V
    .locals 0

    return-void
.end method

.method protected final a(Lcom/google/maps/api/android/lib6/gmm6/o/j;)Lcom/google/maps/api/android/lib6/gmm6/o/i;
    .locals 2

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/i;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/google/maps/api/android/lib6/gmm6/o/k;

    invoke-direct {v0, p0, p1, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/i;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bt;Lcom/google/maps/api/android/lib6/gmm6/o/j;[Lcom/google/maps/api/android/lib6/gmm6/o/k;)V

    return-object v0
.end method

.method protected final a(Lcom/google/maps/api/android/lib6/gmm6/o/j;Ljava/util/Collection;Ljava/util/Collection;)Lcom/google/maps/api/android/lib6/gmm6/o/i;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/i;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/maps/api/android/lib6/gmm6/o/i;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bt;Lcom/google/maps/api/android/lib6/gmm6/o/j;Ljava/util/Collection;Ljava/util/Collection;)V

    return-object v0
.end method

.method protected final varargs a(Lcom/google/maps/api/android/lib6/gmm6/o/j;[Lcom/google/maps/api/android/lib6/gmm6/o/k;)Lcom/google/maps/api/android/lib6/gmm6/o/i;
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/i;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/o/i;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/bt;Lcom/google/maps/api/android/lib6/gmm6/o/j;[Lcom/google/maps/api/android/lib6/gmm6/o/k;)V

    return-object v0
.end method

.method public a(I)V
    .locals 0

    return-void
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    return-void
.end method

.method public abstract a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/t;)V
    .locals 0

    return-void
.end method

.method public a(Z)V
    .locals 0

    return-void
.end method

.method public a(FFLcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public a(Ljava/util/List;)Z
    .locals 1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->i()Lcom/google/maps/api/android/lib6/gmm6/o/j;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->a(Lcom/google/maps/api/android/lib6/gmm6/o/j;)Lcom/google/maps/api/android/lib6/gmm6/o/i;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;->b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    return-void
.end method

.method public a_(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    return-void
.end method

.method public b(FFLcom/google/maps/api/android/lib6/gmm6/l/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public d(FFLcom/google/maps/api/android/lib6/gmm6/o/b/b;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
.end method

.method public f()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected i()Lcom/google/maps/api/android/lib6/gmm6/o/j;
    .locals 1

    sget-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/j;->i:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    return-object v0
.end method

.method public j()Lcom/google/maps/api/android/lib6/gmm6/o/aw;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public x_()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public y_()V
    .locals 0

    return-void
.end method

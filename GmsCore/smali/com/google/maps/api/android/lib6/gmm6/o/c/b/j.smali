.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/b/ap;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

.field private final c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/l/ah;I)V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;-><init>(I)V

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/ah;->i()Lcom/google/maps/api/android/lib6/gmm6/l/p;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    const/high16 v0, 0x10000

    mul-int/2addr v0, p2

    div-int/lit8 v0, v0, 0x20

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1, v2, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1, v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(II)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1, v0, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->a(II)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 4

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->c()Lcom/google/maps/api/android/lib6/gmm6/l/h;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->b:Lcom/google/maps/api/android/lib6/gmm6/l/p;

    invoke-virtual {v2}, Lcom/google/maps/api/android/lib6/gmm6/l/p;->f()I

    move-result v2

    int-to-float v2, v2

    invoke-static {p1, p2, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/ac;->a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/l/h;F)V

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v0}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/e/b;)V
    .locals 0

    return-void
.end method

.method public final a(Ljava/util/Collection;)V
    .locals 0

    return-void
.end method

.method public final a(Z)V
    .locals 0

    return-void
.end method

.method public final a()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/g;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    return-void
.end method

.method public final b()Lcom/google/maps/api/android/lib6/gmm6/l/ah;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->a:Lcom/google/maps/api/android/lib6/gmm6/l/ah;

    return-object v0
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 4

    const/4 v2, 0x1

    iget v0, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-le v0, v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/16 v1, 0x303

    invoke-interface {v0, v2, v1}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    const/16 v3, 0x1e01

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->q()V

    iget-object v1, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v1, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->a()Lcom/google/maps/api/android/lib6/gmm6/o/c/q;

    move-result-object v1

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/c/q;->a:[Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    const/16 v2, 0x14

    aget-object v1, v1, v2

    invoke-virtual {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    goto :goto_0
.end method

.method public final b(Ljava/util/Collection;)V
    .locals 0

    return-void
.end method

.method public final c()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final f()V
    .locals 0

    return-void
.end method

.method public final g()I
    .locals 1

    const/4 v0, -0x1

    return v0
.end method

.method public final h()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->c()I

    move-result v0

    return v0
.end method

.method public final i()I
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/j;->c:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/i;->d()I

    move-result v0

    return v0
.end method

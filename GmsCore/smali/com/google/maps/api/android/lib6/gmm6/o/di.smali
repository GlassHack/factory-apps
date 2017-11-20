.class final Lcom/google/maps/api/android/lib6/gmm6/o/di;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/k;


# instance fields
.field private final a:Ljava/util/Set;


# direct methods
.method public constructor <init>(Ljava/util/Set;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/c/c/fc;->a(Ljava/util/Collection;)Lcom/google/c/c/fc;

    move-result-object v0

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/di;->a:Ljava/util/Set;

    return-void
.end method


# virtual methods
.method public final a()Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/di;->a:Ljava/util/Set;

    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;Lcom/google/maps/api/android/lib6/gmm6/l/h;)V
    .locals 5

    const/16 v4, 0x80

    const/16 v3, 0x1e01

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    iget-object v1, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    sget-object v2, Lcom/google/maps/api/android/lib6/gmm6/o/j;->e:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-ne v1, v2, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->w()V

    invoke-interface {v0, v3, v3, v3}, Ljavax/microedition/khronos/opengles/GL10;->glStencilOp(III)V

    const/16 v1, 0x207

    const/16 v2, 0xff

    invoke-interface {v0, v1, v2, v4}, Ljavax/microedition/khronos/opengles/GL10;->glStencilFunc(III)V

    invoke-interface {v0, v4}, Ljavax/microedition/khronos/opengles/GL10;->glStencilMask(I)V

    const/16 v1, 0x2300

    const/16 v2, 0x2200

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glTexEnvx(III)V

    const v1, -0x9f9fa0

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/d;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 2

    iget-object v0, p2, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    sget-object v1, Lcom/google/maps/api/android/lib6/gmm6/o/j;->e:Lcom/google/maps/api/android/lib6/gmm6/o/j;

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->x()V

    :cond_0
    return-void
.end method

.method public final bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aq;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/b/h;


# static fields
.field static final a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aq;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aq;

    invoke-direct {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aq;-><init>()V

    sput-object v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aq;->a:Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 3

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->c:Lcom/google/maps/api/android/lib6/gmm6/o/i;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/i;->a()Lcom/google/maps/api/android/lib6/gmm6/o/bt;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/x;

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/x;->h()Lcom/google/maps/api/android/lib6/gmm6/l/av;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->f()Z

    move-result v2

    sput-boolean v2, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aq;->b:Z

    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/l/av;->a(Ljavax/microedition/khronos/opengles/GL10;)V

    const/high16 v0, 0x40a00000    # 5.0f

    invoke-interface {v1, v0}, Ljavax/microedition/khronos/opengles/GL10;->glLineWidth(F)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->g:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    :cond_0
    return-void
.end method

.method public static c(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 4

    const/high16 v1, 0x10000

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->A()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    invoke-interface {v0, v1, v1, v1, v1}, Ljavax/microedition/khronos/opengles/GL10;->glColor4x(IIII)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->d:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->p()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->r()V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-virtual {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->B()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 4

    sget-boolean v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/aq;->b:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v0, v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    :cond_0
    return-void
.end method

.method public final a_(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    return-void
.end method

.method public final b(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V
    .locals 0

    return-void
.end method

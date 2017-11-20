.class public Lcom/google/maps/api/android/lib6/gmm6/o/bz;
.super Lcom/google/maps/api/android/lib6/gmm6/o/bt;


# instance fields
.field a:[I

.field private b:Lcom/google/maps/api/android/lib6/gmm6/o/bu;


# direct methods
.method public constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/o/bu;)V
    .locals 1

    invoke-direct {p0}, Lcom/google/maps/api/android/lib6/gmm6/o/bt;-><init>()V

    sget v0, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->g:I

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bz;->a:[I

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bz;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/b/b;Lcom/google/maps/api/android/lib6/gmm6/o/bi;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bz;->a:[I

    iget-object v1, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->a:Lcom/google/maps/api/android/lib6/gmm6/o/bh;

    invoke-virtual {v1}, Lcom/google/maps/api/android/lib6/gmm6/o/bh;->a()I

    move-result v1

    aget v0, v0, v1

    iget v1, p3, Lcom/google/maps/api/android/lib6/gmm6/o/bi;->b:I

    if-gtz v1, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->y()Ljavax/microedition/khronos/opengles/GL10;

    move-result-object v1

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPushMatrix()V

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glLoadIdentity()V

    const/high16 v2, -0x40800000    # -1.0f

    invoke-interface {v1, v3, v3, v2}, Ljavax/microedition/khronos/opengles/GL10;->glTranslatef(FFF)V

    const/16 v2, 0x302

    const/16 v3, 0x303

    invoke-interface {v1, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glBlendFunc(II)V

    invoke-static {v1, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/d;->a(Ljavax/microedition/khronos/opengles/GL10;I)V

    iget-object v0, p1, Lcom/google/maps/api/android/lib6/gmm6/o/c/h;->f:Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;

    invoke-virtual {v0, p1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/a/n;->d(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;)V

    const/4 v0, 0x5

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-interface {v1, v0, v2, v3}, Ljavax/microedition/khronos/opengles/GL10;->glDrawArrays(III)V

    invoke-interface {v1}, Ljavax/microedition/khronos/opengles/GL10;->glPopMatrix()V

    goto :goto_0
.end method

.method public b(I)V
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bz;->a:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->fill([II)V

    return-void
.end method

.method public final e()Lcom/google/maps/api/android/lib6/gmm6/o/bu;
    .locals 1

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/bz;->b:Lcom/google/maps/api/android/lib6/gmm6/o/bu;

    return-object v0
.end method

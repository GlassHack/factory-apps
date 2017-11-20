.class public final Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/maps/api/android/lib6/gmm6/o/c/b/u;


# instance fields
.field private final a:Landroid/graphics/Bitmap;

.field private final b:Lcom/google/maps/api/android/lib6/gmm6/o/c/p;

.field private final c:I

.field private final d:I


# direct methods
.method constructor <init>(Landroid/graphics/Bitmap;FLcom/google/maps/api/android/lib6/gmm6/o/c/p;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/p;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->c:I

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    float-to-int v0, v0

    iput v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->d:I

    return-void
.end method


# virtual methods
.method public final a()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->c:I

    int-to-float v0, v0

    return v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/bh;)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;
    .locals 2

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/p;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/p;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->e()V

    :cond_0
    return-object v0
.end method

.method public final a(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;Lcom/google/maps/api/android/lib6/gmm6/o/bh;)Lcom/google/maps/api/android/lib6/gmm6/o/c/o;
    .locals 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/p;

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v3}, Lcom/google/maps/api/android/lib6/gmm6/o/c/p;->c(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    if-nez v0, :cond_0

    new-instance v0, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;

    invoke-direct {v0, p1, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;-><init>(Lcom/google/maps/api/android/lib6/gmm6/o/c/h;B)V

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->c(Z)V

    invoke-virtual {v0, v2}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->d(Z)V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x9

    if-lt v3, v4, :cond_1

    :goto_0
    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/google/maps/api/android/lib6/gmm6/a/b;->c:Z

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->a(Landroid/graphics/Bitmap;)V

    :goto_1
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->b:Lcom/google/maps/api/android/lib6/gmm6/o/c/p;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2, v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/p;->b(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {v0}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->e()V

    return-object v0

    :cond_1
    move v1, v2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/o/c/o;->b(Landroid/graphics/Bitmap;)V

    goto :goto_1
.end method

.method public final b()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->d:I

    int-to-float v0, v0

    return v0
.end method

.method public final c()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final d()F
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final e()F
    .locals 1

    iget v0, p0, Lcom/google/maps/api/android/lib6/gmm6/o/c/b/q;->d:I

    int-to-float v0, v0

    return v0
.end method

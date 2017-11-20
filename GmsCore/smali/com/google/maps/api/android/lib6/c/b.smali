.class final Lcom/google/maps/api/android/lib6/c/b;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Lcom/google/android/gms/maps/internal/bt;

.field private synthetic c:Lcom/google/maps/api/android/lib6/c/a;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/a;Landroid/graphics/Bitmap;Lcom/google/android/gms/maps/internal/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/b;->c:Lcom/google/maps/api/android/lib6/c/a;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/b;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/c/b;->b:Lcom/google/android/gms/maps/internal/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/b;->c:Lcom/google/maps/api/android/lib6/c/a;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/a;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/b;->c:Lcom/google/maps/api/android/lib6/c/a;

    iget-object v1, v1, Lcom/google/maps/api/android/lib6/c/a;->a:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    if-ne v2, v0, :cond_0

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/b;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    if-eq v2, v1, :cond_1

    :cond_0
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    move-object v1, v0

    :goto_0
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/b;->c:Lcom/google/maps/api/android/lib6/c/a;

    iget-object v0, v0, Lcom/google/maps/api/android/lib6/c/a;->a:Landroid/view/View;

    check-cast v0, Landroid/view/TextureView;

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->getBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/b;->c:Lcom/google/maps/api/android/lib6/c/a;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/b;->b:Lcom/google/android/gms/maps/internal/bt;

    invoke-virtual {v0, v2, v1}, Lcom/google/maps/api/android/lib6/c/a;->a(Lcom/google/android/gms/maps/internal/bt;Landroid/graphics/Bitmap;)V

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/b;->a:Landroid/graphics/Bitmap;

    move-object v1, v0

    goto :goto_0
.end method

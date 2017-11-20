.class public final Lcom/google/maps/api/android/lib6/gmm6/c/x;
.super Lcom/google/maps/api/android/lib6/c/a;


# direct methods
.method public constructor <init>(Landroid/view/View;Lcom/google/maps/api/android/lib6/c/y;ZLjava/util/concurrent/Executor;)V
    .locals 0

    check-cast p2, Landroid/view/View;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/maps/api/android/lib6/c/a;-><init>(Landroid/view/View;Landroid/view/View;ZLjava/util/concurrent/Executor;)V

    return-void
.end method

.method static synthetic a(Lcom/google/maps/api/android/lib6/gmm6/c/x;Lcom/google/android/gms/maps/internal/bt;Landroid/graphics/Bitmap;)V
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/google/maps/api/android/lib6/gmm6/c/x;->a(Lcom/google/android/gms/maps/internal/bt;Landroid/graphics/Bitmap;)V

    return-void
.end method


# virtual methods
.method protected final a(Landroid/graphics/Bitmap;Lcom/google/android/gms/maps/internal/bt;)V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/x;->a:Landroid/view/View;

    check-cast v0, Lcom/google/maps/api/android/lib6/c/y;

    invoke-interface {v0, p1}, Lcom/google/maps/api/android/lib6/c/y;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/gmm6/h;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/x;->b:Ljava/util/concurrent/Executor;

    new-instance v2, Lcom/google/maps/api/android/lib6/gmm6/c/y;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/maps/api/android/lib6/gmm6/c/y;-><init>(Lcom/google/maps/api/android/lib6/gmm6/c/x;Lcom/google/android/gms/maps/internal/bt;Landroid/graphics/Bitmap;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

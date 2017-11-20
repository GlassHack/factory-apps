.class final Lcom/google/maps/api/android/lib6/gmm6/c/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/android/gms/maps/internal/bt;

.field private synthetic b:Landroid/graphics/Bitmap;

.field private synthetic c:Lcom/google/maps/api/android/lib6/gmm6/c/x;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/x;Lcom/google/android/gms/maps/internal/bt;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/y;->c:Lcom/google/maps/api/android/lib6/gmm6/c/x;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/y;->a:Lcom/google/android/gms/maps/internal/bt;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/gmm6/c/y;->b:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/y;->c:Lcom/google/maps/api/android/lib6/gmm6/c/x;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/y;->a:Lcom/google/android/gms/maps/internal/bt;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/y;->b:Landroid/graphics/Bitmap;

    invoke-static {v0, v1, v2}, Lcom/google/maps/api/android/lib6/gmm6/c/x;->a(Lcom/google/maps/api/android/lib6/gmm6/c/x;Lcom/google/android/gms/maps/internal/bt;Landroid/graphics/Bitmap;)V

    return-void
.end method

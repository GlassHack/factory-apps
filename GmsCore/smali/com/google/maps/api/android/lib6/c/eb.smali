.class final Lcom/google/maps/api/android/lib6/c/eb;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Landroid/graphics/Bitmap;

.field private synthetic b:Lcom/google/android/gms/maps/internal/bt;

.field private synthetic c:Lcom/google/maps/api/android/lib6/c/dw;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/dw;Landroid/graphics/Bitmap;Lcom/google/android/gms/maps/internal/bt;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/eb;->c:Lcom/google/maps/api/android/lib6/c/dw;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/eb;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/google/maps/api/android/lib6/c/eb;->b:Lcom/google/android/gms/maps/internal/bt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/eb;->c:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/dw;->c(Lcom/google/maps/api/android/lib6/c/dw;)Lcom/google/maps/api/android/lib6/c/ba;

    move-result-object v0

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/c/eb;->a:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/c/eb;->b:Lcom/google/android/gms/maps/internal/bt;

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/c/ba;->b(Landroid/graphics/Bitmap;Lcom/google/android/gms/maps/internal/bt;)V

    return-void
.end method

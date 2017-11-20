.class final Lcom/google/maps/api/android/lib6/gmm6/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

.field private synthetic b:Lcom/google/maps/api/android/lib6/gmm6/c/c;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/gmm6/c/c;Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/c/c;

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/d;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/gmm6/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/c/c;

    iget-object v1, p0, Lcom/google/maps/api/android/lib6/gmm6/c/d;->b:Lcom/google/maps/api/android/lib6/gmm6/c/c;

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->a(Lcom/google/maps/api/android/lib6/gmm6/c/c;)Lcom/google/maps/api/android/lib6/gmm6/c/ao;

    move-result-object v1

    iget-object v2, p0, Lcom/google/maps/api/android/lib6/gmm6/c/d;->a:Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    const/high16 v3, -0x40800000    # -1.0f

    invoke-virtual {v1, v2, v3}, Lcom/google/maps/api/android/lib6/gmm6/c/ao;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;F)Lcom/google/maps/api/android/lib6/gmm6/o/b/c;

    move-result-object v1

    invoke-static {v1}, Lcom/google/maps/api/android/lib6/gmm6/c/e;->a(Lcom/google/maps/api/android/lib6/gmm6/o/b/c;)Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/maps/api/android/lib6/gmm6/c/c;->a(Lcom/google/maps/api/android/lib6/gmm6/c/c;Lcom/google/android/gms/maps/model/CameraPosition;)V

    return-void
.end method

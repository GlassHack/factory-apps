.class final Lcom/google/maps/api/android/lib6/c/ec;
.super Lcom/google/android/gms/maps/internal/ab;


# instance fields
.field private final a:Lcom/google/maps/api/android/lib6/c/cc;

.field private final b:Lcom/google/maps/api/android/lib6/c/cw;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/cw;Lcom/google/maps/api/android/lib6/c/cc;)V
    .locals 0

    invoke-direct {p0}, Lcom/google/android/gms/maps/internal/ab;-><init>()V

    iput-object p2, p0, Lcom/google/maps/api/android/lib6/c/ec;->a:Lcom/google/maps/api/android/lib6/c/cc;

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/ec;->b:Lcom/google/maps/api/android/lib6/c/cw;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/maps/model/CameraPosition;)V
    .locals 6

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/google/maps/api/android/lib6/c/ec;->a:Lcom/google/maps/api/android/lib6/c/cc;

    iget v0, p1, Lcom/google/android/gms/maps/model/CameraPosition;->b:F

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/c/ec;->b:Lcom/google/maps/api/android/lib6/c/cw;

    iget-object v5, p1, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v4, v5}, Lcom/google/maps/api/android/lib6/c/cw;->a(Lcom/google/android/gms/maps/model/LatLng;)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcom/google/maps/api/android/lib6/c/cc;->b(Z)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/ec;->a:Lcom/google/maps/api/android/lib6/c/cc;

    iget v3, p1, Lcom/google/android/gms/maps/model/CameraPosition;->b:F

    iget-object v4, p0, Lcom/google/maps/api/android/lib6/c/ec;->b:Lcom/google/maps/api/android/lib6/c/cw;

    invoke-interface {v4}, Lcom/google/maps/api/android/lib6/c/cw;->d()F

    move-result v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/google/maps/api/android/lib6/c/cc;->c(Z)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

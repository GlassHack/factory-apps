.class final Lcom/google/maps/api/android/lib6/c/dz;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private synthetic a:Lcom/google/maps/api/android/lib6/c/dw;


# direct methods
.method constructor <init>(Lcom/google/maps/api/android/lib6/c/dw;)V
    .locals 0

    iput-object p1, p0, Lcom/google/maps/api/android/lib6/c/dz;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dz;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/dw;->a(Lcom/google/maps/api/android/lib6/c/dw;)Lcom/google/maps/api/android/lib6/c/bu;

    move-result-object v0

    sget-object v1, Lcom/google/maps/api/android/lib6/c/bw;->aV:Lcom/google/maps/api/android/lib6/c/bw;

    invoke-interface {v0, v1}, Lcom/google/maps/api/android/lib6/c/bu;->b(Lcom/google/maps/api/android/lib6/c/bw;)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dz;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/dw;->b(Lcom/google/maps/api/android/lib6/c/dw;)Lcom/google/maps/api/android/lib6/c/cw;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/maps/api/android/lib6/c/cw;->c()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/maps/model/CameraPosition;

    iget-object v2, v0, Lcom/google/android/gms/maps/model/CameraPosition;->a:Lcom/google/android/gms/maps/model/LatLng;

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->b:F

    invoke-direct {v1, v2, v0, v3, v3}, Lcom/google/android/gms/maps/model/CameraPosition;-><init>(Lcom/google/android/gms/maps/model/LatLng;FFF)V

    iget-object v0, p0, Lcom/google/maps/api/android/lib6/c/dz;->a:Lcom/google/maps/api/android/lib6/c/dw;

    invoke-static {v0}, Lcom/google/maps/api/android/lib6/c/dw;->b(Lcom/google/maps/api/android/lib6/c/dw;)Lcom/google/maps/api/android/lib6/c/cw;

    move-result-object v0

    const/16 v2, 0x190

    invoke-interface {v0, v1, v2}, Lcom/google/maps/api/android/lib6/c/cw;->a(Lcom/google/android/gms/maps/model/CameraPosition;I)V

    return-void
.end method

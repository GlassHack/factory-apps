.class Lcom/google/android/gms/internal/aq$2;
.super Lcom/google/android/gms/internal/aq$b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/gms/internal/aq;->setMirroringSessionCallbacks(Lcom/google/android/gms/common/api/GoogleApiClient;Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic vp:Lcom/google/android/gms/internal/aq;

.field final synthetic vq:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/aq;Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/aq$2;->vp:Lcom/google/android/gms/internal/aq;

    iput-object p2, p0, Lcom/google/android/gms/internal/aq$2;->vq:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;

    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/aq$b;-><init>(Lcom/google/android/gms/internal/aq;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a(Lcom/google/android/gms/common/api/Api$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    check-cast p1, Lcom/google/android/gms/internal/ar;

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/aq$2;->a(Lcom/google/android/gms/internal/ar;)V

    return-void
.end method

.method protected a(Lcom/google/android/gms/internal/ar;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/google/android/gms/internal/aq$2;->vq:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;)V

    return-void
.end method

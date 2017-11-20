.class final Lcom/google/android/gms/internal/ar$a;
.super Lcom/google/android/gms/internal/as$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/internal/ar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "a"
.end annotation


# instance fields
.field final synthetic vw:Lcom/google/android/gms/internal/ar;

.field private final vx:Lcom/google/android/gms/internal/ar;

.field private vy:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ar;Lcom/google/android/gms/internal/ar;Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ar$a;->vw:Lcom/google/android/gms/internal/ar;

    invoke-direct {p0}, Lcom/google/android/gms/internal/as$a;-><init>()V

    iput-object p2, p0, Lcom/google/android/gms/internal/ar$a;->vx:Lcom/google/android/gms/internal/ar;

    iput-object p3, p0, Lcom/google/android/gms/internal/ar$a;->vy:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

    return-void
.end method


# virtual methods
.method public b(Lcom/google/android/gms/cast/CastDevice;)V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ar$a;->vy:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

    invoke-interface {v0, p1}, Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;->onCastMirroringConnectedWithDevice(Lcom/google/android/gms/cast/CastDevice;)V

    return-void
.end method

.method public onConnected()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ar$a;->vy:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

    invoke-interface {v0}, Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;->onCastMirroringConnected()V

    return-void
.end method

.method public onDisconnected()V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ar$a;->vw:Lcom/google/android/gms/internal/ar;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ar;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/at;

    invoke-interface {v0}, Lcom/google/android/gms/internal/at;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ar$a;->vx:Lcom/google/android/gms/internal/ar;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object v0, p0, Lcom/google/android/gms/internal/ar$a;->vy:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

    invoke-interface {v0}, Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;->onCastMirroringDisconnected()V

    iput-object v3, p0, Lcom/google/android/gms/internal/ar$a;->vy:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

    iget-object v0, p0, Lcom/google/android/gms/internal/ar$a;->vw:Lcom/google/android/gms/internal/ar;

    invoke-static {v0, v3}, Lcom/google/android/gms/internal/ar;->a(Lcom/google/android/gms/internal/ar;Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;)Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

    return-void
.end method

.method public onError(I)V
    .locals 2
    .param p1, "errorCode"    # I

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/ar$a;->vy:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

    const/4 v1, 0x1

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;->onCastMirroringError(II)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar$a;->onDisconnected()V

    return-void
.end method

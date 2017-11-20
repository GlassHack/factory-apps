.class public Lcom/google/android/gms/internal/ar;
.super Lcom/google/android/gms/common/internal/c;

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/internal/ar$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/internal/c",
        "<",
        "Lcom/google/android/gms/internal/at;",
        ">;",
        "Landroid/os/IBinder$DeathRecipient;"
    }
.end annotation


# instance fields
.field private vt:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

.field private vu:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;

.field private final vv:Lcom/google/android/gms/internal/au;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;)V
    .locals 6

    const/4 v5, 0x0

    check-cast v5, [Ljava/lang/String;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/internal/c;-><init>(Landroid/content/Context;Landroid/os/Looper;Lcom/google/android/gms/common/api/GoogleApiClient$ConnectionCallbacks;Lcom/google/android/gms/common/api/GoogleApiClient$OnConnectionFailedListener;[Ljava/lang/String;)V

    new-instance v0, Lcom/google/android/gms/internal/ar$1;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ar$1;-><init>(Lcom/google/android/gms/internal/ar;)V

    iput-object v0, p0, Lcom/google/android/gms/internal/ar;->vv:Lcom/google/android/gms/internal/au;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ar;Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;)Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ar;->vt:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

    return-object p1
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ar;)Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->vu:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;ZLjava/lang/String;Landroid/view/Surface;I)V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->vt:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-interface {p1, v0, v6}, Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;->onCastMirroringError(II)V

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar;->V()V

    new-instance v1, Lcom/google/android/gms/internal/ar$a;

    invoke-direct {v1, p0, p0, p1}, Lcom/google/android/gms/internal/ar$a;-><init>(Lcom/google/android/gms/internal/ar;Lcom/google/android/gms/internal/ar;Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;)V

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/at;

    invoke-interface {v0}, Lcom/google/android/gms/internal/at;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, p0, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/at;

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/google/android/gms/internal/at;->a(Lcom/google/android/gms/internal/as;ZLjava/lang/String;Landroid/view/Surface;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    iput-object p1, p0, Lcom/google/android/gms/internal/ar;->vt:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-interface {p1, v6, v6}, Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;->onCastMirroringError(II)V

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/ar;->vu:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringSessionCallbacks;

    return-void
.end method

.method protected a(Lcom/google/android/gms/common/internal/i;Lcom/google/android/gms/common/internal/c$d;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const v1, 0x5d4044

    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p2, v1, v2, v0}, Lcom/google/android/gms/common/internal/i;->j(Lcom/google/android/gms/common/internal/h;ILjava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/as;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/at;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/at;->a(Lcom/google/android/gms/internal/as;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CastMirroringClientImpl"

    const-string v2, "Could not end Mirroring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Lcom/google/android/gms/internal/as;Ljava/lang/String;Landroid/app/PendingIntent;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/at;

    iget-object v1, p0, Lcom/google/android/gms/internal/ar;->vv:Lcom/google/android/gms/internal/au;

    invoke-interface {v0, p1, v1, p2, p3}, Lcom/google/android/gms/internal/at;->a(Lcom/google/android/gms/internal/as;Lcom/google/android/gms/internal/au;Ljava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CastMirroringClientImpl"

    const-string v2, "Could not start Mirroring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public b(Lcom/google/android/gms/internal/as;)V
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/at;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/at;->b(Lcom/google/android/gms/internal/as;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    const-string v1, "CastMirroringClientImpl"

    const-string v2, "Could not query Mirroring"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public binderDied()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->vt:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

    invoke-interface {v0, v1, v1}, Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;->onCastMirroringError(II)V

    return-void
.end method

.method public destroy()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->vt:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

    if-nez v0, :cond_0

    const-string v0, "CastMirroringClientImpl"

    const-string v1, "attempt to destroy without a registered callbacks."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/at;

    invoke-interface {v0}, Lcom/google/android/gms/internal/at;->destroy()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/google/android/gms/internal/ar;->vt:Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;

    invoke-interface {v0, v1, v1}, Lcom/google/android/gms/cast_mirroring/CastMirroring$CastMirroringCallbacks;->onCastMirroringError(II)V

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    :try_start_0
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ar;->cM()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/at;

    invoke-interface {v0}, Lcom/google/android/gms/internal/at;->disconnect()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-super {p0}, Lcom/google/android/gms/common/internal/c;->disconnect()V

    throw v0
.end method

.method protected getServiceDescriptor()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast_mirroring.internal.ICastMirroringService"

    return-object v0
.end method

.method protected getStartServiceAction()Ljava/lang/String;
    .locals 1

    const-string v0, "com.google.android.gms.cast_mirroring.service.START"

    return-object v0
.end method

.method public synthetic i(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ar;->p(Landroid/os/IBinder;)Lcom/google/android/gms/internal/at;

    move-result-object v0

    return-object v0
.end method

.method public p(Landroid/os/IBinder;)Lcom/google/android/gms/internal/at;
    .locals 1

    invoke-static {p1}, Lcom/google/android/gms/internal/at$a;->r(Landroid/os/IBinder;)Lcom/google/android/gms/internal/at;

    move-result-object v0

    return-object v0
.end method

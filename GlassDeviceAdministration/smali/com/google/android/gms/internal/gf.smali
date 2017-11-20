.class public Lcom/google/android/gms/internal/gf;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# instance fields
.field private Qc:Lcom/google/android/gms/internal/gi;

.field private final Qm:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

.field private Qn:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/gf;->Qm:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/gf;->Qc:Lcom/google/android/gms/internal/gi;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gf;->Qn:Z

    return-void
.end method


# virtual methods
.method public a(Lcom/google/android/gms/internal/gi;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/gf;->Qc:Lcom/google/android/gms/internal/gi;

    return-void
.end method

.method public l(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/gf;->Qn:Z

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/gf;->Qc:Lcom/google/android/gms/internal/gi;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gi;->m(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gf;->Qn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gf;->Qm:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gf;->Qm:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    invoke-interface {v0}, Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;->onLoggerConnected()V

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/gf;->Qn:Z

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/gf;->Qc:Lcom/google/android/gms/internal/gi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gi;->m(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/gf;->Qn:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/gf;->Qm:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/gf;->Qm:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;->onLoggerFailedConnectionWithResolution(Landroid/app/PendingIntent;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/gf;->Qn:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/gf;->Qm:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    invoke-interface {v0}, Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;->onLoggerFailedConnection()V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/gf;->Qc:Lcom/google/android/gms/internal/gi;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/gi;->m(Z)V

    return-void
.end method

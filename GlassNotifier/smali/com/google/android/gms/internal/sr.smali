.class public Lcom/google/android/gms/internal/sr;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
.implements Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;


# instance fields
.field private aHX:Lcom/google/android/gms/internal/su;

.field private final aIh:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

.field private aIi:Z


# direct methods
.method public constructor <init>(Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/sr;->aIh:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/internal/sr;->aHX:Lcom/google/android/gms/internal/su;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/internal/sr;->aIi:Z

    return-void
.end method


# virtual methods
.method public V(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/google/android/gms/internal/sr;->aIi:Z

    return-void
.end method

.method public a(Lcom/google/android/gms/internal/su;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/sr;->aHX:Lcom/google/android/gms/internal/su;

    return-void
.end method

.method public onConnected(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "connectionHint"    # Landroid/os/Bundle;

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->aHX:Lcom/google/android/gms/internal/su;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/su;->W(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/sr;->aIi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->aIh:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->aIh:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    invoke-interface {v0}, Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;->onLoggerConnected()V

    :cond_0
    iput-boolean v1, p0, Lcom/google/android/gms/internal/sr;->aIi:Z

    return-void
.end method

.method public onConnectionFailed(Lcom/google/android/gms/common/ConnectionResult;)V
    .locals 2
    .param p1, "result"    # Lcom/google/android/gms/common/ConnectionResult;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->aHX:Lcom/google/android/gms/internal/su;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/su;->W(Z)V

    iget-boolean v0, p0, Lcom/google/android/gms/internal/sr;->aIi:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->aIh:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->hasResolution()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->aIh:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    invoke-virtual {p1}, Lcom/google/android/gms/common/ConnectionResult;->getResolution()Landroid/app/PendingIntent;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;->onLoggerFailedConnectionWithResolution(Landroid/app/PendingIntent;)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/sr;->aIi:Z

    return-void

    :cond_1
    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->aIh:Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;

    invoke-interface {v0}, Lcom/google/android/gms/playlog/PlayLogger$LoggerCallbacks;->onLoggerFailedConnection()V

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/sr;->aHX:Lcom/google/android/gms/internal/su;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/su;->W(Z)V

    return-void
.end method

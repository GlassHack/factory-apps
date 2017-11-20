.class public final Lcom/google/android/location/geofencer/service/al;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/location/geofencer/service/f;


# instance fields
.field private final a:Lcom/google/android/gms/location/internal/g;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/location/internal/g;)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/google/android/location/geofencer/service/al;->a:Lcom/google/android/gms/location/internal/g;

    .line 18
    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 2

    .prologue
    .line 56
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "onRemoveAllGeofences not implemented in remote side."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final a(ILandroid/app/PendingIntent;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/al;->a:Lcom/google/android/gms/location/internal/g;

    if-eqz v0, :cond_0

    .line 47
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/al;->a:Lcom/google/android/gms/location/internal/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/location/internal/g;->a(ILandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 52
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(I[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/al;->a:Lcom/google/android/gms/location/internal/g;

    if-eqz v0, :cond_0

    .line 24
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/al;->a:Lcom/google/android/gms/location/internal/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/location/internal/g;->a(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final b(I[Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/al;->a:Lcom/google/android/gms/location/internal/g;

    if-eqz v0, :cond_0

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/google/android/location/geofencer/service/al;->a:Lcom/google/android/gms/location/internal/g;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/location/internal/g;->b(I[Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

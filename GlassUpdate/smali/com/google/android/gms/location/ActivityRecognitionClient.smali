.class public Lcom/google/android/gms/location/ActivityRecognitionClient;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/GooglePlayServicesClient;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final FM:Lcom/google/android/gms/internal/dh;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "connectedListener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;
    .param p3, "connectionFailedListener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/google/android/gms/internal/dh;

    const-string v1, "activity_recognition"

    invoke-direct {v0, p1, p2, p3, v1}, Lcom/google/android/gms/internal/dh;-><init>(Landroid/content/Context;Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->FM:Lcom/google/android/gms/internal/dh;

    return-void
.end method


# virtual methods
.method public connect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->FM:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dh;->connect()V

    return-void
.end method

.method public disconnect()V
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->FM:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dh;->disconnect()V

    return-void
.end method

.method public isConnected()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->FM:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dh;->isConnected()Z

    move-result v0

    return v0
.end method

.method public isConnecting()Z
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->FM:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/dh;->isConnecting()Z

    move-result v0

    return v0
.end method

.method public isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->FM:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dh;->isConnectionCallbacksRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)Z

    move-result v0

    return v0
.end method

.method public isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->FM:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dh;->isConnectionFailedListenerRegistered(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)Z

    move-result v0

    return v0
.end method

.method public registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->FM:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dh;->registerConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->FM:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dh;->registerConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

.method public removeActivityUpdates(Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "callbackIntent"    # Landroid/app/PendingIntent;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->FM:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dh;->removeActivityUpdates(Landroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public requestActivityUpdates(JLandroid/app/PendingIntent;)V
    .locals 2
    .param p1, "detectionIntervalMillis"    # J
    .param p3, "callbackIntent"    # Landroid/app/PendingIntent;

    .prologue
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->FM:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/android/gms/internal/dh;->requestActivityUpdates(JLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->FM:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dh;->unregisterConnectionCallbacks(Lcom/google/android/gms/common/GooglePlayServicesClient$ConnectionCallbacks;)V

    return-void
.end method

.method public unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;

    .prologue
    iget-object v0, p0, Lcom/google/android/gms/location/ActivityRecognitionClient;->FM:Lcom/google/android/gms/internal/dh;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/dh;->unregisterConnectionFailedListener(Lcom/google/android/gms/common/GooglePlayServicesClient$OnConnectionFailedListener;)V

    return-void
.end method

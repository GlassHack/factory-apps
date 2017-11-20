.class public abstract Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;
.super Lcom/android/location/provider/LocationProviderBase;
.source "CompanionLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$1;,
        Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$CompanionAppConnectivityBroadcastReceiver;,
        Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$RemoteCompanionServiceConnection;
    }
.end annotation


# static fields
.field private static final LOGGING_GROUP:Ljava/lang/String; = "bluetooth_location"


# instance fields
.field private final clock:Lcom/google/glass/time/Clock;

.field private final companionProviderName:Ljava/lang/String;

.field final controller:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private volatile isCompanionAppConnected:Z

.field isListening:Z
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private volatile lastStatusUpdateTime:J

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field protected minTimeMillis:J

.field private final publishedProviderName:Ljava/lang/String;

.field private volatile remoteCompanionService:Lcom/google/glass/companion/IRemoteCompanionService;

.field private shouldBeListening:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "publishedProviderName"    # Ljava/lang/String;
    .param p3, "companionProviderName"    # Ljava/lang/String;
    .param p4, "properties"    # Lcom/android/location/provider/ProviderPropertiesUnbundled;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 136
    invoke-direct {p0, p3, p4}, Lcom/android/location/provider/LocationProviderBase;-><init>(Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 45
    const-string v3, "bluetooth_location"

    invoke-static {p0, v3}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 75
    const-wide v3, 0x7fffffffffffffffL

    iput-wide v3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->minTimeMillis:J

    .line 80
    iput-boolean v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->shouldBeListening:Z

    .line 91
    iput-boolean v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    .line 138
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->clock:Lcom/google/glass/time/Clock;

    .line 139
    iput-object p2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->publishedProviderName:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->companionProviderName:Ljava/lang/String;

    .line 143
    invoke-static {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->createOnNewThread(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;)Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    move-result-object v3

    iput-object v3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->controller:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    .line 144
    new-instance v3, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$CompanionAppConnectivityBroadcastReceiver;

    iget-object v4, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->controller:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-direct {v3, p0, v4, v6}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$CompanionAppConnectivityBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$1;)V

    .line 145
    invoke-virtual {v3, p1}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$CompanionAppConnectivityBroadcastReceiver;->register(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v3

    .line 144
    invoke-static {v3}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isCompanionAppConnected(Landroid/content/Intent;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isCompanionAppConnected:Z

    .line 148
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Lcom/google/glass/bluetooth/GlassBluetoothService;

    invoke-direct {v0, v3, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 150
    .local v0, "bluetoothServiceComponent":Landroid/content/ComponentName;
    new-instance v1, Landroid/content/Intent;

    const-string v3, "com.google.glass.bluetooth.COMPANION_SERVICE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v1, "intent":Landroid/content/Intent;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 152
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    new-instance v4, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$RemoteCompanionServiceConnection;

    iget-object v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->controller:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-direct {v4, p0, v0, v5, v6}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$RemoteCompanionServiceConnection;-><init>(Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;Landroid/content/ComponentName;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider$1;)V

    const/4 v5, 0x1

    invoke-virtual {v3, p1, v1, v4, v5}, Lcom/google/glass/util/IntentSender;->bindService(Landroid/content/Context;Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    .line 155
    .local v2, "serviceBound":Z
    const-string v3, "Could not bind to GlassBluetoothService"

    invoke-static {v2, v3}, Lcom/google/common/base/Preconditions;->checkState(ZLjava/lang/Object;)V

    .line 156
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V
    .locals 4
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "properties"    # Lcom/android/location/provider/ProviderPropertiesUnbundled;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/location/provider/LocationProviderBase;-><init>(Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 45
    const-string v0, "bluetooth_location"

    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 75
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->minTimeMillis:J

    .line 80
    iput-boolean v3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->shouldBeListening:Z

    .line 91
    iput-boolean v3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    .line 104
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->clock:Lcom/google/glass/time/Clock;

    .line 105
    iput-object v2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->publishedProviderName:Ljava/lang/String;

    .line 106
    iput-object v2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->companionProviderName:Ljava/lang/String;

    .line 107
    iput-object v2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->controller:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    .line 108
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V
    .locals 3
    .param p1, "publishedProviderName"    # Ljava/lang/String;
    .param p2, "companionProviderName"    # Ljava/lang/String;
    .param p3, "controller"    # Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;
    .param p4, "properties"    # Lcom/android/location/provider/ProviderPropertiesUnbundled;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 161
    invoke-direct {p0, p2, p4}, Lcom/android/location/provider/LocationProviderBase;-><init>(Ljava/lang/String;Lcom/android/location/provider/ProviderPropertiesUnbundled;)V

    .line 45
    const-string v0, "bluetooth_location"

    invoke-static {p0, v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 75
    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->minTimeMillis:J

    .line 80
    iput-boolean v2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->shouldBeListening:Z

    .line 91
    iput-boolean v2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    .line 163
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->clock:Lcom/google/glass/time/Clock;

    .line 164
    iput-object p1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->publishedProviderName:Ljava/lang/String;

    .line 165
    iput-object p2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->companionProviderName:Ljava/lang/String;

    .line 167
    iput-object p3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->controller:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    .line 168
    iput-boolean v2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isCompanionAppConnected:Z

    .line 169
    return-void
.end method

.method private static isCompanionAppConnected(Landroid/content/Intent;)Z
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v0, 0x0

    .line 200
    if-eqz p0, :cond_0

    const-string v1, "com.google.glass.extra.STATE"

    invoke-virtual {p0, v1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private reportStatus()V
    .locals 3

    .prologue
    .line 299
    new-instance v0, Landroid/location/Location;

    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->publishedProviderName:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    .line 300
    .local v0, "location":Landroid/location/Location;
    const v1, 0x7f7fffff    # Float.MAX_VALUE

    invoke-virtual {v0, v1}, Landroid/location/Location;->setAccuracy(F)V

    .line 301
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setTime(J)V

    .line 302
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v1}, Lcom/google/glass/time/Clock;->elapsedRealtimeNanos()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Landroid/location/Location;->setElapsedRealtimeNanos(J)V

    .line 303
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->controller:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-virtual {v1, v0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->reportLocation(Landroid/location/Location;)V

    .line 304
    return-void
.end method

.method private tryStartListening()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 417
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Start listening for location updates [minTimeMillis=%s, isListening=%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    iget-wide v8, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->minTimeMillis:J

    .line 418
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v7, v4

    iget-boolean v8, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v3

    .line 417
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 419
    iget-boolean v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    if-eqz v5, :cond_0

    .line 433
    :goto_0
    return v3

    .line 423
    :cond_0
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v2

    .line 424
    .local v2, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {p0, v4}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->createLocationRequest(I)Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/glass/companion/Proto$Envelope;->setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope;

    .line 425
    iget-object v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->controller:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-virtual {v5}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->getMessenger()Landroid/os/Messenger;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;

    move-result-object v0

    .line 428
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->remoteCompanionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-interface {v5, v0}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V

    .line 429
    const/4 v5, 0x1

    iput-boolean v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 431
    :catch_0
    move-exception v1

    .line 432
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v5, "Failed to start listening for location updates."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v3, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 433
    goto :goto_0
.end method

.method private tryStopListening()Z
    .locals 9

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 448
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "Stop listening for location updates [isListening=%s]"

    new-array v7, v3, [Ljava/lang/Object;

    iget-boolean v8, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 449
    iget-boolean v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    if-nez v5, :cond_0

    .line 463
    :goto_0
    return v3

    .line 453
    :cond_0
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v2

    .line 454
    .local v2, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {p0, v3}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->createLocationRequest(I)Lcom/google/glass/companion/Proto$LocationRequest;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/google/glass/companion/Proto$Envelope;->setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope;

    .line 455
    iget-object v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->controller:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-virtual {v5}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->getMessenger()Landroid/os/Messenger;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;

    move-result-object v0

    .line 458
    .local v0, "bundle":Landroid/os/Bundle;
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->remoteCompanionService:Lcom/google/glass/companion/IRemoteCompanionService;

    invoke-interface {v5, v0}, Lcom/google/glass/companion/IRemoteCompanionService;->send(Landroid/os/Bundle;)V

    .line 459
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 461
    :catch_0
    move-exception v1

    .line 462
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v5, "Failed to stop listening for location updates."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v3, v1, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v4

    .line 463
    goto :goto_0
.end method


# virtual methods
.method protected createLocationRequest(I)Lcom/google/glass/companion/Proto$LocationRequest;
    .locals 3
    .param p1, "requestType"    # I

    .prologue
    .line 186
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>()V

    .line 187
    .local v0, "locationRequest":Lcom/google/glass/companion/Proto$LocationRequest;
    iput p1, v0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    .line 188
    iget-object v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->companionProviderName:Ljava/lang/String;

    iput-object v1, v0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    .line 190
    if-nez p1, :cond_0

    .line 191
    iget-wide v1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->minTimeMillis:J

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/companion/Proto$LocationRequest;->setMinTime(J)Lcom/google/glass/companion/Proto$LocationRequest;

    .line 193
    :cond_0
    return-object v0
.end method

.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 175
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method handleCompanionAppConnected()V
    .locals 2

    .prologue
    .line 357
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isCompanionAppConnected:Z

    .line 358
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->lastStatusUpdateTime:J

    .line 360
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->shouldBeListening:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->remoteCompanionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-eqz v0, :cond_0

    .line 361
    invoke-direct {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->tryStartListening()Z

    .line 363
    :cond_0
    return-void
.end method

.method handleCompanionAppDisconnected()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 369
    iput-boolean v2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isCompanionAppConnected:Z

    .line 370
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->lastStatusUpdateTime:J

    .line 371
    iput-boolean v2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    .line 372
    return-void
.end method

.method handleDisableLocationTracking()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 312
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "handleDisableLocationTracking(), shouldBeListening: [%s], isListening: [%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->shouldBeListening:Z

    .line 313
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    const/4 v3, 0x1

    iget-boolean v4, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    .line 312
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 315
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->shouldBeListening:Z

    if-nez v0, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 319
    :cond_1
    iput-boolean v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->shouldBeListening:Z

    .line 321
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    if-eqz v0, :cond_0

    .line 322
    invoke-direct {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->tryStopListening()Z

    goto :goto_0
.end method

.method handleEnableLocationTracking()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 266
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "handleEnableLocationTracking() [shouldBeListening=%s, isListening=%s]"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget-boolean v3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->shouldBeListening:Z

    .line 267
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    iget-boolean v3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v5

    .line 266
    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 269
    iput-boolean v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->shouldBeListening:Z

    .line 272
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    if-eqz v0, :cond_1

    .line 288
    :cond_0
    :goto_0
    return-void

    .line 277
    :cond_1
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->remoteCompanionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isCompanionAppConnected:Z

    if-eqz v0, :cond_2

    .line 278
    invoke-direct {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->tryStartListening()Z

    .line 284
    :cond_2
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    if-nez v0, :cond_0

    .line 285
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "handleEnableLocationTracking() Still not listening, reporting status."

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 286
    invoke-direct {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->reportStatus()V

    goto :goto_0
.end method

.method handleLocationMessage(Lcom/google/glass/companion/Proto$LocationMessage;)V
    .locals 8
    .param p1, "locationMessage"    # Lcom/google/glass/companion/Proto$LocationMessage;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 380
    iget v1, p1, Lcom/google/glass/companion/Proto$LocationMessage;->type:I

    .line 381
    .local v1, "type":I
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "handleLocationMessage() type: [%s]"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 382
    packed-switch v1, :pswitch_data_0

    .line 402
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    const/16 v4, 0x29

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Unknown LocationMessage type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 384
    :pswitch_0
    iget-object v2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->companionProviderName:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "Unexpected provider in LocationMessage, expected %s, but was %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->companionProviderName:Ljava/lang/String;

    aput-object v5, v4, v6

    iget-object v5, p1, Lcom/google/glass/companion/Proto$LocationMessage;->provider:Ljava/lang/String;

    aput-object v5, v4, v7

    invoke-static {v2, v3, v4}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 387
    invoke-static {p1}, Lcom/google/glass/util/proto/LocationMessageUtils;->toAndroidLocation(Lcom/google/glass/companion/Proto$LocationMessage;)Landroid/location/Location;

    move-result-object v0

    .line 388
    .local v0, "location":Landroid/location/Location;
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Got location from envelope: [%s]"

    new-array v4, v7, [Ljava/lang/Object;

    aput-object v0, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 389
    iget-object v2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->publishedProviderName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/location/Location;->setProvider(Ljava/lang/String;)V

    .line 390
    iget-object v2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->controller:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-virtual {v2, v0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->reportLocation(Landroid/location/Location;)V

    .line 404
    .end local v0    # "location":Landroid/location/Location;
    :pswitch_1
    return-void

    .line 382
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method handleServiceConnected(Lcom/google/glass/companion/IRemoteCompanionService;)V
    .locals 2
    .param p1, "service"    # Lcom/google/glass/companion/IRemoteCompanionService;

    .prologue
    .line 332
    iput-object p1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->remoteCompanionService:Lcom/google/glass/companion/IRemoteCompanionService;

    .line 333
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->lastStatusUpdateTime:J

    .line 337
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->shouldBeListening:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isCompanionAppConnected:Z

    if-eqz v0, :cond_0

    .line 338
    invoke-direct {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->tryStartListening()Z

    .line 340
    :cond_0
    return-void
.end method

.method handleServiceDisconnected()V
    .locals 2

    .prologue
    .line 348
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->remoteCompanionService:Lcom/google/glass/companion/IRemoteCompanionService;

    .line 349
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->lastStatusUpdateTime:J

    .line 350
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    .line 351
    return-void
.end method

.method handleSetMinTime(J)V
    .locals 5
    .param p1, "minTimeMillis"    # J

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "handleSetMinTime(minTimeMillis: [%s])"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 249
    iget-wide v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->minTimeMillis:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_1

    .line 258
    :cond_0
    :goto_0
    return-void

    .line 252
    :cond_1
    iput-wide p1, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->minTimeMillis:J

    .line 254
    iget-boolean v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isListening:Z

    if-eqz v0, :cond_0

    .line 255
    invoke-direct {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->tryStopListening()Z

    .line 256
    invoke-direct {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->tryStartListening()Z

    goto :goto_0
.end method

.method public onDisable()V
    .locals 3

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onDisable()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 214
    return-void
.end method

.method public onEnable()V
    .locals 3

    .prologue
    .line 208
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onEnable()"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public onGetStatus(Landroid/os/Bundle;)I
    .locals 7
    .param p1, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 218
    iget-object v3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->remoteCompanionService:Lcom/google/glass/companion/IRemoteCompanionService;

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->isCompanionAppConnected:Z

    if-eqz v3, :cond_1

    move v0, v1

    .line 219
    .local v0, "available":Z
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "onGetStatus() [available=%s]"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 220
    if-eqz v0, :cond_0

    const/4 v1, 0x2

    :cond_0
    return v1

    .end local v0    # "available":Z
    :cond_1
    move v0, v2

    .line 218
    goto :goto_0
.end method

.method public onGetStatusUpdateTime()J
    .locals 6

    .prologue
    .line 225
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "onGetStatusUpdateTime() [onGetStatusUpdateTime=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->lastStatusUpdateTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 226
    iget-wide v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->lastStatusUpdateTime:J

    return-wide v0
.end method

.method public onSetRequest(Lcom/android/location/provider/ProviderRequestUnbundled;Landroid/os/WorkSource;)V
    .locals 6
    .param p1, "request"    # Lcom/android/location/provider/ProviderRequestUnbundled;
    .param p2, "source"    # Landroid/os/WorkSource;

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "onSetRequest() entered [request=%s, source=%s]"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    aput-object p2, v4, v0

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 233
    iget-object v2, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->controller:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-virtual {p1}, Lcom/android/location/provider/ProviderRequestUnbundled;->getReportLocation()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->setLocationTrackingEnabled(Z)V

    .line 235
    invoke-virtual {p1}, Lcom/android/location/provider/ProviderRequestUnbundled;->getInterval()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-ltz v2, :cond_0

    :goto_0
    const-string v1, "interval must be non-negative"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 236
    iget-object v0, p0, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProvider;->controller:Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;

    invoke-virtual {p1}, Lcom/android/location/provider/ProviderRequestUnbundled;->getInterval()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/bluetooth/location/jb/CompanionLocationProviderController;->setMinTime(J)V

    .line 237
    return-void

    :cond_0
    move v0, v1

    .line 235
    goto :goto_0
.end method

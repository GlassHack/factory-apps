.class public Lcom/google/glass/location/CompanionLocationProxy;
.super Ljava/lang/Object;
.source "CompanionLocationProxy.java"

# interfaces
.implements Lcom/google/glass/location/LocationProxy;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private locationListener:Landroid/location/LocationListener;

.field private messenger:Landroid/os/Messenger;

.field private final remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/location/CompanionLocationProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Lcom/google/glass/companion/RemoteCompanionProxy;)V
    .locals 2
    .param p1, "remoteCompanionProxy"    # Lcom/google/glass/companion/RemoteCompanionProxy;

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/google/glass/location/CompanionLocationProxy$1;

    invoke-direct {v1, p0}, Lcom/google/glass/location/CompanionLocationProxy$1;-><init>(Lcom/google/glass/location/CompanionLocationProxy;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/google/glass/location/CompanionLocationProxy;->messenger:Landroid/os/Messenger;

    .line 45
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 46
    iput-object p1, p0, Lcom/google/glass/location/CompanionLocationProxy;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    .line 47
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/location/CompanionLocationProxy;)Landroid/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/location/CompanionLocationProxy;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/google/glass/location/CompanionLocationProxy;->locationListener:Landroid/location/LocationListener;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/google/glass/location/CompanionLocationProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method private sendLocationRequest(Lcom/google/glass/companion/Proto$LocationRequest;)V
    .locals 5
    .param p1, "req"    # Lcom/google/glass/companion/Proto$LocationRequest;

    .prologue
    .line 79
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 80
    iget-object v2, p0, Lcom/google/glass/location/CompanionLocationProxy;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v2}, Lcom/google/glass/companion/RemoteCompanionProxy;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 81
    invoke-static {}, Lcom/google/glass/companion/CompanionMessagingUtil;->newEnvelope()Lcom/google/glass/companion/Proto$Envelope;

    move-result-object v1

    .line 82
    .local v1, "envelope":Lcom/google/glass/companion/Proto$Envelope;
    invoke-virtual {v1, p1}, Lcom/google/glass/companion/Proto$Envelope;->setLocationRequestG2C(Lcom/google/glass/companion/Proto$LocationRequest;)Lcom/google/glass/companion/Proto$Envelope;

    .line 83
    iget-object v2, p0, Lcom/google/glass/location/CompanionLocationProxy;->messenger:Landroid/os/Messenger;

    invoke-static {v1, v2}, Lcom/google/glass/companion/CompanionMessagingUtil;->createBundle(Lcom/google/glass/companion/Proto$Envelope;Landroid/os/Messenger;)Landroid/os/Bundle;

    move-result-object v0

    .line 84
    .local v0, "bundle":Landroid/os/Bundle;
    iget-object v2, p0, Lcom/google/glass/location/CompanionLocationProxy;->remoteCompanionProxy:Lcom/google/glass/companion/RemoteCompanionProxy;

    invoke-virtual {v2, v0}, Lcom/google/glass/companion/RemoteCompanionProxy;->sendCompanionMessage(Landroid/os/Bundle;)Z

    .line 88
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "envelope":Lcom/google/glass/companion/Proto$Envelope;
    :goto_0
    return-void

    .line 86
    :cond_0
    sget-object v2, Lcom/google/glass/location/CompanionLocationProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "CompanionConnection is not present"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method public removeLocationUpdates(Ljava/lang/String;)V
    .locals 6
    .param p1, "provider"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x1

    .line 70
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 71
    sget-object v1, Lcom/google/glass/location/CompanionLocationProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Removing location updates: %s"

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>()V

    .line 73
    .local v0, "req":Lcom/google/glass/companion/Proto$LocationRequest;
    iput v5, v0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    .line 74
    iput-object p1, v0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    .line 75
    invoke-direct {p0, v0}, Lcom/google/glass/location/CompanionLocationProxy;->sendLocationRequest(Lcom/google/glass/companion/Proto$LocationRequest;)V

    .line 76
    return-void
.end method

.method public requestLocationUpdates(Ljava/lang/String;JFZ)V
    .locals 5
    .param p1, "provider"    # Ljava/lang/String;
    .param p2, "minTime"    # J
    .param p4, "minDistance"    # F
    .param p5, "sendLastKnownLocation"    # Z

    .prologue
    const/4 v4, 0x0

    .line 57
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 58
    sget-object v1, Lcom/google/glass/location/CompanionLocationProxy;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Requesting location updates: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 59
    new-instance v0, Lcom/google/glass/companion/Proto$LocationRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$LocationRequest;-><init>()V

    .line 60
    .local v0, "req":Lcom/google/glass/companion/Proto$LocationRequest;
    iput v4, v0, Lcom/google/glass/companion/Proto$LocationRequest;->type:I

    .line 61
    iput-object p1, v0, Lcom/google/glass/companion/Proto$LocationRequest;->provider:Ljava/lang/String;

    .line 62
    invoke-virtual {v0, p2, p3}, Lcom/google/glass/companion/Proto$LocationRequest;->setMinTime(J)Lcom/google/glass/companion/Proto$LocationRequest;

    .line 63
    invoke-virtual {v0, p4}, Lcom/google/glass/companion/Proto$LocationRequest;->setMinDistance(F)Lcom/google/glass/companion/Proto$LocationRequest;

    .line 64
    invoke-virtual {v0, p5}, Lcom/google/glass/companion/Proto$LocationRequest;->setSendLastKnownLocation(Z)Lcom/google/glass/companion/Proto$LocationRequest;

    .line 65
    invoke-direct {p0, v0}, Lcom/google/glass/location/CompanionLocationProxy;->sendLocationRequest(Lcom/google/glass/companion/Proto$LocationRequest;)V

    .line 66
    return-void
.end method

.method public setLocationListener(Landroid/location/LocationListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/location/LocationListener;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/glass/location/CompanionLocationProxy;->locationListener:Landroid/location/LocationListener;

    .line 52
    return-void
.end method

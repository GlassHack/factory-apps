.class public Lcom/google/glass/maps/location/BroadcastLocationSource;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/maps/driveabout/location/t;


# static fields
.field private static final ACTION_BROADCAST_LOCATION:Ljava/lang/String; = "com.google.glass.action.ACTION_BROADCAST_LOCATION"

.field private static final EXTRA_ACCURACY:Ljava/lang/String; = "accuracy"

.field private static final EXTRA_BEARING:Ljava/lang/String; = "bearing"

.field private static final EXTRA_ENABLE:Ljava/lang/String; = "enable"

.field private static final EXTRA_LOCATION:Ljava/lang/String; = "location"

.field private static final EXTRA_ORIENTATION:Ljava/lang/String; = "orientation"

.field private static final PROVIDER_ID:Ljava/lang/String; = "gps"


# instance fields
.field private allProviders:Ljava/util/List;

.field private broadcastSourceEnabled:Z

.field private final broadcastedLocationReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

.field private final defaultSource:Lcom/google/android/maps/driveabout/location/t;

.field private lastBroadcastOrientation:F

.field private lastBroadcastedGps:Landroid/location/Location;

.field private final locationListeners:Ljava/util/List;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private final navigation:Lcom/google/glass/navlib/NavigationImpl;

.field private final orientationListeners:Ljava/util/List;

.field private final registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/navlib/NavigationImpl;Lcom/google/android/maps/driveabout/location/t;)V
    .locals 4

    .prologue
    .line 153
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 60
    new-instance v0, Lcom/google/glass/maps/location/BroadcastLocationSource$1;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "com.google.glass.action.ACTION_BROADCAST_LOCATION"

    aput-object v3, v1, v2

    invoke-direct {v0, p0, v1}, Lcom/google/glass/maps/location/BroadcastLocationSource$1;-><init>(Lcom/google/glass/maps/location/BroadcastLocationSource;[Ljava/lang/String;)V

    iput-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->broadcastedLocationReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    .line 138
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->locationListeners:Ljava/util/List;

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->orientationListeners:Ljava/util/List;

    .line 154
    iput-object p2, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->navigation:Lcom/google/glass/navlib/NavigationImpl;

    .line 155
    iput-object p3, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->defaultSource:Lcom/google/android/maps/driveabout/location/t;

    .line 156
    invoke-static {}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->getInstance()Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/context/BroadcastReceiverRegistrarProvider;->from(Landroid/content/Context;)Lcom/google/glass/context/BroadcastReceiverRegistrar;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    .line 157
    invoke-static {}, Lcom/google/glass/android/location/LocationManagerProvider;->getInstance()Lcom/google/glass/android/location/LocationManagerProvider;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/android/location/LocationManagerProvider;->get(Landroid/content/Context;)Landroid/location/LocationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->allProviders:Ljava/util/List;

    .line 158
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/maps/location/BroadcastLocationSource;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/maps/location/BroadcastLocationSource;)Lcom/google/glass/navlib/NavigationImpl;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->navigation:Lcom/google/glass/navlib/NavigationImpl;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/maps/location/BroadcastLocationSource;)Z
    .locals 1

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->broadcastSourceEnabled:Z

    return v0
.end method

.method static synthetic access$202(Lcom/google/glass/maps/location/BroadcastLocationSource;Z)Z
    .locals 0

    .prologue
    .line 44
    iput-boolean p1, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->broadcastSourceEnabled:Z

    return p1
.end method

.method static synthetic access$300(Lcom/google/glass/maps/location/BroadcastLocationSource;)Lcom/google/android/maps/driveabout/location/t;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->defaultSource:Lcom/google/android/maps/driveabout/location/t;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/maps/location/BroadcastLocationSource;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->lastBroadcastedGps:Landroid/location/Location;

    return-object v0
.end method

.method static synthetic access$402(Lcom/google/glass/maps/location/BroadcastLocationSource;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    .prologue
    .line 44
    iput-object p1, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->lastBroadcastedGps:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$500(Lcom/google/glass/maps/location/BroadcastLocationSource;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->locationListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/maps/location/BroadcastLocationSource;)F
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->lastBroadcastOrientation:F

    return v0
.end method

.method static synthetic access$602(Lcom/google/glass/maps/location/BroadcastLocationSource;F)F
    .locals 0

    .prologue
    .line 44
    iput p1, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->lastBroadcastOrientation:F

    return p1
.end method

.method static synthetic access$700(Lcom/google/glass/maps/location/BroadcastLocationSource;)Ljava/util/List;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->orientationListeners:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public addGpsStatusListener(Landroid/location/GpsStatus$Listener;)Z
    .locals 1

    .prologue
    .line 212
    const/4 v0, 0x0

    return v0
.end method

.method public getAllProviders()Ljava/util/List;
    .locals 1

    .prologue
    .line 184
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->allProviders:Ljava/util/List;

    return-object v0
.end method

.method public getGpsInfo()Lcom/google/android/maps/driveabout/location/r;
    .locals 1

    .prologue
    .line 223
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLastKnownGpsLocation(Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;Lcom/google/glass/location/LocationManagerHelper$LocationComparator;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 173
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->lastBroadcastedGps:Landroid/location/Location;

    return-object v0
.end method

.method public getLastKnownNetworkLocation(Lcom/google/glass/location/LocationManagerHelper$FreshLocationPredicate;Lcom/google/glass/location/LocationManagerHelper$LocationComparator;)Landroid/location/Location;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->lastBroadcastedGps:Landroid/location/Location;

    return-object v0
.end method

.method public getOrientation()F
    .locals 1

    .prologue
    .line 233
    iget v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->lastBroadcastOrientation:F

    return v0
.end method

.method public isProviderEnabled(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 189
    const/4 v0, 0x1

    return v0
.end method

.method public pause()V
    .locals 0

    .prologue
    .line 237
    return-void
.end method

.method public removeGpsStatusListener(Landroid/location/GpsStatus$Listener;)V
    .locals 0

    .prologue
    .line 218
    return-void
.end method

.method public removeLocationUpdates(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->locationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public removeOrientationUpdates()V
    .locals 1

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->orientationListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 242
    return-void
.end method

.method public requestGpsLocationUpdates(JFLcom/google/android/maps/driveabout/location/b;)V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->locationListeners:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 196
    return-void
.end method

.method public requestNetworkLocationUpdates(JFLcom/google/android/maps/driveabout/location/b;)V
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->locationListeners:Ljava/util/List;

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    return-void
.end method

.method public requestOrientationUpdates(Lcom/google/android/maps/driveabout/location/b;)V
    .locals 1

    .prologue
    .line 246
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->orientationListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    return-void
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 250
    return-void
.end method

.method public setCompassAccuracyListener(Lcom/google/android/maps/driveabout/location/q;)V
    .locals 0

    .prologue
    .line 255
    return-void
.end method

.method public startListening()V
    .locals 2

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->broadcastedLocationReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->register(Lcom/google/glass/context/BroadcastReceiverRegistrar;)Landroid/content/Intent;

    .line 163
    return-void
.end method

.method public stopListening()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->broadcastedLocationReceiver:Lcom/google/glass/util/SafeBroadcastReceiver;

    iget-object v1, p0, Lcom/google/glass/maps/location/BroadcastLocationSource;->registrar:Lcom/google/glass/context/BroadcastReceiverRegistrar;

    invoke-virtual {v0, v1}, Lcom/google/glass/util/SafeBroadcastReceiver;->unregister(Lcom/google/glass/context/BroadcastReceiverRegistrar;)V

    .line 168
    return-void
.end method

.method public stopListeningForCompanionPropertiesChange()V
    .locals 0

    .prologue
    .line 228
    invoke-virtual {p0}, Lcom/google/glass/maps/location/BroadcastLocationSource;->stopListening()V

    .line 229
    return-void
.end method

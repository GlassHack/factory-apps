.class Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;
.super Ljava/lang/Object;
.source "GCoreLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/gms/glass/location/GCoreLocationProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LocationUpdateParameters"
.end annotation


# instance fields
.field private final listener:Lcom/google/android/gms/location/LocationListener;

.field private final looper:Landroid/os/Looper;

.field private final pendingIntent:Landroid/app/PendingIntent;

.field private final request:Lcom/google/android/gms/location/LocationRequest;

.field final synthetic this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;


# direct methods
.method constructor <init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider;Lcom/google/android/gms/location/LocationRequest;Landroid/app/PendingIntent;)V
    .locals 1
    .param p2, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p3, "pendingIntent"    # Landroid/app/PendingIntent;

    .prologue
    const/4 v0, 0x0

    .line 521
    iput-object p1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    iput-object p2, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->request:Lcom/google/android/gms/location/LocationRequest;

    .line 523
    iput-object p3, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->pendingIntent:Landroid/app/PendingIntent;

    .line 524
    iput-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->listener:Lcom/google/android/gms/location/LocationListener;

    .line 525
    iput-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->looper:Landroid/os/Looper;

    .line 526
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;)V
    .locals 1
    .param p2, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p3, "listener"    # Lcom/google/android/gms/location/LocationListener;

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;-><init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V

    .line 519
    return-void
.end method

.method constructor <init>(Lcom/google/android/gms/glass/location/GCoreLocationProvider;Lcom/google/android/gms/location/LocationRequest;Lcom/google/android/gms/location/LocationListener;Landroid/os/Looper;)V
    .locals 1
    .param p2, "request"    # Lcom/google/android/gms/location/LocationRequest;
    .param p3, "listener"    # Lcom/google/android/gms/location/LocationListener;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 510
    iput-object p1, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->this$0:Lcom/google/android/gms/glass/location/GCoreLocationProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 511
    iput-object p2, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->request:Lcom/google/android/gms/location/LocationRequest;

    .line 512
    iput-object p3, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->listener:Lcom/google/android/gms/location/LocationListener;

    .line 513
    iput-object p4, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->looper:Landroid/os/Looper;

    .line 514
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->pendingIntent:Landroid/app/PendingIntent;

    .line 515
    return-void
.end method

.method static synthetic access$300(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Landroid/app/PendingIntent;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->pendingIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Lcom/google/android/gms/location/LocationRequest;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->request:Lcom/google/android/gms/location/LocationRequest;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Landroid/os/Looper;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->looper:Landroid/os/Looper;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;)Lcom/google/android/gms/location/LocationListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;

    .prologue
    .line 504
    iget-object v0, p0, Lcom/google/android/gms/glass/location/GCoreLocationProvider$LocationUpdateParameters;->listener:Lcom/google/android/gms/location/LocationListener;

    return-object v0
.end method

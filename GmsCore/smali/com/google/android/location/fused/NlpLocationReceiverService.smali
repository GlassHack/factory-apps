.class public Lcom/google/android/location/fused/NlpLocationReceiverService;
.super Landroid/app/Service;
.source "SourceFile"


# static fields
.field private static final c:Ljava/util/concurrent/atomic/AtomicReference;


# instance fields
.field private a:Landroid/os/PowerManager$WakeLock;

.field private b:Lcom/google/android/location/o/ag;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/google/android/location/fused/NlpLocationReceiverService;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method static synthetic a()Ljava/util/concurrent/atomic/AtomicReference;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/location/fused/NlpLocationReceiverService;->c:Ljava/util/concurrent/atomic/AtomicReference;

    return-object v0
.end method

.method static a(Lcom/google/android/location/fused/w;)V
    .locals 1

    .prologue
    .line 48
    sget-object v0, Lcom/google/android/location/fused/NlpLocationReceiverService;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 53
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/google/android/location/fused/NlpLocationReceiverService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 54
    const-string v1, "GCoreFlp"

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/location/fused/NlpLocationReceiverService;->a:Landroid/os/PowerManager$WakeLock;

    .line 55
    iget-object v0, p0, Lcom/google/android/location/fused/NlpLocationReceiverService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 57
    new-instance v0, Lcom/google/android/location/fused/be;

    invoke-static {}, Lcom/google/android/location/fused/ah;->a()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/google/android/location/fused/be;-><init>(Lcom/google/android/location/fused/NlpLocationReceiverService;Landroid/os/Looper;)V

    .line 89
    new-instance v1, Lcom/google/android/location/o/ag;

    iget-object v2, p0, Lcom/google/android/location/fused/NlpLocationReceiverService;->a:Landroid/os/PowerManager$WakeLock;

    invoke-direct {v1, v2, v0}, Lcom/google/android/location/o/ag;-><init>(Landroid/os/PowerManager$WakeLock;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/google/android/location/fused/NlpLocationReceiverService;->b:Lcom/google/android/location/o/ag;

    .line 90
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 97
    if-nez p1, :cond_1

    .line 147
    :cond_0
    :goto_0
    return v5

    .line 102
    :cond_1
    sget-object v0, Lcom/google/android/location/fused/NlpLocationReceiverService;->c:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/location/fused/w;

    .line 103
    invoke-static {p0}, Lcom/google/android/gms/common/util/ac;->a(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 106
    iget-object v1, p0, Lcom/google/android/location/fused/NlpLocationReceiverService;->a:Landroid/os/PowerManager$WakeLock;

    iget-object v0, v0, Lcom/google/android/location/fused/w;->d:Lcom/google/android/location/fused/ad;

    invoke-virtual {v0}, Lcom/google/android/location/fused/ad;->a()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/location/o/j;->a(Ljava/util/Collection;)Landroid/os/WorkSource;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 110
    :cond_2
    const-string v0, "com.google.android.location.internal.WIFI_LOCATION_STATUS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "com.google.android.location.internal.CELL_LOCATION_STATUS"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 112
    :cond_3
    const-string v0, "GCoreFlp"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 113
    const-string v0, "Received status changed intent: %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 115
    :cond_4
    const-string v0, "com.google.android.location.internal.WIFI_LOCATION_STATUS"

    invoke-virtual {p1, v0, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 117
    const-string v1, "com.google.android.location.internal.CELL_LOCATION_STATUS"

    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/google/android/location/fused/NlpLocationReceiverService;->b:Lcom/google/android/location/o/ag;

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    goto :goto_0

    .line 120
    :cond_5
    invoke-static {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->a(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 121
    const-string v0, "GCoreFlp"

    invoke-static {v0, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 122
    const-string v0, "Received activity result intent: %s"

    new-array v1, v5, [Ljava/lang/Object;

    aput-object p1, v1, v4

    invoke-static {v0, v1}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 124
    :cond_6
    iget-object v0, p0, Lcom/google/android/location/fused/NlpLocationReceiverService;->b:Lcom/google/android/location/o/ag;

    invoke-static {p1}, Lcom/google/android/gms/location/ActivityRecognitionResult;->b(Landroid/content/Intent;)Lcom/google/android/gms/location/ActivityRecognitionResult;

    move-result-object v1

    invoke-virtual {v0, v6, v4, v4, v1}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    goto :goto_0

    .line 130
    :cond_7
    invoke-static {p1}, Lcom/google/android/location/clientlib/c;->a(Landroid/content/Intent;)Lcom/google/android/location/clientlib/NlpLocation;

    move-result-object v0

    .line 132
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/google/android/location/clientlib/NlpLocation;->a:Landroid/location/Location;

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, v0, Lcom/google/android/location/clientlib/NlpLocation;->f:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, v0, Lcom/google/android/location/clientlib/NlpLocation;->g:[B

    if-nez v1, :cond_8

    .line 135
    const-string v1, "GCoreFlp"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "No debug info returned from NLP: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, v0, Lcom/google/android/location/clientlib/NlpLocation;->a:Landroid/location/Location;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    :cond_8
    const-string v1, "GCoreFlp"

    invoke-static {v1, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 140
    const-string v1, "Received NLP location: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, v0, Lcom/google/android/location/clientlib/NlpLocation;->a:Landroid/location/Location;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/google/android/location/fused/ax;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    :cond_9
    iget-object v0, v0, Lcom/google/android/location/clientlib/NlpLocation;->a:Landroid/location/Location;

    .line 143
    iget-object v1, p0, Lcom/google/android/location/fused/NlpLocationReceiverService;->b:Lcom/google/android/location/o/ag;

    invoke-virtual {v1, v5, v4, v4, v0}, Lcom/google/android/location/o/ag;->a(IIILjava/lang/Object;)V

    goto/16 :goto_0
.end method

.class public Lcom/google/android/location/wearable/LocationWearableListenerService;
.super Lcom/google/android/gms/wearable/ac;
.source "SourceFile"


# static fields
.field private static final a:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/google/android/location/wearable/LocationWearableListenerService;->a:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/google/android/gms/wearable/ac;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 28
    instance-of v0, p0, Lcom/google/android/gms/wearable/f;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/wearable/p;

    if-nez v0, :cond_0

    instance-of v0, p0, Lcom/google/android/gms/wearable/v;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "invalid listener: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/android/gms/common/internal/aj;->b(ZLjava/lang/Object;)V

    .line 29
    sget-object v0, Lcom/google/android/location/wearable/LocationWearableListenerService;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 30
    return-void

    .line 28
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/i;)V
    .locals 3

    .prologue
    .line 42
    const-string v0, "LocationWearablesListenerService"

    const-string v1, "onDataChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    sget-object v0, Lcom/google/android/location/wearable/LocationWearableListenerService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 46
    instance-of v2, v0, Lcom/google/android/gms/wearable/f;

    if-eqz v2, :cond_0

    .line 47
    check-cast v0, Lcom/google/android/gms/wearable/f;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/f;->a(Lcom/google/android/gms/wearable/i;)V

    goto :goto_0

    .line 50
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/r;)V
    .locals 3

    .prologue
    .line 54
    const-string v0, "LocationWearablesListenerService"

    const-string v1, "onMessageReceived"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    sget-object v0, Lcom/google/android/location/wearable/LocationWearableListenerService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 56
    instance-of v2, v0, Lcom/google/android/gms/wearable/p;

    if-eqz v2, :cond_0

    .line 57
    check-cast v0, Lcom/google/android/gms/wearable/p;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/p;->a(Lcom/google/android/gms/wearable/r;)V

    goto :goto_0

    .line 60
    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/wearable/s;)V
    .locals 3

    .prologue
    .line 64
    const-string v0, "LocationWearablesListenerService"

    const-string v1, "onPeerConnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    sget-object v0, Lcom/google/android/location/wearable/LocationWearableListenerService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 66
    instance-of v2, v0, Lcom/google/android/gms/wearable/v;

    if-eqz v2, :cond_0

    .line 67
    check-cast v0, Lcom/google/android/gms/wearable/v;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/v;->a(Lcom/google/android/gms/wearable/s;)V

    goto :goto_0

    .line 70
    :cond_1
    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/s;)V
    .locals 3

    .prologue
    .line 74
    const-string v0, "LocationWearablesListenerService"

    const-string v1, "onPeerDisconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    sget-object v0, Lcom/google/android/location/wearable/LocationWearableListenerService;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 76
    instance-of v2, v0, Lcom/google/android/gms/wearable/v;

    if-eqz v2, :cond_0

    .line 77
    check-cast v0, Lcom/google/android/gms/wearable/v;

    invoke-interface {v0, p1}, Lcom/google/android/gms/wearable/v;->b(Lcom/google/android/gms/wearable/s;)V

    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method

.class final Lcom/google/android/gms/wearable/service/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/wearable/node/h;


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/service/WearableService;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/wearable/service/WearableService;)V
    .locals 0

    .prologue
    .line 455
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/p;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/wearable/service/WearableService;B)V
    .locals 0

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lcom/google/android/gms/wearable/service/p;-><init>(Lcom/google/android/gms/wearable/service/WearableService;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/wearable/c/i;)V
    .locals 4

    .prologue
    .line 458
    const-string v0, "WearableService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 459
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPeerConnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    :cond_0
    new-instance v1, Lcom/google/android/gms/wearable/service/q;

    const-string v0, "onPeerConnected"

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/wearable/service/q;-><init>(Lcom/google/android/gms/wearable/service/p;Ljava/lang/String;Lcom/google/android/gms/wearable/c/i;)V

    .line 473
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/p;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/WearableService;->d(Lcom/google/android/gms/wearable/service/WearableService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/a;

    .line 474
    iget-object v3, p0, Lcom/google/android/gms/wearable/service/p;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/wearable/service/WearableService;->a(Lcom/google/android/gms/wearable/service/WearableService;Lcom/google/android/gms/wearable/node/a;Lcom/google/android/gms/wearable/service/x;)V

    goto :goto_0

    .line 476
    :cond_1
    return-void
.end method

.method public final b(Lcom/google/android/gms/wearable/c/i;)V
    .locals 4

    .prologue
    .line 480
    const-string v0, "WearableService"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onPeerDisconnected: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p1, Lcom/google/android/gms/wearable/c/i;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    :cond_0
    new-instance v1, Lcom/google/android/gms/wearable/service/r;

    const-string v0, "onPeerDisconnected"

    invoke-direct {v1, p0, v0, p1}, Lcom/google/android/gms/wearable/service/r;-><init>(Lcom/google/android/gms/wearable/service/p;Ljava/lang/String;Lcom/google/android/gms/wearable/c/i;)V

    .line 495
    iget-object v0, p0, Lcom/google/android/gms/wearable/service/p;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-static {v0}, Lcom/google/android/gms/wearable/service/WearableService;->d(Lcom/google/android/gms/wearable/service/WearableService;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/wearable/node/a;

    .line 496
    iget-object v3, p0, Lcom/google/android/gms/wearable/service/p;->a:Lcom/google/android/gms/wearable/service/WearableService;

    invoke-static {v3, v0, v1}, Lcom/google/android/gms/wearable/service/WearableService;->a(Lcom/google/android/gms/wearable/service/WearableService;Lcom/google/android/gms/wearable/node/a;Lcom/google/android/gms/wearable/service/x;)V

    goto :goto_0

    .line 498
    :cond_1
    return-void
.end method

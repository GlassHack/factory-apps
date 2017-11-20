.class final Lcom/google/android/gms/wearable/service/m;
.super Landroid/os/Handler;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/google/android/gms/wearable/service/WearableService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/wearable/service/WearableService;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 506
    iput-object p1, p0, Lcom/google/android/gms/wearable/service/m;->a:Lcom/google/android/gms/wearable/service/WearableService;

    .line 507
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 508
    return-void
.end method


# virtual methods
.method final a()V
    .locals 2

    .prologue
    .line 529
    const-string v0, "WearableService"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    const-string v0, "WearableService"

    const-string v1, "Shutting down live listener handler."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-lt v0, v1, :cond_1

    .line 535
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/m;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->quitSafely()V

    .line 537
    :cond_1
    return-void
.end method

.method public final handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 512
    const-string v0, "WearableService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 513
    const-string v0, "WearableService"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "handleMessage: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 515
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x12

    if-ge v0, v1, :cond_3

    .line 516
    const-string v0, "WearableService"

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 517
    const-string v0, "WearableService"

    const-string v1, "handleMessage: JBmr2+ required."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :cond_1
    invoke-virtual {p0}, Lcom/google/android/gms/wearable/service/m;->a()V

    .line 526
    :cond_2
    :goto_0
    return-void

    .line 522
    :cond_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/wearable/service/z;

    .line 523
    iget v1, p1, Landroid/os/Message;->what:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 524
    invoke-virtual {v0}, Lcom/google/android/gms/wearable/service/z;->a()V

    goto :goto_0
.end method

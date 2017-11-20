.class Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler$1;
.super Ljava/lang/Object;
.source "WearableAppLogger.java"

# interfaces
.implements Lcom/google/android/wearable/gmsclient/DataManager$SetDataItemCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->maybePublishAndroidId(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

.field final synthetic val$androidId:J


# direct methods
.method constructor <init>(Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;J)V
    .locals 0

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler$1;->this$1:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    iput-wide p2, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler$1;->val$androidId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSetDataItemComplete(Lcom/google/android/wearable/gmsclient/WearableFuture;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/wearable/gmsclient/WearableFuture",
            "<",
            "Lcom/google/android/gms/wearable/DataItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    .local p1, "future":Lcom/google/android/wearable/gmsclient/WearableFuture;, "Lcom/google/android/wearable/gmsclient/WearableFuture<Lcom/google/android/gms/wearable/DataItem;>;"
    const-string v1, "WearableAppLogger"

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    const-string v1, "WearableAppLogger"

    const-string v2, "maybePublishAndroidId: onSetDataItemComplete"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    :try_start_0
    invoke-interface {p1}, Lcom/google/android/wearable/gmsclient/WearableFuture;->getResult()Ljava/lang/Object;

    .line 269
    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler$1;->this$1:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    iget-object v1, v1, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    iget-wide v2, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler$1;->val$androidId:J

    invoke-static {v1, v2, v3}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$502(Lcom/google/android/clockwork/logging/WearableAppLogger;J)J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_0 .. :try_end_0} :catch_1

    .line 279
    :goto_0
    return-void

    .line 270
    :catch_0
    move-exception v0

    .line 271
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v1, p0, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler$1;->this$1:Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    iget-object v1, v1, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->this$0:Lcom/google/android/clockwork/logging/WearableAppLogger;

    invoke-static {v1}, Lcom/google/android/clockwork/logging/WearableAppLogger;->access$800(Lcom/google/android/clockwork/logging/WearableAppLogger;)Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;

    move-result-object v1

    const/4 v2, 0x2

    const-wide/32 v3, 0x493e0

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/android/clockwork/logging/WearableAppLogger$UpdatesHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 274
    const-string v1, "WearableAppLogger"

    const-string v2, "failed to publish settings"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 275
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 277
    .local v0, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    const-string v1, "WearableAppLogger"

    const-string v2, "failed to publish settings"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

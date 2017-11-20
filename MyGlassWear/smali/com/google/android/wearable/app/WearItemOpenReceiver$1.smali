.class Lcom/google/android/wearable/app/WearItemOpenReceiver$1;
.super Ljava/lang/Object;
.source "WearItemOpenReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/app/WearItemOpenReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/app/WearItemOpenReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$timelineItemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/app/WearItemOpenReceiver;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/wearable/app/WearItemOpenReceiver;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/google/android/wearable/app/WearItemOpenReceiver$1;->this$0:Lcom/google/android/wearable/app/WearItemOpenReceiver;

    iput-object p2, p0, Lcom/google/android/wearable/app/WearItemOpenReceiver$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/android/wearable/app/WearItemOpenReceiver$1;->val$timelineItemId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 37
    iget-object v3, p0, Lcom/google/android/wearable/app/WearItemOpenReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v2

    .line 38
    .local v2, "wearableClient":Lcom/google/android/wearable/gmsclient/WearableClient;
    iget-object v3, p0, Lcom/google/android/wearable/app/WearItemOpenReceiver$1;->val$context:Landroid/content/Context;

    .line 39
    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/WearableClient;->getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;

    move-result-object v4

    invoke-virtual {v2}, Lcom/google/android/wearable/gmsclient/WearableClient;->getAssetManager()Lcom/google/android/wearable/gmsclient/AssetManager;

    move-result-object v5

    iget-object v6, p0, Lcom/google/android/wearable/app/WearItemOpenReceiver$1;->val$timelineItemId:Ljava/lang/String;

    .line 38
    invoke-static {v3, v4, v5, v6}, Lcom/google/android/wearable/app/WearUtil;->notificationFromTimelineItemId(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/DataManager;Lcom/google/android/wearable/gmsclient/AssetManager;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v1

    .line 41
    .local v1, "notification":Landroid/app/Notification;
    if-eqz v1, :cond_0

    iget-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    if-nez v3, :cond_1

    .line 49
    :cond_0
    :goto_0
    return-void

    .line 45
    :cond_1
    :try_start_0
    iget-object v3, v1, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v3}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-static {}, Lcom/google/android/wearable/app/WearItemOpenReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Failed to send pending intent for [notification=%s]."

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

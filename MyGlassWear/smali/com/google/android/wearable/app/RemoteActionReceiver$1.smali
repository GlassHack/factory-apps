.class final Lcom/google/android/wearable/app/RemoteActionReceiver$1;
.super Ljava/lang/Object;
.source "RemoteActionReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/app/RemoteActionReceiver;->handleAction(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$menuItemId:Ljava/lang/String;

.field final synthetic val$timelineItemId:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 45
    iput-object p1, p0, Lcom/google/android/wearable/app/RemoteActionReceiver$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/android/wearable/app/RemoteActionReceiver$1;->val$timelineItemId:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/wearable/app/RemoteActionReceiver$1;->val$menuItemId:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 48
    iget-object v4, p0, Lcom/google/android/wearable/app/RemoteActionReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v4}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v3

    .line 49
    .local v3, "wearableClient":Lcom/google/android/wearable/gmsclient/WearableClient;
    iget-object v4, p0, Lcom/google/android/wearable/app/RemoteActionReceiver$1;->val$context:Landroid/content/Context;

    .line 50
    invoke-virtual {v3}, Lcom/google/android/wearable/gmsclient/WearableClient;->getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;

    move-result-object v5

    invoke-virtual {v3}, Lcom/google/android/wearable/gmsclient/WearableClient;->getAssetManager()Lcom/google/android/wearable/gmsclient/AssetManager;

    move-result-object v6

    iget-object v7, p0, Lcom/google/android/wearable/app/RemoteActionReceiver$1;->val$timelineItemId:Ljava/lang/String;

    .line 49
    invoke-static {v4, v5, v6, v7}, Lcom/google/android/wearable/app/WearUtil;->notificationFromTimelineItemId(Landroid/content/Context;Lcom/google/android/wearable/gmsclient/DataManager;Lcom/google/android/wearable/gmsclient/AssetManager;Ljava/lang/String;)Landroid/app/Notification;

    move-result-object v2

    .line 52
    .local v2, "notification":Landroid/app/Notification;
    if-nez v2, :cond_0

    .line 53
    invoke-static {}, Lcom/google/android/wearable/app/RemoteActionReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "No notification found for [timelineItemId=%s]."

    new-array v6, v10, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/google/android/wearable/app/RemoteActionReceiver$1;->val$timelineItemId:Ljava/lang/String;

    aput-object v7, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :goto_0
    return-void

    .line 58
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/google/android/wearable/app/RemoteActionReceiver$1;->val$menuItemId:Ljava/lang/String;

    invoke-static {v2, v4}, Lcom/google/android/wearable/app/WearUtil;->getAction(Landroid/app/Notification;Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Action;

    move-result-object v0

    .line 59
    .local v0, "action":Landroid/support/v4/app/NotificationCompat$Action;
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v4

    invoke-static {v4}, Lcom/google/android/wearable/app/WearUtil;->hasRemoteInputs([Landroid/support/v4/app/RemoteInput;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 61
    iget-object v4, p0, Lcom/google/android/wearable/app/RemoteActionReceiver$1;->val$context:Landroid/content/Context;

    .line 62
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Action;->getRemoteInputs()[Landroid/support/v4/app/RemoteInput;

    move-result-object v5

    iget-object v6, v0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    const/4 v7, 0x0

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 61
    invoke-static {v4, v5, v6, v7, v8}, Lcom/google/android/wearable/app/VoiceInputResultReceiver;->collectVoiceInput(Landroid/content/Context;[Landroid/support/v4/app/RemoteInput;Landroid/app/PendingIntent;ILandroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 75
    .end local v0    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    :catch_0
    move-exception v1

    .line 76
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    invoke-static {}, Lcom/google/android/wearable/app/RemoteActionReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Failed to send pending intent for [notification=%s]."

    new-array v6, v10, [Ljava/lang/Object;

    aput-object v2, v6, v9

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 65
    .end local v1    # "e":Landroid/app/PendingIntent$CanceledException;
    .restart local v0    # "action":Landroid/support/v4/app/NotificationCompat$Action;
    :cond_1
    if-eqz v0, :cond_3

    .line 66
    :try_start_1
    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    if-eqz v4, :cond_2

    .line 67
    iget-object v4, v0, Landroid/support/v4/app/NotificationCompat$Action;->actionIntent:Landroid/app/PendingIntent;

    invoke-virtual {v4}, Landroid/app/PendingIntent;->send()V

    goto :goto_0

    .line 69
    :cond_2
    invoke-static {}, Lcom/google/android/wearable/app/RemoteActionReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "No action intent"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    :cond_3
    invoke-static {}, Lcom/google/android/wearable/app/RemoteActionReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v4

    const-string v5, "Can\'t find the action"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

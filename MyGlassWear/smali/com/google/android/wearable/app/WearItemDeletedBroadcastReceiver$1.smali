.class Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "WearItemDeletedBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;Landroid/content/Intent;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver$1;->this$0:Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;

    iput-object p2, p0, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    iput-object p3, p0, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    .line 45
    :try_start_0
    iget-object v7, p0, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v8, "post_delete_intent_timeline_item_extra"

    .line 46
    invoke-virtual {v7, v8}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v7

    .line 45
    invoke-static {v7}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v4

    .line 47
    .local v4, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceItemId()Ljava/lang/String;

    move-result-object v3

    .line 48
    .local v3, "streamId":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "Deleting wearable item: %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v3, v9, v10

    invoke-interface {v7, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 49
    iget-object v7, p0, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-static {v7}, Lcom/google/android/clockwork/host/WearableHost;->getClient(Landroid/content/Context;)Lcom/google/android/wearable/gmsclient/WearableClient;

    move-result-object v6

    .line 50
    .local v6, "wearableClient":Lcom/google/android/wearable/gmsclient/WearableClient;
    invoke-virtual {v6}, Lcom/google/android/wearable/gmsclient/WearableClient;->getDataManager()Lcom/google/android/wearable/gmsclient/DataManager;

    move-result-object v7

    invoke-virtual {v7, v3}, Lcom/google/android/wearable/gmsclient/DataManager;->deleteDataItem(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getBundleId()Ljava/lang/String;

    move-result-object v0

    .line 53
    .local v0, "bundleId":Ljava/lang/String;
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v2

    .line 57
    .local v2, "source":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 59
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v5

    .line 60
    .local v5, "timelineItemDatabaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    iget-object v7, p0, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver$1;->this$0:Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;

    invoke-virtual {v7, v0, v2, v5}, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;->deleteStandaloneCover(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V

    .line 65
    .end local v5    # "timelineItemDatabaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    :cond_0
    invoke-virtual {v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getIsBundleCover()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 67
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v7

    iget-object v8, p0, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver$1;->val$context:Landroid/content/Context;

    invoke-virtual {v7, v8}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v5

    .line 68
    .restart local v5    # "timelineItemDatabaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    iget-object v7, p0, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver$1;->this$0:Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;

    invoke-virtual {v7, v0, v2, v5}, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;->deleteBundleMembers(Ljava/lang/String;Ljava/lang/String;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/google/android/wearable/gmsclient/WearableException; {:try_start_0 .. :try_end_0} :catch_3

    .line 79
    .end local v0    # "bundleId":Ljava/lang/String;
    .end local v2    # "source":Ljava/lang/String;
    .end local v3    # "streamId":Ljava/lang/String;
    .end local v4    # "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .end local v5    # "timelineItemDatabaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    .end local v6    # "wearableClient":Lcom/google/android/wearable/gmsclient/WearableClient;
    :cond_1
    :goto_0
    return-void

    .line 70
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/InterruptedException;
    invoke-static {}, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "InterruptedException while deleting item."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v1, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 72
    .end local v1    # "e":Ljava/lang/InterruptedException;
    :catch_1
    move-exception v1

    .line 73
    .local v1, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-static {}, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "InvalidProtocolBufferNanoException while deleting item."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v1, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 74
    .end local v1    # "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    :catch_2
    move-exception v1

    .line 75
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "RemoteException while deleting item."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v1, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 76
    .end local v1    # "e":Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .line 77
    .local v1, "e":Lcom/google/android/wearable/gmsclient/WearableException;
    invoke-static {}, Lcom/google/android/wearable/app/WearItemDeletedBroadcastReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v7

    const-string v8, "WearableException while deleting item."

    new-array v9, v11, [Ljava/lang/Object;

    invoke-interface {v7, v1, v8, v9}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

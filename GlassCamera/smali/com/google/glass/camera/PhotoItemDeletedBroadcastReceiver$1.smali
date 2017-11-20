.class Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver$1;
.super Ljava/lang/Object;
.source "PhotoItemDeletedBroadcastReceiver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver;->onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver;

.field final synthetic val$applicationContext:Landroid/content/Context;

.field final synthetic val$intent:Landroid/content/Intent;


# direct methods
.method constructor <init>(Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver;Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver;

    .prologue
    .line 33
    iput-object p1, p0, Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver$1;->this$0:Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver;

    iput-object p2, p0, Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver$1;->val$applicationContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 37
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver$1;->val$applicationContext:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v2

    .line 39
    .local v2, "timelineItemDatabaseHelper":Lcom/google/glass/timeline/TimelineItemDatabaseHelper;
    :try_start_0
    iget-object v3, p0, Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver$1;->val$intent:Landroid/content/Intent;

    const-string v4, "post_delete_intent_timeline_item_extra"

    .line 40
    invoke-virtual {v3, v4}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v3

    .line 39
    invoke-static {v3}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->parseFrom([B)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v1

    .line 41
    .local v1, "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    if-eqz v1, :cond_0

    .line 42
    iget-object v3, p0, Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver$1;->val$applicationContext:Landroid/content/Context;

    invoke-static {v3, v2, v1}, Lcom/google/glass/timeline/CameraBundleHelper;->updateBundleIfNecessary(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemDatabaseHelper;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V
    :try_end_0
    .catch Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v1    # "timelineItem":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    :cond_0
    :goto_0
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
    invoke-static {}, Lcom/google/glass/camera/PhotoItemDeletedBroadcastReceiver;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    const-string v4, "Error parsing protobuf:\n%s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

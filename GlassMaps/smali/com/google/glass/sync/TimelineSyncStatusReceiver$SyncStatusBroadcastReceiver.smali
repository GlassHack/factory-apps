.class Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final syncStatusReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/sync/TimelineSyncStatusReceiver;


# direct methods
.method private constructor <init>(Lcom/google/glass/sync/TimelineSyncStatusReceiver;)V
    .locals 3

    .prologue
    .line 87
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;->this$0:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    .line 88
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.sync.SYNC_STATUS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 85
    invoke-static {}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->access$400()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "syncStatusReceiver"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;->syncStatusReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 89
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/sync/TimelineSyncStatusReceiver;Lcom/google/glass/sync/TimelineSyncStatusReceiver$1;)V
    .locals 0

    .prologue
    .line 83
    invoke-direct {p0, p1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;-><init>(Lcom/google/glass/sync/TimelineSyncStatusReceiver;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;->syncStatusReceiverLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Received action: %s"

    new-array v2, v5, [Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    const-string v0, "com.google.glass.sync.SYNC_STATUS"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 95
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;->this$0:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    const-string v1, "item_id"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->access$202(Lcom/google/glass/sync/TimelineSyncStatusReceiver;Ljava/lang/String;)Ljava/lang/String;

    .line 96
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Sync status changed for item: %s"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;->this$0:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-static {v3}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->access$200(Lcom/google/glass/sync/TimelineSyncStatusReceiver;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncStatusReceiver$SyncStatusBroadcastReceiver;->this$0:Lcom/google/glass/sync/TimelineSyncStatusReceiver;

    invoke-static {v0}, Lcom/google/glass/sync/TimelineSyncStatusReceiver;->access$300(Lcom/google/glass/sync/TimelineSyncStatusReceiver;)V

    .line 99
    :cond_0
    return-void
.end method

.class Lcom/google/glass/sync/UploadSyncHelper$2;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "UploadSyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sync/UploadSyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/UploadSyncHelper;

.field private final timelineSyncServiceLogger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/UploadSyncHelper;Landroid/content/ComponentName;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/sync/UploadSyncHelper;
    .param p2, "x0"    # Landroid/content/ComponentName;

    .prologue
    .line 131
    iput-object p1, p0, Lcom/google/glass/sync/UploadSyncHelper$2;->this$0:Lcom/google/glass/sync/UploadSyncHelper;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    .line 132
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper$2;->this$0:Lcom/google/glass/sync/UploadSyncHelper;

    .line 133
    invoke-static {v0}, Lcom/google/glass/sync/UploadSyncHelper;->access$000(Lcom/google/glass/sync/UploadSyncHelper;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper$2;->timelineSyncServiceLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 132
    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper$2;->timelineSyncServiceLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper$2;->this$0:Lcom/google/glass/sync/UploadSyncHelper;

    invoke-static {p2}, Lcom/google/glass/sync/ITimelineSyncService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/google/glass/sync/ITimelineSyncService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/glass/sync/UploadSyncHelper;->access$102(Lcom/google/glass/sync/UploadSyncHelper;Lcom/google/glass/sync/ITimelineSyncService;)Lcom/google/glass/sync/ITimelineSyncService;

    .line 138
    return-void
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isError"    # Z

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/glass/sync/UploadSyncHelper$2;->this$0:Lcom/google/glass/sync/UploadSyncHelper;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/sync/UploadSyncHelper;->access$102(Lcom/google/glass/sync/UploadSyncHelper;Lcom/google/glass/sync/ITimelineSyncService;)Lcom/google/glass/sync/ITimelineSyncService;

    .line 144
    return-void
.end method

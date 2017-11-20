.class Lcom/google/glass/sync/TimelineSyncHandler$1;
.super Ljava/lang/Object;
.source "TimelineSyncHandler.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/TimelineSyncHandler;->sync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/TimelineSyncHandler;

.field final synthetic val$syncStats:Lcom/google/glass/sync/SyncStats;

.field final synthetic val$useNewUploadSyncHelper:Z


# direct methods
.method constructor <init>(Lcom/google/glass/sync/TimelineSyncHandler;ZLcom/google/glass/sync/SyncStats;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/TimelineSyncHandler;

    .prologue
    .line 153
    iput-object p1, p0, Lcom/google/glass/sync/TimelineSyncHandler$1;->this$0:Lcom/google/glass/sync/TimelineSyncHandler;

    iput-boolean p2, p0, Lcom/google/glass/sync/TimelineSyncHandler$1;->val$useNewUploadSyncHelper:Z

    iput-object p3, p0, Lcom/google/glass/sync/TimelineSyncHandler$1;->val$syncStats:Lcom/google/glass/sync/SyncStats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 153
    invoke-virtual {p0}, Lcom/google/glass/sync/TimelineSyncHandler$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 156
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncHandler$1;->this$0:Lcom/google/glass/sync/TimelineSyncHandler;

    invoke-static {v0}, Lcom/google/glass/sync/TimelineSyncHandler;->access$000(Lcom/google/glass/sync/TimelineSyncHandler;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Starting timeline upload asynchronously."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 158
    iget-boolean v0, p0, Lcom/google/glass/sync/TimelineSyncHandler$1;->val$useNewUploadSyncHelper:Z

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncHandler$1;->this$0:Lcom/google/glass/sync/TimelineSyncHandler;

    invoke-static {v0}, Lcom/google/glass/sync/TimelineSyncHandler;->access$100(Lcom/google/glass/sync/TimelineSyncHandler;)Lcom/google/glass/sync/NewUploadSyncHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/sync/TimelineSyncHandler$1;->val$syncStats:Lcom/google/glass/sync/SyncStats;

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/NewUploadSyncHelper;->sync(Lcom/google/glass/sync/SyncStats;)V

    .line 164
    :goto_0
    const/4 v0, 0x0

    return-object v0

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/glass/sync/TimelineSyncHandler$1;->this$0:Lcom/google/glass/sync/TimelineSyncHandler;

    invoke-static {v0}, Lcom/google/glass/sync/TimelineSyncHandler;->access$200(Lcom/google/glass/sync/TimelineSyncHandler;)Lcom/google/glass/sync/UploadSyncHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/sync/TimelineSyncHandler$1;->val$syncStats:Lcom/google/glass/sync/SyncStats;

    invoke-virtual {v0, v1}, Lcom/google/glass/sync/UploadSyncHelper;->sync(Lcom/google/glass/sync/SyncStats;)V

    goto :goto_0
.end method

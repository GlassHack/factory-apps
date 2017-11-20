.class Lcom/google/glass/home/sync/EntitySyncHandler$2;
.super Ljava/lang/Object;
.source "EntitySyncHandler.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/sync/EntitySyncHandler;->createResponseHandler(Ljava/util/Map;ZZ)Lcom/google/glass/net/ProtoResponseHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/sync/EntitySyncHandler;

.field final synthetic val$entitiesFromDevice:Ljava/util/Map;

.field final synthetic val$isFullSync:Z

.field final synthetic val$verboseServerLogging:Z


# direct methods
.method constructor <init>(Lcom/google/glass/home/sync/EntitySyncHandler;Ljava/util/Map;ZZ)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/home/sync/EntitySyncHandler;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/google/glass/home/sync/EntitySyncHandler$2;->this$0:Lcom/google/glass/home/sync/EntitySyncHandler;

    iput-object p2, p0, Lcom/google/glass/home/sync/EntitySyncHandler$2;->val$entitiesFromDevice:Ljava/util/Map;

    iput-boolean p3, p0, Lcom/google/glass/home/sync/EntitySyncHandler$2;->val$isFullSync:Z

    iput-boolean p4, p0, Lcom/google/glass/home/sync/EntitySyncHandler$2;->val$verboseServerLogging:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 158
    invoke-static {}, Lcom/google/glass/home/sync/EntitySyncHandler;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Entity sync cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    return-void
.end method

.method public onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .prologue
    const/4 v3, 0x0

    .line 163
    invoke-static {}, Lcom/google/glass/home/sync/EntitySyncHandler;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Entity sync error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/google/glass/home/sync/EntitySyncHandler$2;->this$0:Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v0, p1}, Lcom/google/glass/home/sync/EntitySyncHandler;->handleFail(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V

    .line 169
    sget-object v0, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->INTERNAL_ERROR:Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    invoke-virtual {v0, p1}, Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-static {}, Lcom/google/glass/home/sync/EntitySyncHandler;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Clearing people sync token in case of expired sync token."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 171
    iget-object v0, p0, Lcom/google/glass/home/sync/EntitySyncHandler$2;->this$0:Lcom/google/glass/home/sync/EntitySyncHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v3}, Lcom/google/glass/home/sync/EntitySyncHandler;->storeSyncToken(Ljava/lang/String;Z)V

    .line 173
    :cond_0
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;)V
    .locals 4
    .param p1, "responseProto"    # Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;

    .prologue
    .line 177
    iget-object v0, p0, Lcom/google/glass/home/sync/EntitySyncHandler$2;->this$0:Lcom/google/glass/home/sync/EntitySyncHandler;

    iget-object v1, p0, Lcom/google/glass/home/sync/EntitySyncHandler$2;->val$entitiesFromDevice:Ljava/util/Map;

    iget-boolean v2, p0, Lcom/google/glass/home/sync/EntitySyncHandler$2;->val$isFullSync:Z

    iget-boolean v3, p0, Lcom/google/glass/home/sync/EntitySyncHandler$2;->val$verboseServerLogging:Z

    invoke-virtual {v0, p1, v1, v2, v3}, Lcom/google/glass/home/sync/EntitySyncHandler;->processSyncResponse(Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;Ljava/util/Map;ZZ)V

    .line 178
    iget-object v0, p0, Lcom/google/glass/home/sync/EntitySyncHandler$2;->this$0:Lcom/google/glass/home/sync/EntitySyncHandler;

    invoke-virtual {v0}, Lcom/google/glass/home/sync/EntitySyncHandler;->handleSuccess()V

    .line 179
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 155
    check-cast p1, Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;

    invoke-virtual {p0, p1}, Lcom/google/glass/home/sync/EntitySyncHandler$2;->onSuccess(Lcom/google/googlex/glass/common/proto/EntitySyncNano$EntitySyncResponse;)V

    return-void
.end method

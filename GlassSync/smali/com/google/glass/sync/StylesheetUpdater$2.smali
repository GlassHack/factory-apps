.class Lcom/google/glass/sync/StylesheetUpdater$2;
.super Lcom/google/glass/net/SimpleProtoResponseHandler;
.source "StylesheetUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/sync/StylesheetUpdater;->checkForUpdates()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/net/SimpleProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/sync/StylesheetUpdater;


# direct methods
.method constructor <init>(Lcom/google/glass/sync/StylesheetUpdater;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/sync/StylesheetUpdater;

    .prologue
    .line 73
    iput-object p1, p0, Lcom/google/glass/sync/StylesheetUpdater$2;->this$0:Lcom/google/glass/sync/StylesheetUpdater;

    invoke-direct {p0}, Lcom/google/glass/net/SimpleProtoResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .prologue
    .line 86
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetUpdater$2;->this$0:Lcom/google/glass/sync/StylesheetUpdater;

    invoke-static {v0}, Lcom/google/glass/sync/StylesheetUpdater;->access$200(Lcom/google/glass/sync/StylesheetUpdater;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Server error: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;)V
    .locals 2
    .param p1, "responseProto"    # Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    .prologue
    .line 76
    iget-object v0, p0, Lcom/google/glass/sync/StylesheetUpdater$2;->this$0:Lcom/google/glass/sync/StylesheetUpdater;

    invoke-static {v0}, Lcom/google/glass/sync/StylesheetUpdater;->access$100(Lcom/google/glass/sync/StylesheetUpdater;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/glass/sync/StylesheetUpdater$2$1;

    invoke-direct {v1, p0, p1}, Lcom/google/glass/sync/StylesheetUpdater$2$1;-><init>(Lcom/google/glass/sync/StylesheetUpdater$2;Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 82
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 73
    check-cast p1, Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;

    invoke-virtual {p0, p1}, Lcom/google/glass/sync/StylesheetUpdater$2;->onSuccess(Lcom/google/googlex/glass/common/proto/ResourceNano$ResourceResponse;)V

    return-void
.end method

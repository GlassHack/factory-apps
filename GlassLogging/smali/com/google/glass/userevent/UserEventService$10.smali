.class Lcom/google/glass/userevent/UserEventService$10;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/userevent/UserEventService;->sendReportUserEventRequest(Ljava/lang/String;Ljava/lang/String;I[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
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
        "Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/userevent/UserEventService;

.field final synthetic val$events:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UserEventService;[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/userevent/UserEventService;

    .prologue
    .line 634
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventService$10;->this$0:Lcom/google/glass/userevent/UserEventService;

    iput-object p2, p0, Lcom/google/glass/userevent/UserEventService$10;->val$events:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel()V
    .locals 3

    .prologue
    .line 637
    invoke-static {}, Lcom/google/glass/userevent/UserEventService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "User event request cancelled. Will retry."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 638
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService$10;->this$0:Lcom/google/glass/userevent/UserEventService;

    iget-object v1, p0, Lcom/google/glass/userevent/UserEventService$10;->val$events:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-static {v0, v1}, Lcom/google/glass/userevent/UserEventService;->access$400(Lcom/google/glass/userevent/UserEventService;[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 639
    return-void
.end method

.method public onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .prologue
    .line 642
    invoke-static {}, Lcom/google/glass/userevent/UserEventService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "User event request resulted in error %s. Will retry."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 643
    iget-object v0, p0, Lcom/google/glass/userevent/UserEventService$10;->this$0:Lcom/google/glass/userevent/UserEventService;

    iget-object v1, p0, Lcom/google/glass/userevent/UserEventService$10;->val$events:[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;

    invoke-static {v0, v1}, Lcom/google/glass/userevent/UserEventService;->access$400(Lcom/google/glass/userevent/UserEventService;[Lcom/google/common/logging/GlassExtensionsNano$GlassUserEventProto;)V

    .line 644
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;)V
    .locals 3
    .param p1, "responseProto"    # Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    .prologue
    .line 647
    invoke-static {}, Lcom/google/glass/userevent/UserEventService;->access$100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "User event request succeeded."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 648
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 634
    check-cast p1, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    invoke-virtual {p0, p1}, Lcom/google/glass/userevent/UserEventService$10;->onSuccess(Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;)V

    return-void
.end method

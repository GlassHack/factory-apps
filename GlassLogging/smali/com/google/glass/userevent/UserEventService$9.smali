.class Lcom/google/glass/userevent/UserEventService$9;
.super Lcom/google/glass/net/SimpleProtoResponseHandler;
.source "UserEventService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/userevent/UserEventService;->sendBlockingGetSessionIdRequest()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/net/SimpleProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/userevent/UserEventService;


# direct methods
.method constructor <init>(Lcom/google/glass/userevent/UserEventService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/userevent/UserEventService;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/google/glass/userevent/UserEventService$9;->this$0:Lcom/google/glass/userevent/UserEventService;

    invoke-direct {p0}, Lcom/google/glass/net/SimpleProtoResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;)V
    .locals 2
    .param p1, "responseProto"    # Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;

    .prologue
    .line 567
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;->getSessionId()Ljava/lang/String;

    move-result-object v0

    .line 568
    .local v0, "sessionId":Ljava/lang/String;
    iget-object v1, p0, Lcom/google/glass/userevent/UserEventService$9;->this$0:Lcom/google/glass/userevent/UserEventService;

    iget-object v1, v1, Lcom/google/glass/userevent/UserEventService;->userEventPreferences:Lcom/google/glass/userevent/UserEventPreferences;

    invoke-virtual {v1, v0}, Lcom/google/glass/userevent/UserEventPreferences;->setSessionId(Ljava/lang/String;)V

    .line 569
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 564
    check-cast p1, Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;

    invoke-virtual {p0, p1}, Lcom/google/glass/userevent/UserEventService$9;->onSuccess(Lcom/google/googlex/glass/common/proto/LoggingNano$GetSessionIdResponse;)V

    return-void
.end method

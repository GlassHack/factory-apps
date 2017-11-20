.class public Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;
.super Ljava/lang/Object;
.source "GlassUserEventService.java"

# interfaces
.implements Lcom/google/glass/net/ProtoResponseHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/logging/GlassUserEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckinResponseHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/net/ProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private success:Z

.field final synthetic this$0:Lcom/google/glass/logging/GlassUserEventService;


# direct methods
.method public constructor <init>(Lcom/google/glass/logging/GlassUserEventService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/logging/GlassUserEventService;

    .prologue
    .line 113
    iput-object p1, p0, Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;->this$0:Lcom/google/glass/logging/GlassUserEventService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;->success:Z

    return-void
.end method


# virtual methods
.method public isSuccessForTest()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 135
    iget-boolean v0, p0, Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;->success:Z

    return v0
.end method

.method public onCancel()V
    .locals 3

    .prologue
    .line 124
    iget-object v0, p0, Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;->this$0:Lcom/google/glass/logging/GlassUserEventService;

    invoke-static {v0}, Lcom/google/glass/logging/GlassUserEventService;->access$000(Lcom/google/glass/logging/GlassUserEventService;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Checkin request cancelled"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 125
    return-void
.end method

.method public onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 4
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;->this$0:Lcom/google/glass/logging/GlassUserEventService;

    invoke-static {v0}, Lcom/google/glass/logging/GlassUserEventService;->access$000(Lcom/google/glass/logging/GlassUserEventService;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Dispatcher error while checking in device [errorCode=%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 120
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;)V
    .locals 3
    .param p1, "responseProto"    # Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    .prologue
    .line 129
    iget-object v0, p0, Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;->this$0:Lcom/google/glass/logging/GlassUserEventService;

    invoke-static {v0}, Lcom/google/glass/logging/GlassUserEventService;->access$000(Lcom/google/glass/logging/GlassUserEventService;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "Checkin successful"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;->success:Z

    .line 131
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 113
    check-cast p1, Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;

    invoke-virtual {p0, p1}, Lcom/google/glass/logging/GlassUserEventService$CheckinResponseHandler;->onSuccess(Lcom/google/googlex/glass/common/proto/DeviceCheckinNano$DeviceCheckinResponse;)V

    return-void
.end method

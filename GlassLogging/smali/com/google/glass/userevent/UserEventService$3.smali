.class final Lcom/google/glass/userevent/UserEventService$3;
.super Ljava/lang/Object;
.source "UserEventService.java"

# interfaces
.implements Lcom/google/glass/protobuf/ProtoParser$Provider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/userevent/UserEventService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/protobuf/ProtoParser$Provider",
        "<",
        "Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public provide()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;
    .locals 1

    .prologue
    .line 79
    new-instance v0, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;-><init>()V

    return-object v0
.end method

.method public bridge synthetic provide()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/google/glass/userevent/UserEventService$3;->provide()Lcom/google/googlex/glass/common/proto/LoggingNano$ReportUserEventResponse;

    move-result-object v0

    return-object v0
.end method

.class Lcom/google/glass/home/HomeApplication$5$1;
.super Lcom/google/glass/net/SimpleProtoResponseHandler;
.source "HomeApplication.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/home/HomeApplication$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/glass/net/SimpleProtoResponseHandler",
        "<",
        "Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/home/HomeApplication$5;

.field final synthetic val$registrationIdFinal:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/home/HomeApplication$5;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/home/HomeApplication$5;

    .prologue
    .line 437
    iput-object p1, p0, Lcom/google/glass/home/HomeApplication$5$1;->this$1:Lcom/google/glass/home/HomeApplication$5;

    iput-object p2, p0, Lcom/google/glass/home/HomeApplication$5$1;->val$registrationIdFinal:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/net/SimpleProtoResponseHandler;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;)V
    .locals 2
    .param p1, "errorCode"    # Lcom/google/glass/net/ProtoRequestDispatcher$ErrorCode;

    .prologue
    .line 442
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$5$1;->this$1:Lcom/google/glass/home/HomeApplication$5;

    iget-object v0, v0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$5$1;->val$registrationIdFinal:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/home/GCMIntentService;->registerWithGlassServer(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V

    .line 443
    return-void
.end method

.method public onSuccess(Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;)V
    .locals 2
    .param p1, "responseProto"    # Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;

    .prologue
    .line 449
    .line 450
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;->getResponseCode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lcom/google/glass/home/HomeApplication$5$1;->this$1:Lcom/google/glass/home/HomeApplication$5;

    iget-object v0, v0, Lcom/google/glass/home/HomeApplication$5;->this$0:Lcom/google/glass/home/HomeApplication;

    iget-object v1, p0, Lcom/google/glass/home/HomeApplication$5$1;->val$registrationIdFinal:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/google/glass/home/GCMIntentService;->registerWithGlassServer(Lcom/google/glass/home/HomeApplication;Ljava/lang/String;)V

    .line 454
    :cond_0
    return-void
.end method

.method public bridge synthetic onSuccess(Lcom/google/protobuf/nano/MessageNano;)V
    .locals 0

    .prologue
    .line 437
    check-cast p1, Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;

    invoke-virtual {p0, p1}, Lcom/google/glass/home/HomeApplication$5$1;->onSuccess(Lcom/google/googlex/glass/common/proto/GCMRegisterNano$GCMRegistrationResponse;)V

    return-void
.end method

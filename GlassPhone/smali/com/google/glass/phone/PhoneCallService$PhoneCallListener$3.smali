.class Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3;
.super Ljava/lang/Object;
.source "PhoneCallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->onCallConnecting(Lcom/google/glass/phone/PhoneCall;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

.field final synthetic val$call:Lcom/google/glass/phone/PhoneCall;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;Lcom/google/glass/phone/PhoneCall;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    .prologue
    .line 261
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iput-object p2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 264
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-static {v0, v1}, Lcom/google/glass/phone/PhoneCallService;->access$102(Lcom/google/glass/phone/PhoneCallService;Lcom/google/glass/phone/PhoneCall;)Lcom/google/glass/phone/PhoneCall;

    .line 265
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3;->val$call:Lcom/google/glass/phone/PhoneCall;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/phone/PhoneCallService;->showPhoneCall(Lcom/google/glass/phone/PhoneCall;Z)V

    .line 267
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-static {v0}, Lcom/google/glass/phone/PhoneCallService;->access$200(Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    move-result-object v0

    new-instance v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3$1;

    invoke-direct {v1, p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3$1;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 274
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$3;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    const-string v1, "1"

    invoke-static {v0, v1}, Lcom/google/glass/phone/PhoneCallService;->access$300(Lcom/google/glass/phone/PhoneCallService;Ljava/lang/String;)V

    .line 275
    return-void
.end method

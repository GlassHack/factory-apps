.class Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$8;
.super Ljava/lang/Object;
.source "PhoneCallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->onPhoneNumberSet(Lcom/google/glass/phone/PhoneCall;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

.field final synthetic val$call:Lcom/google/glass/phone/PhoneCall;

.field final synthetic val$phoneNumber:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;Lcom/google/glass/phone/PhoneCall;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    .prologue
    .line 411
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$8;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iput-object p2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$8;->val$call:Lcom/google/glass/phone/PhoneCall;

    iput-object p3, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$8;->val$phoneNumber:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 416
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$8;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-static {v0}, Lcom/google/glass/phone/PhoneCallService;->access$100(Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/phone/PhoneCall;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$8;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCall;->getPhoneNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/glass/phone/PhoneCall;->setPhoneNumber(Ljava/lang/String;)Z

    .line 418
    iget-object v0, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$8;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v0, v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-static {v0}, Lcom/google/glass/phone/PhoneCallService;->access$200(Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    move-result-object v0

    new-instance v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$8$1;

    invoke-direct {v1, p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$8$1;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$8;)V

    invoke-virtual {v0, v1}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 424
    return-void
.end method

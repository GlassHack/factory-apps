.class Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4;
.super Ljava/lang/Object;
.source "PhoneCallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->onCallConnected(Lcom/google/glass/phone/PhoneCall;)V
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
    .line 283
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iput-object p2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 286
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v1, v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-static {v1, v2}, Lcom/google/glass/phone/PhoneCallService;->access$102(Lcom/google/glass/phone/PhoneCallService;Lcom/google/glass/phone/PhoneCall;)Lcom/google/glass/phone/PhoneCall;

    .line 288
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v1, v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/glass/phone/PhoneApplication;->from(Landroid/content/Context;)Lcom/google/glass/phone/PhoneApplication;

    move-result-object v0

    .line 289
    .local v0, "app":Lcom/google/glass/phone/PhoneApplication;
    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneApplication;->stopRinging()V

    .line 290
    invoke-static {v0}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 291
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_START:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 293
    :cond_0
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v1, v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v1, v2}, Lcom/google/glass/phone/PhoneCallService;->showPhoneCall(Lcom/google/glass/phone/PhoneCall;)V

    .line 295
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v1, v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-static {v1}, Lcom/google/glass/phone/PhoneCallService;->access$200(Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    move-result-object v1

    new-instance v2, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4$1;

    invoke-direct {v2, p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4$1;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 302
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$4;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v1, v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    const-string v2, "6"

    invoke-static {v1, v2}, Lcom/google/glass/phone/PhoneCallService;->access$300(Lcom/google/glass/phone/PhoneCallService;Ljava/lang/String;)V

    .line 303
    return-void
.end method

.class Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;
.super Ljava/lang/Object;
.source "PhoneCallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->onCallError(Lcom/google/glass/phone/PhoneCall;)V
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
    .line 369
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iput-object p2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 372
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v1, v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-static {v1, v2}, Lcom/google/glass/phone/PhoneCallService;->access$102(Lcom/google/glass/phone/PhoneCallService;Lcom/google/glass/phone/PhoneCall;)Lcom/google/glass/phone/PhoneCall;

    .line 374
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v1, v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 375
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0}, Lcom/google/glass/phone/PhoneApplication;->from(Landroid/content/Context;)Lcom/google/glass/phone/PhoneApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneApplication;->stopRinging()V

    .line 376
    invoke-static {v0}, Lcom/google/glass/util/MicrophoneHelper;->unmute(Landroid/content/Context;)V

    .line 377
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v1, v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v1, v2}, Lcom/google/glass/phone/PhoneCallService;->showPhoneCall(Lcom/google/glass/phone/PhoneCall;)V

    .line 379
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v1, v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-static {v1}, Lcom/google/glass/phone/PhoneCallService;->access$200(Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    move-result-object v1

    new-instance v2, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7$1;

    invoke-direct {v2, p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7$1;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;)V

    invoke-virtual {v1, v2}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 386
    invoke-static {v0}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 387
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v1, v2}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 390
    :cond_0
    invoke-static {}, Lcom/google/glass/phone/PhoneCallService;->access$600()Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7$2;

    invoke-direct {v2, p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7$2;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;)V

    const-wide/16 v3, 0x7d0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 400
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v1, v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    const-string v2, "8"

    invoke-static {v1, v2}, Lcom/google/glass/phone/PhoneCallService;->access$300(Lcom/google/glass/phone/PhoneCallService;Ljava/lang/String;)V

    .line 402
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v1, v1, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$7;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCall;->getCallRunTime()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/google/glass/phone/PhoneCallService;->access$500(Lcom/google/glass/phone/PhoneCallService;J)V

    .line 403
    return-void
.end method

.class Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;
.super Ljava/lang/Object;
.source "PhoneCallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->onCallDisconnected(Lcom/google/glass/phone/PhoneCall;)V
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
    .line 334
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iput-object p2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 337
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v2, v2, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    iget-object v3, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-static {v2, v3}, Lcom/google/glass/phone/PhoneCallService;->access$102(Lcom/google/glass/phone/PhoneCallService;Lcom/google/glass/phone/PhoneCall;)Lcom/google/glass/phone/PhoneCall;

    .line 339
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v2, v2, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 340
    .local v1, "context":Landroid/content/Context;
    invoke-static {v1}, Lcom/google/glass/phone/PhoneApplication;->from(Landroid/content/Context;)Lcom/google/glass/phone/PhoneApplication;

    move-result-object v0

    .line 341
    .local v0, "app":Lcom/google/glass/phone/PhoneApplication;
    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneApplication;->stopRinging()V

    .line 342
    invoke-static {v1}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 343
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/sound/SoundManager;

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->CALL_STOP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 345
    :cond_0
    invoke-static {v1}, Lcom/google/glass/util/MicrophoneHelper;->unmute(Landroid/content/Context;)V

    .line 346
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v2, v2, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCallService;->hidePhoneCall()V

    .line 347
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v2, v2, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    iget-object v2, v2, Lcom/google/glass/phone/PhoneCallService;->timelineHelper:Lcom/google/glass/phone/PhoneCallTimelineHelper;

    iget-object v3, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v2, v3}, Lcom/google/glass/phone/PhoneCallTimelineHelper;->insertCallAsync(Lcom/google/glass/phone/PhoneCall;)Ljava/util/concurrent/CountDownLatch;

    .line 349
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v2, v2, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-static {v2}, Lcom/google/glass/phone/PhoneCallService;->access$200(Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    move-result-object v2

    new-instance v3, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6$1;

    invoke-direct {v3, p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6$1;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;)V

    invoke-virtual {v2, v3}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 356
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCall;->isMissedCall()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 357
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v2, v2, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    const-string v3, "4"

    invoke-static {v2, v3}, Lcom/google/glass/phone/PhoneCallService;->access$300(Lcom/google/glass/phone/PhoneCallService;Ljava/lang/String;)V

    .line 360
    :cond_1
    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v2, v2, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    iget-object v3, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$6;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v3}, Lcom/google/glass/phone/PhoneCall;->getCallRunTime()J

    move-result-wide v3

    invoke-static {v2, v3, v4}, Lcom/google/glass/phone/PhoneCallService;->access$500(Lcom/google/glass/phone/PhoneCallService;J)V

    .line 361
    return-void
.end method

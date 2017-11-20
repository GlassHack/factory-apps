.class Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;
.super Ljava/lang/Object;
.source "PhoneCallService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->onIncomingCallInitiated(Lcom/google/glass/phone/PhoneCall;)V
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
    .line 220
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iput-object p2, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 223
    iget-object v5, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v5, v5, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    iget-object v6, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-static {v5, v6}, Lcom/google/glass/phone/PhoneCallService;->access$102(Lcom/google/glass/phone/PhoneCallService;Lcom/google/glass/phone/PhoneCall;)Lcom/google/glass/phone/PhoneCall;

    .line 225
    iget-object v5, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v5, v5, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-virtual {v5}, Lcom/google/glass/phone/PhoneCallService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 226
    .local v0, "context":Landroid/content/Context;
    iget-object v5, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v5}, Lcom/google/glass/phone/PhoneCall;->getLocalRingtone()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v0}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 227
    invoke-static {v0}, Lcom/google/glass/phone/PhoneApplication;->from(Landroid/content/Context;)Lcom/google/glass/phone/PhoneApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/google/glass/phone/PhoneApplication;->startRinging()V

    .line 230
    :cond_0
    new-instance v3, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v3, v0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    .line 232
    .local v3, "power":Lcom/google/glass/util/PowerHelper;
    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->isScreenOn()Z

    move-result v5

    if-nez v5, :cond_1

    const/4 v2, 0x1

    .line 233
    .local v2, "isFromScreenOff":Z
    :goto_0
    iget-object v5, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    invoke-static {v5}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->access$400(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    const/16 v7, 0x15

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v7, "Screen was off? "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-array v7, v4, [Ljava/lang/Object;

    invoke-static {v5, v6, v7}, Lcom/google/glass/logging/Log;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 236
    invoke-virtual {v3}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 238
    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/google/glass/phone/IncomingCallActivity;

    invoke-direct {v1, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 239
    .local v1, "incomingCallIntent":Landroid/content/Intent;
    const-string v5, "is_from_screen_off"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 241
    const-string v5, "phone_call"

    iget-object v6, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 242
    const/high16 v5, 0x10000000

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 245
    iget-object v5, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v5, v5, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    iget-object v6, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;->val$call:Lcom/google/glass/phone/PhoneCall;

    invoke-virtual {v5, v6, v4}, Lcom/google/glass/phone/PhoneCallService;->showPhoneCall(Lcom/google/glass/phone/PhoneCall;Z)V

    .line 247
    iget-object v4, p0, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;->this$1:Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;

    iget-object v4, v4, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener;->this$0:Lcom/google/glass/phone/PhoneCallService;

    invoke-static {v4}, Lcom/google/glass/phone/PhoneCallService;->access$200(Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;

    move-result-object v4

    new-instance v5, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2$1;

    invoke-direct {v5, p0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2$1;-><init>(Lcom/google/glass/phone/PhoneCallService$PhoneCallListener$2;)V

    invoke-virtual {v4, v5}, Lcom/google/glass/util/remote/RemoteCallbackBroadcaster;->doOperation(Lcom/google/glass/util/remote/RemoteCallbackOperation;)V

    .line 253
    return-void

    .end local v1    # "incomingCallIntent":Landroid/content/Intent;
    .end local v2    # "isFromScreenOff":Z
    :cond_1
    move v2, v4

    .line 232
    goto :goto_0
.end method

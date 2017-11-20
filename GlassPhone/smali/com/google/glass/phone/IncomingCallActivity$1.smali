.class Lcom/google/glass/phone/IncomingCallActivity$1;
.super Lcom/google/glass/util/SafeServiceConnection;
.source "IncomingCallActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/phone/IncomingCallActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/phone/IncomingCallActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/IncomingCallActivity;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/phone/IncomingCallActivity;
    .param p2, "x0"    # Landroid/content/ComponentName;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/google/glass/phone/IncomingCallActivity$1;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-direct {p0, p2}, Lcom/google/glass/util/SafeServiceConnection;-><init>(Landroid/content/ComponentName;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$1;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-static {v0}, Lcom/google/glass/phone/IncomingCallActivity;->access$300(Lcom/google/glass/phone/IncomingCallActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onServiceConnectedInternal(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 62
    move-object v0, p2

    check-cast v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;

    .line 63
    .local v0, "binder":Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;
    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity$1;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;->getService()Lcom/google/glass/phone/PhoneCallService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/phone/IncomingCallActivity;->access$002(Lcom/google/glass/phone/IncomingCallActivity;Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/phone/PhoneCallService;

    .line 64
    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity$1;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-static {v1}, Lcom/google/glass/phone/IncomingCallActivity;->access$000(Lcom/google/glass/phone/IncomingCallActivity;)Lcom/google/glass/phone/PhoneCallService;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/phone/IncomingCallActivity$1;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-static {v2}, Lcom/google/glass/phone/IncomingCallActivity;->access$100(Lcom/google/glass/phone/IncomingCallActivity;)Lcom/google/glass/phone/SimplePhoneCallListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/phone/PhoneCallService;->addListener(Lcom/google/glass/phone/IPhoneCallListener;)V

    .line 65
    iget-object v1, p0, Lcom/google/glass/phone/IncomingCallActivity$1;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    iget-object v2, p0, Lcom/google/glass/phone/IncomingCallActivity$1;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    invoke-static {v2}, Lcom/google/glass/phone/IncomingCallActivity;->access$000(Lcom/google/glass/phone/IncomingCallActivity;)Lcom/google/glass/phone/PhoneCallService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCallService;->getLastCallState()Lcom/google/glass/phone/PhoneCall;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/phone/IncomingCallActivity;->access$200(Lcom/google/glass/phone/IncomingCallActivity;Lcom/google/glass/phone/PhoneCall;)V

    .line 66
    return-void
.end method

.method public onServiceDisconnectedInternal(Landroid/content/ComponentName;Z)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "isError"    # Z

    .prologue
    .line 57
    iget-object v0, p0, Lcom/google/glass/phone/IncomingCallActivity$1;->this$0:Lcom/google/glass/phone/IncomingCallActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/phone/IncomingCallActivity;->access$002(Lcom/google/glass/phone/IncomingCallActivity;Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/phone/PhoneCallService;

    .line 58
    return-void
.end method

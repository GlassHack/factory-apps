.class Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$3;
.super Ljava/lang/Object;
.source "PhoneCallLiveCardMenuActivity.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;


# direct methods
.method constructor <init>(Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    .prologue
    .line 235
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$3;->this$0:Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 240
    move-object v0, p2

    check-cast v0, Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;

    .line 242
    .local v0, "binder":Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$3;->this$0:Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    invoke-virtual {v0}, Lcom/google/glass/phone/PhoneCallService$PhoneCallServiceBinder;->getService()Lcom/google/glass/phone/PhoneCallService;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->access$002(Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;Lcom/google/glass/phone/PhoneCallService;)Lcom/google/glass/phone/PhoneCallService;

    .line 243
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$3;->this$0:Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    iget-object v2, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$3;->this$0:Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    invoke-static {v2}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->access$000(Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;)Lcom/google/glass/phone/PhoneCallService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCallService;->getPhoneCallRemoteViewManager()Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->getCurrentCall()Lcom/google/glass/phone/PhoneCall;

    move-result-object v2

    iput-object v2, v1, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->currentCall:Lcom/google/glass/phone/PhoneCall;

    .line 244
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity$3;->this$0:Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;

    invoke-static {v1}, Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;->access$100(Lcom/google/glass/phone/PhoneCallLiveCardMenuActivity;)V

    .line 245
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "arg0"    # Landroid/content/ComponentName;

    .prologue
    .line 249
    return-void
.end method

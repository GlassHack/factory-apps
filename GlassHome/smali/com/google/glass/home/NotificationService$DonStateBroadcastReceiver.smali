.class Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "NotificationService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/home/NotificationService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DonStateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/home/NotificationService;


# direct methods
.method private constructor <init>(Lcom/google/glass/home/NotificationService;)V
    .locals 3

    .prologue
    .line 402
    iput-object p1, p0, Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    .line 403
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.android.glass.action.ON_HEAD_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 404
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/home/NotificationService;Lcom/google/glass/home/NotificationService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/home/NotificationService;
    .param p2, "x1"    # Lcom/google/glass/home/NotificationService$1;

    .prologue
    .line 401
    invoke-direct {p0, p1}, Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;-><init>(Lcom/google/glass/home/NotificationService;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 422
    invoke-static {}, Lcom/google/glass/home/NotificationService;->access$800()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 408
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 409
    .local v0, "action":Ljava/lang/String;
    const-string v2, "com.google.android.glass.action.ON_HEAD_STATE_CHANGED"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 410
    invoke-static {p2}, Lcom/google/glass/hidden/DonState;->isDonned(Landroid/content/Intent;)Z

    move-result v1

    .line 411
    .local v1, "donned":Z
    if-nez v1, :cond_0

    .line 412
    iget-object v2, p0, Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/google/glass/home/NotificationService;->access$400(Lcom/google/glass/home/NotificationService;Z)V

    .line 415
    iget-object v2, p0, Lcom/google/glass/home/NotificationService$DonStateBroadcastReceiver;->this$0:Lcom/google/glass/home/NotificationService;

    invoke-static {v2}, Lcom/google/glass/home/NotificationService;->access$700(Lcom/google/glass/home/NotificationService;)Lcom/google/glass/util/TtsHelper;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/util/TtsHelper;->stopSpeaking()V

    .line 418
    .end local v1    # "donned":Z
    :cond_0
    return-void
.end method

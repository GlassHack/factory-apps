.class Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "PhoneCallRemoteViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/phone/PhoneCallRemoteViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "StateChangeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;


# direct methods
.method private constructor <init>(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)V
    .locals 3

    .prologue
    .line 246
    iput-object p1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    .line 247
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.action.REJECT_CALL"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.google.glass.action.MICROPHONE_STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 248
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/phone/PhoneCallRemoteViewManager;Lcom/google/glass/phone/PhoneCallRemoteViewManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/phone/PhoneCallRemoteViewManager;
    .param p2, "x1"    # Lcom/google/glass/phone/PhoneCallRemoteViewManager$1;

    .prologue
    .line 245
    invoke-direct {p0, p1}, Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;-><init>(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 266
    invoke-static {}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->access$700()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 252
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 253
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Action received: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    const-string v1, "com.google.glass.action.REJECT_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 255
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-static {v1}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->access$500(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)V

    .line 256
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-static {v1}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->access$300(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)Landroid/widget/RemoteViews;

    move-result-object v1

    sget v2, Lcom/google/glass/phone/R$id;->phone_call_status:I

    sget v3, Lcom/google/glass/phone/R$string;->phone_call_hanging_up:I

    .line 257
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 256
    invoke-virtual {v1, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 261
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-virtual {v1}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->invalidate()V

    .line 262
    return-void

    .line 258
    :cond_1
    const-string v1, "com.google.glass.action.MICROPHONE_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 259
    iget-object v1, p0, Lcom/google/glass/phone/PhoneCallRemoteViewManager$StateChangeBroadcastReceiver;->this$0:Lcom/google/glass/phone/PhoneCallRemoteViewManager;

    invoke-static {v1}, Lcom/google/glass/phone/PhoneCallRemoteViewManager;->access$600(Lcom/google/glass/phone/PhoneCallRemoteViewManager;)V

    goto :goto_0
.end method

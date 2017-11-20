.class Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "PhoneCallManager.java"


# annotations
.annotation build Lcom/google/common/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StateBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;


# direct methods
.method private constructor <init>(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .prologue
    .line 448
    iput-object p1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    .line 449
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$600()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 450
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;
    .param p2, "x1"    # Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$1;

    .prologue
    .line 447
    invoke-direct {p0, p1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;-><init>(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 476
    invoke-static {}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$1100()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 454
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 455
    .local v0, "action":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Intent received: %s, updating current call."

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 456
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Previous state: %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 457
    const-string v1, "com.google.glass.action.ACCEPT_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 458
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-static {v1, v5}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$702(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;Z)Z

    .line 459
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-static {v1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$800(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V

    .line 471
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "New state: %s"

    new-array v3, v5, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    aput-object v4, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    return-void

    .line 460
    :cond_1
    const-string v1, "com.google.glass.action.REJECT_CALL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 461
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-static {v1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$900(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V

    goto :goto_0

    .line 462
    :cond_2
    const-string v1, "com.google.glass.action.CALL_DIAL"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 463
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-static {v1, v5}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$702(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;Z)Z

    .line 464
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-static {v1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$300(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)Lcom/google/glass/phone/PhoneCall;

    move-result-object v1

    sget-object v2, Lcom/google/glass/phone/PhoneCall$CallDirection;->OUTGOING:Lcom/google/glass/phone/PhoneCall$CallDirection;

    invoke-virtual {v1, v2}, Lcom/google/glass/phone/PhoneCall;->setCallDirection(Lcom/google/glass/phone/PhoneCall$CallDirection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 466
    iget-object v1, p0, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->this$0:Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;

    invoke-static {v1}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;->access$1000(Lcom/google/glass/bluetooth/handsfree/PhoneCallManager;)V

    goto :goto_0

    .line 469
    :cond_3
    invoke-virtual {p0}, Lcom/google/glass/bluetooth/handsfree/PhoneCallManager$StateBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Unknown action received: %s"

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

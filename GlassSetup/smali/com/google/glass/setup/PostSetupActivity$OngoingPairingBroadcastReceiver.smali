.class Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "PostSetupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/setup/PostSetupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OngoingPairingBroadcastReceiver"
.end annotation


# instance fields
.field private final ongoingPairingListenerLogger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/setup/PostSetupActivity;


# direct methods
.method private constructor <init>(Lcom/google/glass/setup/PostSetupActivity;)V
    .locals 3

    .prologue
    .line 390
    iput-object p1, p0, Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    .line 391
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.google.glass.bluetooth.PAIRING_ONGOING"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 387
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    .line 388
    invoke-static {v0}, Lcom/google/glass/setup/PostSetupActivity;->access$100(Lcom/google/glass/setup/PostSetupActivity;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "ongoingPairingListener"

    invoke-static {v0, v1}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Lcom/google/glass/logging/FormattingLogger;Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;->ongoingPairingListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    .line 392
    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/setup/PostSetupActivity;Lcom/google/glass/setup/PostSetupActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/setup/PostSetupActivity;
    .param p2, "x1"    # Lcom/google/glass/setup/PostSetupActivity$1;

    .prologue
    .line 386
    invoke-direct {p0, p1}, Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;-><init>(Lcom/google/glass/setup/PostSetupActivity;)V

    return-void
.end method


# virtual methods
.method public getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 406
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;->ongoingPairingListenerLogger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 396
    invoke-virtual {p0}, Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;->getLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "receive intent %s, at state = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    iget-object v4, v4, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 397
    const-string v0, "com.google.glass.bluetooth.PAIRING_ONGOING"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    iget-object v0, v0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    sget-object v1, Lcom/google/glass/setup/PostSetupActivity$State;->PAIRING:Lcom/google/glass/setup/PostSetupActivity$State;

    if-ne v0, v1, :cond_0

    .line 399
    iget-object v0, p0, Lcom/google/glass/setup/PostSetupActivity$OngoingPairingBroadcastReceiver;->this$0:Lcom/google/glass/setup/PostSetupActivity;

    sget-object v1, Lcom/google/glass/setup/PostSetupActivity$State;->WELCOME:Lcom/google/glass/setup/PostSetupActivity$State;

    iput-object v1, v0, Lcom/google/glass/setup/PostSetupActivity;->state:Lcom/google/glass/setup/PostSetupActivity$State;

    .line 402
    :cond_0
    return-void
.end method

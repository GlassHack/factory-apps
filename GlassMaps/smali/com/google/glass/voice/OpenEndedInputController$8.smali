.class Lcom/google/glass/voice/OpenEndedInputController$8;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "SourceFile"


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 1

    .prologue
    .line 493
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$8;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0, p2, p3}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>(Ljava/lang/String;Landroid/content/IntentFilter;)V

    .line 495
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$8;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 494
    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 512
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$8;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 499
    const-string v0, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/view/KeyEvent;

    .line 500
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 501
    :goto_0
    iget-object v3, p0, Lcom/google/glass/voice/OpenEndedInputController$8;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v3, v0}, Lcom/google/glass/voice/OpenEndedInputController;->onCameraButtonPressed(Z)Z

    move-result v3

    .line 503
    iget-object v4, p0, Lcom/google/glass/voice/OpenEndedInputController$8;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Camera button broadcast received. [consumed=%s, longPress=%s]"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v2

    .line 504
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    aput-object v0, v6, v1

    .line 503
    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    if-eqz v3, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController$8;->abortBroadcast()V

    .line 508
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 500
    goto :goto_0
.end method

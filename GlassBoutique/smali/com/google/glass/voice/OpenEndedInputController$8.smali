.class Lcom/google/glass/voice/OpenEndedInputController$8;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "OpenEndedInputController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/OpenEndedInputController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/google/glass/voice/OpenEndedInputController;
    .param p2, "x0"    # Ljava/lang/String;
    .param p3, "x1"    # Landroid/content/IntentFilter;

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
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 499
    const-string v5, "android.intent.extra.KEY_EVENT"

    invoke-virtual {p2, v5}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/view/KeyEvent;

    .line 500
    .local v1, "event":Landroid/view/KeyEvent;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v5

    if-eqz v5, :cond_1

    move v2, v3

    .line 501
    .local v2, "longPress":Z
    :goto_0
    iget-object v5, p0, Lcom/google/glass/voice/OpenEndedInputController$8;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v5, v2}, Lcom/google/glass/voice/OpenEndedInputController;->onCameraButtonPressed(Z)Z

    move-result v0

    .line 503
    .local v0, "consumed":Z
    iget-object v5, p0, Lcom/google/glass/voice/OpenEndedInputController$8;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Camera button broadcast received. [consumed=%s, longPress=%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v7, v4

    .line 504
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v7, v3

    .line 503
    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 505
    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController$8;->abortBroadcast()V

    .line 508
    :cond_0
    return-void

    .end local v0    # "consumed":Z
    .end local v2    # "longPress":Z
    :cond_1
    move v2, v4

    .line 500
    goto :goto_0
.end method

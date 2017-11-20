.class Lcom/google/glass/voice/OpenEndedInputController$7;
.super Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$7;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0}, Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 473
    sget-object v0, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    const-string v1, "gesture"

    .line 474
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/glass/eye/EyeGesture;->valueOf(Ljava/lang/String;)Lcom/google/android/glass/eye/EyeGesture;

    move-result-object v1

    .line 473
    invoke-virtual {v0, v1}, Lcom/google/android/glass/eye/EyeGesture;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Lcom/google/glass/voice/OpenEndedInputController$7;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v0, v5}, Lcom/google/glass/voice/OpenEndedInputController;->onCameraButtonPressed(Z)Z

    move-result v0

    .line 477
    iget-object v1, p0, Lcom/google/glass/voice/OpenEndedInputController$7;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v1}, Lcom/google/glass/voice/OpenEndedInputController;->access$700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const-string v2, "Wink event detected. [consumed=%b]"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController$7;->abortBroadcast()V

    .line 482
    :cond_0
    return-void
.end method

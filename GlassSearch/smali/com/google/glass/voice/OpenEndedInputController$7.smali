.class Lcom/google/glass/voice/OpenEndedInputController$7;
.super Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;
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
.field final synthetic this$0:Lcom/google/glass/voice/OpenEndedInputController;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/OpenEndedInputController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/OpenEndedInputController;

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/glass/voice/OpenEndedInputController$7;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-direct {p0}, Lcom/google/glass/gesture/InterceptingEyeGestureReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x0

    .line 473
    sget-object v2, Lcom/google/android/glass/eye/EyeGesture;->WINK:Lcom/google/android/glass/eye/EyeGesture;

    const-string v3, "gesture"

    .line 474
    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/android/glass/eye/EyeGesture;->valueOf(Ljava/lang/String;)Lcom/google/android/glass/eye/EyeGesture;

    move-result-object v3

    .line 473
    invoke-virtual {v2, v3}, Lcom/google/android/glass/eye/EyeGesture;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 475
    const/4 v1, 0x0

    .line 476
    .local v1, "longPress":Z
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController$7;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-virtual {v2, v6}, Lcom/google/glass/voice/OpenEndedInputController;->onCameraButtonPressed(Z)Z

    move-result v0

    .line 477
    .local v0, "consumedWinkEvent":Z
    iget-object v2, p0, Lcom/google/glass/voice/OpenEndedInputController$7;->this$0:Lcom/google/glass/voice/OpenEndedInputController;

    invoke-static {v2}, Lcom/google/glass/voice/OpenEndedInputController;->access$700(Lcom/google/glass/voice/OpenEndedInputController;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Wink event detected. [consumed=%b]"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 478
    if-eqz v0, :cond_0

    .line 479
    invoke-virtual {p0}, Lcom/google/glass/voice/OpenEndedInputController$7;->abortBroadcast()V

    .line 482
    .end local v0    # "consumedWinkEvent":Z
    .end local v1    # "longPress":Z
    :cond_0
    return-void
.end method

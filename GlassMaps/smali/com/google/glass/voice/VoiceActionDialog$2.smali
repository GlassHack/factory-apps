.class Lcom/google/glass/voice/VoiceActionDialog$2;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceActionDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceActionDialog;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/google/glass/voice/VoiceActionDialog$2;->this$0:Lcom/google/glass/voice/VoiceActionDialog;

    invoke-direct {p0, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog$2;->this$0:Lcom/google/glass/voice/VoiceActionDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceActionDialog;->access$100(Lcom/google/glass/voice/VoiceActionDialog;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/android/glass/touchpad/GestureDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchGenericMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

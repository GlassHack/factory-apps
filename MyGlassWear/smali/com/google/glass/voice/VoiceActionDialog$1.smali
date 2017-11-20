.class Lcom/google/glass/voice/VoiceActionDialog$1;
.super Ljava/lang/Object;
.source "VoiceActionDialog.java"

# interfaces
.implements Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceActionDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceActionDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceActionDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceActionDialog;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/google/glass/voice/VoiceActionDialog$1;->this$0:Lcom/google/glass/voice/VoiceActionDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z
    .locals 1
    .param p1, "gesture"    # Lcom/google/android/glass/touchpad/Gesture;

    .prologue
    .line 30
    sget-object v0, Lcom/google/android/glass/touchpad/Gesture;->TAP:Lcom/google/android/glass/touchpad/Gesture;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/touchpad/Gesture;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    iget-object v0, p0, Lcom/google/glass/voice/VoiceActionDialog$1;->this$0:Lcom/google/glass/voice/VoiceActionDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceActionDialog;->access$000(Lcom/google/glass/voice/VoiceActionDialog;)Lcom/google/glass/voice/ActionController;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/voice/ActionController;->onConfirm()Z

    move-result v0

    .line 33
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

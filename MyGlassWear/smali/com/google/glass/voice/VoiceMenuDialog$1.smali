.class Lcom/google/glass/voice/VoiceMenuDialog$1;
.super Ljava/lang/Object;
.source "VoiceMenuDialog.java"

# interfaces
.implements Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/VoiceMenuDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/VoiceMenuDialog;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceMenuDialog;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/VoiceMenuDialog;

    .prologue
    .line 217
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$1;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z
    .locals 2
    .param p1, "gesture"    # Lcom/google/android/glass/touchpad/Gesture;

    .prologue
    .line 220
    iget-object v1, p0, Lcom/google/glass/voice/VoiceMenuDialog$1;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v1}, Lcom/google/glass/voice/VoiceMenuDialog;->access$500(Lcom/google/glass/voice/VoiceMenuDialog;)Lcom/google/glass/voice/ActionController;

    move-result-object v0

    .line 221
    .local v0, "actionController":Lcom/google/glass/voice/ActionController;
    sget-object v1, Lcom/google/android/glass/touchpad/Gesture;->TAP:Lcom/google/android/glass/touchpad/Gesture;

    invoke-virtual {v1, p1}, Lcom/google/android/glass/touchpad/Gesture;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 222
    invoke-interface {v0}, Lcom/google/glass/voice/ActionController;->onConfirm()Z

    move-result v1

    .line 224
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

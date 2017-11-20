.class Lcom/google/glass/voice/VoiceMenuDialog$12;
.super Landroid/animation/AnimatorListenerAdapter;
.source "VoiceMenuDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/VoiceMenuDialog;->stepBackInVoiceMenu()V
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
    .line 747
    iput-object p1, p0, Lcom/google/glass/voice/VoiceMenuDialog$12;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 751
    iget-object v0, p0, Lcom/google/glass/voice/VoiceMenuDialog$12;->this$0:Lcom/google/glass/voice/VoiceMenuDialog;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceMenuDialog;->access$1800(Lcom/google/glass/voice/VoiceMenuDialog;)Landroid/widget/FrameLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 752
    invoke-virtual {p1, p0}, Landroid/animation/Animator;->removeListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 753
    return-void
.end method

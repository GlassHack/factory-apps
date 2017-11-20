.class Lcom/google/glass/share/ShareDraftFragment$4;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "ShareDraftFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/share/ShareDraftFragment;->startCountdown()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/share/ShareDraftFragment;


# direct methods
.method constructor <init>(Lcom/google/glass/share/ShareDraftFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/share/ShareDraftFragment;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/google/glass/share/ShareDraftFragment$4;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 5
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v4, 0x0

    .line 185
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment$4;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareDraftFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment$4;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-static {v0}, Lcom/google/glass/share/ShareDraftFragment;->access$200(Lcom/google/glass/share/ShareDraftFragment;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    const-string v1, "getActivity() is null. [countdownRunning=%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/share/ShareDraftFragment$4;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    iget-boolean v3, v3, Lcom/google/glass/share/ShareDraftFragment;->countdownRunning:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_0
    :goto_0
    return-void

    .line 191
    :cond_1
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment$4;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    iget-boolean v0, v0, Lcom/google/glass/share/ShareDraftFragment;->countdownRunning:Z

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment$4;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-virtual {v0}, Lcom/google/glass/share/ShareDraftFragment;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 193
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment$4;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-static {v0, v4}, Lcom/google/glass/share/ShareDraftFragment;->access$300(Lcom/google/glass/share/ShareDraftFragment;Z)V

    .line 194
    iget-object v0, p0, Lcom/google/glass/share/ShareDraftFragment$4;->this$0:Lcom/google/glass/share/ShareDraftFragment;

    invoke-static {v0}, Lcom/google/glass/share/ShareDraftFragment;->access$400(Lcom/google/glass/share/ShareDraftFragment;)Lcom/google/glass/share/ShareDraftFragment$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/share/ShareDraftFragment$Listener;->onShareTargetConfirmed()V

    goto :goto_0
.end method

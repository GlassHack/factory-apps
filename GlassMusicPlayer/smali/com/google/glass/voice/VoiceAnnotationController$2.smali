.class Lcom/google/glass/voice/VoiceAnnotationController$2;
.super Lcom/google/glass/util/SimpleAnimatorListener;
.source "SourceFile"


# instance fields
.field private animationEnded:Z

.field final synthetic this$0:Lcom/google/glass/voice/VoiceAnnotationController;

.field final synthetic val$textToReturn:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/VoiceAnnotationController;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/google/glass/voice/VoiceAnnotationController$2;->this$0:Lcom/google/glass/voice/VoiceAnnotationController;

    iput-object p2, p0, Lcom/google/glass/voice/VoiceAnnotationController$2;->val$textToReturn:Ljava/lang/String;

    invoke-direct {p0}, Lcom/google/glass/util/SimpleAnimatorListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 350
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationController$2;->animationEnded:Z

    if-eqz v0, :cond_0

    .line 357
    :goto_0
    return-void

    .line 354
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationController$2;->animationEnded:Z

    .line 355
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController$2;->this$0:Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceAnnotationController;->access$300(Lcom/google/glass/voice/VoiceAnnotationController;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->VOICE_MESSAGE_DISMISS:Lcom/google/glass/userevent/UserEventAction;

    const-string v2, "c"

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController$2;->this$0:Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-virtual {v0}, Lcom/google/glass/voice/VoiceAnnotationController;->onBack()Z

    goto :goto_0
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 339
    iget-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationController$2;->animationEnded:Z

    if-eqz v0, :cond_0

    .line 346
    :goto_0
    return-void

    .line 343
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/VoiceAnnotationController$2;->animationEnded:Z

    .line 344
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController$2;->this$0:Lcom/google/glass/voice/VoiceAnnotationController;

    iget-object v1, p0, Lcom/google/glass/voice/VoiceAnnotationController$2;->val$textToReturn:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationController;->onAnnotationCommitted(Ljava/lang/String;)V

    .line 345
    iget-object v0, p0, Lcom/google/glass/voice/VoiceAnnotationController$2;->this$0:Lcom/google/glass/voice/VoiceAnnotationController;

    invoke-static {v0}, Lcom/google/glass/voice/VoiceAnnotationController;->access$200(Lcom/google/glass/voice/VoiceAnnotationController;)Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    goto :goto_0
.end method

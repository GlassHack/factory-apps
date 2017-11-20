.class Lcom/google/glass/logging/EngFeedbackActivity$1;
.super Lcom/google/glass/widget/MessageDialog$SimpleListener;
.source "EngFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/EngFeedbackActivity;->onCreateInternal(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/logging/EngFeedbackActivity;

.field wasConfirmed:Z


# direct methods
.method constructor <init>(Lcom/google/glass/logging/EngFeedbackActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/logging/EngFeedbackActivity;

    .prologue
    .line 66
    iput-object p1, p0, Lcom/google/glass/logging/EngFeedbackActivity$1;->this$0:Lcom/google/glass/logging/EngFeedbackActivity;

    invoke-direct {p0}, Lcom/google/glass/widget/MessageDialog$SimpleListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfirmed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 84
    iput-boolean v2, p0, Lcom/google/glass/logging/EngFeedbackActivity$1;->wasConfirmed:Z

    .line 85
    iget-object v0, p0, Lcom/google/glass/logging/EngFeedbackActivity$1;->this$0:Lcom/google/glass/logging/EngFeedbackActivity;

    invoke-static {v0}, Lcom/google/glass/logging/EngFeedbackActivity;->access$100(Lcom/google/glass/logging/EngFeedbackActivity;)Lcom/google/glass/voice/VoiceAnnotationHelper;

    move-result-object v0

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/VoiceAnnotationHelper;->startAnnotationForResult(I)V

    .line 86
    iget-object v0, p0, Lcom/google/glass/logging/EngFeedbackActivity$1;->this$0:Lcom/google/glass/logging/EngFeedbackActivity;

    invoke-virtual {v0}, Lcom/google/glass/logging/EngFeedbackActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 87
    return v2
.end method

.method public onDismissed()V
    .locals 2

    .prologue
    .line 77
    iget-boolean v0, p0, Lcom/google/glass/logging/EngFeedbackActivity$1;->wasConfirmed:Z

    if-nez v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/glass/logging/EngFeedbackActivity$1;->this$0:Lcom/google/glass/logging/EngFeedbackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/logging/EngFeedbackActivity;->access$000(Lcom/google/glass/logging/EngFeedbackActivity;Ljava/lang/String;)V

    .line 80
    :cond_0
    return-void
.end method

.method public onDone()V
    .locals 2

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/google/glass/logging/EngFeedbackActivity$1;->wasConfirmed:Z

    if-nez v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/google/glass/logging/EngFeedbackActivity$1;->this$0:Lcom/google/glass/logging/EngFeedbackActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/google/glass/logging/EngFeedbackActivity;->access$000(Lcom/google/glass/logging/EngFeedbackActivity;Ljava/lang/String;)V

    .line 73
    :cond_0
    return-void
.end method

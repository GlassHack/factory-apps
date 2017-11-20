.class final Lcom/google/glass/logging/GlassError$1;
.super Ljava/lang/Object;
.source "GlassError.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/logging/GlassError;->report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$error:Lcom/google/glass/logging/GlassError;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/google/glass/logging/GlassError$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/glass/logging/GlassError$1;->val$error:Lcom/google/glass/logging/GlassError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 209
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    .line 210
    .local v1, "soundManager":Lcom/google/glass/sound/SoundManager;
    new-instance v0, Lcom/google/glass/feedback/FeedbackHelper;

    invoke-direct {v0, v1}, Lcom/google/glass/feedback/FeedbackHelper;-><init>(Lcom/google/glass/sound/SoundManager;)V

    .line 211
    .local v0, "feedbackHelper":Lcom/google/glass/feedback/FeedbackHelper;
    iget-object v2, p0, Lcom/google/glass/logging/GlassError$1;->val$context:Landroid/content/Context;

    .line 212
    invoke-static {}, Lcom/google/glass/feedback/FeedbackParams;->newBuilder()Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/logging/GlassError$1;->val$error:Lcom/google/glass/logging/GlassError;

    iget-object v4, v4, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    .line 213
    invoke-virtual {v3, v4}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setTitle(Ljava/lang/String;)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/logging/GlassError$1;->val$error:Lcom/google/glass/logging/GlassError;

    iget-object v4, v4, Lcom/google/glass/logging/GlassError;->recoveryAction:Lcom/google/glass/feedback/RecoveryAction;

    .line 214
    invoke-virtual {v3, v4}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setRecoveryAction(Lcom/google/glass/feedback/RecoveryAction;)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/logging/GlassError$1;->val$error:Lcom/google/glass/logging/GlassError;

    sget-object v5, Lcom/google/glass/logging/GlassError$ErrorAttachment;->FULL_BUGREPORT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    .line 215
    invoke-virtual {v4, v5}, Lcom/google/glass/logging/GlassError;->shouldAttach(Lcom/google/glass/logging/GlassError$ErrorAttachment;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setShouldBugReport(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    iget-object v4, p0, Lcom/google/glass/logging/GlassError$1;->val$error:Lcom/google/glass/logging/GlassError;

    sget-object v5, Lcom/google/glass/logging/GlassError$ErrorAttachment;->SCREENSHOT:Lcom/google/glass/logging/GlassError$ErrorAttachment;

    .line 216
    invoke-virtual {v4, v5}, Lcom/google/glass/logging/GlassError;->shouldAttach(Lcom/google/glass/logging/GlassError$ErrorAttachment;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setShouldScreenshot(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    .line 217
    invoke-virtual {v3}, Lcom/google/glass/feedback/FeedbackParams$Builder;->build()Lcom/google/glass/feedback/FeedbackParams;

    move-result-object v3

    .line 211
    invoke-virtual {v0, v2, v3}, Lcom/google/glass/feedback/FeedbackHelper;->showEngFeedback(Landroid/content/Context;Lcom/google/glass/feedback/FeedbackParams;)V

    .line 218
    return-void
.end method

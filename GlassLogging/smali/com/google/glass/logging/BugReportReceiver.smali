.class public final Lcom/google/glass/logging/BugReportReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "BugReportReceiver.java"


# static fields
.field public static final EXTRA_SHOULD_UPLOAD:Ljava/lang/String; = "should_upload"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    .line 27
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v2

    if-nez v2, :cond_0

    .line 28
    const-string v2, "should_upload"

    invoke-virtual {p2, v2, v5}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 29
    .local v0, "shouldUpload":Z
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/sound/SoundManager;

    .line 30
    .local v1, "soundManager":Lcom/google/glass/sound/SoundManager;
    invoke-static {}, Lcom/google/glass/feedback/FeedbackHelperProvider;->getInstance()Lcom/google/glass/feedback/FeedbackHelperProvider;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/glass/feedback/FeedbackHelperProvider;->from(Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/feedback/FeedbackHelper;

    move-result-object v2

    .line 32
    invoke-static {}, Lcom/google/glass/feedback/FeedbackParams;->newBuilder()Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    .line 33
    invoke-virtual {v3, v5}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setAllowVoiceNote(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    sget-object v4, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/feedback/RecoveryAction;

    .line 34
    invoke-virtual {v3, v4}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setRecoveryAction(Lcom/google/glass/feedback/RecoveryAction;)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    .line 35
    invoke-virtual {v3, v5}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setShouldBugReport(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    .line 36
    invoke-virtual {v3, v5}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setShouldScreenshot(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    .line 37
    invoke-virtual {v3, v0}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setShouldUpload(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    sget v4, Lcom/google/glass/logging/R$string;->bugreport_title_manual:I

    .line 38
    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setTitle(Ljava/lang/String;)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    .line 39
    invoke-virtual {v3}, Lcom/google/glass/feedback/FeedbackParams$Builder;->build()Lcom/google/glass/feedback/FeedbackParams;

    move-result-object v3

    .line 30
    invoke-virtual {v2, p1, v3}, Lcom/google/glass/feedback/FeedbackHelper;->showEngFeedback(Landroid/content/Context;Lcom/google/glass/feedback/FeedbackParams;)V

    .line 40
    invoke-virtual {p0}, Lcom/google/glass/logging/BugReportReceiver;->isOrderedBroadcast()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 41
    invoke-virtual {p0}, Lcom/google/glass/logging/BugReportReceiver;->abortBroadcast()V

    .line 44
    .end local v0    # "shouldUpload":Z
    .end local v1    # "soundManager":Lcom/google/glass/sound/SoundManager;
    :cond_0
    return-void
.end method

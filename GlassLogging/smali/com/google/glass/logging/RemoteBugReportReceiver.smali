.class public Lcom/google/glass/logging/RemoteBugReportReceiver;
.super Lcom/google/glass/util/SafeBroadcastReceiver;
.source "RemoteBugReportReceiver.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/RemoteBugReportReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/glass/util/SafeBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected getLogger()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 46
    sget-object v0, Lcom/google/glass/logging/RemoteBugReportReceiver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 26
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v1

    if-nez v1, :cond_0

    .line 27
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    .line 28
    .local v0, "soundManager":Lcom/google/glass/sound/SoundManager;
    invoke-static {}, Lcom/google/glass/feedback/FeedbackHelperProvider;->getInstance()Lcom/google/glass/feedback/FeedbackHelperProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/glass/feedback/FeedbackHelperProvider;->from(Lcom/google/glass/sound/SoundManager;)Lcom/google/glass/feedback/FeedbackHelper;

    move-result-object v1

    .line 30
    invoke-static {}, Lcom/google/glass/feedback/FeedbackParams;->newBuilder()Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    .line 31
    invoke-virtual {v2, v4}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setAllowVoiceNote(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    sget-object v3, Lcom/google/glass/feedback/RecoveryAction;->SHOULD_CONTINUE:Lcom/google/glass/feedback/RecoveryAction;

    .line 32
    invoke-virtual {v2, v3}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setRecoveryAction(Lcom/google/glass/feedback/RecoveryAction;)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    .line 33
    invoke-virtual {v2, v5}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setShouldBugReport(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    .line 34
    invoke-virtual {v2, v4}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setShouldScreenshot(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    .line 35
    invoke-virtual {v2, v5}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setShouldUpload(Z)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/logging/R$string;->bugreport_title_remote:I

    .line 36
    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setTitle(Ljava/lang/String;)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    .line 37
    invoke-virtual {v2}, Lcom/google/glass/feedback/FeedbackParams$Builder;->build()Lcom/google/glass/feedback/FeedbackParams;

    move-result-object v2

    .line 28
    invoke-virtual {v1, p1, v2}, Lcom/google/glass/feedback/FeedbackHelper;->showEngFeedback(Landroid/content/Context;Lcom/google/glass/feedback/FeedbackParams;)V

    .line 38
    invoke-virtual {p0}, Lcom/google/glass/logging/RemoteBugReportReceiver;->isOrderedBroadcast()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p0}, Lcom/google/glass/logging/RemoteBugReportReceiver;->abortBroadcast()V

    .line 42
    .end local v0    # "soundManager":Lcom/google/glass/sound/SoundManager;
    :cond_0
    return-void
.end method

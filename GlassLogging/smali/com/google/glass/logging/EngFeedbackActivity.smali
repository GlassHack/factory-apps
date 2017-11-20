.class public Lcom/google/glass/logging/EngFeedbackActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "EngFeedbackActivity.java"


# static fields
.field private static final MESSAGE_DURATION_TIMEOUT_MS:J = 0x1388L

.field static final REQUEST_CODE_VOICE_ANNOTATION:I = 0xa
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/EngFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/logging/EngFeedbackActivity;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/logging/EngFeedbackActivity;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/glass/logging/EngFeedbackActivity;->sendFeedback(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/logging/EngFeedbackActivity;)Lcom/google/glass/voice/VoiceAnnotationHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/logging/EngFeedbackActivity;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/google/glass/logging/EngFeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    return-object v0
.end method

.method private sendFeedback(Ljava/lang/String;)V
    .locals 6
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 117
    invoke-virtual {p0}, Lcom/google/glass/logging/EngFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_0

    .line 118
    sget-object v3, Lcom/google/glass/logging/EngFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No intent."

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/logging/EngFeedbackActivity;->finish()V

    .line 131
    return-void

    .line 120
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/logging/EngFeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 121
    .local v0, "context":Landroid/content/Context;
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/google/glass/logging/EngFeedbackService;

    invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 123
    .local v2, "serviceIntent":Landroid/content/Intent;
    invoke-virtual {p0}, Lcom/google/glass/logging/EngFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "feedback_params"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/glass/feedback/FeedbackParams;

    .line 124
    invoke-virtual {v3}, Lcom/google/glass/feedback/FeedbackParams;->toBuilder()Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    .line 125
    invoke-virtual {v3, p1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setDescription(Ljava/lang/String;)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v3

    .line 126
    invoke-virtual {v3}, Lcom/google/glass/feedback/FeedbackParams$Builder;->build()Lcom/google/glass/feedback/FeedbackParams;

    move-result-object v1

    .line 127
    .local v1, "paramsWithDescription":Lcom/google/glass/feedback/FeedbackParams;
    const-string v3, "feedback_params"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 128
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v3

    invoke-virtual {v3, v0, v2}, Lcom/google/glass/util/IntentSender;->startService(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/app/GlassActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 101
    const/16 v0, 0xa

    if-ne v0, p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/google/glass/logging/EngFeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationHelper;->getAnnotationResult(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/logging/EngFeedbackActivity;->sendFeedback(Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 8
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v7, 0x1

    .line 38
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 40
    new-instance v2, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-direct {v2, p0}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/google/glass/logging/EngFeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    .line 43
    invoke-virtual {p0}, Lcom/google/glass/logging/EngFeedbackActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    sget-object v3, Lcom/google/glass/sound/SoundManager$SoundId;->ERROR:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v2, v3}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 46
    invoke-virtual {p0}, Lcom/google/glass/logging/EngFeedbackActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "feedback_params"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/glass/feedback/FeedbackParams;

    .line 48
    .local v1, "feedbackParams":Lcom/google/glass/feedback/FeedbackParams;
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 51
    sget-object v2, Lcom/google/glass/logging/EngFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "This is a user build, not showing feedback, handling %s triggered by %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 52
    invoke-virtual {v1}, Lcom/google/glass/feedback/FeedbackParams;->getRecoveryAction()Lcom/google/glass/feedback/RecoveryAction;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1}, Lcom/google/glass/feedback/FeedbackParams;->getTitle()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v7

    .line 51
    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    invoke-virtual {v1}, Lcom/google/glass/feedback/FeedbackParams;->getRecoveryAction()Lcom/google/glass/feedback/RecoveryAction;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/google/glass/logging/RecoveryActionUtils;->handle(Landroid/content/Context;Lcom/google/glass/feedback/RecoveryAction;)V

    .line 54
    invoke-virtual {p0}, Lcom/google/glass/logging/EngFeedbackActivity;->finish()V

    .line 96
    :goto_0
    return-void

    .line 58
    :cond_0
    new-instance v2, Lcom/google/glass/widget/MessageDialog$Builder;

    .line 59
    invoke-virtual {p0}, Lcom/google/glass/logging/EngFeedbackActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    const-wide/16 v3, 0x1388

    .line 60
    invoke-virtual {v2, v3, v4}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessageDuration(J)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/logging/R$drawable;->ic_bug_150:I

    .line 61
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    sget v3, Lcom/google/glass/logging/R$string;->capturing_bugreport:I

    .line 62
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 63
    invoke-virtual {v2, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setShowProgress(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 64
    invoke-virtual {v2, v7}, Lcom/google/glass/widget/MessageDialog$Builder;->setExpanded(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    .line 65
    invoke-virtual {v1}, Lcom/google/glass/feedback/FeedbackParams;->getAllowVoiceNote()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setHandleConfirm(Z)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/google/glass/logging/EngFeedbackActivity$1;

    invoke-direct {v3, p0}, Lcom/google/glass/logging/EngFeedbackActivity$1;-><init>(Lcom/google/glass/logging/EngFeedbackActivity;)V

    .line 66
    invoke-virtual {v2, v3}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 91
    .local v0, "builder":Lcom/google/glass/widget/MessageDialog$Builder;
    invoke-virtual {v1}, Lcom/google/glass/feedback/FeedbackParams;->getAllowVoiceNote()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 92
    sget v2, Lcom/google/glass/logging/R$string;->sharing_menu_tap_to_annotate:I

    invoke-virtual {v0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSecondaryMessage(I)Lcom/google/glass/widget/MessageDialog$Builder;

    .line 95
    :cond_1
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/glass/logging/EngFeedbackActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    goto :goto_0
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 108
    sget v0, Lcom/google/glass/logging/R$layout;->feedback:I

    return v0
.end method

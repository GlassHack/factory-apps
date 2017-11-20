.class public Lcom/google/glass/feedback/FeedbackHelper;
.super Ljava/lang/Object;
.source "FeedbackHelper.java"


# static fields
.field public static final ACTION_REMOTE_BUG_REPORT:Ljava/lang/String; = "com.google.glass.logging.RemoteBugReportReceiver"

.field public static final BTSNOOP_MIME_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final BUGREPORT_MIME_TYPE:Ljava/lang/String; = "text/plain"

.field static final ENG_FEEDBACK_RECEIVER_NAME:Ljava/lang/String; = "com.google.glass.logging.EngFeedbackReceiver"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final EXTRA_CLEANUP_ONLY:Ljava/lang/String; = "cleanup_only"

.field public static final EXTRA_FEEDBACK_PARAMS:Ljava/lang/String; = "feedback_params"

.field static final PACKAGE_NAME:Ljava/lang/String; = "com.google.glass.logging"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field public static final SCREENSHOT_MIME_TYPE:Ljava/lang/String; = "image/png"

.field static final USER_FEEDBACK_ACTIVITY_NAME:Ljava/lang/String; = "com.google.glass.logging.UserFeedbackActivity"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field private final soundManager:Lcom/google/glass/sound/SoundManager;


# direct methods
.method public constructor <init>(Lcom/google/glass/sound/SoundManager;)V
    .locals 1
    .param p1, "soundManager"    # Lcom/google/glass/sound/SoundManager;

    .prologue
    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    const-string v0, "null soundManager"

    invoke-static {p1, v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    iput-object v0, p0, Lcom/google/glass/feedback/FeedbackHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    .line 50
    return-void
.end method

.method public static createEngFeedbackIntent(Lcom/google/glass/feedback/FeedbackParams;)Landroid/content/Intent;
    .locals 3
    .param p0, "feedbackParams"    # Lcom/google/glass/feedback/FeedbackParams;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 74
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.EngFeedbackReceiver"

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "feedback_params"

    .line 76
    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public static createNewBugId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 66
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/glass/util/FileHelper;->formatTimestamp(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static showUserFeedback(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 85
    sget-object v1, Lcom/google/glass/util/Labs$Feature;->FB:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v1}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.google.glass.logging"

    const-string v2, "com.google.glass.logging.UserFeedbackActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 89
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 91
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method


# virtual methods
.method public showEngFeedback(Landroid/content/Context;Lcom/google/glass/feedback/FeedbackParams;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "feedbackParams"    # Lcom/google/glass/feedback/FeedbackParams;

    .prologue
    .line 59
    iget-object v0, p0, Lcom/google/glass/feedback/FeedbackHelper;->soundManager:Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 60
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v0

    .line 61
    invoke-static {p2}, Lcom/google/glass/feedback/FeedbackHelper;->createEngFeedbackIntent(Lcom/google/glass/feedback/FeedbackParams;)Landroid/content/Intent;

    move-result-object v1

    .line 60
    invoke-virtual {v0, p1, v1}, Lcom/google/glass/util/IntentSender;->sendBroadcast(Landroid/content/Context;Landroid/content/Intent;)V

    .line 62
    return-void
.end method

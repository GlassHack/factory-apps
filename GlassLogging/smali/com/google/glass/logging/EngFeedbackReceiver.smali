.class public Lcom/google/glass/logging/EngFeedbackReceiver;
.super Lcom/google/glass/util/TimedBroadcastReceiver;
.source "EngFeedbackReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/google/glass/util/TimedBroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method protected grabScreenshot(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bugId"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 45
    invoke-static {p1, p2}, Lcom/google/glass/util/ScreenshotUtil;->captureAndSaveScreenshot(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onReceiveInternal(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 41
    :goto_0
    return-void

    .line 25
    :cond_0
    const-string v4, "feedback_params"

    .line 26
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Lcom/google/glass/feedback/FeedbackParams;

    .line 29
    .local v3, "params":Lcom/google/glass/feedback/FeedbackParams;
    invoke-static {}, Lcom/google/glass/feedback/FeedbackHelper;->createNewBugId()Ljava/lang/String;

    move-result-object v1

    .line 30
    .local v1, "bugId":Ljava/lang/String;
    invoke-virtual {v3}, Lcom/google/glass/feedback/FeedbackParams;->toBuilder()Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setBugId(Ljava/lang/String;)Lcom/google/glass/feedback/FeedbackParams$Builder;

    move-result-object v2

    .line 31
    .local v2, "builder":Lcom/google/glass/feedback/FeedbackParams$Builder;
    invoke-virtual {v3}, Lcom/google/glass/feedback/FeedbackParams;->getShouldScreenshot()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 32
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/logging/EngFeedbackReceiver;->grabScreenshot(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/google/glass/feedback/FeedbackParams$Builder;->setScreenshotFilePath(Ljava/lang/String;)Lcom/google/glass/feedback/FeedbackParams$Builder;

    .line 34
    :cond_1
    invoke-virtual {v2}, Lcom/google/glass/feedback/FeedbackParams$Builder;->build()Lcom/google/glass/feedback/FeedbackParams;

    move-result-object v3

    .line 37
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/google/glass/logging/EngFeedbackActivity;

    invoke-direct {v4, p1, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x10000000

    .line 38
    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "feedback_params"

    .line 39
    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v0

    .line 40
    .local v0, "activityIntent":Landroid/content/Intent;
    invoke-static {}, Lcom/google/glass/util/IntentSender;->getInstance()Lcom/google/glass/util/IntentSender;

    move-result-object v4

    invoke-virtual {v4, p1, v0}, Lcom/google/glass/util/IntentSender;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0
.end method

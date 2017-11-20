.class public Lcom/google/glass/logging/UserFeedbackActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "UserFeedbackActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/UserFeedbackActivity$State;
    }
.end annotation


# static fields
.field static final FEEDBACK_ATTACHMENT_BUG_REPORT:Ljava/lang/String; = "bugreport"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FEEDBACK_ATTACHMENT_SESSION_ID:Ljava/lang/String; = "sessionId"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final IP_ADDRESS_REGEX:Ljava/lang/String; = "(?:\\d{1,3}\\.){3}\\d{1,3}"

.field private static final MAC_ADDRESS_REGEX:Ljava/lang/String; = "([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})"

.field private static final PROGRESS_SLIDER_COMMIT_ANNOTATION_MS:J = 0x1770L

.field static final REQUEST_CODE_VOICE_ANNOTATION:I = 0x1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final USER_CATEGORY_TAG:Ljava/lang/String; = "com.google.glass.logging.USER_INITIATED_FEEDBACK_REPORT"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final feedbackExecutor:Ljava/util/concurrent/Executor;


# instance fields
.field private annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

.field private audioBytes:[B

.field private descriptionView:Lcom/google/glass/widget/DynamicSizeTextView;

.field private emailIncludedView:Landroid/widget/LinearLayout;

.field private feedbackText:Ljava/lang/String;

.field private includeEmailAddress:Z

.field private includeSystemLog:Z

.field private layout:Landroid/widget/LinearLayout;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private logsIncludedView:Landroid/widget/LinearLayout;

.field private sliderView:Lcom/google/glass/widget/SliderView;

.field private state:Lcom/google/glass/logging/UserFeedbackActivity$State;

.field private tapView:Lcom/google/glass/widget/TipsView;

.field private timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

.field private timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

.field private timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

.field private userEventHelper:Lcom/google/glass/userevent/UserEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 89
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/UserFeedbackActivity;->feedbackExecutor:Ljava/util/concurrent/Executor;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 64
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 65
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 116
    iput-boolean v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeEmailAddress:Z

    .line 117
    iput-boolean v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeSystemLog:Z

    .line 137
    sget-object v0, Lcom/google/glass/logging/UserFeedbackActivity$State;->ANNOTATE:Lcom/google/glass/logging/UserFeedbackActivity$State;

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->state:Lcom/google/glass/logging/UserFeedbackActivity$State;

    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/logging/UserFeedbackActivity;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/logging/UserFeedbackActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/logging/UserFeedbackActivity;)Lcom/google/glass/logging/UserFeedbackActivity$State;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/logging/UserFeedbackActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->state:Lcom/google/glass/logging/UserFeedbackActivity$State;

    return-object v0
.end method

.method static synthetic access$102(Lcom/google/glass/logging/UserFeedbackActivity;Lcom/google/glass/logging/UserFeedbackActivity$State;)Lcom/google/glass/logging/UserFeedbackActivity$State;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/logging/UserFeedbackActivity;
    .param p1, "x1"    # Lcom/google/glass/logging/UserFeedbackActivity$State;

    .prologue
    .line 64
    iput-object p1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->state:Lcom/google/glass/logging/UserFeedbackActivity$State;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/logging/UserFeedbackActivity;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/logging/UserFeedbackActivity;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$300()Ljava/util/concurrent/Executor;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/google/glass/logging/UserFeedbackActivity;->feedbackExecutor:Ljava/util/concurrent/Executor;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/logging/UserFeedbackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/logging/UserFeedbackActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->createAndGotoTimelineItem()V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/logging/UserFeedbackActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/logging/UserFeedbackActivity;

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->showConfirmationScreen()V

    return-void
.end method

.method private addSliderView()V
    .locals 5

    .prologue
    .line 579
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->removeSliderView()V

    .line 581
    new-instance v1, Lcom/google/glass/widget/SliderView;

    invoke-direct {v1, p0}, Lcom/google/glass/widget/SliderView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 583
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 585
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v1, 0x51

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 586
    iget-object v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/google/glass/logging/UserFeedbackActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 588
    iget-object v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    const-wide/16 v2, 0x1770

    new-instance v4, Lcom/google/glass/logging/UserFeedbackActivity$2;

    invoke-direct {v4, p0}, Lcom/google/glass/logging/UserFeedbackActivity$2;-><init>(Lcom/google/glass/logging/UserFeedbackActivity;)V

    invoke-virtual {v1, v2, v3, v4}, Lcom/google/glass/widget/SliderView;->startProgress(JLandroid/animation/Animator$AnimatorListener;)V

    .line 605
    return-void
.end method

.method private createAndGotoTimelineItem()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 389
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 390
    iget-object v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Creating timeline item"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 392
    iget-object v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    invoke-virtual {v1}, Lcom/google/glass/timeline/TimelineItemCreationHelper;->createTimelineItem()Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    move-result-object v0

    .line 393
    .local v0, "item":Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    iget-object v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    invoke-virtual {v1, v0}, Lcom/google/glass/timeline/TimelineItemLocationHelper;->populateLocation(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 394
    iget-object v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->feedbackText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setText(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 395
    invoke-virtual {v0, v4}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setViewType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 396
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setAttributionType(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 399
    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCloudSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 400
    invoke-virtual {v0, v5}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->setCompanionSyncProtocol(I)Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;

    .line 402
    iget-object v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    sget-object v2, Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;->BUG_REPORT:Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper;->insertTimelineItem(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/userevent/UserEventAction$TimelineItemInserted;Lcom/google/googlex/glass/common/proto/TimelineNano$UserAction;)Landroid/net/Uri;

    .line 405
    invoke-virtual {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/google/glass/timeline/TimelineItemId;

    invoke-direct {v2, v0}, Lcom/google/glass/timeline/TimelineItemId;-><init>(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Lcom/google/glass/timeline/TimelineActivityHelper;->goToTimeline(Landroid/content/Context;Lcom/google/glass/timeline/TimelineItemId;Z)V

    .line 407
    invoke-virtual {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->finish()V

    .line 408
    return-void
.end method

.method static filterBugReport(Ljava/lang/String;Landroid/accounts/AccountManager;ZLjava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "bugReport"    # Ljava/lang/String;
    .param p1, "accountManager"    # Landroid/accounts/AccountManager;
    .param p2, "includeEmailAddress"    # Z
    .param p3, "serialNumber"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 624
    if-nez p2, :cond_0

    .line 625
    invoke-virtual {p1}, Landroid/accounts/AccountManager;->getAccounts()[Landroid/accounts/Account;

    move-result-object v1

    .line 626
    .local v1, "accounts":[Landroid/accounts/Account;
    array-length v3, v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v0, v1, v2

    .line 627
    .local v0, "account":Landroid/accounts/Account;
    iget-object v4, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    const-string v5, "XX@XX.com"

    invoke-virtual {p0, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 626
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 632
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "accounts":[Landroid/accounts/Account;
    :cond_0
    const-string v2, "([0-9A-Fa-f]{2}[:-]){5}([0-9A-Fa-f]{2})"

    const-string v3, "XX:XX:XX:XX:XX:XX"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 635
    const-string v2, "(?:\\d{1,3}\\.){3}\\d{1,3}"

    const-string v3, "00.00.00.00"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 638
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 639
    const-string v2, "FFFFFFFFFFFFFFFF"

    invoke-virtual {p0, p3, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 640
    invoke-virtual {p3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FFFFFFFFFFFFFFFF"

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p0

    .line 643
    :cond_1
    return-object p0
.end method

.method private removeSliderView()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    if-eqz v0, :cond_0

    .line 609
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopProgress()V

    .line 610
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->layout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 611
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    .line 613
    :cond_0
    return-void
.end method

.method private resetState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 185
    sget-object v0, Lcom/google/glass/logging/UserFeedbackActivity$State;->ANNOTATE:Lcom/google/glass/logging/UserFeedbackActivity$State;

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->state:Lcom/google/glass/logging/UserFeedbackActivity$State;

    .line 187
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->feedbackText:Ljava/lang/String;

    .line 188
    iput-boolean v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeEmailAddress:Z

    .line 189
    iput-boolean v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeSystemLog:Z

    .line 190
    return-void
.end method

.method private showConfirmationScreen()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 205
    sget-object v0, Lcom/google/glass/logging/UserFeedbackActivity$State;->CONFIRM:Lcom/google/glass/logging/UserFeedbackActivity$State;

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->state:Lcom/google/glass/logging/UserFeedbackActivity$State;

    .line 206
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->descriptionView:Lcom/google/glass/widget/DynamicSizeTextView;

    sget v1, Lcom/google/glass/logging/R$string;->feedback_send_confirmation:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(I)V

    .line 207
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->tapView:Lcom/google/glass/widget/TipsView;

    sget v1, Lcom/google/glass/logging/R$string;->feedback_tap_to_send:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setText(I)V

    .line 209
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->logsIncludedView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 210
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->emailIncludedView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 212
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->removeSliderView()V

    .line 213
    return-void
.end method

.method private showReviewScreen()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 193
    sget-object v0, Lcom/google/glass/logging/UserFeedbackActivity$State;->REVIEW:Lcom/google/glass/logging/UserFeedbackActivity$State;

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->state:Lcom/google/glass/logging/UserFeedbackActivity$State;

    .line 195
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->descriptionView:Lcom/google/glass/widget/DynamicSizeTextView;

    iget-object v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->feedbackText:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/DynamicSizeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->tapView:Lcom/google/glass/widget/TipsView;

    sget v1, Lcom/google/glass/logging/R$string;->feedback_tap_for_options:I

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/TipsView;->setText(I)V

    .line 198
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->logsIncludedView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 199
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->emailIncludedView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 201
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->addSliderView()V

    .line 202
    return-void
.end method

.method private startVoiceAnnotation()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 172
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "startVoiceAnnotation"

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 173
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    sget v3, Lcom/google/glass/logging/R$string;->feedback_header:I

    .line 176
    invoke-virtual {p0, v3}, Lcom/google/glass/logging/UserFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget v4, Lcom/google/glass/logging/R$string;->feedback_prompt:I

    .line 177
    invoke-virtual {p0, v4}, Lcom/google/glass/logging/UserFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    move v5, v2

    move v6, v2

    move v7, v1

    .line 173
    invoke-virtual/range {v0 .. v7}, Lcom/google/glass/voice/VoiceAnnotationHelper;->startAnnotationForResultWithCustomHeader(IZLjava/lang/String;Ljava/lang/String;ZZZ)V

    .line 182
    return-void
.end method

.method private updateIncludedViews()V
    .locals 6

    .prologue
    const v4, 0x106000b

    .line 547
    iget-boolean v2, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeSystemLog:Z

    if-eqz v2, :cond_0

    .line 548
    sget v2, Lcom/google/glass/logging/R$id;->logs_included_image:I

    invoke-virtual {p0, v2}, Lcom/google/glass/logging/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/google/glass/logging/R$drawable;->ic_done_50:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 549
    sget v2, Lcom/google/glass/logging/R$id;->logs_included_text:I

    invoke-virtual {p0, v2}, Lcom/google/glass/logging/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 550
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 551
    sget v2, Lcom/google/glass/logging/R$string;->feedback_system_log_included:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 559
    :goto_0
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v2

    invoke-virtual {v2, p0}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v2

    invoke-interface {v2}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v0

    .line 560
    .local v0, "account":Landroid/accounts/Account;
    iget-boolean v2, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeEmailAddress:Z

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    .line 561
    sget v2, Lcom/google/glass/logging/R$id;->email_included_image:I

    invoke-virtual {p0, v2}, Lcom/google/glass/logging/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/google/glass/logging/R$drawable;->ic_done_50:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 562
    sget v2, Lcom/google/glass/logging/R$id;->email_included_text:I

    invoke-virtual {p0, v2}, Lcom/google/glass/logging/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "textView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 563
    .restart local v1    # "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 567
    sget v2, Lcom/google/glass/logging/R$string;->feedback_email_address_included:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/google/glass/logging/UserFeedbackActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    :goto_1
    return-void

    .line 553
    .end local v0    # "account":Landroid/accounts/Account;
    .end local v1    # "textView":Landroid/widget/TextView;
    :cond_0
    sget v2, Lcom/google/glass/logging/R$id;->logs_included_image:I

    invoke-virtual {p0, v2}, Lcom/google/glass/logging/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/google/glass/logging/R$drawable;->ic_no_50:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 554
    sget v2, Lcom/google/glass/logging/R$id;->logs_included_text:I

    invoke-virtual {p0, v2}, Lcom/google/glass/logging/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 555
    .restart local v1    # "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/logging/R$color;->text_gray:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 556
    sget v2, Lcom/google/glass/logging/R$string;->feedback_system_log_not_included:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 569
    .restart local v0    # "account":Landroid/accounts/Account;
    :cond_1
    sget v2, Lcom/google/glass/logging/R$id;->email_included_image:I

    invoke-virtual {p0, v2}, Lcom/google/glass/logging/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    sget v3, Lcom/google/glass/logging/R$drawable;->ic_no_50:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 570
    sget v2, Lcom/google/glass/logging/R$id;->email_included_text:I

    invoke-virtual {p0, v2}, Lcom/google/glass/logging/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "textView":Landroid/widget/TextView;
    check-cast v1, Landroid/widget/TextView;

    .line 571
    .restart local v1    # "textView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/google/glass/logging/R$color;->text_gray:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 572
    sget v2, Lcom/google/glass/logging/R$string;->feedback_email_address_not_included:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1
.end method


# virtual methods
.method isIncludeEmailAddress()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 653
    iget-boolean v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeEmailAddress:Z

    return v0
.end method

.method isIncludeSystemLog()Z
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 648
    iget-boolean v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeSystemLog:Z

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 5
    .param p1, "requestCode"    # I
    .param p2, "resultCode"    # I
    .param p3, "data"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 217
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onActivityResult"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 218
    invoke-super {p0, p1, p2, p3}, Lcom/google/glass/app/GlassActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 219
    if-ne v3, p1, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->USER_FEEDBACK_ANNOTATED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 221
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationHelper;->getAnnotationResult(ILandroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->feedbackText:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onActivityResult [feedbackText=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/glass/logging/UserFeedbackActivity;->feedbackText:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 223
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->feedbackText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 224
    invoke-virtual {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->getContentView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 225
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->showReviewScreen()V

    .line 226
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->updateIncludedViews()V

    .line 228
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-virtual {v0, p2, p3}, Lcom/google/glass/voice/VoiceAnnotationHelper;->getAudioData(ILandroid/content/Intent;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->audioBytes:[B

    .line 234
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    invoke-virtual {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->finish()V

    goto :goto_0
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    .line 304
    sget-object v1, Lcom/google/glass/logging/UserFeedbackActivity$State;->CONFIRM:Lcom/google/glass/logging/UserFeedbackActivity$State;

    iget-object v2, p0, Lcom/google/glass/logging/UserFeedbackActivity;->state:Lcom/google/glass/logging/UserFeedbackActivity$State;

    invoke-virtual {v1, v2}, Lcom/google/glass/logging/UserFeedbackActivity$State;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 305
    new-instance v1, Lcom/google/glass/widget/MessageDialog$Builder;

    invoke-virtual {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/widget/MessageDialog$Builder;-><init>(Landroid/content/Context;Lcom/google/glass/sound/SoundManager;)V

    sget v2, Lcom/google/glass/logging/R$string;->feedback_send_confirming:I

    .line 306
    invoke-virtual {p0, v2}, Lcom/google/glass/logging/UserFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/logging/R$drawable;->ic_share_50:I

    .line 307
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setTemporaryIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/logging/R$string;->feedback_send_confirmed:I

    .line 308
    invoke-virtual {p0, v2}, Lcom/google/glass/logging/UserFeedbackActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget v2, Lcom/google/glass/logging/R$drawable;->ic_done_50:I

    .line 309
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setIcon(I)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    sget-object v2, Lcom/google/glass/sound/SoundManager$SoundId;->SUCCESS:Lcom/google/glass/sound/SoundManager$SoundId;

    .line 310
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setSound(Lcom/google/glass/sound/SoundManager$SoundId;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/google/glass/logging/UserFeedbackActivity$1;

    invoke-direct {v2, p0}, Lcom/google/glass/logging/UserFeedbackActivity$1;-><init>(Lcom/google/glass/logging/UserFeedbackActivity;)V

    .line 311
    invoke-virtual {v1, v2}, Lcom/google/glass/widget/MessageDialog$Builder;->setListener(Lcom/google/glass/widget/MessageDialog$Listener;)Lcom/google/glass/widget/MessageDialog$Builder;

    move-result-object v0

    .line 363
    .local v0, "builder":Lcom/google/glass/widget/MessageDialog$Builder;
    invoke-virtual {v0}, Lcom/google/glass/widget/MessageDialog$Builder;->build()Lcom/google/glass/widget/MessageDialog;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/glass/logging/UserFeedbackActivity;->showMessage(Lcom/google/glass/widget/MessageDialog;)V

    .line 364
    const/4 v1, 0x1

    .line 367
    .end local v0    # "builder":Lcom/google/glass/widget/MessageDialog$Builder;
    :goto_0
    return v1

    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onConfirm()Z

    move-result v1

    goto :goto_0
.end method

.method protected onCreateInternal(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 141
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 142
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onCreate"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    sget v0, Lcom/google/glass/logging/R$id;->feedback_layout:I

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->layout:Landroid/widget/LinearLayout;

    .line 145
    sget v0, Lcom/google/glass/logging/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/DynamicSizeTextView;

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->descriptionView:Lcom/google/glass/widget/DynamicSizeTextView;

    .line 146
    sget v0, Lcom/google/glass/logging/R$id;->tap:I

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/widget/TipsView;

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->tapView:Lcom/google/glass/widget/TipsView;

    .line 147
    sget v0, Lcom/google/glass/logging/R$id;->logs_included:I

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->logsIncludedView:Landroid/widget/LinearLayout;

    .line 148
    sget v0, Lcom/google/glass/logging/R$id;->email_included:I

    invoke-virtual {p0, v0}, Lcom/google/glass/logging/UserFeedbackActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->emailIncludedView:Landroid/widget/LinearLayout;

    .line 150
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemDatabaseHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->timelineItemDatabaseHelper:Lcom/google/glass/timeline/TimelineItemDatabaseHelper;

    .line 151
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemCreationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemCreationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->timelineItemCreationHelper:Lcom/google/glass/timeline/TimelineItemCreationHelper;

    .line 152
    invoke-static {}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->getInstance()Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/timeline/TimelineItemLocationHelper$Provider;->get(Landroid/content/Context;)Lcom/google/glass/timeline/TimelineItemLocationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->timelineItemLocationHelper:Lcom/google/glass/timeline/TimelineItemLocationHelper;

    .line 153
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 154
    new-instance v0, Lcom/google/glass/voice/VoiceAnnotationHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/voice/VoiceAnnotationHelper;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->annotationHelper:Lcom/google/glass/voice/VoiceAnnotationHelper;

    .line 156
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    sget-object v1, Lcom/google/glass/userevent/UserEventAction;->USER_FEEDBACK_STARTED:Lcom/google/glass/userevent/UserEventAction;

    invoke-virtual {v0, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;)V

    .line 157
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 248
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->feedbackText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/glass/logging/UserFeedbackActivity$State;->CONFIRM:Lcom/google/glass/logging/UserFeedbackActivity$State;

    iget-object v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->state:Lcom/google/glass/logging/UserFeedbackActivity$State;

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/UserFeedbackActivity$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/logging/R$menu;->user_feedback_menu:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 250
    const/4 v0, 0x1

    .line 252
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDismiss(Lcom/google/glass/input/InputListener$DismissAction;)Z
    .locals 3
    .param p1, "dismissAction"    # Lcom/google/glass/input/InputListener$DismissAction;

    .prologue
    const/4 v2, 0x1

    .line 373
    sget-object v0, Lcom/google/glass/logging/UserFeedbackActivity$State;->CONFIRM:Lcom/google/glass/logging/UserFeedbackActivity$State;

    iget-object v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->state:Lcom/google/glass/logging/UserFeedbackActivity$State;

    invoke-virtual {v0, v1}, Lcom/google/glass/logging/UserFeedbackActivity$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 375
    invoke-virtual {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 376
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->showReviewScreen()V

    .line 384
    :goto_0
    return v2

    .line 380
    :cond_0
    invoke-virtual {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->DISMISS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 381
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v0}, Lcom/google/glass/widget/SliderView;->stopProgress()V

    .line 382
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->resetState()V

    .line 383
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->startVoiceAnnotation()V

    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4
    .param p1, "selectedMenuItem"    # Landroid/view/MenuItem;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 288
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 289
    .local v0, "selectedItemId":I
    sget v3, Lcom/google/glass/logging/R$id;->feedback_menu_add_remove_email:I

    if-ne v0, v3, :cond_1

    .line 290
    iget-boolean v3, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeEmailAddress:Z

    if-nez v3, :cond_0

    move v1, v2

    :cond_0
    iput-boolean v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeEmailAddress:Z

    .line 291
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->updateIncludedViews()V

    .line 299
    :goto_0
    return v2

    .line 293
    :cond_1
    sget v3, Lcom/google/glass/logging/R$id;->feedback_menu_add_remove_system_log:I

    if-ne v0, v3, :cond_3

    .line 294
    iget-boolean v3, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeSystemLog:Z

    if-nez v3, :cond_2

    move v1, v2

    :cond_2
    iput-boolean v1, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeSystemLog:Z

    .line 295
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->updateIncludedViews()V

    goto :goto_0

    .line 299
    :cond_3
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    goto :goto_0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->addSliderView()V

    .line 283
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 284
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 259
    iget-object v2, p0, Lcom/google/glass/logging/UserFeedbackActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    if-eqz v2, :cond_0

    .line 260
    iget-object v2, p0, Lcom/google/glass/logging/UserFeedbackActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    invoke-virtual {v2}, Lcom/google/glass/widget/SliderView;->stopProgress()V

    .line 261
    iget-object v2, p0, Lcom/google/glass/logging/UserFeedbackActivity;->sliderView:Lcom/google/glass/widget/SliderView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/google/glass/widget/SliderView;->setVisibility(I)V

    .line 265
    :cond_0
    sget v2, Lcom/google/glass/logging/R$id;->feedback_menu_add_remove_email:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 266
    .local v0, "addRemoveEmail":Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeEmailAddress:Z

    if-eqz v2, :cond_1

    sget v2, Lcom/google/glass/logging/R$string;->feedback_menu_remove_email_address:I

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 268
    iget-boolean v2, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeEmailAddress:Z

    if-eqz v2, :cond_2

    sget v2, Lcom/google/glass/logging/R$drawable;->ic_remove_50:I

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 271
    sget v2, Lcom/google/glass/logging/R$id;->feedback_menu_add_remove_system_log:I

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 272
    .local v1, "addRemoveSystemLog":Landroid/view/MenuItem;
    iget-boolean v2, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeSystemLog:Z

    if-eqz v2, :cond_3

    sget v2, Lcom/google/glass/logging/R$string;->feedback_menu_remove_system_log:I

    :goto_2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 274
    iget-boolean v2, p0, Lcom/google/glass/logging/UserFeedbackActivity;->includeSystemLog:Z

    if-eqz v2, :cond_4

    sget v2, Lcom/google/glass/logging/R$drawable;->ic_remove_50:I

    :goto_3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 276
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v2

    return v2

    .line 266
    .end local v1    # "addRemoveSystemLog":Landroid/view/MenuItem;
    :cond_1
    sget v2, Lcom/google/glass/logging/R$string;->feedback_menu_add_email_address:I

    goto :goto_0

    .line 268
    :cond_2
    sget v2, Lcom/google/glass/logging/R$drawable;->ic_add_50:I

    goto :goto_1

    .line 272
    .restart local v1    # "addRemoveSystemLog":Landroid/view/MenuItem;
    :cond_3
    sget v2, Lcom/google/glass/logging/R$string;->feedback_menu_add_system_log:I

    goto :goto_2

    .line 274
    :cond_4
    sget v2, Lcom/google/glass/logging/R$drawable;->ic_add_50:I

    goto :goto_3
.end method

.method protected onResumeInternal()V
    .locals 5

    .prologue
    .line 161
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onResume isConfirming, state: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/logging/UserFeedbackActivity;->state:Lcom/google/glass/logging/UserFeedbackActivity$State;

    invoke-virtual {v4}, Lcom/google/glass/logging/UserFeedbackActivity$State;->name()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 164
    iget-object v0, p0, Lcom/google/glass/logging/UserFeedbackActivity;->feedbackText:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 165
    invoke-direct {p0}, Lcom/google/glass/logging/UserFeedbackActivity;->startVoiceAnnotation()V

    .line 168
    :cond_0
    invoke-super {p0}, Lcom/google/glass/app/GlassActivity;->onResumeInternal()V

    .line 169
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 238
    sget v0, Lcom/google/glass/logging/R$layout;->user_feedback:I

    return v0
.end method

.method sendFeedback(Lcom/google/userfeedback/android/api/UserFeedback;Lcom/google/userfeedback/android/api/UserFeedbackSpec;Landroid/accounts/AccountManager;)V
    .locals 26
    .param p1, "userFeedback"    # Lcom/google/userfeedback/android/api/UserFeedback;
    .param p2, "feedbackSpec"    # Lcom/google/userfeedback/android/api/UserFeedbackSpec;
    .param p3, "accountManager"    # Landroid/accounts/AccountManager;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 413
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 415
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v20, v0

    const-string v21, "Sending feedback"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 417
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->audioBytes:[B

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 424
    :cond_0
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->includeSystemLog:Z

    move/from16 v20, v0

    if-eqz v20, :cond_5

    .line 425
    new-instance v18, Lcom/google/glass/time/Stopwatch;

    invoke-direct/range {v18 .. v18}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 426
    .local v18, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 429
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 433
    .local v5, "bugReport":Ljava/lang/StringBuilder;
    const/16 v20, 0x1

    :try_start_0
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "getprop"

    aput-object v22, v20, v21

    .line 434
    invoke-static/range {v20 .. v20}, Lcom/google/glass/util/CommandOutputCollector;->collectOutputStrings([Ljava/lang/String;)[Ljava/lang/StringBuilder;

    move-result-object v8

    .line 435
    .local v8, "getPropOutput":[Ljava/lang/StringBuilder;
    if-eqz v8, :cond_2

    array-length v0, v8

    move/from16 v20, v0

    if-lez v20, :cond_2

    .line 436
    const/16 v20, 0x0

    aget-object v20, v8, v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    const-string v21, "\n"

    invoke-virtual/range {v20 .. v21}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v13

    .line 437
    .local v13, "properties":[Ljava/lang/String;
    array-length v0, v13

    move/from16 v21, v0

    const/16 v20, 0x0

    :goto_0
    move/from16 v0, v20

    move/from16 v1, v21

    if-ge v0, v1, :cond_2

    aget-object v14, v13, v20

    .line 438
    .local v14, "property":Ljava/lang/String;
    const-string v22, "bootreason"

    move-object/from16 v0, v22

    invoke-virtual {v14, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v22

    if-eqz v22, :cond_1

    .line 439
    const/16 v22, 0xa

    move/from16 v0, v22

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 440
    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 437
    :cond_1
    add-int/lit8 v20, v20, 0x1

    goto :goto_0

    .line 444
    .end local v8    # "getPropOutput":[Ljava/lang/StringBuilder;
    .end local v13    # "properties":[Ljava/lang/String;
    .end local v14    # "property":Ljava/lang/String;
    :catch_0
    move-exception v7

    .line 445
    .local v7, "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v20, v0

    const-string v21, "Error getting reboot reasons."

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v7, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 450
    .end local v7    # "e":Ljava/io/IOException;
    :cond_2
    const/16 v20, 0x2

    :try_start_1
    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    const-string v22, "dumpsys"

    aput-object v22, v20, v21

    const/16 v21, 0x1

    const-string v22, "meminfo"

    aput-object v22, v20, v21

    .line 451
    invoke-static/range {v20 .. v20}, Lcom/google/glass/util/CommandOutputCollector;->collectOutputStrings([Ljava/lang/String;)[Ljava/lang/StringBuilder;

    move-result-object v12

    .line 452
    .local v12, "meminfo":[Ljava/lang/StringBuilder;
    if-eqz v12, :cond_3

    array-length v0, v12

    move/from16 v20, v0

    if-lez v20, :cond_3

    .line 453
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 454
    const/16 v20, 0x0

    aget-object v20, v12, v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3

    .line 460
    .end local v12    # "meminfo":[Ljava/lang/StringBuilder;
    :cond_3
    :goto_1
    const-string v20, "line.separator"

    invoke-static/range {v20 .. v20}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 461
    .local v10, "lineSeparator":Ljava/lang/String;
    invoke-static {}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->getInstance()Lcom/google/android/glass/hidden/HiddenSystemProperties;

    move-result-object v20

    const-string v21, "ro.boot.serialno"

    const-string v22, ""

    invoke-virtual/range {v20 .. v22}, Lcom/google/android/glass/hidden/HiddenSystemProperties;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 464
    .local v17, "serialNumber":Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v20

    if-nez v20, :cond_4

    .line 465
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 466
    const-string v20, "Manufacturing Build: "

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0x0

    const/16 v22, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v21

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 467
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v20

    const/16 v21, 0xa

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 472
    :cond_4
    const/4 v11, 0x0

    .line 474
    .local v11, "logcat":Ljava/io/InputStream;
    :try_start_2
    invoke-static {}, Lcom/google/glass/util/CommandOutputCollector;->getLogcat()Ljava/io/InputStream;

    move-result-object v11

    .line 475
    if-eqz v11, :cond_8

    .line 476
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v0, v20

    invoke-direct {v0, v11}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 478
    .local v16, "reader":Ljava/io/BufferedReader;
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 479
    const-string v20, "----- LOGCAT -----"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 480
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 481
    :goto_2
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .local v9, "line":Ljava/lang/String;
    if-eqz v9, :cond_8

    .line 482
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->includeEmailAddress:Z

    move/from16 v20, v0

    move-object/from16 v0, p3

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v9, v0, v1, v2}, Lcom/google/glass/logging/UserFeedbackActivity;->filterBugReport(Ljava/lang/String;Landroid/accounts/AccountManager;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 484
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 487
    .end local v9    # "line":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    :catch_1
    move-exception v7

    .line 488
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v20, v0

    const-string v21, "Error while filtering logcat."

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v7, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 490
    const-string v20, "logcat stdout"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v11, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 494
    .end local v7    # "e":Ljava/io/IOException;
    :goto_3
    const/4 v15, 0x0

    .line 496
    .local v15, "raftLog":Ljava/io/InputStream;
    :try_start_4
    invoke-static {}, Lcom/google/glass/util/CommandOutputCollector;->getRaftLog()Ljava/io/InputStream;

    move-result-object v15

    .line 497
    if-eqz v15, :cond_9

    .line 498
    new-instance v16, Ljava/io/BufferedReader;

    new-instance v20, Ljava/io/InputStreamReader;

    move-object/from16 v0, v20

    invoke-direct {v0, v15}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v16

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 500
    .restart local v16    # "reader":Ljava/io/BufferedReader;
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 501
    const-string v20, "----- RAFTLOG -----"

    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 502
    const/16 v20, 0xa

    move/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 503
    :goto_4
    invoke-virtual/range {v16 .. v16}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v9

    .restart local v9    # "line":Ljava/lang/String;
    if-eqz v9, :cond_9

    .line 504
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->includeEmailAddress:Z

    move/from16 v20, v0

    .line 505
    move-object/from16 v0, p3

    move/from16 v1, v20

    move-object/from16 v2, v17

    invoke-static {v9, v0, v1, v2}, Lcom/google/glass/logging/UserFeedbackActivity;->filterBugReport(Ljava/lang/String;Landroid/accounts/AccountManager;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 504
    move-object/from16 v0, v20

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 506
    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    .line 509
    .end local v9    # "line":Ljava/lang/String;
    .end local v16    # "reader":Ljava/io/BufferedReader;
    :catch_2
    move-exception v7

    .line 510
    .restart local v7    # "e":Ljava/io/IOException;
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v20, v0

    const-string v21, "Error while filtering raftlog."

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v7, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 512
    const-string v20, "raftlog stdout"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v15, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 515
    .end local v7    # "e":Ljava/io/IOException;
    :goto_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 516
    .local v6, "bugReportString":Ljava/lang/String;
    const-string v20, "bugreport"

    const-string v21, "text/plain"

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2, v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 518
    move-object/from16 v0, p2

    invoke-virtual {v0, v6}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setLogs(Ljava/lang/String;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 520
    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 521
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v20, v0

    const-string v21, "Capturing logs took %dms"

    const/16 v22, 0x1

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    invoke-virtual/range {v18 .. v18}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v24

    invoke-static/range {v24 .. v25}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v24

    aput-object v24, v22, v23

    invoke-interface/range {v20 .. v22}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 524
    .end local v5    # "bugReport":Ljava/lang/StringBuilder;
    .end local v6    # "bugReportString":Ljava/lang/String;
    .end local v10    # "lineSeparator":Ljava/lang/String;
    .end local v11    # "logcat":Ljava/io/InputStream;
    .end local v15    # "raftLog":Ljava/io/InputStream;
    .end local v17    # "serialNumber":Ljava/lang/String;
    .end local v18    # "stopwatch":Lcom/google/glass/time/Stopwatch;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->includeEmailAddress:Z

    move/from16 v20, v0

    if-eqz v20, :cond_6

    .line 526
    invoke-static {}, Lcom/google/glass/auth/AuthUtilsProvider;->getInstance()Lcom/google/glass/auth/AuthUtilsProvider;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/google/glass/auth/AuthUtilsProvider;->get(Landroid/content/Context;)Lcom/google/glass/auth/AuthUtils;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Lcom/google/glass/auth/AuthUtils;->getGoogleAccount()Landroid/accounts/Account;

    move-result-object v4

    .line 527
    .local v4, "account":Landroid/accounts/Account;
    if-eqz v4, :cond_6

    .line 528
    iget-object v0, v4, Landroid/accounts/Account;->name:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p2

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->setSelectedAccount(Ljava/lang/String;)V

    .line 532
    .end local v4    # "account":Landroid/accounts/Account;
    :cond_6
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isUser()Z

    move-result v20

    if-nez v20, :cond_7

    .line 535
    invoke-static {}, Lcom/google/glass/userevent/UserEventPreferences$Provider;->getInstance()Lcom/google/glass/userevent/UserEventPreferences$Provider;

    move-result-object v20

    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/logging/UserFeedbackActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Lcom/google/glass/userevent/UserEventPreferences$Provider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventPreferences;

    move-result-object v19

    .line 536
    .local v19, "userEventPreferences":Lcom/google/glass/userevent/UserEventPreferences;
    const-string v20, "sessionId"

    const-string v21, "text/plain"

    .line 537
    invoke-virtual/range {v19 .. v19}, Lcom/google/glass/userevent/UserEventPreferences;->getSessionId()Ljava/lang/String;

    move-result-object v22

    .line 536
    move-object/from16 v0, p2

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/google/userfeedback/android/api/UserFeedbackSpec;->addProductSpecificBinaryData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lcom/google/userfeedback/android/api/UserFeedbackSpec;

    .line 542
    .end local v19    # "userEventPreferences":Lcom/google/glass/userevent/UserEventPreferences;
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->feedbackText:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/google/userfeedback/android/api/UserFeedback;->silentSubmitFeedback(Lcom/google/userfeedback/android/api/UserFeedbackSpec;Ljava/lang/String;)V

    .line 543
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v20, v0

    const-string v21, "Feedback sent"

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-interface/range {v20 .. v22}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 544
    return-void

    .line 456
    .restart local v5    # "bugReport":Ljava/lang/StringBuilder;
    .restart local v18    # "stopwatch":Lcom/google/glass/time/Stopwatch;
    :catch_3
    move-exception v7

    .line 457
    .restart local v7    # "e":Ljava/io/IOException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v20, v0

    const-string v21, "Error getting memory stats."

    const/16 v22, 0x0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v22, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-interface {v0, v7, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 490
    .end local v7    # "e":Ljava/io/IOException;
    .restart local v10    # "lineSeparator":Ljava/lang/String;
    .restart local v11    # "logcat":Ljava/io/InputStream;
    .restart local v17    # "serialNumber":Ljava/lang/String;
    :cond_8
    const-string v20, "logcat stdout"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v11, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto/16 :goto_3

    :catchall_0
    move-exception v20

    const-string v21, "logcat stdout"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v11, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v20

    .line 512
    .restart local v15    # "raftLog":Ljava/io/InputStream;
    :cond_9
    const-string v20, "raftlog stdout"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v0, v15, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto/16 :goto_5

    :catchall_1
    move-exception v20

    const-string v21, "raftlog stdout"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/google/glass/logging/UserFeedbackActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-static {v0, v15, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v20
.end method

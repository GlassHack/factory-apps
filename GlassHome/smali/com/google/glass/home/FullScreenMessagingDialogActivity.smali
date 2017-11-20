.class public Lcom/google/glass/home/FullScreenMessagingDialogActivity;
.super Lcom/google/glass/app/GlassActivity;
.source "FullScreenMessagingDialogActivity.java"


# instance fields
.field private helper:Lcom/google/glass/util/FullScreenMessagingDialogHelper;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private rootView:Landroid/widget/FrameLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/google/glass/app/GlassActivity;-><init>()V

    .line 24
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private handleIntent(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    new-instance v0, Lcom/google/android/glass/widget/CardBuilder;

    sget-object v1, Lcom/google/android/glass/widget/CardBuilder$Layout;->ALERT:Lcom/google/android/glass/widget/CardBuilder$Layout;

    invoke-direct {v0, p0, v1}, Lcom/google/android/glass/widget/CardBuilder;-><init>(Landroid/content/Context;Lcom/google/android/glass/widget/CardBuilder$Layout;)V

    invoke-virtual {p0, p1, v0}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->handleIntent(Landroid/content/Intent;Lcom/google/android/glass/widget/CardBuilder;)V

    .line 48
    return-void
.end method


# virtual methods
.method handleIntent(Landroid/content/Intent;Lcom/google/android/glass/widget/CardBuilder;)V
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "cardBuilder"    # Lcom/google/android/glass/widget/CardBuilder;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    const/4 v8, -0x1

    .line 53
    iget-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->helper:Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    invoke-virtual {v5, p1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->getMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 54
    .local v1, "message":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 55
    iget-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Null message passed, finishing activity."

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 56
    invoke-virtual {p0}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->finish()V

    .line 92
    :goto_0
    return-void

    .line 59
    :cond_0
    invoke-virtual {p2, v1}, Lcom/google/android/glass/widget/CardBuilder;->setText(Ljava/lang/CharSequence;)Lcom/google/android/glass/widget/CardBuilder;

    .line 61
    iget-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->helper:Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    invoke-virtual {v5, p1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->getSubMessageFromIntent(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v3

    .line 62
    .local v3, "subMessage":Ljava/lang/String;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 63
    invoke-virtual {p2, v3}, Lcom/google/android/glass/widget/CardBuilder;->setFootnote(Ljava/lang/CharSequence;)Lcom/google/android/glass/widget/CardBuilder;

    .line 66
    :cond_1
    iget-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->helper:Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    invoke-virtual {v5, p1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->getIconFromIntent(Landroid/content/Intent;)I

    move-result v2

    .line 67
    .local v2, "requestedIcon":I
    sget v0, Lcom/google/glass/home/R$drawable;->ic_warning_150:I

    .line 68
    .local v0, "icon":I
    packed-switch v2, :pswitch_data_0

    .line 76
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Icon not supported."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 70
    :pswitch_0
    sget v0, Lcom/google/glass/home/R$drawable;->ic_warning_150:I

    .line 79
    :goto_1
    invoke-virtual {p2, v0}, Lcom/google/android/glass/widget/CardBuilder;->setIcon(I)Lcom/google/android/glass/widget/CardBuilder;

    .line 81
    iget-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->helper:Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    invoke-virtual {v5, p1}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;->getTurnScreenOnFromIntent(Landroid/content/Intent;)Z

    move-result v4

    .line 82
    .local v4, "turnScreenOn":Z
    if-eqz v4, :cond_2

    .line 83
    new-instance v5, Lcom/google/glass/util/PowerHelper;

    invoke-direct {v5, p0}, Lcom/google/glass/util/PowerHelper;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5}, Lcom/google/glass/util/PowerHelper;->userActivity()V

    .line 87
    :cond_2
    iget-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {v5}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 90
    iget-object v5, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->rootView:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Lcom/google/android/glass/widget/CardBuilder;->getView()Landroid/view/View;

    move-result-object v6

    new-instance v7, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v7, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v5, v6, v7}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 73
    .end local v4    # "turnScreenOn":Z
    :pswitch_1
    sget v0, Lcom/google/glass/home/R$drawable;->ic_done_150:I

    .line 74
    goto :goto_1

    .line 68
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onConfirm()Z
    .locals 3

    .prologue
    .line 96
    iget-object v0, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "onConfirm"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 97
    invoke-virtual {p0}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->getSoundManager()Lcom/google/glass/sound/SoundManager;

    move-result-object v0

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->TAP:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 98
    invoke-virtual {p0}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->finish()V

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInternal(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 37
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onCreateInternal(Landroid/os/Bundle;)V

    .line 38
    new-instance v0, Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    invoke-direct {v0, p0}, Lcom/google/glass/util/FullScreenMessagingDialogHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->helper:Lcom/google/glass/util/FullScreenMessagingDialogHelper;

    .line 40
    sget v0, Lcom/google/glass/home/R$id;->root:I

    invoke-virtual {p0, v0}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->rootView:Landroid/widget/FrameLayout;

    .line 41
    iget-object v0, p0, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->rootView:Landroid/widget/FrameLayout;

    sget v1, Lcom/google/glass/home/R$color;->background_black_semitransparent:I

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundResource(I)V

    .line 43
    invoke-virtual {p0}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->handleIntent(Landroid/content/Intent;)V

    .line 44
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 31
    invoke-super {p0, p1}, Lcom/google/glass/app/GlassActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 32
    invoke-direct {p0, p1}, Lcom/google/glass/home/FullScreenMessagingDialogActivity;->handleIntent(Landroid/content/Intent;)V

    .line 33
    return-void
.end method

.method protected provideContentView()I
    .locals 1

    .prologue
    .line 104
    sget v0, Lcom/google/glass/home/R$layout;->empty_layout:I

    return v0
.end method

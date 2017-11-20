.class Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;
.super Ljava/lang/Object;
.source "SyncSettingsItemView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/settings/ui/SyncSettingsItemView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "IconsAndMessagesHelper"
.end annotation


# instance fields
.field private final allSynced:Landroid/widget/TextView;

.field private final description:Landroid/widget/TextView;

.field private final iconActiveCenter:Landroid/widget/ImageView;

.field private final iconActiveOuter:Landroid/widget/ImageView;

.field private final iconDone:Landroid/widget/ImageView;

.field private final iconPending:Landroid/widget/ImageView;

.field private final progress:Landroid/widget/TextView;

.field private final scanning:Landroid/widget/TextView;

.field private final spinner:Landroid/view/animation/Animation;

.field final synthetic this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

.field private final totalUnsyncedCount:I

.field private final unsynced:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/google/glass/settings/ui/SyncSettingsItemView;I)V
    .locals 2
    .param p2, "totalUnsyncedCount"    # I

    .prologue
    .line 470
    iput-object p1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 471
    iput p2, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->totalUnsyncedCount:I

    .line 473
    sget v0, Lcom/google/glass/settings/ui/R$id;->setting_value:I

    invoke-virtual {p1, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->scanning:Landroid/widget/TextView;

    .line 475
    sget v0, Lcom/google/glass/settings/ui/R$id;->setting_details:I

    invoke-virtual {p1, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->allSynced:Landroid/widget/TextView;

    .line 476
    sget v0, Lcom/google/glass/settings/ui/R$id;->setting_extra_details1:I

    invoke-virtual {p1, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->progress:Landroid/widget/TextView;

    .line 477
    sget v0, Lcom/google/glass/settings/ui/R$id;->setting_extra_details2:I

    invoke-virtual {p1, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->unsynced:Landroid/widget/TextView;

    .line 478
    sget v0, Lcom/google/glass/settings/ui/R$id;->setting_info:I

    invoke-virtual {p1, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->description:Landroid/widget/TextView;

    .line 480
    sget v0, Lcom/google/glass/settings/ui/R$id;->sync_setting_icon_done:I

    invoke-virtual {p1, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->iconDone:Landroid/widget/ImageView;

    .line 481
    sget v0, Lcom/google/glass/settings/ui/R$id;->sync_setting_icon_pending:I

    invoke-virtual {p1, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->iconPending:Landroid/widget/ImageView;

    .line 482
    sget v0, Lcom/google/glass/settings/ui/R$id;->sync_setting_icon_active_outer:I

    invoke-virtual {p1, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->iconActiveOuter:Landroid/widget/ImageView;

    .line 483
    sget v0, Lcom/google/glass/settings/ui/R$id;->sync_setting_icon_active_center:I

    invoke-virtual {p1, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->iconActiveCenter:Landroid/widget/ImageView;

    .line 484
    invoke-virtual {p1}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$anim;->sync_setting_active:I

    invoke-static {v0, v1}, Lcom/google/glass/util/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->spinner:Landroid/view/animation/Animation;

    .line 485
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->spinner:Landroid/view/animation/Animation;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 486
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->spinner:Landroid/view/animation/Animation;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 487
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->spinner:Landroid/view/animation/Animation;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 489
    invoke-direct {p0}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->updateText()V

    .line 490
    return-void
.end method

.method private getVisibility(Z)I
    .locals 1
    .param p1, "isVisible"    # Z

    .prologue
    .line 559
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private updateState(ZZZZ)V
    .locals 2
    .param p1, "showAllSynced"    # Z
    .param p2, "showProgress"    # Z
    .param p3, "showUnsynced"    # Z
    .param p4, "showDescription"    # Z

    .prologue
    .line 539
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->scanning:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 541
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->allSynced:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->getVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->progress:Landroid/widget/TextView;

    invoke-direct {p0, p2}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->getVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 543
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->unsynced:Landroid/widget/TextView;

    invoke-direct {p0, p3}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->getVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 544
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->description:Landroid/widget/TextView;

    invoke-direct {p0, p4}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->getVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 546
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->iconDone:Landroid/widget/ImageView;

    invoke-direct {p0, p1}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->getVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->iconPending:Landroid/widget/ImageView;

    invoke-direct {p0, p3}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->getVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 549
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->iconActiveOuter:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->getVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 550
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->iconActiveCenter:Landroid/widget/ImageView;

    invoke-direct {p0, p2}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->getVisibility(Z)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 551
    if-eqz p2, :cond_0

    .line 552
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->iconActiveCenter:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->spinner:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 556
    :goto_0
    return-void

    .line 554
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->iconActiveCenter:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    goto :goto_0
.end method

.method private updateText()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 517
    iget v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->totalUnsyncedCount:I

    if-ne v0, v5, :cond_0

    .line 518
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->progress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->sync_message_progress_one:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 519
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->unsynced:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->sync_message_unsynced_items_one:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 526
    :goto_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->description:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .line 527
    invoke-virtual {v1}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->sync_message_auto_wifi_charging_long:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 526
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    return-void

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->progress:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .line 522
    invoke-virtual {v1}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->sync_message_progress:I

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->totalUnsyncedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 521
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 523
    iget-object v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->unsynced:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->this$0:Lcom/google/glass/settings/ui/SyncSettingsItemView;

    .line 524
    invoke-virtual {v1}, Lcom/google/glass/settings/ui/SyncSettingsItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/google/glass/settings/ui/R$string;->sync_message_unsynced_items:I

    new-array v3, v5, [Ljava/lang/Object;

    iget v4, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->totalUnsyncedCount:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 523
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method showAllSynced()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 493
    const/4 v0, 0x1

    invoke-direct {p0, v0, v1, v1, v1}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->updateState(ZZZZ)V

    .line 498
    return-void
.end method

.method showSyncActive()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 501
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1, v1}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->updateState(ZZZZ)V

    .line 506
    return-void
.end method

.method showUnsyncedStatus()V
    .locals 3

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 509
    iget v0, p0, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->totalUnsyncedCount:I

    if-lez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-direct {p0, v2, v2, v1, v0}, Lcom/google/glass/settings/ui/SyncSettingsItemView$IconsAndMessagesHelper;->updateState(ZZZZ)V

    .line 514
    return-void

    :cond_0
    move v0, v2

    .line 509
    goto :goto_0
.end method

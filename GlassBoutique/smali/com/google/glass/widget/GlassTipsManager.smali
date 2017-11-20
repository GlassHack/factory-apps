.class public Lcom/google/glass/widget/GlassTipsManager;
.super Ljava/lang/Object;
.source "GlassTipsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/widget/GlassTipsManager$6;,
        Lcom/google/glass/widget/GlassTipsManager$TipsCondition;,
        Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;,
        Lcom/google/glass/widget/GlassTipsManager$TipsType;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DELAY_BEFORE_SHOWING_TIPS_MS:I = 0xbb8

.field private static final TIPS_DURATION_MS:I = 0x1388


# instance fields
.field private final context:Landroid/content/Context;

.field private final handler:Landroid/os/Handler;

.field private increaseTipsCountTask:Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;

.field private lastShownTips:Lcom/google/glass/widget/GlassTips;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;

.field private settingsContract:Lcom/google/glass/util/SettingsContract;

.field private tipsTask:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 38
    invoke-static {}, Lcom/google/glass/util/SettingsContractProvider;->getInstance()Lcom/google/glass/util/SettingsContractProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/util/SettingsContractProvider;->get()Lcom/google/glass/util/SettingsContract;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->settingsContract:Lcom/google/glass/util/SettingsContract;

    .line 61
    iput-object p1, p0, Lcom/google/glass/widget/GlassTipsManager;->context:Landroid/content/Context;

    .line 62
    invoke-static {}, Lcom/google/glass/async/HandlerProvider;->getInstance()Lcom/google/glass/async/HandlerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/HandlerProvider;->get()Landroid/os/Handler;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->handler:Landroid/os/Handler;

    .line 63
    return-void
.end method

.method static synthetic access$102(Lcom/google/glass/widget/GlassTipsManager;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GlassTipsManager;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/glass/widget/GlassTipsManager;->tipsTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$200(Lcom/google/glass/widget/GlassTipsManager;)Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassTipsManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->increaseTipsCountTask:Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;

    return-object v0
.end method

.method static synthetic access$202(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;)Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GlassTipsManager;
    .param p1, "x1"    # Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/google/glass/widget/GlassTipsManager;->increaseTipsCountTask:Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/google/glass/widget/GlassTipsManager;)Lcom/google/glass/logging/FormattingLogger;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassTipsManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GlassTipsManager;
    .param p1, "x1"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p2, "x2"    # Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/GlassTipsManager;->showTips(Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    return-void
.end method

.method static synthetic access$500(Lcom/google/glass/widget/GlassTipsManager;)Lcom/google/glass/widget/GlassTips;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassTipsManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->lastShownTips:Lcom/google/glass/widget/GlassTips;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/widget/GlassTipsManager;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassTipsManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->context:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/widget/GlassTipsManager;)Lcom/google/glass/util/SettingsContract;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/widget/GlassTipsManager;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->settingsContract:Lcom/google/glass/util/SettingsContract;

    return-object v0
.end method

.method static synthetic access$800(Lcom/google/glass/widget/GlassTipsManager;ILcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GlassTipsManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p3, "x3"    # Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/GlassTipsManager;->checkCountThenRotateTipsAfterDelay(ILcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    return-void
.end method

.method static synthetic access$900(Lcom/google/glass/widget/GlassTipsManager;ILcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/GlassTipsManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p3, "x3"    # Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/widget/GlassTipsManager;->checkCountThenShowTipsAfterDelay(ILcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    return-void
.end method

.method private checkCountThenRotateTipsAfterDelay(ILcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "tipsType"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p3, "tipsCondition"    # Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    .prologue
    .line 118
    new-instance v0, Lcom/google/glass/widget/GlassTipsManager$3;

    invoke-direct {v0, p0}, Lcom/google/glass/widget/GlassTipsManager$3;-><init>(Lcom/google/glass/widget/GlassTipsManager;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/widget/GlassTipsManager;->checkCountThenRunRunnableAfterDelay(ILcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;Ljava/lang/Runnable;)V

    .line 128
    return-void
.end method

.method private checkCountThenRunRunnableAfterDelay(ILcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "count"    # I
    .param p2, "tipsType"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p3, "tipsCondition"    # Lcom/google/glass/widget/GlassTipsManager$TipsCondition;
    .param p4, "runnable"    # Ljava/lang/Runnable;

    .prologue
    const/4 v4, 0x0

    .line 69
    iget v0, p2, Lcom/google/glass/widget/GlassTipsManager$TipsType;->maxTimes:I

    if-lt p1, v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Tips will not show. count:%d, max allowed count:%d"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v4, p2, Lcom/google/glass/widget/GlassTipsManager$TipsType;->maxTimes:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    :goto_0
    return-void

    .line 70
    :cond_0
    invoke-interface {p3}, Lcom/google/glass/widget/GlassTipsManager$TipsCondition;->allowTips()Z

    move-result v0

    if-nez v0, :cond_1

    .line 71
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Tips will not show. because condition doesn\'t meet"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 75
    :cond_1
    new-instance v0, Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p2, p1, v1}, Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;-><init>(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$TipsType;ILcom/google/glass/widget/GlassTipsManager$1;)V

    iput-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->increaseTipsCountTask:Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;

    .line 76
    invoke-direct {p0, p3, p4}, Lcom/google/glass/widget/GlassTipsManager;->runRunnableAfterDelay(Lcom/google/glass/widget/GlassTipsManager$TipsCondition;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method private checkCountThenShowTipsAfterDelay(ILcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
    .locals 1
    .param p1, "count"    # I
    .param p2, "tipsType"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p3, "tipsCondition"    # Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    .prologue
    .line 108
    new-instance v0, Lcom/google/glass/widget/GlassTipsManager$2;

    invoke-direct {v0, p0, p2, p3}, Lcom/google/glass/widget/GlassTipsManager$2;-><init>(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/google/glass/widget/GlassTipsManager;->checkCountThenRunRunnableAfterDelay(ILcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;Ljava/lang/Runnable;)V

    .line 114
    return-void
.end method

.method private createGlassTips(Lcom/google/glass/widget/GlassTipsManager$TipsType;[Ljava/lang/CharSequence;)Lcom/google/glass/widget/GlassTips;
    .locals 7
    .param p1, "tipsType"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p2, "tipsText"    # [Ljava/lang/CharSequence;

    .prologue
    const/16 v6, 0x1388

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 230
    sget-object v0, Lcom/google/glass/widget/GlassTipsManager$6;->$SwitchMap$com$google$glass$widget$GlassTipsManager$TipsType:[I

    invoke-virtual {p1}, Lcom/google/glass/widget/GlassTipsManager$TipsType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 254
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 232
    :pswitch_0
    invoke-static {}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;->getInstance()Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/GlassTipsManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;->get(Landroid/content/Context;)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/widget/GlassTipsManager;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/common/R$string;->tap_to_view_options:I

    .line 234
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 233
    invoke-static {p2, v1}, Lcom/google/glass/widget/GlassTipsManager;->getTipsText([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lcom/google/glass/widget/GlassTipsManager$TipsType;->fontStyle:I

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->addMessages([Ljava/lang/CharSequence;I)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    move-result-object v0

    .line 236
    invoke-virtual {v0, v6}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->setDuration(I)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    move-result-object v0

    .line 237
    invoke-virtual {v0}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->rotate()Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    move-result-object v0

    .line 238
    invoke-virtual {v0}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->build()Lcom/google/glass/widget/GlassTips;

    move-result-object v0

    goto :goto_0

    .line 240
    :pswitch_1
    invoke-static {}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;->getInstance()Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/GlassTipsManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;->get(Landroid/content/Context;)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    move-result-object v0

    new-array v1, v5, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/widget/GlassTipsManager;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/common/R$string;->tap_to_expand:I

    .line 242
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 241
    invoke-static {p2, v1}, Lcom/google/glass/widget/GlassTipsManager;->getTipsText([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lcom/google/glass/widget/GlassTipsManager$TipsType;->fontStyle:I

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->addMessages([Ljava/lang/CharSequence;I)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    move-result-object v0

    .line 244
    invoke-virtual {v0, v6}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->setDuration(I)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->rotate()Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    move-result-object v0

    .line 246
    invoke-virtual {v0}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->build()Lcom/google/glass/widget/GlassTips;

    move-result-object v0

    goto :goto_0

    .line 248
    :pswitch_2
    invoke-static {}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;->getInstance()Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/GlassTipsManager;->context:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilderProvider;->get(Landroid/content/Context;)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/google/glass/widget/GlassTipsManager;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/common/R$string;->guard_phrase_hint:I

    .line 250
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/google/glass/widget/GlassTipsManager;->context:Landroid/content/Context;

    sget v3, Lcom/google/glass/common/R$string;->say_ok_glass:I

    .line 251
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    .line 249
    invoke-static {p2, v1}, Lcom/google/glass/widget/GlassTipsManager;->getTipsText([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p1, Lcom/google/glass/widget/GlassTipsManager$TipsType;->fontStyle:I

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->addMessages([Ljava/lang/CharSequence;I)Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;

    move-result-object v0

    .line 252
    invoke-virtual {v0}, Lcom/google/glass/widget/GlassTips$GlassTipsBuilder;->build()Lcom/google/glass/widget/GlassTips;

    move-result-object v0

    goto/16 :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private static getTipsText([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)[Ljava/lang/CharSequence;
    .locals 1
    .param p0, "tipsText"    # [Ljava/lang/CharSequence;
    .param p1, "defaultTipsText"    # [Ljava/lang/CharSequence;

    .prologue
    .line 259
    if-eqz p0, :cond_0

    array-length v0, p0

    if-lez v0, :cond_0

    .end local p0    # "tipsText":[Ljava/lang/CharSequence;
    :goto_0
    return-object p0

    .restart local p0    # "tipsText":[Ljava/lang/CharSequence;
    :cond_0
    move-object p0, p1

    goto :goto_0
.end method

.method private runRunnableAfterDelay(Lcom/google/glass/widget/GlassTipsManager$TipsCondition;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "tipsCondition"    # Lcom/google/glass/widget/GlassTipsManager$TipsCondition;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 83
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->tipsTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/GlassTipsManager;->tipsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 86
    :cond_0
    new-instance v0, Lcom/google/glass/widget/GlassTipsManager$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/glass/widget/GlassTipsManager$1;-><init>(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->tipsTask:Ljava/lang/Runnable;

    .line 103
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/GlassTipsManager;->tipsTask:Ljava/lang/Runnable;

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 104
    return-void
.end method

.method private showTips(Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
    .locals 4
    .param p1, "tipsType"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p2, "tipsCondition"    # Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    .prologue
    .line 217
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Show tips: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->lastShownTips:Lcom/google/glass/widget/GlassTips;

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->lastShownTips:Lcom/google/glass/widget/GlassTips;

    invoke-virtual {v0}, Lcom/google/glass/widget/GlassTips;->fadeOutAndHideTips()V

    .line 222
    :cond_0
    invoke-interface {p2}, Lcom/google/glass/widget/GlassTipsManager$TipsCondition;->getTipsText()[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/widget/GlassTipsManager;->createGlassTips(Lcom/google/glass/widget/GlassTipsManager$TipsType;[Ljava/lang/CharSequence;)Lcom/google/glass/widget/GlassTips;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->lastShownTips:Lcom/google/glass/widget/GlassTips;

    .line 223
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->lastShownTips:Lcom/google/glass/widget/GlassTips;

    invoke-virtual {v0}, Lcom/google/glass/widget/GlassTips;->show()V

    .line 224
    return-void
.end method


# virtual methods
.method public hideTips()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 205
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "hide tips:%s, cancel task: %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/widget/GlassTipsManager;->lastShownTips:Lcom/google/glass/widget/GlassTips;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/glass/widget/GlassTipsManager;->tipsTask:Ljava/lang/Runnable;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 206
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->tipsTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->handler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/google/glass/widget/GlassTipsManager;->tipsTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 208
    iput-object v5, p0, Lcom/google/glass/widget/GlassTipsManager;->tipsTask:Ljava/lang/Runnable;

    .line 210
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->lastShownTips:Lcom/google/glass/widget/GlassTips;

    if-eqz v0, :cond_1

    .line 211
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->lastShownTips:Lcom/google/glass/widget/GlassTips;

    invoke-virtual {v0}, Lcom/google/glass/widget/GlassTips;->hideTips()V

    .line 212
    iput-object v5, p0, Lcom/google/glass/widget/GlassTipsManager;->lastShownTips:Lcom/google/glass/widget/GlassTips;

    .line 214
    :cond_1
    return-void
.end method

.method public scheduleToShowGlassTips(Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
    .locals 4
    .param p1, "tipsType"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p2, "tipsCondition"    # Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    .prologue
    const/4 v3, 0x0

    .line 168
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 185
    :goto_0
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "scheduleToShowGlassTips: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 172
    new-instance v1, Lcom/google/glass/widget/GlassTipsManager$5;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/widget/GlassTipsManager$5;-><init>(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    .line 184
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Void;

    .line 183
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/widget/GlassTipsManager$5;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public showGlassTipsRotateOnCondition(Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V
    .locals 4
    .param p1, "tipsType"    # Lcom/google/glass/widget/GlassTipsManager$TipsType;
    .param p2, "tipsCondition"    # Lcom/google/glass/widget/GlassTipsManager$TipsCondition;

    .prologue
    const/4 v3, 0x0

    .line 137
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->lastShownTips:Lcom/google/glass/widget/GlassTips;

    if-eqz v0, :cond_1

    .line 158
    :cond_0
    :goto_0
    return-void

    .line 140
    :cond_1
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "showGlassTipsRotateOnCondition: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p1, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/google/glass/widget/GlassTipsManager;->showTips(Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    .line 142
    sget-object v0, Lcom/google/glass/util/Labs$Feature;->GT:Lcom/google/glass/util/Labs$Feature;

    invoke-static {v0}, Lcom/google/glass/util/Labs;->isEnabled(Lcom/google/glass/util/Labs$Feature;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    new-instance v1, Lcom/google/glass/widget/GlassTipsManager$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/widget/GlassTipsManager$4;-><init>(Lcom/google/glass/widget/GlassTipsManager;Lcom/google/glass/widget/GlassTipsManager$TipsType;Lcom/google/glass/widget/GlassTipsManager$TipsCondition;)V

    .line 157
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    new-array v2, v3, [Ljava/lang/Void;

    .line 156
    invoke-virtual {v1, v0, v2}, Lcom/google/glass/widget/GlassTipsManager$4;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method public tipsMarked()V
    .locals 2

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->increaseTipsCountTask:Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;

    if-eqz v0, :cond_0

    .line 195
    invoke-static {}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->getInstance()Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager$Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/async/AsyncThreadExecutorManager;

    .line 196
    invoke-virtual {v0}, Lcom/google/glass/async/AsyncThreadExecutorManager;->getThreadPoolExecutor()Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/widget/GlassTipsManager;->increaseTipsCountTask:Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;

    invoke-interface {v0, v1}, Lcom/google/glass/async/AsyncThreadExecutorManager$QueueExecutor;->execute(Ljava/lang/Runnable;)V

    .line 197
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/widget/GlassTipsManager;->increaseTipsCountTask:Lcom/google/glass/widget/GlassTipsManager$IncreaseTipsCountTask;

    .line 199
    :cond_0
    return-void
.end method

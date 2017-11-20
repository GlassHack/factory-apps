.class public Lcom/google/glass/voice/menu/VoiceMenu;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# static fields
.field private static final FADE_OUT_ALPHA:F = 0.2f

.field public static final HEAD_SCROLL_PER_ITEM:F = 40.0f

.field private static final MENU_ITEM_ANIMATE_IN_DELAY_MILLIS:J = 0x32L

.field public static final MENU_ITEM_ANIMATE_IN_DURATION_MILLIS:J = 0xdcL

.field public static final MENU_ITEM_SELECTION_ANIMATION_DURATION_MILLIS:J = 0x64L

.field private static final PERCENT_OPACITY_30:I = 0x4d

.field private static final TAG:Ljava/lang/String;

.field private static final VOICE_MENU_ITEM_SPACE:I = 0x20

.field private static final VOICE_MENU_LAST_ITEM_PADDING:I = 0xa

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private dismissed:Z

.field private emptySecondaryMenuMessage:Landroid/widget/TextView;

.field private final handler:Landroid/os/Handler;

.field private ignoreScrollEvents:Z

.field private menuItemListLayout:Landroid/widget/LinearLayout;

.field private final menuItemViews:Ljava/util/List;

.field private menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

.field private final queuedSelections:Ljava/util/Queue;

.field private selecting:Z

.field private final selectionStates:Ljava/util/Stack;

.field private final voiceMenuIconCache:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lcom/google/glass/voice/menu/VoiceMenu;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->TAG:Ljava/lang/String;

    .line 43
    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 118
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 60
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->handler:Landroid/os/Handler;

    .line 62
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->voiceMenuIconCache:Ljava/util/Map;

    .line 75
    new-instance v0, Ljava/util/Stack;

    invoke-direct {v0}, Ljava/util/Stack;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectionStates:Ljava/util/Stack;

    .line 109
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    .line 266
    invoke-static {}, Lcom/google/common/collect/Lists;->newLinkedList()Ljava/util/LinkedList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->queuedSelections:Ljava/util/Queue;

    .line 119
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$layout;->voice_menu:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->initViews()V

    .line 122
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->cancelIfDismissed(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->queuedSelections:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/widget/TextView;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->addSelectedItemView(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/menu/VoiceMenu;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->dismissed:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/glass/voice/menu/VoiceMenu;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->ignoreScrollEvents:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/menu/VoiceMenu;->fadeInMenuItems(Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getCurrentItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/voice/menu/OverscrollView;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/widget/LinearLayout;Ljava/util/Collection;)Ljava/util/List;
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/menu/VoiceMenu;->populateLayoutWithItems(Landroid/widget/LinearLayout;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->updateEnabledState(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/voice/menu/VoiceMenu;I)V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->showSecondaryMenu(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/google/glass/voice/menu/VoiceMenu;Z)Z
    .locals 0

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selecting:Z

    return p1
.end method

.method private addPrimaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->newMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    .line 134
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 137
    return-void
.end method

.method private addSelectedItemView(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 482
    sget v0, Lcom/google/glass/common/R$id;->voice_menu_top_layout:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectionStates:Ljava/util/Stack;

    .line 483
    invoke-virtual {v1}, Ljava/util/Stack;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    .line 482
    invoke-virtual {v0, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 484
    return-void
.end method

.method private animateIn(Landroid/view/View;J)V
    .locals 3

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 164
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 165
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 166
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 167
    invoke-virtual {v0, p2, p3}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 168
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xdc

    .line 169
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 170
    return-void
.end method

.method private cancelIfDismissed(Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 339
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenu$4;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu$4;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private createSelectedItem(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 352
    .line 353
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$layout;->voice_menu_item:I

    invoke-virtual {v0, v1, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 354
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106000b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {p1}, Landroid/widget/TextView;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    move-result v2

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    .line 358
    invoke-virtual {v2}, Lcom/google/glass/voice/menu/OverscrollView;->getScrollY()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    .line 359
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 360
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    return-object v0
.end method

.method private fadeInMenuItems(Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 416
    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 417
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 418
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setAlpha(F)V

    .line 419
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v3, 0x3f800000    # 1.0f

    .line 421
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v3, 0x64

    .line 422
    invoke-virtual {v0, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 423
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_0

    move-object v0, p2

    :goto_1
    invoke-virtual {v3, v0}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 424
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 416
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 423
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 426
    :cond_1
    return-void
.end method

.method private fadeOutOtherItems(Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 437
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 439
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-static {v0}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v3

    .line 440
    invoke-interface {v3, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 442
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 443
    if-eqz p2, :cond_0

    .line 444
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 473
    :cond_0
    return-void

    .line 449
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 450
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 452
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    .line 453
    new-instance v2, Lcom/google/glass/voice/menu/VoiceMenu$6;

    invoke-direct {v2, p0, p2, v0}, Lcom/google/glass/voice/menu/VoiceMenu$6;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;Landroid/widget/TextView;)V

    .line 466
    :goto_1
    invoke-virtual {v0}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x0

    .line 467
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v4, 0x3e4ccccd    # 0.2f

    .line 468
    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v4, 0x64

    .line 469
    invoke-virtual {v0, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 470
    invoke-virtual {v0, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 471
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 449
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 463
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method private findView(Ljava/util/List;Lcom/google/glass/voice/menu/VoiceMenuItem;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 262
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getCurrentItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method private getCurrentItems()Ljava/util/List;
    .locals 1

    .prologue
    .line 254
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectionStates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    iget-object v0, v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->items:Ljava/util/List;

    return-object v0
.end method

.method private initViews()V
    .locals 1

    .prologue
    .line 154
    sget v0, Lcom/google/glass/common/R$id;->voice_menu_primary_scroll_view:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/OverscrollView;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    .line 155
    sget v0, Lcom/google/glass/common/R$id;->voice_menu_items:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    .line 157
    sget v0, Lcom/google/glass/common/R$id;->empty_secondary_menu_message:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->emptySecondaryMenuMessage:Landroid/widget/TextView;

    .line 158
    return-void
.end method

.method private isConnected()Z
    .locals 1

    .prologue
    .line 258
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/google/glass/voice/menu/Requirements;->isConnected(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private newMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Landroid/view/ViewGroup;)Landroid/widget/TextView;
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 218
    .line 219
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$layout;->voice_menu_item:I

    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 221
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->hasBottomSpacer()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 223
    const/16 v1, 0x20

    invoke-virtual {v0, v2, v2, v2, v1}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuIcon()I

    move-result v1

    if-eqz v1, :cond_2

    .line 226
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->voiceMenuIconCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuIcon()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 227
    if-nez v1, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuIcon()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 229
    const/16 v2, 0x4d

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->voiceMenuIconCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuIcon()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_1
    invoke-virtual {v0, v4, v4, v1, v4}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 234
    :cond_2
    return-object v0
.end method

.method private populateLayoutWithItems(Landroid/widget/LinearLayout;Ljava/util/Collection;)Ljava/util/List;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 199
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 202
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 203
    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->newMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    .line 204
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 205
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-lez v0, :cond_1

    .line 210
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0xa

    invoke-virtual {v0, v4, v4, v4, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 213
    :cond_1
    return-object v1
.end method

.method private removeSelectedItemView(Landroid/widget/TextView;)V
    .locals 1

    .prologue
    .line 487
    sget v0, Lcom/google/glass/common/R$id;->voice_menu_top_layout:I

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 488
    return-void
.end method

.method private showSecondaryMenu(I)V
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/google/glass/voice/menu/OverscrollView;->setVisibility(I)V

    .line 176
    const-wide/16 v0, 0x0

    .line 177
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    if-eqz p1, :cond_1

    .line 178
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->emptySecondaryMenuMessage:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->emptySecondaryMenuMessage:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->emptySecondaryMenuMessage:Landroid/widget/TextView;

    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->animateIn(Landroid/view/View;J)V

    .line 190
    :cond_0
    return-void

    .line 183
    :cond_1
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v2, v3}, Lcom/google/glass/voice/menu/OverscrollView;->setVisibility(I)V

    .line 185
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    const-wide/16 v4, 0x32

    add-long/2addr v1, v4

    .line 187
    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenu;->animateIn(Landroid/view/View;J)V

    goto :goto_0
.end method

.method private updateEnabledState(Ljava/util/List;)V
    .locals 6

    .prologue
    .line 242
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->isConnected()Z

    move-result v3

    .line 243
    const/4 v4, 0x1

    .line 245
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getCurrentItems()Ljava/util/List;

    move-result-object v5

    .line 247
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 248
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 249
    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v1, v3, v4}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getUnsatisfiedRequirements(ZZ)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    .line 248
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 247
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method public animateBack()V
    .locals 5

    .prologue
    .line 365
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->ignoreScrollEvents:Z

    .line 366
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectionStates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    .line 367
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->emptySecondaryMenuMessage:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 371
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 374
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getCurrentItems()Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenu;->populateLayoutWithItems(Landroid/widget/LinearLayout;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    iget-object v1, v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTop()I

    move-result v1

    int-to-float v2, v1

    .line 379
    iget-object v1, v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    invoke-direct {p0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->removeSelectedItemView(Landroid/widget/TextView;)V

    .line 380
    sget v1, Lcom/google/glass/common/R$id;->voice_menu_container:I

    invoke-virtual {p0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 381
    iget-object v3, v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 382
    iget-object v3, v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 385
    iget-object v2, v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    .line 386
    invoke-virtual {v2}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemViewOriginalYPosition:F

    .line 387
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v3}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 388
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0xdc

    .line 389
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    new-instance v3, Lcom/google/glass/voice/menu/VoiceMenu$5;

    invoke-direct {v3, p0, v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu$5;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;Landroid/view/ViewGroup;)V

    .line 390
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 412
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 413
    return-void
.end method

.method public onConnectivityChanged()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->updateEnabledState(Ljava/util/List;)V

    .line 239
    return-void
.end method

.method public onDismissed()V
    .locals 3

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->dismissed:Z

    if-eqz v0, :cond_0

    .line 126
    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Dismissed more than once!"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 129
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->dismissed:Z

    .line 130
    return-void
.end method

.method public onVerticalHeadScroll(F)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 526
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->ignoreScrollEvents:Z

    if-eqz v0, :cond_0

    .line 533
    :goto_0
    return v2

    .line 531
    :cond_0
    const/high16 v0, 0x42200000    # 40.0f

    div-float v0, p1, v0

    .line 532
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/OverscrollView;->scrollByItem(F)V

    goto :goto_0
.end method

.method public selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 269
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selecting:Z

    if-eqz v0, :cond_0

    .line 270
    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Queueing selection event because a selection is ongoing."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->queuedSelections:Ljava/util/Queue;

    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenu$1;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/glass/voice/menu/VoiceMenu$1;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 335
    :goto_0
    return-void

    .line 280
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selecting:Z

    .line 282
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->findView(Ljava/util/List;Lcom/google/glass/voice/menu/VoiceMenuItem;)Landroid/widget/TextView;

    move-result-object v0

    .line 283
    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->createSelectedItem(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v1

    .line 284
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectionStates:Ljava/util/Stack;

    new-instance v3, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getSubMenu()Ljava/util/List;

    move-result-object v4

    iget-object v5, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    .line 285
    invoke-virtual {v5}, Lcom/google/glass/voice/menu/OverscrollView;->getItem()I

    move-result v5

    int-to-float v5, v5

    invoke-direct {v3, v4, v1, v5}, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;-><init>(Ljava/util/List;Landroid/widget/TextView;F)V

    .line 284
    invoke-virtual {v2, v3}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v2, Lcom/google/glass/voice/menu/VoiceMenu$2;

    invoke-direct {v2, p0, p2, p1}, Lcom/google/glass/voice/menu/VoiceMenu$2;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    invoke-direct {p0, v2}, Lcom/google/glass/voice/menu/VoiceMenu;->cancelIfDismissed(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    .line 313
    new-instance v3, Lcom/google/glass/voice/menu/VoiceMenu$3;

    invoke-direct {v3, p0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenu$3;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    .line 334
    invoke-direct {p0, v0, v3}, Lcom/google/glass/voice/menu/VoiceMenu;->fadeOutOtherItems(Landroid/widget/TextView;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setPrimaryMenuItems(Ljava/util/List;)V
    .locals 4

    .prologue
    .line 140
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v1, Ljava/lang/Throwable;

    invoke-direct {v1}, Ljava/lang/Throwable;-><init>()V

    const-string v2, "List of primary menu items should not be empty."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 145
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 147
    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->addPrimaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    goto :goto_0

    .line 150
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectionStates:Ljava/util/Stack;

    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;-><init>(Ljava/util/List;Landroid/widget/TextView;F)V

    invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public showPrimaryMenu()V
    .locals 6

    .prologue
    .line 491
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->updateEnabledState(Ljava/util/List;)V

    .line 492
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectionStates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    iget-object v0, v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 493
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectionStates:Ljava/util/Stack;

    invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    iget-object v0, v0, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->removeSelectedItemView(Landroid/widget/TextView;)V

    .line 495
    :cond_0
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->emptySecondaryMenuMessage:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    const-wide/16 v0, 0x0

    .line 499
    iget-object v2, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-wide v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 500
    const-wide/16 v4, 0x32

    add-long/2addr v1, v4

    .line 501
    invoke-direct {p0, v0, v1, v2}, Lcom/google/glass/voice/menu/VoiceMenu;->animateIn(Landroid/view/View;J)V

    goto :goto_0

    .line 503
    :cond_1
    return-void
.end method

.method public triggerVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 510
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getCurrentItems()Ljava/util/List;

    move-result-object v3

    move v1, v2

    .line 511
    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 512
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 513
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 514
    new-instance v3, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->MAIN_MENU_ITEM_TRIGGERED:Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "i"

    .line 515
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "m"

    aput-object v7, v6, v2

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v6, v8

    invoke-static {v5, v1, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 514
    invoke-virtual {v3, v4, v1}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 522
    :goto_1
    return-object v0

    .line 511
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 520
    :cond_1
    sget-object v0, Lcom/google/glass/voice/menu/VoiceMenu;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "No matching menu item found."

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    const/4 v0, 0x5

    sget-object v1, Lcom/google/glass/voice/menu/VoiceMenu;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "command: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "; items: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v0, 0x0

    goto :goto_1
.end method

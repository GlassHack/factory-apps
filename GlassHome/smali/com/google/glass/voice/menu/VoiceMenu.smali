.class public Lcom/google/glass/voice/menu/VoiceMenu;
.super Landroid/widget/FrameLayout;
.source "VoiceMenu.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;
    }
.end annotation


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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation
.end field

.field private menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

.field private final queuedSelections:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private selecting:Z

.field private final selectionStates:Ljava/util/Stack;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Stack",
            "<",
            "Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;",
            ">;"
        }
    .end annotation
.end field

.field private final voiceMenuIconCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field


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
    .param p1, "context"    # Landroid/content/Context;

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
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->cancelIfDismissed(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->queuedSelections:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;
    .param p1, "x1"    # Landroid/widget/TextView;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->addSelectedItemView(Landroid/widget/TextView;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/voice/menu/VoiceMenu;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->dismissed:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/google/glass/voice/menu/VoiceMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->ignoreScrollEvents:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;
    .param p1, "x1"    # Ljava/util/List;
    .param p2, "x2"    # Landroid/animation/Animator$AnimatorListener;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/menu/VoiceMenu;->fadeInMenuItems(Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method static synthetic access$200(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getCurrentItems()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/voice/menu/VoiceMenu;)Lcom/google/glass/voice/menu/OverscrollView;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/google/glass/voice/menu/VoiceMenu;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/google/glass/voice/menu/VoiceMenu;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$600(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/widget/LinearLayout;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;
    .param p1, "x1"    # Landroid/widget/LinearLayout;
    .param p2, "x2"    # Ljava/util/Collection;

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/google/glass/voice/menu/VoiceMenu;->populateLayoutWithItems(Landroid/widget/LinearLayout;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/util/List;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;
    .param p1, "x1"    # Ljava/util/List;

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->updateEnabledState(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$800(Lcom/google/glass/voice/menu/VoiceMenu;I)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;
    .param p1, "x1"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->showSecondaryMenu(I)V

    return-void
.end method

.method static synthetic access$902(Lcom/google/glass/voice/menu/VoiceMenu;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/voice/menu/VoiceMenu;
    .param p1, "x1"    # Z

    .prologue
    .line 41
    iput-boolean p1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selecting:Z

    return p1
.end method

.method private addPrimaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;)V
    .locals 2
    .param p1, "voiceMenuItem"    # Lcom/google/glass/voice/menu/VoiceMenuItem;

    .prologue
    .line 133
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0, p1, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->newMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v0

    .line 134
    .local v0, "menuItem":Landroid/widget/TextView;
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
    .param p1, "selectedItemView"    # Landroid/widget/TextView;

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
    .param p1, "view"    # Landroid/view/View;
    .param p2, "delayMs"    # J

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
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 339
    new-instance v0, Lcom/google/glass/voice/menu/VoiceMenu$4;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/menu/VoiceMenu$4;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;)V

    return-object v0
.end method

.method private createSelectedItem(Landroid/widget/TextView;)Landroid/widget/TextView;
    .locals 5
    .param p1, "menuItemView"    # Landroid/widget/TextView;

    .prologue
    const/4 v4, 0x0

    .line 352
    .line 353
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/google/glass/common/R$layout;->voice_menu_item:I

    invoke-virtual {v2, v3, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 354
    .local v0, "selectedItemView":Landroid/widget/TextView;
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x106000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 355
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 357
    invoke-virtual {p1}, Landroid/widget/TextView;->getY()F

    move-result v2

    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/OverscrollView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTranslationY()F

    move-result v3

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    .line 358
    invoke-virtual {v3}, Lcom/google/glass/voice/menu/OverscrollView;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float v1, v2, v3

    .line 359
    .local v1, "yPosition":F
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 360
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 361
    return-object v0
.end method

.method private fadeInMenuItems(Ljava/util/List;Landroid/animation/Animator$AnimatorListener;)V
    .locals 5
    .param p2, "listener"    # Landroid/animation/Animator$AnimatorListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Landroid/animation/Animator$AnimatorListener;",
            ")V"
        }
    .end annotation

    .prologue
    .line 416
    .local p1, "menuItemViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 417
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 418
    .local v1, "primaryMenuItemView":Landroid/widget/TextView;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 419
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 420
    invoke-virtual {v1}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    .line 421
    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    const-wide/16 v3, 0x64

    .line 422
    invoke-virtual {v2, v3, v4}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 423
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne v0, v2, :cond_0

    move-object v2, p2

    :goto_1
    invoke-virtual {v3, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    .line 424
    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 416
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    .line 426
    .end local v1    # "primaryMenuItemView":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method private fadeOutOtherItems(Landroid/widget/TextView;Ljava/lang/Runnable;)V
    .locals 7
    .param p1, "menuItem"    # Landroid/widget/TextView;
    .param p2, "postAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 437
    const/4 v4, 0x1

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 439
    iget-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v2

    .line 440
    .local v2, "primaryMenuItemViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    invoke-interface {v2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 442
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

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

    .local v0, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_0

    .line 450
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 452
    .local v3, "t":Landroid/widget/TextView;
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_2

    .line 453
    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenu$6;

    invoke-direct {v1, p0, p2, v3}, Lcom/google/glass/voice/menu/VoiceMenu$6;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;Landroid/widget/TextView;)V

    .line 466
    .local v1, "listener":Landroid/animation/Animator$AnimatorListener;
    :goto_1
    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x0

    .line 467
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const v5, 0x3e4ccccd    # 0.2f

    .line 468
    invoke-virtual {v4, v5}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    const-wide/16 v5, 0x64

    .line 469
    invoke-virtual {v4, v5, v6}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 470
    invoke-virtual {v4, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v4

    .line 471
    invoke-virtual {v4}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 449
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 463
    .end local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    :cond_2
    const/4 v1, 0x0

    .restart local v1    # "listener":Landroid/animation/Animator$AnimatorListener;
    goto :goto_1
.end method

.method private findView(Ljava/util/List;Lcom/google/glass/voice/menu/VoiceMenuItem;)Landroid/widget/TextView;
    .locals 1
    .param p2, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ")",
            "Landroid/widget/TextView;"
        }
    .end annotation

    .prologue
    .line 262
    .local p1, "views":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
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
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;"
        }
    .end annotation

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
    .locals 7
    .param p1, "item"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p2, "root"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 218
    const/4 v0, 0x0

    .line 219
    .local v0, "attachToRoot":Z
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    sget v4, Lcom/google/glass/common/R$layout;->voice_menu_item:I

    invoke-virtual {v3, v4, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 221
    .local v2, "view":Landroid/widget/TextView;
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->hasBottomSpacer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 223
    const/16 v3, 0x20

    invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 225
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuIcon()I

    move-result v3

    if-eqz v3, :cond_2

    .line 226
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->voiceMenuIconCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuIcon()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/Drawable;

    .line 227
    .local v1, "icon":Landroid/graphics/drawable/Drawable;
    if-nez v1, :cond_1

    .line 228
    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuIcon()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 229
    const/16 v3, 0x4d

    invoke-virtual {v1, v3}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 230
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->voiceMenuIconCache:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuIcon()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 232
    :cond_1
    invoke-virtual {v2, v6, v6, v1, v6}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 234
    .end local v1    # "icon":Landroid/graphics/drawable/Drawable;
    :cond_2
    return-object v2
.end method

.method private populateLayoutWithItems(Landroid/widget/LinearLayout;Ljava/util/Collection;)Ljava/util/List;
    .locals 6
    .param p1, "layout"    # Landroid/widget/LinearLayout;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/LinearLayout;",
            "Ljava/util/Collection",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;"
        }
    .end annotation

    .prologue
    .local p2, "items":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    const/4 v5, 0x0

    .line 199
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 200
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 201
    .local v2, "menuItems":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 202
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 203
    .local v0, "item":Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-direct {p0, v0, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->newMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Landroid/view/ViewGroup;)Landroid/widget/TextView;

    move-result-object v1

    .line 204
    .local v1, "menuItem":Landroid/widget/TextView;
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setSelected(Z)V

    .line 205
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 206
    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 209
    .end local v0    # "item":Lcom/google/glass/voice/menu/VoiceMenuItem;
    .end local v1    # "menuItem":Landroid/widget/TextView;
    :cond_0
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    if-lez v3, :cond_1

    .line 210
    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {p1, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/16 v4, 0xa

    invoke-virtual {v3, v5, v5, v5, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 213
    :cond_1
    return-object v2
.end method

.method private removeSelectedItemView(Landroid/widget/TextView;)V
    .locals 1
    .param p1, "selectedItemView"    # Landroid/widget/TextView;

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
    .param p1, "emptyMessageRid"    # I

    .prologue
    const/4 v5, 0x0

    .line 174
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/google/glass/voice/menu/OverscrollView;->setVisibility(I)V

    .line 176
    const-wide/16 v0, 0x0

    .line 177
    .local v0, "delayMillis":J
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    if-eqz p1, :cond_1

    .line 178
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->emptySecondaryMenuMessage:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(I)V

    .line 179
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->emptySecondaryMenuMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 181
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->emptySecondaryMenuMessage:Landroid/widget/TextView;

    invoke-direct {p0, v3, v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->animateIn(Landroid/view/View;J)V

    .line 190
    :cond_0
    return-void

    .line 183
    :cond_1
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 184
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v3, v5}, Lcom/google/glass/voice/menu/OverscrollView;->setVisibility(I)V

    .line 185
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 186
    .local v2, "menuItem":Landroid/widget/TextView;
    const-wide/16 v4, 0x32

    add-long/2addr v0, v4

    .line 187
    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->animateIn(Landroid/view/View;J)V

    goto :goto_0
.end method

.method private updateEnabledState(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/widget/TextView;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 242
    .local p1, "itemViews":Ljava/util/List;, "Ljava/util/List<Landroid/widget/TextView;>;"
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->isConnected()Z

    move-result v3

    .line 243
    .local v3, "isConnected":Z
    const/4 v1, 0x1

    .line 245
    .local v1, "fromVoice":Z
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getCurrentItems()Ljava/util/List;

    move-result-object v0

    .line 247
    .local v0, "currentItems":Ljava/util/List;, "Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_0

    .line 248
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 249
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/google/glass/voice/menu/VoiceMenuItem;

    invoke-virtual {v5, v3, v1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getUnsatisfiedRequirements(ZZ)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v5

    .line 248
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 247
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 251
    :cond_0
    return-void
.end method


# virtual methods
.method public animateBack()V
    .locals 6

    .prologue
    .line 365
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->ignoreScrollEvents:Z

    .line 366
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectionStates:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    .line 367
    .local v1, "poppedState":Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->emptySecondaryMenuMessage:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 370
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 371
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 374
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    iget-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getCurrentItems()Ljava/util/List;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Lcom/google/glass/voice/menu/VoiceMenu;->populateLayoutWithItems(Landroid/widget/LinearLayout;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 378
    iget-object v3, v1, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getTop()I

    move-result v3

    int-to-float v2, v3

    .line 379
    .local v2, "startingY":F
    iget-object v3, v1, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/google/glass/voice/menu/VoiceMenu;->removeSelectedItemView(Landroid/widget/TextView;)V

    .line 380
    sget v3, Lcom/google/glass/common/R$id;->voice_menu_container:I

    invoke-virtual {p0, v3}, Lcom/google/glass/voice/menu/VoiceMenu;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 381
    .local v0, "container":Landroid/view/ViewGroup;
    iget-object v3, v1, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 382
    iget-object v3, v1, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 385
    iget-object v3, v1, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    .line 386
    invoke-virtual {v3}, Landroid/widget/TextView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    iget v4, v1, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemViewOriginalYPosition:F

    .line 387
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->translationY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v4}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 388
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    const-wide/16 v4, 0xdc

    .line 389
    invoke-virtual {v3, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    new-instance v4, Lcom/google/glass/voice/menu/VoiceMenu$5;

    invoke-direct {v4, p0, v1, v0}, Lcom/google/glass/voice/menu/VoiceMenu$5;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;Landroid/view/ViewGroup;)V

    .line 390
    invoke-virtual {v3, v4}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v3

    .line 412
    invoke-virtual {v3}, Landroid/view/ViewPropertyAnimator;->start()V

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
    .param p1, "deltaPixels"    # F

    .prologue
    const/4 v2, 0x1

    .line 526
    iget-boolean v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->ignoreScrollEvents:Z

    if-eqz v1, :cond_0

    .line 533
    :goto_0
    return v2

    .line 531
    :cond_0
    const/high16 v1, 0x42200000    # 40.0f

    div-float v0, p1, v1

    .line 532
    .local v0, "deltaItem":F
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    invoke-virtual {v1, v0}, Lcom/google/glass/voice/menu/OverscrollView;->scrollByItem(F)V

    goto :goto_0
.end method

.method public selectMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V
    .locals 8
    .param p1, "menuItem"    # Lcom/google/glass/voice/menu/VoiceMenuItem;
    .param p2, "postAnimationRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 269
    iget-boolean v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selecting:Z

    if-eqz v4, :cond_0

    .line 270
    sget-object v4, Lcom/google/glass/voice/menu/VoiceMenu;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Queueing selection event because a selection is ongoing."

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 271
    iget-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->queuedSelections:Ljava/util/Queue;

    new-instance v5, Lcom/google/glass/voice/menu/VoiceMenu$1;

    invoke-direct {v5, p0, p1, p2}, Lcom/google/glass/voice/menu/VoiceMenu$1;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Lcom/google/glass/voice/menu/VoiceMenuItem;Ljava/lang/Runnable;)V

    invoke-interface {v4, v5}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 335
    :goto_0
    return-void

    .line 280
    :cond_0
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selecting:Z

    .line 282
    iget-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-direct {p0, v4, p1}, Lcom/google/glass/voice/menu/VoiceMenu;->findView(Ljava/util/List;Lcom/google/glass/voice/menu/VoiceMenuItem;)Landroid/widget/TextView;

    move-result-object v0

    .line 283
    .local v0, "menuItemView":Landroid/widget/TextView;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->createSelectedItem(Landroid/widget/TextView;)Landroid/widget/TextView;

    move-result-object v3

    .line 284
    .local v3, "selectedPrimaryMenuItem":Landroid/widget/TextView;
    iget-object v4, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectionStates:Ljava/util/Stack;

    new-instance v5, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    invoke-virtual {p1}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getSubMenu()Ljava/util/List;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuScrollView:Lcom/google/glass/voice/menu/OverscrollView;

    .line 285
    invoke-virtual {v7}, Lcom/google/glass/voice/menu/OverscrollView;->getItem()I

    move-result v7

    int-to-float v7, v7

    invoke-direct {v5, v6, v3, v7}, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;-><init>(Ljava/util/List;Landroid/widget/TextView;F)V

    .line 284
    invoke-virtual {v4, v5}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 287
    new-instance v4, Lcom/google/glass/voice/menu/VoiceMenu$2;

    invoke-direct {v4, p0, p2, p1}, Lcom/google/glass/voice/menu/VoiceMenu$2;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Ljava/lang/Runnable;Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    invoke-direct {p0, v4}, Lcom/google/glass/voice/menu/VoiceMenu;->cancelIfDismissed(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    .line 313
    .local v2, "postSelectionRunnable":Ljava/lang/Runnable;
    new-instance v1, Lcom/google/glass/voice/menu/VoiceMenu$3;

    invoke-direct {v1, p0, v3, v2}, Lcom/google/glass/voice/menu/VoiceMenu$3;-><init>(Lcom/google/glass/voice/menu/VoiceMenu;Landroid/widget/TextView;Ljava/lang/Runnable;)V

    .line 334
    .local v1, "postFadeRunnable":Ljava/lang/Runnable;
    invoke-direct {p0, v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->fadeOutOtherItems(Landroid/widget/TextView;Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public setPrimaryMenuItems(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/google/glass/voice/menu/VoiceMenuItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 140
    .local p1, "primaryMenuItems":Ljava/util/List;, "Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 141
    sget-object v1, Lcom/google/glass/voice/menu/VoiceMenu;->logger:Lcom/google/glass/logging/FormattingLogger;

    new-instance v2, Ljava/lang/Throwable;

    invoke-direct {v2}, Ljava/lang/Throwable;-><init>()V

    const-string v3, "List of primary menu items should not be empty."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 145
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemListLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 146
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 147
    .local v0, "primaryMenuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-direct {p0, v0}, Lcom/google/glass/voice/menu/VoiceMenu;->addPrimaryMenuItem(Lcom/google/glass/voice/menu/VoiceMenuItem;)V

    goto :goto_0

    .line 150
    .end local v0    # "primaryMenuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    :cond_1
    iget-object v1, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectionStates:Ljava/util/Stack;

    new-instance v2, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v2, p1, v3, v4}, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;-><init>(Ljava/util/List;Landroid/widget/TextView;F)V

    invoke-virtual {v1, v2}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void
.end method

.method public showPrimaryMenu()V
    .locals 6

    .prologue
    .line 491
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-direct {p0, v3}, Lcom/google/glass/voice/menu/VoiceMenu;->updateEnabledState(Ljava/util/List;)V

    .line 492
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectionStates:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    iget-object v3, v3, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 493
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->selectionStates:Ljava/util/Stack;

    invoke-virtual {v3}, Ljava/util/Stack;->peek()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;

    iget-object v3, v3, Lcom/google/glass/voice/menu/VoiceMenu$SelectionState;->selectedItemView:Landroid/widget/TextView;

    invoke-direct {p0, v3}, Lcom/google/glass/voice/menu/VoiceMenu;->removeSelectedItemView(Landroid/widget/TextView;)V

    .line 495
    :cond_0
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->emptySecondaryMenuMessage:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 498
    const-wide/16 v0, 0x0

    .line 499
    .local v0, "delayMillis":J
    iget-object v3, p0, Lcom/google/glass/voice/menu/VoiceMenu;->menuItemViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 500
    .local v2, "menuItem":Landroid/widget/TextView;
    const-wide/16 v4, 0x32

    add-long/2addr v0, v4

    .line 501
    invoke-direct {p0, v2, v0, v1}, Lcom/google/glass/voice/menu/VoiceMenu;->animateIn(Landroid/view/View;J)V

    goto :goto_0

    .line 503
    .end local v2    # "menuItem":Landroid/widget/TextView;
    :cond_1
    return-void
.end method

.method public triggerVoiceCommand(Lcom/google/glass/voice/VoiceCommand;)Lcom/google/glass/voice/menu/VoiceMenuItem;
    .locals 11
    .param p1, "command"    # Lcom/google/glass/voice/VoiceCommand;

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 510
    invoke-direct {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getCurrentItems()Ljava/util/List;

    move-result-object v0

    .line 511
    .local v0, "currentItems":Ljava/util/List;, "Ljava/util/List<+Lcom/google/glass/voice/menu/VoiceMenuItem;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 512
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/voice/menu/VoiceMenuItem;

    .line 513
    .local v2, "menuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    invoke-virtual {p1}, Lcom/google/glass/voice/VoiceCommand;->getLiteral()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2}, Lcom/google/glass/voice/menu/VoiceMenuItem;->getVoiceMenuLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 514
    new-instance v3, Lcom/google/glass/userevent/UserEventHelper;

    invoke-virtual {p0}, Lcom/google/glass/voice/menu/VoiceMenu;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/glass/userevent/UserEventAction;->MAIN_MENU_ITEM_TRIGGERED:Lcom/google/glass/userevent/UserEventAction;

    const-string v5, "i"

    .line 515
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "m"

    aput-object v8, v7, v9

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v10

    invoke-static {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 514
    invoke-virtual {v3, v4, v5}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V

    .line 522
    .end local v2    # "menuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    :goto_1
    return-object v2

    .line 511
    .restart local v2    # "menuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v2    # "menuItem":Lcom/google/glass/voice/menu/VoiceMenuItem;
    :cond_1
    sget-object v3, Lcom/google/glass/voice/menu/VoiceMenu;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "No matching menu item found."

    new-array v5, v9, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 521
    const/4 v3, 0x5

    sget-object v4, Lcom/google/glass/voice/menu/VoiceMenu;->TAG:Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x12

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/2addr v8, v9

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "command: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "; items: "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/google/glass/logging/Log;->logPii(ILjava/lang/String;Ljava/lang/String;)V

    .line 522
    const/4 v2, 0x0

    goto :goto_1
.end method

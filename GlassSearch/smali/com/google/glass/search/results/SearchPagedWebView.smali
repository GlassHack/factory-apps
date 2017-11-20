.class public Lcom/google/glass/search/results/SearchPagedWebView;
.super Landroid/webkit/WebView;
.source "SearchPagedWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/results/SearchPagedWebView$OnPageFocusChangeListener;,
        Lcom/google/glass/search/results/SearchPagedWebView$OnPageTappedListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private contentViewCore:Ljava/lang/Object;

.field private gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

.field private final gesturer:Lcom/google/android/glass/widget/CardScrollGesturer;

.field private numPages:I

.field private oldNumPages:I

.field private pageFocusChangeListener:Lcom/google/glass/search/results/SearchPagedWebView$OnPageFocusChangeListener;

.field private pageNumber:F

.field private pageTappedListener:Lcom/google/glass/search/results/SearchPagedWebView$OnPageTappedListener;

.field private final pinchByDeltaMethod:Ljava/lang/reflect/Method;

.field public scale:F

.field private screenHeight:I

.field private screenWidth:I

.field private slider:Lcom/google/android/glass/widget/Slider$Scroller;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-class v0, Lcom/google/glass/search/results/SearchPagedWebView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/results/SearchPagedWebView;->TAG:Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/google/glass/search/results/SearchPagedWebView;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/search/results/SearchPagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 40
    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, p0, Lcom/google/glass/search/results/SearchPagedWebView;->scale:F

    .line 41
    const/4 v1, 0x0

    iput v1, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageNumber:F

    .line 47
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/glass/search/results/SearchPagedWebView;->numPages:I

    .line 48
    const/4 v1, -0x1

    iput v1, p0, Lcom/google/glass/search/results/SearchPagedWebView;->oldNumPages:I

    .line 85
    invoke-direct {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->setupDisplay()V

    .line 87
    invoke-direct {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->createCardScrollModel()Lcom/google/android/glass/widget/CardScrollModel;

    move-result-object v0

    .line 88
    .local v0, "model":Lcom/google/android/glass/widget/CardScrollModel;
    new-instance v1, Lcom/google/android/glass/widget/CardScrollGesturer;

    invoke-direct {v1, v0}, Lcom/google/android/glass/widget/CardScrollGesturer;-><init>(Lcom/google/android/glass/widget/CardScrollModel;)V

    iput-object v1, p0, Lcom/google/glass/search/results/SearchPagedWebView;->gesturer:Lcom/google/android/glass/widget/CardScrollGesturer;

    .line 89
    invoke-direct {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->createGestureDetector()Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/search/results/SearchPagedWebView;->gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    .line 91
    invoke-direct {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->getWebViewScalingMethod()Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pinchByDeltaMethod:Ljava/lang/reflect/Method;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/search/results/SearchPagedWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/SearchPagedWebView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->onTap()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/glass/search/results/SearchPagedWebView;)Lcom/google/android/glass/widget/CardScrollGesturer;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/SearchPagedWebView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView;->gesturer:Lcom/google/android/glass/widget/CardScrollGesturer;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/search/results/SearchPagedWebView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/results/SearchPagedWebView;
    .param p1, "x1"    # F

    .prologue
    .line 31
    invoke-direct {p0, p1}, Lcom/google/glass/search/results/SearchPagedWebView;->goToPage(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/google/glass/search/results/SearchPagedWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/results/SearchPagedWebView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->updateNumPages()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/glass/search/results/SearchPagedWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/SearchPagedWebView;

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/search/results/SearchPagedWebView;->numPages:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/glass/search/results/SearchPagedWebView;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/SearchPagedWebView;

    .prologue
    .line 31
    iget v0, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageNumber:F

    return v0
.end method

.method private createCardScrollModel()Lcom/google/android/glass/widget/CardScrollModel;
    .locals 1

    .prologue
    .line 157
    new-instance v0, Lcom/google/glass/search/results/SearchPagedWebView$3;

    invoke-direct {v0, p0}, Lcom/google/glass/search/results/SearchPagedWebView$3;-><init>(Lcom/google/glass/search/results/SearchPagedWebView;)V

    return-object v0
.end method

.method private createGestureDetector()Lcom/google/android/glass/touchpad/GestureDetector;
    .locals 3

    .prologue
    .line 103
    new-instance v0, Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-virtual {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/glass/touchpad/GestureDetector;-><init>(Landroid/content/Context;)V

    .line 107
    .local v0, "gestureDetector":Lcom/google/android/glass/touchpad/GestureDetector;
    iget-object v1, p0, Lcom/google/glass/search/results/SearchPagedWebView;->gesturer:Lcom/google/android/glass/widget/CardScrollGesturer;

    .line 108
    invoke-virtual {v0, v1}, Lcom/google/android/glass/touchpad/GestureDetector;->setFingerListener(Lcom/google/android/glass/touchpad/GestureDetector$FingerListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v1

    new-instance v2, Lcom/google/glass/search/results/SearchPagedWebView$2;

    invoke-direct {v2, p0}, Lcom/google/glass/search/results/SearchPagedWebView$2;-><init>(Lcom/google/glass/search/results/SearchPagedWebView;)V

    .line 109
    invoke-virtual {v1, v2}, Lcom/google/android/glass/touchpad/GestureDetector;->setScrollListener(Lcom/google/android/glass/touchpad/GestureDetector$ScrollListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v1

    new-instance v2, Lcom/google/glass/search/results/SearchPagedWebView$1;

    invoke-direct {v2, p0}, Lcom/google/glass/search/results/SearchPagedWebView$1;-><init>(Lcom/google/glass/search/results/SearchPagedWebView;)V

    .line 115
    invoke-virtual {v1, v2}, Lcom/google/android/glass/touchpad/GestureDetector;->setBaseListener(Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    .line 125
    return-object v0
.end method

.method public static floatAlmostEquals(DD)Z
    .locals 4
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 245
    sub-double v0, p0, p2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v0

    const-wide v2, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getHorizontalScrollForPage(FIF)F
    .locals 4
    .param p0, "page"    # F
    .param p1, "screenWidth"    # I
    .param p2, "scale"    # F

    .prologue
    .line 323
    int-to-float v2, p1

    mul-float v1, v2, p2

    .line 324
    .local v1, "pageWidthPx":F
    mul-float v0, v1, p0

    .line 325
    .local v0, "horizontalScrollPx":F
    int-to-float v2, p1

    int-to-float v3, p1

    mul-float/2addr v3, p2

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v0, v2

    .line 326
    return v0
.end method

.method private static getMaxHorizontalScroll(IIF)F
    .locals 4
    .param p0, "numPages"    # I
    .param p1, "screenWidth"    # I
    .param p2, "scale"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 333
    div-float v0, v2, p2

    .line 334
    .local v0, "numPagesOnScreen":F
    add-int/lit8 v1, p0, -0x1

    int-to-float v1, v1

    sub-float v2, v0, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    sub-float/2addr v1, v2

    invoke-static {v1, p1, p2}, Lcom/google/glass/search/results/SearchPagedWebView;->getHorizontalScrollForPage(FIF)F

    move-result v1

    return v1
.end method

.method private getWebViewScalingMethod()Ljava/lang/reflect/Method;
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 130
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mProvider"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 131
    .local v5, "providerField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 132
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 134
    .local v4, "provider":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mAwContents"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 135
    .local v1, "awContentsField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 136
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 138
    .local v0, "awContents":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mContentViewCore"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 139
    .local v2, "contentViewCoreField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 140
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/search/results/SearchPagedWebView;->contentViewCore:Ljava/lang/Object;

    .line 142
    iget-object v6, p0, Lcom/google/glass/search/results/SearchPagedWebView;->contentViewCore:Ljava/lang/Object;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "pinchByDelta"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    .line 143
    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v6

    .line 153
    .end local v0    # "awContents":Ljava/lang/Object;
    .end local v1    # "awContentsField":Ljava/lang/reflect/Field;
    .end local v2    # "contentViewCoreField":Ljava/lang/reflect/Field;
    .end local v4    # "provider":Ljava/lang/Object;
    .end local v5    # "providerField":Ljava/lang/reflect/Field;
    :goto_0
    return-object v6

    .line 144
    :catch_0
    move-exception v3

    .line 145
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    sget-object v6, Lcom/google/glass/search/results/SearchPagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "NoSuchFieldException"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :goto_1
    const/4 v6, 0x0

    goto :goto_0

    .line 146
    :catch_1
    move-exception v3

    .line 147
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v6, Lcom/google/glass/search/results/SearchPagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "NoSuchMethodException"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 148
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 149
    .local v3, "e":Ljava/lang/IllegalAccessException;
    sget-object v6, Lcom/google/glass/search/results/SearchPagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "IllegalAccessException"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 150
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 151
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/google/glass/search/results/SearchPagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "IllegalArgumentException"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method

.method private goToPage(F)V
    .locals 11
    .param p1, "newPage"    # F

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 266
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v7, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageNumber:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-eq v4, v7, :cond_0

    .line 267
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v4

    invoke-virtual {v4}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/sound/SoundManager;

    sget-object v7, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v4, v7}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 268
    iget-object v4, p0, Lcom/google/glass/search/results/SearchPagedWebView;->slider:Lcom/google/android/glass/widget/Slider$Scroller;

    if-eqz v4, :cond_0

    .line 269
    iget-object v4, p0, Lcom/google/glass/search/results/SearchPagedWebView;->slider:Lcom/google/android/glass/widget/Slider$Scroller;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v7

    int-to-float v7, v7

    invoke-interface {v4, v7}, Lcom/google/android/glass/widget/Slider$Scroller;->setPosition(F)V

    .line 273
    :cond_0
    iget v0, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageNumber:F

    .line 274
    .local v0, "oldPage":F
    iput p1, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageNumber:F

    .line 276
    iget-object v4, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageFocusChangeListener:Lcom/google/glass/search/results/SearchPagedWebView$OnPageFocusChangeListener;

    if-eqz v4, :cond_4

    .line 279
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-double v7, v4

    float-to-double v9, v0

    invoke-static {v7, v8, v9, v10}, Lcom/google/glass/search/results/SearchPagedWebView;->floatAlmostEquals(DD)Z

    move-result v2

    .line 280
    .local v2, "wasPageFocused":Z
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v4

    int-to-double v7, v4

    float-to-double v9, p1

    invoke-static {v7, v8, v9, v10}, Lcom/google/glass/search/results/SearchPagedWebView;->floatAlmostEquals(DD)Z

    move-result v3

    .line 282
    .local v3, "willPageBeFocused":Z
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v7

    if-eq v4, v7, :cond_5

    move v1, v5

    .line 284
    .local v1, "pageChanged":Z
    :goto_0
    if-eqz v2, :cond_2

    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    .line 285
    :cond_1
    iget-object v4, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageFocusChangeListener:Lcom/google/glass/search/results/SearchPagedWebView$OnPageFocusChangeListener;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v7

    invoke-interface {v4, v7, v6}, Lcom/google/glass/search/results/SearchPagedWebView$OnPageFocusChangeListener;->onPageFocusChange(IZ)V

    .line 287
    :cond_2
    if-eqz v3, :cond_4

    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    .line 288
    :cond_3
    iget-object v4, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageFocusChangeListener:Lcom/google/glass/search/results/SearchPagedWebView$OnPageFocusChangeListener;

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v6

    invoke-interface {v4, v6, v5}, Lcom/google/glass/search/results/SearchPagedWebView$OnPageFocusChangeListener;->onPageFocusChange(IZ)V

    .line 292
    .end local v1    # "pageChanged":Z
    .end local v2    # "wasPageFocused":Z
    .end local v3    # "willPageBeFocused":Z
    :cond_4
    invoke-virtual {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->updateWebViewPosition()V

    .line 293
    return-void

    .restart local v2    # "wasPageFocused":Z
    .restart local v3    # "willPageBeFocused":Z
    :cond_5
    move v1, v6

    .line 282
    goto :goto_0
.end method

.method private onTap()Z
    .locals 2

    .prologue
    .line 362
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageTappedListener:Lcom/google/glass/search/results/SearchPagedWebView$OnPageTappedListener;

    if-eqz v0, :cond_0

    .line 363
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageTappedListener:Lcom/google/glass/search/results/SearchPagedWebView$OnPageTappedListener;

    iget v1, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageNumber:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/glass/search/results/SearchPagedWebView$OnPageTappedListener;->onPageTapped(I)Z

    move-result v0

    .line 365
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setupDisplay()V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, 0x0

    .line 203
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 205
    const/high16 v3, -0x1000000

    invoke-virtual {p0, v3}, Lcom/google/glass/search/results/SearchPagedWebView;->setBackgroundColor(I)V

    .line 206
    invoke-virtual {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 207
    .local v0, "display":Landroid/util/DisplayMetrics;
    const/4 v3, 0x1

    iget v4, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iput v3, p0, Lcom/google/glass/search/results/SearchPagedWebView;->screenWidth:I

    .line 208
    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v3, p0, Lcom/google/glass/search/results/SearchPagedWebView;->screenHeight:I

    .line 210
    iget v3, p0, Lcom/google/glass/search/results/SearchPagedWebView;->screenWidth:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 211
    .local v2, "widthMeasureSpec":I
    iget v3, p0, Lcom/google/glass/search/results/SearchPagedWebView;->screenHeight:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 212
    .local v1, "heightMeasureSpec":I
    invoke-virtual {p0, v2, v1}, Lcom/google/glass/search/results/SearchPagedWebView;->measure(II)V

    .line 213
    iget v3, p0, Lcom/google/glass/search/results/SearchPagedWebView;->screenWidth:I

    iget v4, p0, Lcom/google/glass/search/results/SearchPagedWebView;->screenHeight:I

    invoke-virtual {p0, v5, v5, v3, v4}, Lcom/google/glass/search/results/SearchPagedWebView;->layout(IIII)V

    .line 214
    return-void
.end method

.method private updateNumPages()V
    .locals 6

    .prologue
    .line 253
    iget v2, p0, Lcom/google/glass/search/results/SearchPagedWebView;->scale:F

    float-to-double v2, v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-static {v2, v3, v4, v5}, Lcom/google/glass/search/results/SearchPagedWebView;->floatAlmostEquals(DD)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->computeHorizontalScrollRange()I

    move-result v2

    int-to-double v0, v2

    .line 255
    .local v0, "contentWidthPixels":D
    iget v2, p0, Lcom/google/glass/search/results/SearchPagedWebView;->screenWidth:I

    int-to-double v2, v2

    div-double v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, 0x1

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iput v2, p0, Lcom/google/glass/search/results/SearchPagedWebView;->numPages:I

    .line 256
    iget v2, p0, Lcom/google/glass/search/results/SearchPagedWebView;->numPages:I

    iget v3, p0, Lcom/google/glass/search/results/SearchPagedWebView;->oldNumPages:I

    if-eq v2, v3, :cond_0

    .line 257
    invoke-virtual {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/glass/widget/Slider;->from(Landroid/content/Context;)Lcom/google/android/glass/widget/Slider;

    move-result-object v2

    iget v3, p0, Lcom/google/glass/search/results/SearchPagedWebView;->numPages:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageNumber:F

    invoke-virtual {v2, v3, v4}, Lcom/google/android/glass/widget/Slider;->startScroller(IF)Lcom/google/android/glass/widget/Slider$Scroller;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/search/results/SearchPagedWebView;->slider:Lcom/google/android/glass/widget/Slider$Scroller;

    .line 258
    iget v2, p0, Lcom/google/glass/search/results/SearchPagedWebView;->numPages:I

    iput v2, p0, Lcom/google/glass/search/results/SearchPagedWebView;->oldNumPages:I

    .line 261
    .end local v0    # "contentWidthPixels":D
    :cond_0
    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 218
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 219
    invoke-virtual {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->requestFocus()Z

    .line 220
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 241
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView;->gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/touchpad/GestureDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 224
    sparse-switch p1, :sswitch_data_0

    .line 236
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 226
    :sswitch_0
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView;->gesturer:Lcom/google/android/glass/widget/CardScrollGesturer;

    sget-object v1, Lcom/google/android/glass/touchpad/Gesture;->SWIPE_LEFT:Lcom/google/android/glass/touchpad/Gesture;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollGesturer;->onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z

    move-result v0

    goto :goto_0

    .line 228
    :sswitch_1
    iget-object v0, p0, Lcom/google/glass/search/results/SearchPagedWebView;->gesturer:Lcom/google/android/glass/widget/CardScrollGesturer;

    sget-object v1, Lcom/google/android/glass/touchpad/Gesture;->SWIPE_RIGHT:Lcom/google/android/glass/touchpad/Gesture;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollGesturer;->onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z

    move-result v0

    goto :goto_0

    .line 231
    :sswitch_2
    invoke-direct {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->onTap()Z

    .line 232
    const/4 v0, 0x1

    goto :goto_0

    .line 224
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public setPageFocusChangeListener(Lcom/google/glass/search/results/SearchPagedWebView$OnPageFocusChangeListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/search/results/SearchPagedWebView$OnPageFocusChangeListener;

    .prologue
    .line 99
    iput-object p1, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageFocusChangeListener:Lcom/google/glass/search/results/SearchPagedWebView$OnPageFocusChangeListener;

    .line 100
    return-void
.end method

.method public setPageTappedListener(Lcom/google/glass/search/results/SearchPagedWebView$OnPageTappedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/search/results/SearchPagedWebView$OnPageTappedListener;

    .prologue
    .line 95
    iput-object p1, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageTappedListener:Lcom/google/glass/search/results/SearchPagedWebView$OnPageTappedListener;

    .line 96
    return-void
.end method

.method public updateScale(F)V
    .locals 9
    .param p1, "newScale"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 297
    iget v2, p0, Lcom/google/glass/search/results/SearchPagedWebView;->scale:F

    div-float v1, p1, v2

    .line 300
    .local v1, "scaleFactor":F
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pinchByDeltaMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/glass/search/results/SearchPagedWebView;->contentViewCore:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2

    .line 309
    :goto_0
    iput p1, p0, Lcom/google/glass/search/results/SearchPagedWebView;->scale:F

    .line 311
    invoke-direct {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->updateNumPages()V

    .line 312
    invoke-virtual {p0}, Lcom/google/glass/search/results/SearchPagedWebView;->updateWebViewPosition()V

    .line 313
    return-void

    .line 301
    :catch_0
    move-exception v0

    .line 302
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/google/glass/search/results/SearchPagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "don\'t talk to me!"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 303
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 304
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/glass/search/results/SearchPagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "speak java!"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 305
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 306
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Lcom/google/glass/search/results/SearchPagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "who you talkin\' to?"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public updateWebViewPosition()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 340
    iget v3, p0, Lcom/google/glass/search/results/SearchPagedWebView;->pageNumber:F

    iget v4, p0, Lcom/google/glass/search/results/SearchPagedWebView;->screenWidth:I

    iget v5, p0, Lcom/google/glass/search/results/SearchPagedWebView;->scale:F

    invoke-static {v3, v4, v5}, Lcom/google/glass/search/results/SearchPagedWebView;->getHorizontalScrollForPage(FIF)F

    move-result v0

    .line 341
    .local v0, "horizontalScrollPx":F
    iget v3, p0, Lcom/google/glass/search/results/SearchPagedWebView;->numPages:I

    iget v4, p0, Lcom/google/glass/search/results/SearchPagedWebView;->screenWidth:I

    iget v5, p0, Lcom/google/glass/search/results/SearchPagedWebView;->scale:F

    invoke-static {v3, v4, v5}, Lcom/google/glass/search/results/SearchPagedWebView;->getMaxHorizontalScroll(IIF)F

    move-result v1

    .line 342
    .local v1, "maxHorizontalScrollPx":F
    cmpg-float v3, v0, v7

    if-gez v3, :cond_0

    .line 344
    neg-float v3, v0

    invoke-virtual {p0, v3}, Lcom/google/glass/search/results/SearchPagedWebView;->setTranslationX(F)V

    .line 345
    invoke-virtual {p0, v6, v6}, Lcom/google/glass/search/results/SearchPagedWebView;->scrollTo(II)V

    .line 357
    :goto_0
    iget v3, p0, Lcom/google/glass/search/results/SearchPagedWebView;->screenHeight:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/glass/search/results/SearchPagedWebView;->screenHeight:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/glass/search/results/SearchPagedWebView;->scale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v3, v4

    .line 358
    .local v2, "translationY":F
    invoke-virtual {p0, v2}, Lcom/google/glass/search/results/SearchPagedWebView;->setTranslationY(F)V

    .line 359
    return-void

    .line 346
    .end local v2    # "translationY":F
    :cond_0
    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    .line 348
    sub-float v3, v0, v1

    neg-float v3, v3

    invoke-virtual {p0, v3}, Lcom/google/glass/search/results/SearchPagedWebView;->setTranslationX(F)V

    .line 349
    float-to-int v3, v1

    invoke-virtual {p0, v3, v6}, Lcom/google/glass/search/results/SearchPagedWebView;->scrollTo(II)V

    goto :goto_0

    .line 352
    :cond_1
    invoke-virtual {p0, v7}, Lcom/google/glass/search/results/SearchPagedWebView;->setTranslationX(F)V

    .line 353
    float-to-int v3, v0

    invoke-virtual {p0, v3, v6}, Lcom/google/glass/search/results/SearchPagedWebView;->scrollTo(II)V

    goto :goto_0
.end method

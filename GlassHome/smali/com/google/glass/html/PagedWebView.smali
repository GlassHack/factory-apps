.class public Lcom/google/glass/html/PagedWebView;
.super Landroid/webkit/WebView;
.source "PagedWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/html/PagedWebView$JavaScriptInterface;,
        Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;,
        Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;,
        Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;
    }
.end annotation


# static fields
.field private static final BACKGROUND_COLOR:I = -0x1000000

.field static final DEFAULT_BASE_URL:Ljava/lang/String; = "file:///android_asset/"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final FORCE_COMPILED_CSS:Z = false
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final GOOGLE_BASE_URL:Ljava/lang/String; = "https://www.google.com"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final HEIGHT_FIX_CSS:Ljava/lang/String; = "<style>.tw_status{height: inherit !important;}</style>"

.field private static final HEIGHT_FIX_SOURCE_ID:Ljava/lang/String; = "api:336684388886"

.field private static final HTML_BUFFER_BASE_SIZE:I = 0x200

.field private static final ONE_X_VIEWPORT_SCALE:Ljava/lang/String; = "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1\">"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

.field private contentViewCore:Ljava/lang/Object;

.field private final context:Landroid/content/Context;

.field private final coverPagePaint:Landroid/graphics/Paint;

.field private gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

.field private final gesturer:Lcom/google/android/glass/widget/CardScrollGesturer;

.field private hasCoverPage:Z

.field private hasPageFinished:Z

.field private hasPaginationCompleted:Z

.field private final height:I

.field private volatile isAllocated:Z

.field private itemId:Ljava/lang/String;

.field private final javascriptInterfaces:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final minBodyWidth:I

.field private numPages:I

.field private onlyLoadFirstPage:Z

.field private page:F

.field private pageCountChangeListener:Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;

.field private pageSelectedListener:Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;

.field private pinchByDelta:Ljava/lang/reflect/Method;

.field private final resourceLoadTasks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/deferredcontent/LoadingTask",
            "<*>;>;"
        }
    .end annotation
.end field

.field private scale:F

.field private siteLoadedListener:Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;

.field private final viewportMinScale:F

.field private final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/html/PagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/util/CachedBitmapFactory;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "bitmapFactory"    # Lcom/google/glass/util/CachedBitmapFactory;

    .prologue
    const/4 v3, 0x1

    .line 274
    invoke-direct {p0, p1}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;)V

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/html/PagedWebView;->resourceLoadTasks:Ljava/util/List;

    .line 240
    iput v3, p0, Lcom/google/glass/html/PagedWebView;->numPages:I

    .line 253
    iput-boolean v3, p0, Lcom/google/glass/html/PagedWebView;->onlyLoadFirstPage:Z

    .line 263
    const/high16 v2, 0x3f800000    # 1.0f

    iput v2, p0, Lcom/google/glass/html/PagedWebView;->scale:F

    .line 264
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/html/PagedWebView;->page:F

    .line 271
    invoke-static {}, Lcom/google/common/collect/Sets;->newHashSet()Ljava/util/HashSet;

    move-result-object v2

    iput-object v2, p0, Lcom/google/glass/html/PagedWebView;->javascriptInterfaces:Ljava/util/Set;

    .line 275
    iput-boolean v3, p0, Lcom/google/glass/html/PagedWebView;->isAllocated:Z

    .line 276
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView;->context:Landroid/content/Context;

    .line 277
    iput-object p2, p0, Lcom/google/glass/html/PagedWebView;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 280
    .local v0, "display":Landroid/util/DisplayMetrics;
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iput v2, p0, Lcom/google/glass/html/PagedWebView;->width:I

    .line 281
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    iput v2, p0, Lcom/google/glass/html/PagedWebView;->height:I

    .line 282
    const v2, 0x3ea8f5c3    # 0.33f

    iget v3, v0, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v2, v3

    iput v2, p0, Lcom/google/glass/html/PagedWebView;->viewportMinScale:F

    .line 283
    iget v2, p0, Lcom/google/glass/html/PagedWebView;->width:I

    int-to-float v2, v2

    const v3, 0x4041f07c

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iput v2, p0, Lcom/google/glass/html/PagedWebView;->minBodyWidth:I

    .line 285
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/google/glass/html/PagedWebView;->coverPagePaint:Landroid/graphics/Paint;

    .line 286
    iget-object v2, p0, Lcom/google/glass/html/PagedWebView;->coverPagePaint:Landroid/graphics/Paint;

    const/high16 v3, -0x1000000

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 288
    invoke-direct {p0}, Lcom/google/glass/html/PagedWebView;->setupWebView()V

    .line 290
    invoke-direct {p0}, Lcom/google/glass/html/PagedWebView;->createCardScrollModel()Lcom/google/android/glass/widget/CardScrollModel;

    move-result-object v1

    .line 291
    .local v1, "model":Lcom/google/android/glass/widget/CardScrollModel;
    new-instance v2, Lcom/google/android/glass/widget/CardScrollGesturer;

    invoke-direct {v2, v1}, Lcom/google/android/glass/widget/CardScrollGesturer;-><init>(Lcom/google/android/glass/widget/CardScrollModel;)V

    iput-object v2, p0, Lcom/google/glass/html/PagedWebView;->gesturer:Lcom/google/android/glass/widget/CardScrollGesturer;

    .line 292
    invoke-direct {p0, p1}, Lcom/google/glass/html/PagedWebView;->setupGestureDetector(Landroid/content/Context;)V

    .line 295
    invoke-direct {p0}, Lcom/google/glass/html/PagedWebView;->reflectOutScalingMethod()V

    .line 296
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/html/PagedWebView;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView;->itemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Lcom/google/glass/logging/FormattingLogger;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/google/glass/html/PagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/google/glass/html/PagedWebView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;
    .param p1, "x1"    # F

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/glass/html/PagedWebView;->updatePage(F)V

    return-void
.end method

.method static synthetic access$1100(Lcom/google/glass/html/PagedWebView;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/glass/html/PagedWebView;->onSiteLoaded()V

    return-void
.end method

.method static synthetic access$1200(Lcom/google/glass/html/PagedWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/google/glass/html/PagedWebView;->onTap()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1300(Lcom/google/glass/html/PagedWebView;)Lcom/google/android/glass/widget/CardScrollGesturer;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView;->gesturer:Lcom/google/android/glass/widget/CardScrollGesturer;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/google/glass/html/PagedWebView;F)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;
    .param p1, "x1"    # F

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/google/glass/html/PagedWebView;->updateScale(F)V

    return-void
.end method

.method static synthetic access$1500(Lcom/google/glass/html/PagedWebView;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;

    .prologue
    .line 56
    iget v0, p0, Lcom/google/glass/html/PagedWebView;->scale:F

    return v0
.end method

.method static synthetic access$1600(Lcom/google/glass/html/PagedWebView;)F
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;

    .prologue
    .line 56
    iget v0, p0, Lcom/google/glass/html/PagedWebView;->page:F

    return v0
.end method

.method static synthetic access$1702(Lcom/google/glass/html/PagedWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/glass/html/PagedWebView;->hasPageFinished:Z

    return p1
.end method

.method static synthetic access$200(Lcom/google/glass/html/PagedWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/glass/html/PagedWebView;->isAllocated:Z

    return v0
.end method

.method static synthetic access$300(Lcom/google/glass/html/PagedWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/glass/html/PagedWebView;->hasCoverPage:Z

    return v0
.end method

.method static synthetic access$302(Lcom/google/glass/html/PagedWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/glass/html/PagedWebView;->hasCoverPage:Z

    return p1
.end method

.method static synthetic access$400(Lcom/google/glass/html/PagedWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;

    .prologue
    .line 56
    iget v0, p0, Lcom/google/glass/html/PagedWebView;->numPages:I

    return v0
.end method

.method static synthetic access$402(Lcom/google/glass/html/PagedWebView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;
    .param p1, "x1"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/google/glass/html/PagedWebView;->numPages:I

    return p1
.end method

.method static synthetic access$600(Lcom/google/glass/html/PagedWebView;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;

    .prologue
    .line 56
    iget v0, p0, Lcom/google/glass/html/PagedWebView;->width:I

    return v0
.end method

.method static synthetic access$700(Lcom/google/glass/html/PagedWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;

    .prologue
    .line 56
    iget-boolean v0, p0, Lcom/google/glass/html/PagedWebView;->onlyLoadFirstPage:Z

    return v0
.end method

.method static synthetic access$802(Lcom/google/glass/html/PagedWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/google/glass/html/PagedWebView;->hasPaginationCompleted:Z

    return p1
.end method

.method static synthetic access$900(Lcom/google/glass/html/PagedWebView;)Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/html/PagedWebView;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView;->pageCountChangeListener:Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;

    return-object v0
.end method

.method private createCardScrollModel()Lcom/google/android/glass/widget/CardScrollModel;
    .locals 1

    .prologue
    .line 371
    new-instance v0, Lcom/google/glass/html/PagedWebView$3;

    invoke-direct {v0, p0}, Lcom/google/glass/html/PagedWebView$3;-><init>(Lcom/google/glass/html/PagedWebView;)V

    return-object v0
.end method

.method private getInlineCss(IZ)Ljava/lang/String;
    .locals 3
    .param p1, "footerRightMargin"    # I
    .param p2, "onlyLoadFirstPage"    # Z

    .prologue
    .line 669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 670
    .local v0, "inlineCss":Ljava/lang/StringBuilder;
    const-string v1, "<style>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 673
    const-string v1, "body {min-width: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/html/PagedWebView;->minBodyWidth:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px;}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    const-string v1, "footer {margin-right:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "px;}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 679
    if-eqz p2, :cond_0

    .line 680
    const-string v1, "article {display: none;}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 681
    const-string v1, "article:first-of-type {display: block;}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 684
    :cond_0
    const-string v1, "</style>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 685
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getLeftForPageScale(FF)F
    .locals 5
    .param p1, "page"    # F
    .param p2, "scale"    # F

    .prologue
    .line 792
    iget-boolean v3, p0, Lcom/google/glass/html/PagedWebView;->onlyLoadFirstPage:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/html/PagedWebView;->getHasCoverPage()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    .line 793
    .local v1, "pageOffset":I
    :goto_0
    iget v3, p0, Lcom/google/glass/html/PagedWebView;->width:I

    int-to-float v3, v3

    mul-float v2, v3, p2

    .line 794
    .local v2, "pageWidthPx":F
    int-to-float v3, v1

    add-float/2addr v3, p1

    mul-float v0, v2, v3

    .line 795
    .local v0, "leftPx":F
    iget v3, p0, Lcom/google/glass/html/PagedWebView;->width:I

    int-to-float v3, v3

    sub-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    sub-float/2addr v0, v3

    .line 796
    return v0

    .line 792
    .end local v0    # "leftPx":F
    .end local v1    # "pageOffset":I
    .end local v2    # "pageWidthPx":F
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getMaxLeftForScale(F)F
    .locals 5
    .param p1, "scale"    # F

    .prologue
    .line 822
    iget v3, p0, Lcom/google/glass/html/PagedWebView;->numPages:I

    iget v4, p0, Lcom/google/glass/html/PagedWebView;->width:I

    mul-int/2addr v3, v4

    int-to-float v0, v3

    .line 823
    .local v0, "contentWidthPx":F
    iget-boolean v3, p0, Lcom/google/glass/html/PagedWebView;->onlyLoadFirstPage:Z

    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/google/glass/html/PagedWebView;->getHasCoverPage()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 826
    iget v3, p0, Lcom/google/glass/html/PagedWebView;->width:I

    int-to-float v3, v3

    add-float/2addr v0, v3

    .line 828
    :cond_0
    iget v3, p0, Lcom/google/glass/html/PagedWebView;->minBodyWidth:I

    int-to-float v3, v3

    invoke-static {v0, v3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 832
    const/high16 v3, 0x3f800000    # 1.0f

    div-float v2, v3, p1

    .line 833
    .local v2, "numPagesOnScreen":F
    iget v3, p0, Lcom/google/glass/html/PagedWebView;->width:I

    int-to-float v3, v3

    mul-float/2addr v3, v2

    sub-float v1, v0, v3

    .line 836
    .local v1, "maxLeft":F
    mul-float/2addr v1, p1

    .line 837
    return v1
.end method

.method private onSiteLoaded()V
    .locals 2

    .prologue
    .line 734
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 735
    iget-boolean v1, p0, Lcom/google/glass/html/PagedWebView;->hasPageFinished:Z

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/google/glass/html/PagedWebView;->hasPaginationCompleted:Z

    if-eqz v1, :cond_1

    .line 738
    invoke-virtual {p0}, Lcom/google/glass/html/PagedWebView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 739
    .local v0, "parent":Landroid/view/ViewGroup;
    if-eqz v0, :cond_0

    .line 740
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 741
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 744
    :cond_0
    iget-object v1, p0, Lcom/google/glass/html/PagedWebView;->siteLoadedListener:Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;

    if-nez v1, :cond_2

    .line 752
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    return-void

    .line 748
    .restart local v0    # "parent":Landroid/view/ViewGroup;
    :cond_2
    iget-object v1, p0, Lcom/google/glass/html/PagedWebView;->siteLoadedListener:Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;

    invoke-interface {v1}, Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;->onSiteLoaded()V

    .line 750
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/html/PagedWebView;->siteLoadedListener:Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;

    goto :goto_0
.end method

.method private onTap()Z
    .locals 2

    .prologue
    .line 869
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView;->pageSelectedListener:Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;

    if-eqz v0, :cond_0

    .line 870
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView;->pageSelectedListener:Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;

    iget v1, p0, Lcom/google/glass/html/PagedWebView;->page:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-interface {v0, v1}, Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;->onPageSelected(I)Z

    move-result v0

    .line 872
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private reflectOutScalingMethod()V
    .locals 13

    .prologue
    const/4 v12, 0x0

    const/4 v11, 0x1

    .line 345
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mProvider"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    .line 346
    .local v5, "providerField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 347
    invoke-virtual {v5, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 349
    .local v4, "provider":Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mAwContents"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 350
    .local v1, "awContentsField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 351
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 353
    .local v0, "awContents":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "mContentViewCore"

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    .line 354
    .local v2, "contentViewCoreField":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 355
    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/html/PagedWebView;->contentViewCore:Ljava/lang/Object;

    .line 357
    iget-object v6, p0, Lcom/google/glass/html/PagedWebView;->contentViewCore:Ljava/lang/Object;

    .line 358
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    const-string v7, "pinchByDelta"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    iput-object v6, p0, Lcom/google/glass/html/PagedWebView;->pinchByDelta:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 368
    .end local v0    # "awContents":Ljava/lang/Object;
    .end local v1    # "awContentsField":Ljava/lang/reflect/Field;
    .end local v2    # "contentViewCoreField":Ljava/lang/reflect/Field;
    .end local v4    # "provider":Ljava/lang/Object;
    .end local v5    # "providerField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 359
    :catch_0
    move-exception v3

    .line 360
    .local v3, "e":Ljava/lang/NoSuchFieldException;
    sget-object v6, Lcom/google/glass/html/PagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "NoSuchFieldException"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 361
    .end local v3    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v3

    .line 362
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    sget-object v6, Lcom/google/glass/html/PagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "NoSuchMethodException"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 363
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v3

    .line 364
    .local v3, "e":Ljava/lang/IllegalAccessException;
    sget-object v6, Lcom/google/glass/html/PagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "IllegalAccessException"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 365
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v3

    .line 366
    .local v3, "e":Ljava/lang/IllegalArgumentException;
    sget-object v6, Lcom/google/glass/html/PagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "IllegalArgumentException"

    new-array v8, v11, [Ljava/lang/Object;

    aput-object v3, v8, v12

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private setupGestureDetector(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 320
    new-instance v0, Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-direct {v0, p1}, Lcom/google/android/glass/touchpad/GestureDetector;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/html/PagedWebView;->gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    .line 325
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView;->gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    iget-object v1, p0, Lcom/google/glass/html/PagedWebView;->gesturer:Lcom/google/android/glass/widget/CardScrollGesturer;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/touchpad/GestureDetector;->setFingerListener(Lcom/google/android/glass/touchpad/GestureDetector$FingerListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v0

    new-instance v1, Lcom/google/glass/html/PagedWebView$2;

    invoke-direct {v1, p0}, Lcom/google/glass/html/PagedWebView$2;-><init>(Lcom/google/glass/html/PagedWebView;)V

    .line 326
    invoke-virtual {v0, v1}, Lcom/google/android/glass/touchpad/GestureDetector;->setScrollListener(Lcom/google/android/glass/touchpad/GestureDetector$ScrollListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    move-result-object v0

    new-instance v1, Lcom/google/glass/html/PagedWebView$1;

    invoke-direct {v1, p0}, Lcom/google/glass/html/PagedWebView$1;-><init>(Lcom/google/glass/html/PagedWebView;)V

    .line 332
    invoke-virtual {v0, v1}, Lcom/google/android/glass/touchpad/GestureDetector;->setBaseListener(Lcom/google/android/glass/touchpad/GestureDetector$BaseListener;)Lcom/google/android/glass/touchpad/GestureDetector;

    .line 341
    return-void
.end method

.method private setupWebView()V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi",
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 301
    invoke-virtual {p0, v2}, Lcom/google/glass/html/PagedWebView;->setHorizontalScrollBarEnabled(Z)V

    .line 302
    invoke-virtual {p0, v2}, Lcom/google/glass/html/PagedWebView;->setVerticalScrollBarEnabled(Z)V

    .line 303
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/google/glass/html/PagedWebView;->setBackgroundColor(I)V

    .line 306
    const/16 v1, 0x64

    invoke-virtual {p0, v1}, Lcom/google/glass/html/PagedWebView;->setInitialScale(I)V

    .line 308
    invoke-virtual {p0}, Lcom/google/glass/html/PagedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v0

    .line 311
    .local v0, "settings":Landroid/webkit/WebSettings;
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setBuiltInZoomControls(Z)V

    .line 312
    invoke-virtual {v0, v2}, Landroid/webkit/WebSettings;->setDisplayZoomControls(Z)V

    .line 313
    invoke-virtual {v0, v3}, Landroid/webkit/WebSettings;->setSupportZoom(Z)V

    .line 316
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/webkit/WebSettings;->setCacheMode(I)V

    .line 317
    return-void
.end method

.method private updatePage(F)V
    .locals 2
    .param p1, "newPage"    # F

    .prologue
    .line 758
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v1, p0, Lcom/google/glass/html/PagedWebView;->page:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 759
    invoke-static {}, Lcom/google/glass/sound/SoundManagerProvider;->getInstance()Lcom/google/glass/sound/SoundManagerProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/sound/SoundManagerProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/sound/SoundManager;

    sget-object v1, Lcom/google/glass/sound/SoundManager$SoundId;->FOCUS:Lcom/google/glass/sound/SoundManager$SoundId;

    invoke-virtual {v0, v1}, Lcom/google/glass/sound/SoundManager;->playSound(Lcom/google/glass/sound/SoundManager$SoundId;)V

    .line 762
    :cond_0
    iput p1, p0, Lcom/google/glass/html/PagedWebView;->page:F

    .line 763
    invoke-direct {p0}, Lcom/google/glass/html/PagedWebView;->updateWebViewPosition()V

    .line 764
    return-void
.end method

.method private updateScale(F)V
    .locals 9
    .param p1, "newScale"    # F

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 768
    iget v2, p0, Lcom/google/glass/html/PagedWebView;->scale:F

    div-float v1, p1, v2

    .line 771
    .local v1, "scaleFactor":F
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/html/PagedWebView;->pinchByDelta:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lcom/google/glass/html/PagedWebView;->contentViewCore:Ljava/lang/Object;

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

    .line 780
    :goto_0
    iput p1, p0, Lcom/google/glass/html/PagedWebView;->scale:F

    .line 781
    invoke-direct {p0}, Lcom/google/glass/html/PagedWebView;->updateWebViewPosition()V

    .line 782
    return-void

    .line 772
    :catch_0
    move-exception v0

    .line 773
    .local v0, "e":Ljava/lang/IllegalAccessException;
    sget-object v2, Lcom/google/glass/html/PagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "don\'t talk to me!"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 774
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_1
    move-exception v0

    .line 775
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v2, Lcom/google/glass/html/PagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "speak java!"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 776
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 777
    .local v0, "e":Ljava/lang/reflect/InvocationTargetException;
    sget-object v2, Lcom/google/glass/html/PagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "who you talkin\' to?"

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v0, v4, v7

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private updateWebViewPosition()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 842
    iget v3, p0, Lcom/google/glass/html/PagedWebView;->page:F

    iget v4, p0, Lcom/google/glass/html/PagedWebView;->scale:F

    invoke-direct {p0, v3, v4}, Lcom/google/glass/html/PagedWebView;->getLeftForPageScale(FF)F

    move-result v0

    .line 843
    .local v0, "leftPx":F
    iget v3, p0, Lcom/google/glass/html/PagedWebView;->scale:F

    invoke-direct {p0, v3}, Lcom/google/glass/html/PagedWebView;->getMaxLeftForScale(F)F

    move-result v1

    .line 845
    .local v1, "maxLeftPx":F
    cmpg-float v3, v0, v6

    if-gez v3, :cond_0

    .line 848
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/google/glass/html/PagedWebView;->setTranslationX(F)V

    .line 849
    invoke-virtual {p0, v5, v5}, Lcom/google/glass/html/PagedWebView;->scrollTo(II)V

    .line 863
    :goto_0
    iget v3, p0, Lcom/google/glass/html/PagedWebView;->height:I

    int-to-float v3, v3

    iget v4, p0, Lcom/google/glass/html/PagedWebView;->height:I

    int-to-float v4, v4

    iget v5, p0, Lcom/google/glass/html/PagedWebView;->scale:F

    mul-float/2addr v4, v5

    sub-float/2addr v3, v4

    const/high16 v4, 0x40000000    # 2.0f

    div-float v2, v3, v4

    .line 864
    .local v2, "translationY":F
    invoke-virtual {p0, v2}, Lcom/google/glass/html/PagedWebView;->setTranslationY(F)V

    .line 865
    return-void

    .line 850
    .end local v2    # "translationY":F
    :cond_0
    cmpl-float v3, v0, v1

    if-lez v3, :cond_1

    .line 853
    sub-float v3, v0, v1

    neg-float v3, v3

    invoke-virtual {p0, v3}, Lcom/google/glass/html/PagedWebView;->setTranslationX(F)V

    .line 854
    float-to-int v3, v1

    invoke-virtual {p0, v3, v5}, Lcom/google/glass/html/PagedWebView;->scrollTo(II)V

    goto :goto_0

    .line 858
    :cond_1
    invoke-virtual {p0, v6}, Lcom/google/glass/html/PagedWebView;->setTranslationX(F)V

    .line 859
    float-to-int v3, v0

    invoke-virtual {p0, v3, v5}, Lcom/google/glass/html/PagedWebView;->scrollTo(II)V

    goto :goto_0
.end method


# virtual methods
.method public addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 463
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 464
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView;->javascriptInterfaces:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 465
    return-void
.end method

.method generateHtml(Ljava/lang/String;IZZLjava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "html"    # Ljava/lang/String;
    .param p2, "footerRightMargin"    # I
    .param p3, "onlyLoadFirstPage"    # Z
    .param p4, "includeJs"    # Z
    .param p5, "title"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 629
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit16 v1, v1, 0x200

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 630
    .local v0, "cardHtml":Ljava/lang/StringBuilder;
    const-string v1, "<html><head>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 633
    const-string v1, "<title>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "</title>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 635
    if-eqz p3, :cond_1

    .line 638
    const-string v1, "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    :goto_0
    const-string v1, "<link rel=\"stylesheet\" type=\"text/css\" href=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "glass://GLASS_CSS"

    .line 650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\" />"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 653
    invoke-direct {p0, p2, p3}, Lcom/google/glass/html/PagedWebView;->getInlineCss(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 656
    if-eqz p4, :cond_0

    .line 657
    const-string v1, "<script src=\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "file:///android_asset/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "cards_compiled.js\"></script>"

    .line 658
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 661
    :cond_0
    const-string v1, "</head><body>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 662
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 663
    const-string v1, "</body></html>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 664
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 643
    :cond_1
    const-string v1, "<meta name=\"viewport\" content=\"width=device-width, maximum-scale=1, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 644
    const-string v1, "minimum-scale="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/html/PagedWebView;->viewportMinScale:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 645
    const-string v1, "\">"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0
.end method

.method public getHasCoverPage()Z
    .locals 1

    .prologue
    .line 489
    iget-boolean v0, p0, Lcom/google/glass/html/PagedWebView;->hasCoverPage:Z

    return v0
.end method

.method getItemHtml(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;
    .locals 3
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 618
    const-string v0, "api:336684388886"

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSource()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 619
    const-string v0, "<style>.tw_status{height: inherit !important;}</style>"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 621
    :goto_0
    return-object v0

    .line 619
    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 621
    :cond_1
    invoke-virtual {p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getHtml()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getNumPages()I
    .locals 1

    .prologue
    .line 485
    iget v0, p0, Lcom/google/glass/html/PagedWebView;->numPages:I

    return v0
.end method

.method public isAllocated()Z
    .locals 1

    .prologue
    .line 417
    iget-boolean v0, p0, Lcom/google/glass/html/PagedWebView;->isAllocated:Z

    return v0
.end method

.method public isDoneLoadingResources()Z
    .locals 4

    .prologue
    .line 475
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Lcom/google/glass/html/PagedWebView;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .local v1, "n":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 476
    iget-object v2, p0, Lcom/google/glass/html/PagedWebView;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/glass/deferredcontent/LoadingTask;

    invoke-virtual {v2}, Lcom/google/glass/deferredcontent/LoadingTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v2

    sget-object v3, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-eq v2, v3, :cond_0

    .line 477
    const/4 v2, 0x0

    .line 480
    :goto_1
    return v2

    .line 475
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 480
    :cond_1
    const/4 v2, 0x1

    goto :goto_1
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 690
    invoke-super {p0}, Landroid/webkit/WebView;->onAttachedToWindow()V

    .line 691
    invoke-virtual {p0}, Lcom/google/glass/html/PagedWebView;->requestFocus()Z

    .line 692
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 801
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 805
    iget-boolean v0, p0, Lcom/google/glass/html/PagedWebView;->onlyLoadFirstPage:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/google/glass/html/PagedWebView;->hasCoverPage:Z

    if-eqz v0, :cond_0

    .line 807
    const/high16 v0, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/google/glass/html/PagedWebView;->scale:F

    div-float v7, v0, v2

    .line 808
    .local v7, "numPagesOnScreen":F
    iget v0, p0, Lcom/google/glass/html/PagedWebView;->page:F

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v0, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float v2, v7, v2

    sub-float v8, v0, v2

    .line 809
    .local v8, "pageForLeftEdge":F
    cmpg-float v0, v8, v1

    if-gez v0, :cond_1

    const/4 v6, 0x1

    .line 810
    .local v6, "isCoverVisible":Z
    :goto_0
    if-eqz v6, :cond_0

    .line 811
    iget v0, p0, Lcom/google/glass/html/PagedWebView;->width:I

    int-to-float v0, v0

    iget v2, p0, Lcom/google/glass/html/PagedWebView;->scale:F

    mul-float v9, v0, v2

    .line 812
    .local v9, "pageWidth":F
    invoke-virtual {p0}, Lcom/google/glass/html/PagedWebView;->getScrollX()I

    move-result v0

    int-to-float v0, v0

    neg-float v2, v8

    mul-float/2addr v2, v9

    add-float v3, v0, v2

    .line 813
    .local v3, "coverPageRightX":F
    iget v0, p0, Lcom/google/glass/html/PagedWebView;->height:I

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/glass/html/PagedWebView;->coverPagePaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 816
    .end local v3    # "coverPageRightX":F
    .end local v6    # "isCoverVisible":Z
    .end local v7    # "numPagesOnScreen":F
    .end local v8    # "pageForLeftEdge":F
    .end local v9    # "pageWidth":F
    :cond_0
    return-void

    .line 809
    .restart local v7    # "numPagesOnScreen":F
    .restart local v8    # "pageForLeftEdge":F
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 715
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView;->gestureDetector:Lcom/google/android/glass/touchpad/GestureDetector;

    invoke-virtual {v0, p1}, Lcom/google/android/glass/touchpad/GestureDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 698
    sparse-switch p1, :sswitch_data_0

    .line 710
    invoke-super {p0, p1, p2}, Landroid/webkit/WebView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 700
    :sswitch_0
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView;->gesturer:Lcom/google/android/glass/widget/CardScrollGesturer;

    sget-object v1, Lcom/google/android/glass/touchpad/Gesture;->SWIPE_LEFT:Lcom/google/android/glass/touchpad/Gesture;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollGesturer;->onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z

    move-result v0

    goto :goto_0

    .line 702
    :sswitch_1
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView;->gesturer:Lcom/google/android/glass/widget/CardScrollGesturer;

    sget-object v1, Lcom/google/android/glass/touchpad/Gesture;->SWIPE_RIGHT:Lcom/google/android/glass/touchpad/Gesture;

    invoke-virtual {v0, v1}, Lcom/google/android/glass/widget/CardScrollGesturer;->onGesture(Lcom/google/android/glass/touchpad/Gesture;)Z

    move-result v0

    goto :goto_0

    .line 705
    :sswitch_2
    invoke-direct {p0}, Lcom/google/glass/html/PagedWebView;->onTap()Z

    .line 706
    const/4 v0, 0x1

    goto :goto_0

    .line 698
    nop

    :sswitch_data_0
    .sparse-switch
        0x15 -> :sswitch_0
        0x16 -> :sswitch_1
        0x17 -> :sswitch_2
        0x42 -> :sswitch_2
    .end sparse-switch
.end method

.method public release()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 425
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 426
    iget-boolean v3, p0, Lcom/google/glass/html/PagedWebView;->isAllocated:Z

    if-nez v3, :cond_0

    .line 459
    :goto_0
    return-void

    .line 429
    :cond_0
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/google/glass/html/PagedWebView;->isAllocated:Z

    .line 432
    iput-object v4, p0, Lcom/google/glass/html/PagedWebView;->itemId:Ljava/lang/String;

    .line 433
    iput-object v4, p0, Lcom/google/glass/html/PagedWebView;->pageCountChangeListener:Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;

    .line 434
    iput-object v4, p0, Lcom/google/glass/html/PagedWebView;->pageSelectedListener:Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;

    .line 435
    iput-object v4, p0, Lcom/google/glass/html/PagedWebView;->siteLoadedListener:Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;

    .line 436
    invoke-virtual {p0, v4}, Lcom/google/glass/html/PagedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 437
    invoke-virtual {p0, v4}, Lcom/google/glass/html/PagedWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 440
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v3, p0, Lcom/google/glass/html/PagedWebView;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "n":I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 441
    iget-object v3, p0, Lcom/google/glass/html/PagedWebView;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/deferredcontent/LoadingTask;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/google/glass/deferredcontent/LoadingTask;->cancel(Z)V

    .line 440
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 443
    :cond_1
    iget-object v3, p0, Lcom/google/glass/html/PagedWebView;->resourceLoadTasks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 447
    iget-object v3, p0, Lcom/google/glass/html/PagedWebView;->javascriptInterfaces:Ljava/util/Set;

    invoke-static {v3}, Lcom/google/common/collect/Sets;->newHashSet(Ljava/lang/Iterable;)Ljava/util/HashSet;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 448
    .local v1, "javascriptInterface":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/google/glass/html/PagedWebView;->removeJavascriptInterface(Ljava/lang/String;)V

    goto :goto_2

    .line 453
    .end local v1    # "javascriptInterface":Ljava/lang/String;
    :cond_2
    new-instance v3, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/google/glass/html/PagedWebView$4;

    invoke-direct {v4, p0}, Lcom/google/glass/html/PagedWebView$4;-><init>(Lcom/google/glass/html/PagedWebView;)V

    const-wide/16 v5, 0x7d0

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public removeJavascriptInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 469
    invoke-super {p0, p1}, Landroid/webkit/WebView;->removeJavascriptInterface(Ljava/lang/String;)V

    .line 470
    iget-object v0, p0, Lcom/google/glass/html/PagedWebView;->javascriptInterfaces:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 471
    return-void
.end method

.method public render(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;IZZLcom/google/glass/html/PagedWebView$OnPageCountChangeListener;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;Ljava/lang/String;)V
    .locals 17
    .param p1, "item"    # Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;
    .param p2, "footerMarginRight"    # I
    .param p3, "loadUncachedResources"    # Z
    .param p4, "onlyLoadFirstPage"    # Z
    .param p5, "countListener"    # Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;
    .param p6, "resourceLoadedCallback"    # Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;
    .param p7, "siteLoadedListener"    # Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;
    .param p8, "processedHtml"    # Ljava/lang/String;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetJavaScriptEnabled"
        }
    .end annotation

    .prologue
    .line 516
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 517
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/google/glass/html/PagedWebView;->isAllocated:Z

    if-nez v2, :cond_0

    .line 518
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Called render() on an unallocated view!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 521
    :cond_0
    new-instance v16, Lcom/google/glass/time/Stopwatch;

    invoke-direct/range {v16 .. v16}, Lcom/google/glass/time/Stopwatch;-><init>()V

    .line 522
    .local v16, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    .line 524
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getId()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/google/glass/html/PagedWebView;->itemId:Ljava/lang/String;

    .line 525
    move-object/from16 v0, p5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/html/PagedWebView;->pageCountChangeListener:Lcom/google/glass/html/PagedWebView$OnPageCountChangeListener;

    .line 526
    move-object/from16 v0, p7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/google/glass/html/PagedWebView;->siteLoadedListener:Lcom/google/glass/html/PagedWebView$OnSiteLoadedListener;

    .line 527
    move/from16 v0, p4

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/google/glass/html/PagedWebView;->onlyLoadFirstPage:Z

    .line 528
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/google/glass/html/PagedWebView;->hasCoverPage:Z

    .line 531
    new-instance v2, Lcom/google/glass/html/PagedWebView$6;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/glass/html/PagedWebView;->context:Landroid/content/Context;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/glass/html/PagedWebView;->bitmapFactory:Lcom/google/glass/util/CachedBitmapFactory;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/google/glass/html/PagedWebView;->context:Landroid/content/Context;

    .line 532
    invoke-static {v3}, Lcom/google/glass/maps/MapHelper;->getInstance(Landroid/content/Context;)Lcom/google/glass/maps/MapHelper;

    move-result-object v7

    invoke-static {}, Lcom/google/glass/mosaic/MosaicHelper;->getInstance()Lcom/google/glass/mosaic/MosaicHelper;

    move-result-object v8

    new-instance v9, Lcom/google/glass/html/Thumbnailer;

    invoke-direct {v9}, Lcom/google/glass/html/Thumbnailer;-><init>()V

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/google/glass/html/PagedWebView;->resourceLoadTasks:Ljava/util/List;

    new-instance v12, Lcom/google/glass/html/PagedWebView$5;

    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v12, v0, v1}, Lcom/google/glass/html/PagedWebView$5;-><init>(Lcom/google/glass/html/PagedWebView;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;)V

    move-object/from16 v3, p0

    move-object/from16 v5, p1

    move/from16 v10, p3

    move-object/from16 v13, p8

    move-object/from16 v14, p1

    invoke-direct/range {v2 .. v14}, Lcom/google/glass/html/PagedWebView$6;-><init>(Lcom/google/glass/html/PagedWebView;Landroid/content/Context;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;Lcom/google/glass/util/CachedBitmapFactory;Lcom/google/glass/maps/MapHelper;Lcom/google/glass/mosaic/MosaicHelper;Lcom/google/glass/html/Thumbnailer;ZLjava/util/List;Lcom/google/glass/html/ResourceLoadingWebViewClient$ResourceLoadedCallback;Ljava/lang/String;Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)V

    .line 531
    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/html/PagedWebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 576
    sget-object v2, Lcom/google/glass/html/PagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const/4 v3, 0x2

    invoke-interface {v2, v3}, Lcom/google/glass/logging/FormattingLogger;->isLoggable(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 579
    new-instance v2, Lcom/google/glass/html/PagedWebView$7;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/glass/html/PagedWebView$7;-><init>(Lcom/google/glass/html/PagedWebView;)V

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/google/glass/html/PagedWebView;->setWebChromeClient(Landroid/webkit/WebChromeClient;)V

    .line 587
    :cond_1
    const-string v15, "file:///android_asset/"

    .line 588
    .local v15, "baseUrl":Ljava/lang/String;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "application/glass+html"

    aput-object v4, v2, v3

    move-object/from16 v0, p1

    invoke-static {v0, v2}, Lcom/google/glass/timeline/TimelineItemUtils;->hasAttachmentOfTypes(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;[Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 589
    invoke-virtual/range {p1 .. p1}, Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;->getSourceType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 592
    const-string v15, "https://www.google.com"

    .line 595
    :cond_2
    invoke-static/range {p8 .. p8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 600
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/html/PagedWebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 603
    new-instance v2, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;

    move-object/from16 v0, p0

    invoke-direct {v2, v0}, Lcom/google/glass/html/PagedWebView$JavaScriptInterface;-><init>(Lcom/google/glass/html/PagedWebView;)V

    const-string v3, "GLASS"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/html/PagedWebView;->addJavascriptInterface(Ljava/lang/Object;Ljava/lang/String;)V

    .line 605
    invoke-virtual/range {p0 .. p1}, Lcom/google/glass/html/PagedWebView;->getItemHtml(Lcom/google/googlex/glass/common/proto/TimelineNano$TimelineItem;)Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/glass/html/PagedWebView;->itemId:Ljava/lang/String;

    move-object/from16 v2, p0

    move/from16 v4, p2

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/glass/html/PagedWebView;->generateHtml(Ljava/lang/String;IZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v15

    invoke-virtual/range {v2 .. v7}, Lcom/google/glass/html/PagedWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 612
    :goto_0
    sget-object v2, Lcom/google/glass/html/PagedWebView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Prepared for item %s in %dms"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/google/glass/html/PagedWebView;->itemId:Ljava/lang/String;

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual/range {v16 .. v16}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-interface {v2, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 613
    return-void

    .line 608
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/glass/html/PagedWebView;->itemId:Ljava/lang/String;

    move-object/from16 v2, p0

    move-object/from16 v3, p8

    move/from16 v4, p2

    move/from16 v5, p4

    invoke-virtual/range {v2 .. v7}, Lcom/google/glass/html/PagedWebView;->generateHtml(Ljava/lang/String;IZZLjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "text/html"

    const-string v6, "UTF-8"

    const/4 v7, 0x0

    move-object/from16 v2, p0

    move-object v3, v15

    invoke-virtual/range {v2 .. v7}, Lcom/google/glass/html/PagedWebView;->loadDataWithBaseURL(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public resetScroll()V
    .locals 1

    .prologue
    .line 725
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/html/PagedWebView;->updatePage(F)V

    .line 726
    return-void
.end method

.method public setPageSelectedListener(Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;)V
    .locals 0
    .param p1, "pageSelectedListener"    # Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;

    .prologue
    .line 720
    iput-object p1, p0, Lcom/google/glass/html/PagedWebView;->pageSelectedListener:Lcom/google/glass/html/PagedWebView$OnPageSelectedListener;

    .line 721
    return-void
.end method

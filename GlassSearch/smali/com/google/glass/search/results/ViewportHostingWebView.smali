.class public Lcom/google/glass/search/results/ViewportHostingWebView;
.super Landroid/webkit/WebView;
.source "ViewportHostingWebView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;,
        Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;
    }
.end annotation


# static fields
.field private static final CARD_COUNT_KEY:Ljava/lang/String; = "count"

.field private static final CARD_COUNT_STABILIZATION_TIME_IN_MS:I = 0xbb8

.field private static final MSG_CARD_COUNT_STABLE:I = 0x0

.field private static final STABILIZED_TIME_KEY:Ljava/lang/String; = "time"


# instance fields
.field private backingFrame:Landroid/graphics/Bitmap;

.field private final cardSize:Landroid/graphics/Rect;

.field private countListener:Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;

.field private dataSetTime:J

.field private final handler:Landroid/os/Handler;

.field private loggedStable:Z

.field private previousNumCards:I

.field private final userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

.field private viewportViews:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/search/results/ViewportHostingWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 98
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 101
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/search/results/ViewportHostingWebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 105
    invoke-direct {p0, p1, p2, p3}, Landroid/webkit/WebView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->viewportViews:Ljava/util/List;

    .line 39
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->backingFrame:Landroid/graphics/Bitmap;

    .line 41
    const/4 v1, 0x1

    iput v1, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->previousNumCards:I

    .line 49
    iput-boolean v4, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->loggedStable:Z

    .line 54
    new-instance v1, Lcom/google/glass/search/results/ViewportHostingWebView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/google/glass/search/results/ViewportHostingWebView$1;-><init>(Lcom/google/glass/search/results/ViewportHostingWebView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->handler:Landroid/os/Handler;

    .line 106
    const/high16 v1, -0x1000000

    invoke-virtual {p0, v1}, Lcom/google/glass/search/results/ViewportHostingWebView;->setBackgroundColor(I)V

    .line 107
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 108
    .local v0, "display":Landroid/util/DisplayMetrics;
    new-instance v1, Landroid/graphics/Rect;

    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v1, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->cardSize:Landroid/graphics/Rect;

    .line 110
    iget-object v1, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->viewportViews:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    new-instance v1, Lcom/google/glass/userevent/UserEventHelper;

    invoke-direct {v1, p1}, Lcom/google/glass/userevent/UserEventHelper;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    .line 113
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/search/results/ViewportHostingWebView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/ViewportHostingWebView;

    .prologue
    .line 35
    iget-boolean v0, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->loggedStable:Z

    return v0
.end method

.method static synthetic access$002(Lcom/google/glass/search/results/ViewportHostingWebView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/search/results/ViewportHostingWebView;
    .param p1, "x1"    # Z

    .prologue
    .line 35
    iput-boolean p1, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->loggedStable:Z

    return p1
.end method

.method static synthetic access$100(Lcom/google/glass/search/results/ViewportHostingWebView;)Lcom/google/glass/userevent/UserEventHelper;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/ViewportHostingWebView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->userEventHelper:Lcom/google/glass/userevent/UserEventHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/glass/search/results/ViewportHostingWebView;)Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/ViewportHostingWebView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->countListener:Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/glass/search/results/ViewportHostingWebView;)J
    .locals 2
    .param p0, "x0"    # Lcom/google/glass/search/results/ViewportHostingWebView;

    .prologue
    .line 35
    iget-wide v0, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->dataSetTime:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/google/glass/search/results/ViewportHostingWebView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/search/results/ViewportHostingWebView;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method private createViewportView(I)Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 147
    new-instance v0, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;

    invoke-virtual {p0}, Lcom/google/glass/search/results/ViewportHostingWebView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;-><init>(Lcom/google/glass/search/results/ViewportHostingWebView;Landroid/content/Context;I)V

    return-object v0
.end method

.method private getSourceRectForViewport(I)Landroid/graphics/Rect;
    .locals 6
    .param p1, "i"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->cardSize:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 185
    .local v0, "cardWidth":I
    new-instance v1, Landroid/graphics/Rect;

    mul-int v2, v0, p1

    const/4 v3, 0x0

    add-int/lit8 v4, p1, 0x1

    mul-int/2addr v4, v0

    iget-object v5, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->cardSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v1
.end method

.method private notifyViewportSetChanged(I)V
    .locals 1
    .param p1, "numCards"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->countListener:Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;

    if-eqz v0, :cond_0

    .line 220
    new-instance v0, Lcom/google/glass/search/results/ViewportHostingWebView$2;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/search/results/ViewportHostingWebView$2;-><init>(Lcom/google/glass/search/results/ViewportHostingWebView;I)V

    invoke-virtual {p0, v0}, Lcom/google/glass/search/results/ViewportHostingWebView;->post(Ljava/lang/Runnable;)Z

    .line 238
    :cond_0
    return-void
.end method

.method private updateBackingFrame(Z)V
    .locals 6
    .param p1, "forceRefresh"    # Z

    .prologue
    const/4 v1, 0x1

    .line 194
    .line 195
    invoke-virtual {p0}, Lcom/google/glass/search/results/ViewportHostingWebView;->computeHorizontalScrollRange()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->cardSize:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v4, v4

    .line 194
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 196
    .local v3, "numCards":I
    iget v4, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->previousNumCards:I

    if-eq v3, v4, :cond_4

    .line 197
    .local v1, "cardCountChanged":Z
    :goto_0
    iput v3, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->previousNumCards:I

    .line 200
    if-nez p1, :cond_0

    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->backingFrame:Landroid/graphics/Bitmap;

    if-nez v4, :cond_2

    .line 201
    :cond_0
    iget-object v4, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->backingFrame:Landroid/graphics/Bitmap;

    if-eqz v4, :cond_1

    .line 202
    iget-object v4, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->backingFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    .line 204
    :cond_1
    iget-object v4, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->cardSize:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    mul-int v2, v3, v4

    .line 205
    .local v2, "fullBrowserWidth":I
    iget-object v4, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->cardSize:Landroid/graphics/Rect;

    .line 206
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v4, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    iput-object v4, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->backingFrame:Landroid/graphics/Bitmap;

    .line 208
    invoke-virtual {p0}, Lcom/google/glass/search/results/ViewportHostingWebView;->invalidate()V

    .line 209
    new-instance v0, Landroid/graphics/Canvas;

    iget-object v4, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->backingFrame:Landroid/graphics/Bitmap;

    invoke-direct {v0, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 210
    .local v0, "c":Landroid/graphics/Canvas;
    invoke-super {p0, v0}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 213
    .end local v0    # "c":Landroid/graphics/Canvas;
    .end local v2    # "fullBrowserWidth":I
    :cond_2
    if-eqz v1, :cond_3

    .line 214
    invoke-direct {p0, v3}, Lcom/google/glass/search/results/ViewportHostingWebView;->notifyViewportSetChanged(I)V

    .line 216
    :cond_3
    return-void

    .line 196
    .end local v1    # "cardCountChanged":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public drawViewport(IZ)V
    .locals 10
    .param p1, "index"    # I
    .param p2, "forceFresh"    # Z

    .prologue
    .line 151
    invoke-direct {p0, p2}, Lcom/google/glass/search/results/ViewportHostingWebView;->updateBackingFrame(Z)V

    .line 152
    invoke-virtual {p0}, Lcom/google/glass/search/results/ViewportHostingWebView;->getCardCount()I

    move-result v2

    .line 153
    .local v2, "numCards":I
    if-ltz p1, :cond_0

    if-lt p1, v2, :cond_1

    .line 181
    :cond_0
    return-void

    .line 157
    :cond_1
    add-int/lit8 v6, p1, -0x1

    const/4 v7, 0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 158
    .local v1, "leftCardIndex":I
    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, v2, -0x1

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 159
    .local v3, "rightCardIndex":I
    move v0, v1

    .local v0, "i":I
    :goto_0
    if-gt v0, v3, :cond_0

    .line 161
    iget-object v6, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->viewportViews:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v0, v6, :cond_0

    .line 164
    iget-object v6, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->viewportViews:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;

    .line 165
    .local v4, "viewport":Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;
    if-nez v4, :cond_3

    .line 159
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual {v4}, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->lockCanvas()Landroid/graphics/Canvas;

    move-result-object v5

    .line 170
    .local v5, "vpCanvas":Landroid/graphics/Canvas;
    if-eqz v5, :cond_2

    .line 174
    :try_start_0
    iget-object v6, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->backingFrame:Landroid/graphics/Bitmap;

    invoke-direct {p0, v0}, Lcom/google/glass/search/results/ViewportHostingWebView;->getSourceRectForViewport(I)Landroid/graphics/Rect;

    move-result-object v7

    iget-object v8, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->cardSize:Landroid/graphics/Rect;

    const/4 v9, 0x0

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 176
    invoke-virtual {v4, v5}, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 178
    invoke-virtual {v4}, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->invalidate()V

    goto :goto_1

    .line 176
    :catchall_0
    move-exception v6

    invoke-virtual {v4, v5}, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 178
    invoke-virtual {v4}, Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;->invalidate()V

    throw v6
.end method

.method public getCardCount()I
    .locals 1

    .prologue
    .line 120
    iget v0, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->previousNumCards:I

    return v0
.end method

.method public getViewport(I)Landroid/view/View;
    .locals 4
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 126
    invoke-virtual {p0}, Lcom/google/glass/search/results/ViewportHostingWebView;->getCardCount()I

    move-result v3

    add-int/lit8 v1, v3, -0x1

    .line 127
    .local v1, "maxCardIndex":I
    if-ltz p1, :cond_0

    if-le p1, v1, :cond_1

    .line 138
    :cond_0
    :goto_0
    return-object v2

    .line 131
    :cond_1
    iget-object v3, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->viewportViews:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .local v0, "extraIndex":I
    :goto_1
    if-gt v0, p1, :cond_2

    .line 132
    iget-object v3, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->viewportViews:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 135
    :cond_2
    iget-object v2, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->viewportViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_3

    .line 136
    iget-object v2, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->viewportViews:Ljava/util/List;

    invoke-direct {p0, p1}, Lcom/google/glass/search/results/ViewportHostingWebView;->createViewportView(I)Lcom/google/glass/search/results/ViewportHostingWebView$SlaveViewportView;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    :cond_3
    iget-object v2, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->viewportViews:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 242
    invoke-super {p0, p1}, Landroid/webkit/WebView;->onDraw(Landroid/graphics/Canvas;)V

    .line 243
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/glass/search/results/ViewportHostingWebView;->updateBackingFrame(Z)V

    .line 244
    return-void
.end method

.method public setViewportCountListener(Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;

    .prologue
    .line 116
    iput-object p1, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->countListener:Lcom/google/glass/search/results/ViewportHostingWebView$ViewportCountListener;

    .line 117
    return-void
.end method

.method public trackLoadPageForLogging()V
    .locals 2

    .prologue
    .line 142
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->loggedStable:Z

    .line 143
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/search/results/ViewportHostingWebView;->dataSetTime:J

    .line 144
    return-void
.end method

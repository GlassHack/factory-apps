.class public Lcom/google/glass/settings/ui/developer/LayoutOverlayView;
.super Landroid/view/View;
.source "LayoutOverlayView.java"


# static fields
.field private static final BOX_FILL_ALPHA:I = 0x40


# instance fields
.field private fillPaint:Landroid/graphics/Paint;

.field private layoutOverlay:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

.field private strokePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 23
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 31
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->strokePaint:Landroid/graphics/Paint;

    .line 34
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->strokePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->fillPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->fillPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 37
    return-void
.end method

.method private drawSection(Landroid/graphics/Canvas;Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "section"    # Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .prologue
    .line 64
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 65
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;->getColor()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v4, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->fillPaint:Landroid/graphics/Paint;

    const/16 v5, 0x40

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 68
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->getWidth()I

    move-result v3

    .line 69
    .local v3, "viewWidth":I
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->getHeight()I

    move-result v2

    .line 71
    .local v2, "viewHeight":I
    invoke-virtual {p2}, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;->getBoxes()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/developer/RectBuilder;

    .line 72
    .local v0, "box":Lcom/google/glass/settings/ui/developer/RectBuilder;
    invoke-virtual {v0, v3, v2}, Lcom/google/glass/settings/ui/developer/RectBuilder;->build(II)Landroid/graphics/Rect;

    move-result-object v1

    .line 73
    .local v1, "rect":Landroid/graphics/Rect;
    iget v5, v1, Landroid/graphics/Rect;->right:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Landroid/graphics/Rect;->right:I

    .line 74
    iget v5, v1, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v5, v5, -0x1

    iput v5, v1, Landroid/graphics/Rect;->bottom:I

    .line 75
    iget-object v5, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->fillPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 76
    iget-object v5, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->strokePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    .line 78
    .end local v0    # "box":Lcom/google/glass/settings/ui/developer/RectBuilder;
    .end local v1    # "rect":Landroid/graphics/Rect;
    :cond_0
    return-void
.end method


# virtual methods
.method public getLayoutOverlay()Lcom/google/glass/settings/ui/developer/LayoutOverlay;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->layoutOverlay:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    return-object v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 53
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 55
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->layoutOverlay:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    if-eqz v1, :cond_0

    .line 56
    iget-object v1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->layoutOverlay:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    invoke-virtual {v1}, Lcom/google/glass/settings/ui/developer/LayoutOverlay;->getSections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;

    .line 57
    .local v0, "section":Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;
    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->drawSection(Landroid/graphics/Canvas;Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;)V

    goto :goto_0

    .line 60
    .end local v0    # "section":Lcom/google/glass/settings/ui/developer/LayoutOverlay$Section;
    :cond_0
    return-void
.end method

.method public setLayoutOverlay(Lcom/google/glass/settings/ui/developer/LayoutOverlay;)V
    .locals 1
    .param p1, "newOverlay"    # Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->layoutOverlay:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    if-eq p1, v0, :cond_0

    .line 46
    iput-object p1, p0, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->layoutOverlay:Lcom/google/glass/settings/ui/developer/LayoutOverlay;

    .line 47
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/developer/LayoutOverlayView;->invalidate()V

    .line 49
    :cond_0
    return-void
.end method

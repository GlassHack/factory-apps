.class Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;
.super Landroid/view/View;
.source "CameraPreviewView.java"


# static fields
.field private static final GRID_ALPHA:I = 0x32

.field private static final GRID_WIDTH:I = 0x32


# instance fields
.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->mPaint:Landroid/graphics/Paint;

    .line 23
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->setWillNotDraw(Z)V

    .line 24
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->mPaint:Landroid/graphics/Paint;

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->setWillNotDraw(Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->mPaint:Landroid/graphics/Paint;

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->setWillNotDraw(Z)V

    .line 35
    return-void
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 43
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v1, v0, v2

    .line 44
    .local v1, "centerX":F
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v2, 0x40000000    # 2.0f

    div-float v8, v0, v2

    .line 45
    .local v8, "centerY":F
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->mPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 46
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->mPaint:Landroid/graphics/Paint;

    const v2, -0xff0100

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 47
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->mPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x40400000    # 3.0f

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 48
    const/4 v2, 0x0

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->mPaint:Landroid/graphics/Paint;

    move-object v0, p1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 51
    iget-object v0, p0, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->mPaint:Landroid/graphics/Paint;

    const/16 v2, 0x32

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 52
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v11, v0, 0x32

    .line 53
    .local v11, "vertLines":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    div-int/lit8 v9, v0, 0x32

    .line 54
    .local v9, "horizLines":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_0

    .line 55
    float-to-int v0, v8

    mul-int/lit8 v2, v10, 0x32

    sub-int v13, v0, v2

    .line 56
    .local v13, "y":I
    const/4 v3, 0x0

    int-to-float v4, v13

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    int-to-float v6, v13

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 57
    float-to-int v0, v8

    mul-int/lit8 v2, v10, 0x32

    add-int v13, v0, v2

    .line 58
    const/4 v3, 0x0

    int-to-float v4, v13

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v0

    int-to-float v5, v0

    int-to-float v6, v13

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 54
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 60
    .end local v13    # "y":I
    :cond_0
    const/4 v10, 0x0

    :goto_1
    if-ge v10, v11, :cond_1

    .line 61
    float-to-int v0, v1

    mul-int/lit8 v2, v10, 0x32

    sub-int v12, v0, v2

    .line 62
    .local v12, "x":I
    int-to-float v3, v12

    const/4 v4, 0x0

    int-to-float v5, v12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 63
    float-to-int v0, v1

    mul-int/lit8 v2, v10, 0x32

    add-int v12, v0, v2

    .line 64
    int-to-float v3, v12

    const/4 v4, 0x0

    int-to-float v5, v12

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v0

    int-to-float v6, v0

    iget-object v7, p0, Lcom/google/android/apps/lightcycle/calibration/CameraPreviewView;->mPaint:Landroid/graphics/Paint;

    move-object v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 60
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 66
    .end local v12    # "x":I
    :cond_1
    return-void
.end method

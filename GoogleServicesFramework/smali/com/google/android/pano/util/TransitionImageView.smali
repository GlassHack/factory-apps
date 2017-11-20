.class Lcom/google/android/pano/util/TransitionImageView;
.super Landroid/view/View;
.source "TransitionImageView.java"


# instance fields
.field private mAlphaDiff:F

.field private mBgAlphaDiff:I

.field private mBgBlueDiff:I

.field private mBgGreenDiff:I

.field private mBgHasDiff:Z

.field private mBgRedDiff:I

.field private mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

.field private mClipBottomDiff:F

.field private mClipLeftDiff:F

.field private mClipRect:Landroid/graphics/RectF;

.field private mClipRightDiff:F

.field private mClipTopDiff:F

.field private mColorMatrix:Landroid/graphics/ColorMatrix;

.field private mDst:Lcom/google/android/pano/util/TransitionImage;

.field private mDstRect:Landroid/graphics/Rect;

.field private mExcludeRect:Landroid/graphics/RectF;

.field private mProgress:F

.field private mSaturationDiff:F

.field private mScaleX:F

.field private mScaleXDiff:F

.field private mScaleY:F

.field private mScaleYDiff:F

.field private mSrc:Lcom/google/android/pano/util/TransitionImage;

.field private mSrcBgColor:I

.field private mSrcClipRect:Landroid/graphics/RectF;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcUnclipRect:Landroid/graphics/RectF;

.field private mTranslationXDiff:F

.field private mTranslationYDiff:F

.field private mUnclipCenterXDiff:F

.field private mUnclipCenterYDiff:F

.field private mUnclipHeightDiffBeforeScale:F

.field private mUnclipRect:Landroid/graphics/Rect;

.field private mUnclipWidthDiffBeforeScale:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/pano/util/TransitionImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 77
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/pano/util/TransitionImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 84
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    .line 64
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    .line 65
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    .line 66
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mDstRect:Landroid/graphics/Rect;

    .line 68
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRect:Landroid/graphics/RectF;

    .line 69
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRect:Landroid/graphics/Rect;

    .line 71
    new-instance v0, Landroid/graphics/ColorMatrix;

    invoke-direct {v0}, Landroid/graphics/ColorMatrix;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    .line 86
    invoke-virtual {p0, v1}, Lcom/google/android/pano/util/TransitionImageView;->setPivotX(F)V

    .line 87
    invoke-virtual {p0, v1}, Lcom/google/android/pano/util/TransitionImageView;->setPivotY(F)V

    .line 88
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/android/pano/util/TransitionImageView;->setWillNotDraw(Z)V

    .line 89
    return-void
.end method

.method private calculateDiffs()V
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 145
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v4, v5}, Lcom/google/android/pano/util/TransitionImage;->getOptimizedRect(Landroid/graphics/Rect;)V

    .line 146
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleX:F

    .line 147
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDstRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleY:F

    .line 148
    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleX:F

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleXDiff:F

    .line 149
    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleY:F

    sub-float/2addr v4, v6

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleYDiff:F

    .line 150
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->left:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mTranslationXDiff:F

    .line 151
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mTranslationYDiff:F

    .line 153
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 155
    .local v0, "dstClipRect":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getClippedRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 156
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mDstRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v0, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 158
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleX:F

    div-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->left:F

    .line 159
    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleX:F

    div-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->right:F

    .line 160
    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleY:F

    div-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->top:F

    .line 161
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleY:F

    div-float/2addr v4, v5

    iput v4, v0, Landroid/graphics/RectF;->bottom:F

    .line 162
    iget v4, v0, Landroid/graphics/RectF;->left:F

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipLeftDiff:F

    .line 163
    iget v4, v0, Landroid/graphics/RectF;->right:F

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRightDiff:F

    .line 164
    iget v4, v0, Landroid/graphics/RectF;->top:F

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipTopDiff:F

    .line 165
    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipBottomDiff:F

    .line 167
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    .line 169
    .local v2, "dstUnclipRect":Landroid/graphics/RectF;
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getUnclippedRect()Landroid/graphics/RectF;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 170
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDstRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    neg-int v4, v4

    int-to-float v4, v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mDstRect:Landroid/graphics/Rect;

    iget v5, v5, Landroid/graphics/Rect;->top:I

    neg-int v5, v5

    int-to-float v5, v5

    invoke-virtual {v2, v4, v5}, Landroid/graphics/RectF;->offset(FF)V

    .line 171
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipWidthDiffBeforeScale:F

    .line 172
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipHeightDiffBeforeScale:F

    .line 174
    iget v4, v2, Landroid/graphics/RectF;->left:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleX:F

    div-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->left:F

    .line 175
    iget v4, v2, Landroid/graphics/RectF;->right:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleX:F

    div-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->right:F

    .line 176
    iget v4, v2, Landroid/graphics/RectF;->top:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleY:F

    div-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->top:F

    .line 177
    iget v4, v2, Landroid/graphics/RectF;->bottom:F

    iget v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleY:F

    div-float/2addr v4, v5

    iput v4, v2, Landroid/graphics/RectF;->bottom:F

    .line 178
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerX()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipCenterXDiff:F

    .line 179
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipCenterYDiff:F

    .line 181
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getAlpha()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v5}, Lcom/google/android/pano/util/TransitionImage;->getAlpha()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mAlphaDiff:F

    .line 182
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getBackground()I

    move-result v3

    .line 183
    .local v3, "srcColor":I
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getBackground()I

    move-result v1

    .line 184
    .local v1, "dstColor":I
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->alpha(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgAlphaDiff:I

    .line 185
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->red(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgRedDiff:I

    .line 186
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgGreenDiff:I

    .line 187
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v5

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgBlueDiff:I

    .line 188
    iget-object v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v4}, Lcom/google/android/pano/util/TransitionImage;->getSaturation()F

    move-result v4

    iget-object v5, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v5}, Lcom/google/android/pano/util/TransitionImage;->getSaturation()F

    move-result v5

    sub-float/2addr v4, v5

    iput v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mSaturationDiff:F

    .line 189
    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgAlphaDiff:I

    if-nez v4, :cond_0

    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgRedDiff:I

    if-nez v4, :cond_0

    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgGreenDiff:I

    if-nez v4, :cond_0

    iget v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgBlueDiff:I

    if-eqz v4, :cond_1

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iput-boolean v4, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgHasDiff:Z

    .line 191
    return-void

    .line 189
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private initializeView()V
    .locals 6

    .prologue
    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 110
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v1}, Lcom/google/android/pano/util/TransitionImage;->getBitmap()Landroid/graphics/drawable/BitmapDrawable;

    move-result-object v1

    iput-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    .line 111
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/BitmapDrawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 113
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Lcom/google/android/pano/util/TransitionImage;->getOptimizedRect(Landroid/graphics/Rect;)V

    .line 115
    invoke-virtual {p0}, Lcom/google/android/pano/util/TransitionImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 116
    .local v0, "params":Landroid/view/ViewGroup$LayoutParams;
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 117
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 120
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImage;->getClippedRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 121
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 124
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImage;->getUnclippedRect()Landroid/graphics/RectF;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 125
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    neg-int v2, v2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    neg-int v3, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 128
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v1}, Lcom/google/android/pano/util/TransitionImage;->getAlpha()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImage;->getAlpha()F

    move-result v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v1}, Lcom/google/android/pano/util/TransitionImage;->getSaturation()F

    move-result v1

    cmpl-float v1, v1, v4

    if-eqz v1, :cond_1

    .line 132
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImage;->getSaturation()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 133
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v2, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v2, v3}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 135
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v1}, Lcom/google/android/pano/util/TransitionImage;->getBackground()I

    move-result v1

    iput v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    .line 136
    iget v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    if-eqz v1, :cond_2

    .line 137
    iget v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    invoke-virtual {p0, v1}, Lcom/google/android/pano/util/TransitionImageView;->setBackgroundColor(I)V

    .line 138
    invoke-virtual {p0}, Lcom/google/android/pano/util/TransitionImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v2}, Lcom/google/android/pano/util/TransitionImage;->getAlpha()F

    move-result v2

    mul-float/2addr v2, v5

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 141
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/pano/util/TransitionImageView;->invalidate()V

    .line 142
    return-void
.end method


# virtual methods
.method public clearExcludeClipRect()V
    .locals 1

    .prologue
    .line 294
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mExcludeRect:Landroid/graphics/RectF;

    .line 295
    return-void
.end method

.method public getDestTransition()Lcom/google/android/pano/util/TransitionImage;
    .locals 1

    .prologue
    .line 198
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    return-object v0
.end method

.method public getSourceTransition()Lcom/google/android/pano/util/TransitionImage;
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    return-object v0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    instance-of v0, v0, Lcom/google/android/pano/widget/RefcountBitmapDrawable;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    check-cast v0, Lcom/google/android/pano/widget/RefcountBitmapDrawable;

    invoke-virtual {v0}, Lcom/google/android/pano/widget/RefcountBitmapDrawable;->getRefcountObject()Lcom/google/android/pano/widget/RefcountObject;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/pano/widget/RefcountObject;->releaseRef()I

    .line 106
    :cond_0
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 107
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 266
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 267
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    if-nez v1, :cond_0

    .line 277
    :goto_0
    return-void

    .line 270
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 271
    .local v0, "count":I
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRect:Landroid/graphics/RectF;

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 272
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mExcludeRect:Landroid/graphics/RectF;

    if-eqz v1, :cond_1

    .line 273
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mExcludeRect:Landroid/graphics/RectF;

    sget-object v2, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;Landroid/graphics/Region$Op;)Z

    .line 275
    :cond_1
    iget-object v1, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/BitmapDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 276
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0
.end method

.method public setDestTransition(Lcom/google/android/pano/util/TransitionImage;)V
    .locals 0
    .param p1, "dst"    # Lcom/google/android/pano/util/TransitionImage;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageView;->mDst:Lcom/google/android/pano/util/TransitionImage;

    .line 98
    invoke-direct {p0}, Lcom/google/android/pano/util/TransitionImageView;->calculateDiffs()V

    .line 99
    return-void
.end method

.method public setExcludeClipRect(Landroid/graphics/RectF;)V
    .locals 5
    .param p1, "rect"    # Landroid/graphics/RectF;

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    .line 280
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mExcludeRect:Landroid/graphics/RectF;

    if-nez v0, :cond_0

    .line 281
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mExcludeRect:Landroid/graphics/RectF;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mExcludeRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 285
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mExcludeRect:Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/google/android/pano/util/TransitionImageView;->getX()F

    move-result v1

    neg-float v1, v1

    invoke-virtual {p0}, Lcom/google/android/pano/util/TransitionImageView;->getY()F

    move-result v2

    neg-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/RectF;->offset(FF)V

    .line 287
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mExcludeRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleXDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 288
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mExcludeRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->right:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleXDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 289
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mExcludeRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->top:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleYDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 290
    iget-object v0, p0, Lcom/google/android/pano/util/TransitionImageView;->mExcludeRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->bottom:F

    iget v2, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleYDiff:F

    iget v3, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v2, v3

    add-float/2addr v2, v4

    div-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 291
    return-void
.end method

.method public setProgress(F)V
    .locals 13
    .param p1, "progress"    # F

    .prologue
    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v11, 0x0

    const/high16 v10, 0x3f000000    # 0.5f

    .line 202
    iput p1, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    .line 205
    iget v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleXDiff:F

    iget v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    invoke-virtual {p0, v7}, Lcom/google/android/pano/util/TransitionImageView;->setScaleX(F)V

    .line 206
    iget v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mScaleYDiff:F

    iget v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v7, v8

    add-float/2addr v7, v9

    invoke-virtual {p0, v7}, Lcom/google/android/pano/util/TransitionImageView;->setScaleY(F)V

    .line 209
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    iget v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mTranslationXDiff:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/google/android/pano/util/TransitionImageView;->setTranslationX(F)V

    .line 210
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcRect:Landroid/graphics/Rect;

    iget v7, v7, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    iget v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mTranslationYDiff:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    invoke-virtual {p0, v7}, Lcom/google/android/pano/util/TransitionImageView;->setTranslationY(F)V

    .line 213
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerX()F

    move-result v7

    iget v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipCenterXDiff:F

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v8, v9

    add-float v1, v7, v8

    .line 214
    .local v1, "unclipCenterX":F
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->centerY()F

    move-result v7

    iget v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipCenterYDiff:F

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v8, v9

    add-float v2, v7, v8

    .line 215
    .local v2, "unclipCenterY":F
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    iget v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipWidthDiffBeforeScale:F

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v8, v9

    add-float v6, v7, v8

    .line 217
    .local v6, "unclipWidthBeforeScale":F
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcUnclipRect:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    iget v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipHeightDiffBeforeScale:F

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v8, v9

    add-float v4, v7, v8

    .line 219
    .local v4, "unclipHeightBeforeScale":F
    invoke-virtual {p0}, Lcom/google/android/pano/util/TransitionImageView;->getScaleX()F

    move-result v7

    div-float v5, v6, v7

    .line 220
    .local v5, "unclipWidth":F
    invoke-virtual {p0}, Lcom/google/android/pano/util/TransitionImageView;->getScaleY()F

    move-result v7

    div-float v3, v4, v7

    .line 221
    .local v3, "unclipHeight":F
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRect:Landroid/graphics/Rect;

    mul-float v8, v5, v10

    sub-float v8, v1, v8

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->left:I

    .line 222
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRect:Landroid/graphics/Rect;

    mul-float v8, v3, v10

    sub-float v8, v2, v8

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->top:I

    .line 223
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRect:Landroid/graphics/Rect;

    mul-float v8, v5, v10

    add-float/2addr v8, v1

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->right:I

    .line 224
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRect:Landroid/graphics/Rect;

    mul-float v8, v3, v10

    add-float/2addr v8, v2

    float-to-int v8, v8

    iput v8, v7, Landroid/graphics/Rect;->bottom:I

    .line 227
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    iget-object v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mUnclipRect:Landroid/graphics/Rect;

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(Landroid/graphics/Rect;)V

    .line 230
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipLeftDiff:F

    iget v10, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->left:F

    .line 231
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipTopDiff:F

    iget v10, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->top:F

    .line 232
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRightDiff:F

    iget v10, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->right:F

    .line 233
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipRect:Landroid/graphics/RectF;

    iget-object v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcClipRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mClipBottomDiff:F

    iget v10, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    iput v8, v7, Landroid/graphics/RectF;->bottom:F

    .line 236
    iget v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mAlphaDiff:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_0

    .line 237
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v7}, Lcom/google/android/pano/util/TransitionImage;->getAlpha()F

    move-result v7

    iget v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mAlphaDiff:F

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v8, v9

    add-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v0, v7

    .line 238
    .local v0, "alpha":I
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/BitmapDrawable;->setAlpha(I)V

    .line 239
    invoke-virtual {p0}, Lcom/google/android/pano/util/TransitionImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 240
    invoke-virtual {p0}, Lcom/google/android/pano/util/TransitionImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 243
    .end local v0    # "alpha":I
    :cond_0
    iget v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mSaturationDiff:F

    cmpl-float v7, v7, v11

    if-eqz v7, :cond_1

    .line 244
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    iget-object v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    invoke-virtual {v8}, Lcom/google/android/pano/util/TransitionImage;->getSaturation()F

    move-result v8

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mSaturationDiff:F

    iget v10, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v9, v10

    add-float/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/graphics/ColorMatrix;->setSaturation(F)V

    .line 245
    iget-object v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mBitmapDrawable:Landroid/graphics/drawable/BitmapDrawable;

    new-instance v8, Landroid/graphics/ColorMatrixColorFilter;

    iget-object v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mColorMatrix:Landroid/graphics/ColorMatrix;

    invoke-direct {v8, v9}, Landroid/graphics/ColorMatrixColorFilter;-><init>(Landroid/graphics/ColorMatrix;)V

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/BitmapDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 249
    :cond_1
    iget-boolean v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgHasDiff:Z

    if-eqz v7, :cond_2

    .line 250
    iget v7, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    invoke-static {v7}, Landroid/graphics/Color;->alpha(I)I

    move-result v7

    iget v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgAlphaDiff:I

    int-to-float v8, v8

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v8, v9

    float-to-int v8, v8

    add-int/2addr v7, v8

    iget v8, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    invoke-static {v8}, Landroid/graphics/Color;->red(I)I

    move-result v8

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgRedDiff:I

    int-to-float v9, v9

    iget v10, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v9, v10

    float-to-int v9, v9

    add-int/2addr v8, v9

    iget v9, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    invoke-static {v9}, Landroid/graphics/Color;->green(I)I

    move-result v9

    iget v10, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgGreenDiff:I

    int-to-float v10, v10

    iget v11, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v10, v11

    float-to-int v10, v10

    add-int/2addr v9, v10

    iget v10, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrcBgColor:I

    invoke-static {v10}, Landroid/graphics/Color;->blue(I)I

    move-result v10

    iget v11, p0, Lcom/google/android/pano/util/TransitionImageView;->mBgBlueDiff:I

    int-to-float v11, v11

    iget v12, p0, Lcom/google/android/pano/util/TransitionImageView;->mProgress:F

    mul-float/2addr v11, v12

    float-to-int v11, v11

    add-int/2addr v10, v11

    invoke-static {v7, v8, v9, v10}, Landroid/graphics/Color;->argb(IIII)I

    move-result v7

    invoke-virtual {p0, v7}, Lcom/google/android/pano/util/TransitionImageView;->setBackgroundColor(I)V

    .line 257
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/pano/util/TransitionImageView;->invalidate()V

    .line 258
    return-void
.end method

.method public setSourceTransition(Lcom/google/android/pano/util/TransitionImage;)V
    .locals 0
    .param p1, "src"    # Lcom/google/android/pano/util/TransitionImage;

    .prologue
    .line 92
    iput-object p1, p0, Lcom/google/android/pano/util/TransitionImageView;->mSrc:Lcom/google/android/pano/util/TransitionImage;

    .line 93
    invoke-direct {p0}, Lcom/google/android/pano/util/TransitionImageView;->initializeView()V

    .line 94
    return-void
.end method

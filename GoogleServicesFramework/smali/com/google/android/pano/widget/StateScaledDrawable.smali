.class public Lcom/google/android/pano/widget/StateScaledDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "StateScaledDrawable.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;
    }
.end annotation


# instance fields
.field private mAlpha:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mScale:Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

.field private mScales:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "scales"    # [Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 28
    const/16 v0, 0xff

    iput v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mAlpha:I

    .line 32
    iput-object p1, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 33
    iput-object p2, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScales:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    .line 34
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    .line 68
    iget-object v7, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_0

    .line 93
    :goto_0
    return-void

    .line 71
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/pano/widget/StateScaledDrawable;->copyBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 72
    .local v1, "bounds":Landroid/graphics/Rect;
    const/high16 v4, 0x3f800000    # 1.0f

    .line 73
    .local v4, "scale":F
    iget v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mAlpha:I

    .line 74
    .local v0, "alpha":I
    iget-object v7, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScale:Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    if-eqz v7, :cond_1

    .line 75
    iget-object v7, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScale:Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    iget v4, v7, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->scale:F

    .line 76
    iget-object v7, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScale:Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    iget v0, v7, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->alpha:I

    .line 78
    :cond_1
    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v7, v4, v7

    if-eqz v7, :cond_2

    .line 79
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    iget v8, v1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v8

    int-to-float v2, v7

    .line 80
    .local v2, "height":F
    iget v7, v1, Landroid/graphics/Rect;->right:I

    iget v8, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    int-to-float v5, v7

    .line 81
    .local v5, "width":F
    const-string v7, "StateScaledDrawable"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Height is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " width is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " scale is "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    mul-float v7, v4, v2

    sub-float/2addr v7, v2

    div-float v3, v7, v10

    .line 83
    .local v3, "heightAdjust":F
    mul-float v7, v4, v5

    sub-float/2addr v7, v5

    div-float v6, v7, v10

    .line 85
    .local v6, "widthAdjust":F
    iget v7, v1, Landroid/graphics/Rect;->left:I

    int-to-float v7, v7

    sub-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->left:I

    .line 86
    iget v7, v1, Landroid/graphics/Rect;->right:I

    int-to-float v7, v7

    add-float/2addr v7, v6

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->right:I

    .line 87
    iget v7, v1, Landroid/graphics/Rect;->top:I

    int-to-float v7, v7

    sub-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->top:I

    .line 88
    iget v7, v1, Landroid/graphics/Rect;->bottom:I

    int-to-float v7, v7

    add-float/2addr v7, v3

    float-to-int v7, v7

    iput v7, v1, Landroid/graphics/Rect;->bottom:I

    .line 90
    .end local v2    # "height":F
    .end local v3    # "heightAdjust":F
    .end local v5    # "width":F
    .end local v6    # "widthAdjust":F
    :cond_2
    iget-object v7, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 91
    iget-object v7, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 92
    iget-object v7, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    goto :goto_0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 112
    const/4 v0, -0x3

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 117
    const/4 v0, 0x1

    return v0
.end method

.method public onStateChange([I)Z
    .locals 3
    .param p1, "state"    # [I

    .prologue
    .line 132
    const/4 v1, 0x0

    .line 133
    .local v1, "props":Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;
    iget-object v2, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScales:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    if-eqz v2, :cond_0

    .line 134
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScales:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 135
    iget-object v2, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScales:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    aget-object v2, v2, v0

    iget-object v2, v2, Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;->state:[I

    invoke-static {v2, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 136
    iget-object v2, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScales:[Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    aget-object v1, v2, v0

    .line 141
    .end local v0    # "i":I
    :cond_0
    iget-object v2, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScale:Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    if-eq v1, v2, :cond_2

    .line 142
    iput-object v1, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mScale:Lcom/google/android/pano/widget/StateScaledDrawable$StateProperties;

    .line 143
    const/4 v2, 0x1

    .line 145
    :goto_1
    return v2

    .line 134
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 145
    .end local v0    # "i":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_1
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 97
    and-int/lit16 v0, p1, 0xff

    iput v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mAlpha:I

    .line 98
    invoke-virtual {p0}, Lcom/google/android/pano/widget/StateScaledDrawable;->invalidateSelf()V

    .line 99
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2
    .param p1, "cf"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 103
    iput-object p1, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 104
    iget-object v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 106
    invoke-virtual {p0}, Lcom/google/android/pano/widget/StateScaledDrawable;->invalidateSelf()V

    .line 108
    :cond_0
    return-void
.end method

.method public setState([I)Z
    .locals 2
    .param p1, "state"    # [I

    .prologue
    .line 122
    const/4 v0, 0x0

    .line 123
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/google/android/pano/widget/StateScaledDrawable;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    .line 126
    :cond_0
    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v0, v1

    .line 127
    return v0
.end method

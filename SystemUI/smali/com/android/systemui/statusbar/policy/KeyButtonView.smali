.class public Lcom/android/systemui/statusbar/policy/KeyButtonView;
.super Landroid/widget/ImageView;
.source "KeyButtonView.java"


# instance fields
.field final GLOW_MAX_SCALE_FACTOR:F

.field mAnimateToQuiescent:Landroid/animation/Animator;

.field mCheckLongPress:Ljava/lang/Runnable;

.field mCode:I

.field mDownTime:J

.field mDrawingAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field mGlowAlpha:F

.field mGlowBG:Landroid/graphics/drawable/Drawable;

.field mGlowHeight:I

.field mGlowScale:F

.field mGlowWidth:I

.field mPressedAnim:Landroid/animation/AnimatorSet;

.field mQuiescentAlpha:F
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "drawing"
    .end annotation
.end field

.field mRect:Landroid/graphics/RectF;

.field mSupportsLongpress:Z

.field mTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 87
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    const v1, 0x3fe66666    # 1.8f

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->GLOW_MAX_SCALE_FACTOR:F

    .line 57
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    iput v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    .line 58
    iput v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    .line 60
    const v1, 0x3f333333    # 0.7f

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    .line 62
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 63
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    .line 65
    new-instance v1, Landroid/animation/ObjectAnimator;

    invoke-direct {v1}, Landroid/animation/ObjectAnimator;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    .line 67
    new-instance v1, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;

    invoke-direct {v1, p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView$1;-><init>(Lcom/android/systemui/statusbar/policy/KeyButtonView;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    .line 89
    sget-object v1, Lcom/android/systemui/R$styleable;->KeyButtonView:[I

    invoke-virtual {p1, p2, v1, p3, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 92
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    .line 94
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    .line 96
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    .line 97
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDrawingAlpha(F)V

    .line 98
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 99
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowWidth:I

    .line 100
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowHeight:I

    .line 103
    :cond_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setClickable(Z)V

    .line 106
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    .line 107
    return-void
.end method

.method private animateToQuiescent()Landroid/animation/ObjectAnimator;
    .locals 4

    .prologue
    .line 145
    const-string v0, "drawingAlpha"

    const/4 v1, 0x1

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    aput v3, v1, v2

    invoke-static {p0, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getDrawingAlpha()F
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    return v0
.end method

.method public getGlowAlpha()F
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 166
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    goto :goto_0
.end method

.method public getGlowScale()F
    .locals 1

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 177
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    goto :goto_0
.end method

.method public getQuiescentAlpha()F
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v10, 0x3f000000    # 0.5f

    .line 111
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 113
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v5

    .line 114
    .local v5, "w":I
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v3

    .line 115
    .local v3, "h":I
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowWidth:I

    int-to-float v6, v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowHeight:I

    int-to-float v7, v7

    div-float v0, v6, v7

    .line 116
    .local v0, "aspect":F
    int-to-float v6, v3

    mul-float/2addr v6, v0

    float-to-int v2, v6

    .line 117
    .local v2, "drawW":I
    move v1, v3

    .line 118
    .local v1, "drawH":I
    sub-int v6, v2, v5

    div-int/lit8 v4, v6, 0x2

    .line 119
    .local v4, "margin":I
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    int-to-float v8, v5

    mul-float/2addr v8, v10

    int-to-float v9, v3

    mul-float/2addr v9, v10

    invoke-virtual {p1, v6, v7, v8, v9}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 120
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    neg-int v7, v4

    const/4 v8, 0x0

    sub-int v9, v2, v4

    invoke-virtual {v6, v7, v8, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 121
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    iget v8, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    mul-float/2addr v7, v8

    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-virtual {v6, v7}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 122
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 123
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 124
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v5

    iput v7, v6, Landroid/graphics/RectF;->right:F

    .line 125
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mRect:Landroid/graphics/RectF;

    int-to-float v7, v3

    iput v7, v6, Landroid/graphics/RectF;->bottom:F

    .line 127
    .end local v0    # "aspect":F
    .end local v1    # "drawH":I
    .end local v2    # "drawW":I
    .end local v3    # "h":I
    .end local v4    # "margin":I
    .end local v5    # "w":I
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 128
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/16 v7, 0x20

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 239
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 242
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 298
    :cond_0
    :goto_0
    return v5

    .line 245
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    .line 246
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 247
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_1

    .line 248
    iget-wide v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    invoke-virtual {p0, v4, v4, v6, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 253
    :goto_1
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 254
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 255
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v6

    int-to-long v6, v6

    invoke-virtual {p0, v4, v6, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 251
    :cond_1
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performHapticFeedback(I)Z

    goto :goto_1

    .line 259
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v6

    float-to-int v2, v6

    .line 260
    .local v2, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    float-to-int v3, v6

    .line 261
    .local v3, "y":I
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v2, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v2, v6, :cond_2

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    neg-int v6, v6

    if-lt v3, v6, :cond_2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mTouchSlop:I

    add-int/2addr v6, v7

    if-ge v3, v6, :cond_2

    move v4, v5

    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    goto :goto_0

    .line 267
    .end local v2    # "x":I
    .end local v3    # "y":I
    :pswitch_2
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 268
    iget v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v4, :cond_3

    .line 269
    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 271
    :cond_3
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 272
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 276
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v1

    .line 277
    .local v1, "doIt":Z
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setPressed(Z)V

    .line 278
    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    if-eqz v6, :cond_6

    .line 279
    if-eqz v1, :cond_5

    .line 280
    invoke-virtual {p0, v5, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    .line 281
    invoke-virtual {p0, v5}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendAccessibilityEvent(I)V

    .line 282
    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->playSoundEffect(I)V

    .line 292
    :cond_4
    :goto_2
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mSupportsLongpress:Z

    if-eqz v4, :cond_0

    .line 293
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCheckLongPress:Ljava/lang/Runnable;

    invoke-virtual {p0, v4}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto/16 :goto_0

    .line 284
    :cond_5
    invoke-virtual {p0, v5, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(II)V

    goto :goto_2

    .line 288
    :cond_6
    if-eqz v1, :cond_4

    .line 289
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->performClick()Z

    goto :goto_2

    .line 242
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method sendEvent(II)V
    .locals 2
    .param p1, "action"    # I
    .param p2, "flags"    # I

    .prologue
    .line 302
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->sendEvent(IIJ)V

    .line 303
    return-void
.end method

.method sendEvent(IIJ)V
    .locals 13
    .param p1, "action"    # I
    .param p2, "flags"    # I
    .param p3, "when"    # J

    .prologue
    .line 306
    and-int/lit16 v1, p2, 0x80

    if-eqz v1, :cond_0

    const/4 v7, 0x1

    .line 307
    .local v7, "repeatCount":I
    :goto_0
    new-instance v0, Landroid/view/KeyEvent;

    iget-wide v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDownTime:J

    iget v6, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mCode:I

    const/4 v8, 0x0

    const/4 v9, -0x1

    const/4 v10, 0x0

    or-int/lit8 v3, p2, 0x8

    or-int/lit8 v11, v3, 0x40

    const/16 v12, 0x101

    move-wide/from16 v3, p3

    move v5, p1

    invoke-direct/range {v0 .. v12}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 311
    .local v0, "ev":Landroid/view/KeyEvent;
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 313
    return-void

    .line 306
    .end local v0    # "ev":Landroid/view/KeyEvent;
    .end local v7    # "repeatCount":I
    :cond_0
    const/4 v7, 0x0

    goto :goto_0
.end method

.method public setDrawingAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 160
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setAlpha(I)V

    .line 161
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    .line 162
    return-void
.end method

.method public setGlowAlpha(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 170
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 173
    :goto_0
    return-void

    .line 171
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    .line 172
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->invalidate()V

    goto :goto_0
.end method

.method public setGlowScale(F)V
    .locals 9
    .param p1, "x"    # F

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const v5, 0x3f4ccccc    # 0.79999995f

    .line 181
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_0

    .line 202
    :goto_0
    return-void

    .line 182
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getWidth()I

    move-result v4

    int-to-float v3, v4

    .line 184
    .local v3, "w":F
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getHeight()I

    move-result v4

    int-to-float v0, v4

    .line 189
    .local v0, "h":F
    mul-float v4, v3, v5

    div-float/2addr v4, v7

    add-float v1, v4, v6

    .line 190
    .local v1, "rx":F
    mul-float v4, v0, v5

    div-float/2addr v4, v7

    add-float v2, v4, v6

    .line 191
    .local v2, "ry":F
    new-instance v4, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getLeft()I

    move-result v5

    int-to-float v5, v5

    sub-float/2addr v5, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getTop()I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v6, v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getRight()I

    move-result v7

    int-to-float v7, v7

    add-float/2addr v7, v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getBottom()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v8, v2

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-static {p0, v4}, Lcom/android/systemui/SwipeHelper;->invalidateGlobalRegion(Landroid/view/View;Landroid/graphics/RectF;)V

    .line 200
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    goto :goto_0
.end method

.method public setPressed(Z)V
    .locals 9
    .param p1, "pressed"    # Z

    .prologue
    const/4 v8, 0x2

    const v4, 0x3fe66666    # 1.8f

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 205
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_3

    .line 206
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->isPressed()Z

    move-result v1

    if-eq p1, v1, :cond_3

    .line 207
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPressedAnim:Landroid/animation/AnimatorSet;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 208
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPressedAnim:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    .line 210
    :cond_0
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mPressedAnim:Landroid/animation/AnimatorSet;

    .line 211
    .local v0, "as":Landroid/animation/AnimatorSet;
    if-eqz p1, :cond_4

    .line 212
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    cmpg-float v1, v1, v4

    if-gez v1, :cond_1

    .line 213
    iput v4, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowScale:F

    .line 214
    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    iget v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    cmpg-float v1, v1, v2

    if-gez v1, :cond_2

    .line 215
    iget v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    iput v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowAlpha:F

    .line 216
    :cond_2
    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDrawingAlpha(F)V

    .line 217
    new-array v1, v8, [Landroid/animation/Animator;

    const-string v2, "glowAlpha"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "glowScale"

    new-array v3, v6, [F

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 221
    const-wide/16 v1, 0x32

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 232
    :goto_0
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 235
    .end local v0    # "as":Landroid/animation/AnimatorSet;
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setPressed(Z)V

    .line 236
    return-void

    .line 223
    .restart local v0    # "as":Landroid/animation/AnimatorSet;
    :cond_4
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 224
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->animateToQuiescent()Landroid/animation/ObjectAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    .line 225
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    const-string v2, "glowAlpha"

    new-array v3, v6, [F

    const/4 v4, 0x0

    aput v4, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v5

    const-string v2, "glowScale"

    new-array v3, v6, [F

    aput v7, v3, v5

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 230
    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    goto :goto_0
.end method

.method public setQuiescentAlpha(FZ)V
    .locals 2
    .param p1, "alpha"    # F
    .param p2, "animate"    # Z

    .prologue
    .line 131
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 132
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 133
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mDrawingAlpha:F

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    .line 142
    :goto_0
    return-void

    .line 134
    :cond_0
    iput p1, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    .line 136
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mGlowBG:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    .line 137
    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->animateToQuiescent()Landroid/animation/ObjectAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    .line 138
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mAnimateToQuiescent:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 140
    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/policy/KeyButtonView;->mQuiescentAlpha:F

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyButtonView;->setDrawingAlpha(F)V

    goto :goto_0
.end method

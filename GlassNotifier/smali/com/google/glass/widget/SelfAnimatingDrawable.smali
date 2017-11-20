.class public Lcom/google/glass/widget/SelfAnimatingDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "SelfAnimatingDrawable.java"

# interfaces
.implements Landroid/graphics/drawable/Animatable;
.implements Landroid/graphics/drawable/Drawable$Callback;
.implements Ljava/lang/Runnable;


# static fields
.field private static final DEFAULT_FRAME_DURATION_MS:J = 0x32L


# instance fields
.field private final animation:Landroid/view/animation/Animation;

.field private final clock:Lcom/google/glass/time/Clock;

.field private currentFrameTime:J

.field private final drawable:Landroid/graphics/drawable/Drawable;

.field private running:Z

.field private final transformation:Landroid/view/animation/Transformation;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 49
    invoke-static {}, Lcom/google/glass/time/ClockProvider;->getInstance()Lcom/google/glass/time/ClockProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/time/ClockProvider;->get()Lcom/google/glass/time/Clock;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/widget/SelfAnimatingDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;Lcom/google/glass/time/Clock;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/view/animation/Animation;Lcom/google/glass/time/Clock;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "animation"    # Landroid/view/animation/Animation;
    .param p3, "clock"    # Lcom/google/glass/time/Clock;

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    .line 54
    iput-object p2, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->animation:Landroid/view/animation/Animation;

    .line 55
    iput-object p3, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->clock:Lcom/google/glass/time/Clock;

    .line 56
    new-instance v0, Landroid/view/animation/Transformation;

    invoke-direct {v0}, Landroid/view/animation/Transformation;-><init>()V

    iput-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->transformation:Landroid/view/animation/Transformation;

    .line 57
    return-void
.end method

.method private nextFrame()V
    .locals 4

    .prologue
    .line 201
    invoke-virtual {p0, p0}, Lcom/google/glass/widget/SelfAnimatingDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 202
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x32

    add-long/2addr v0, v2

    invoke-virtual {p0, p0, v0, v1}, Lcom/google/glass/widget/SelfAnimatingDrawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    .line 203
    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v1

    .line 99
    .local v1, "saveCount":I
    iget-object v3, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->animation:Landroid/view/animation/Animation;

    iget-wide v4, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->currentFrameTime:J

    iget-object v6, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3, v4, v5, v6}, Landroid/view/animation/Animation;->getTransformation(JLandroid/view/animation/Transformation;)Z

    move-result v2

    .line 100
    .local v2, "stillRunning":Z
    if-nez v2, :cond_0

    .line 101
    invoke-virtual {p0, p0}, Lcom/google/glass/widget/SelfAnimatingDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 104
    :cond_0
    iget-object v3, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v3}, Landroid/view/animation/Transformation;->getMatrix()Landroid/graphics/Matrix;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 106
    iget-object v3, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    .line 107
    .local v0, "oldAlpha":I
    iget-object v3, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->transformation:Landroid/view/animation/Transformation;

    invoke-virtual {v4}, Landroid/view/animation/Transformation;->getAlpha()F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 108
    iget-object v3, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 109
    iget-object v3, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 111
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 112
    return-void
.end method

.method public getAlpha()I
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v0

    return v0
.end method

.method public getAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->animation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getIntrinsicHeight()I
    .locals 1

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 1

    .prologue
    .line 136
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v0

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1
    .param p1, "padding"    # Landroid/graphics/Rect;

    .prologue
    .line 131
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method public invalidateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/google/glass/widget/SelfAnimatingDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 178
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 179
    invoke-interface {v0, p0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_0
    return-void
.end method

.method public isRunning()Z
    .locals 1

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->running:Z

    return v0
.end method

.method public isStateful()Z
    .locals 1

    .prologue
    .line 151
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    return v0
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 5
    .param p1, "bounds"    # Landroid/graphics/Rect;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    iget v2, p1, Landroid/graphics/Rect;->top:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 172
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->animation:Landroid/view/animation/Animation;

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/view/animation/Animation;->initialize(IIII)V

    .line 173
    return-void
.end method

.method public run()V
    .locals 2

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->clock:Lcom/google/glass/time/Clock;

    invoke-interface {v0}, Lcom/google/glass/time/Clock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->currentFrameTime:J

    .line 91
    invoke-virtual {p0}, Lcom/google/glass/widget/SelfAnimatingDrawable;->invalidateSelf()V

    .line 92
    invoke-direct {p0}, Lcom/google/glass/widget/SelfAnimatingDrawable;->nextFrame()V

    .line 93
    return-void
.end method

.method public scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;
    .param p3, "when"    # J

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/google/glass/widget/SelfAnimatingDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 186
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 187
    invoke-interface {v0, p0, p2, p3, p4}, Landroid/graphics/drawable/Drawable$Callback;->scheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;J)V

    .line 189
    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 126
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 127
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1
    .param p1, "colorFilter"    # Landroid/graphics/ColorFilter;

    .prologue
    .line 146
    iget-object v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 147
    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 4
    .param p1, "visible"    # Z
    .param p2, "restart"    # Z

    .prologue
    .line 156
    iget-object v1, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->drawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 157
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    .line 158
    .local v0, "changed":Z
    if-eqz p1, :cond_2

    .line 159
    if-nez v0, :cond_0

    if-eqz p2, :cond_1

    .line 160
    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->animation:Landroid/view/animation/Animation;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/view/animation/Animation;->setStartTime(J)V

    .line 161
    invoke-direct {p0}, Lcom/google/glass/widget/SelfAnimatingDrawable;->nextFrame()V

    .line 166
    :cond_1
    :goto_0
    return v0

    .line 164
    :cond_2
    invoke-virtual {p0, p0}, Lcom/google/glass/widget/SelfAnimatingDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public start()V
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->running:Z

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->running:Z

    .line 78
    invoke-direct {p0}, Lcom/google/glass/widget/SelfAnimatingDrawable;->nextFrame()V

    .line 80
    :cond_0
    return-void
.end method

.method public stop()V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/widget/SelfAnimatingDrawable;->running:Z

    .line 85
    invoke-virtual {p0, p0}, Lcom/google/glass/widget/SelfAnimatingDrawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 86
    return-void
.end method

.method public unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "who"    # Landroid/graphics/drawable/Drawable;
    .param p2, "what"    # Ljava/lang/Runnable;

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/google/glass/widget/SelfAnimatingDrawable;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object v0

    .line 194
    .local v0, "callback":Landroid/graphics/drawable/Drawable$Callback;
    if-eqz v0, :cond_0

    .line 195
    invoke-interface {v0, p0, p2}, Landroid/graphics/drawable/Drawable$Callback;->unscheduleDrawable(Landroid/graphics/drawable/Drawable;Ljava/lang/Runnable;)V

    .line 197
    :cond_0
    return-void
.end method

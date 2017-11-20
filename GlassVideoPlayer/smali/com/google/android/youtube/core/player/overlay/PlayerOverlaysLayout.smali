.class public Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;
.super Landroid/widget/RelativeLayout;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/n;


# instance fields
.field private final a:Ljava/util/List;

.field private b:Lcom/google/android/youtube/core/player/o;

.field private c:Lcom/google/android/youtube/core/player/overlay/m;

.field private d:Landroid/view/View;

.field private e:Z

.field private f:I

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 80
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->a:Ljava/util/List;

    .line 81
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->setFocusable(Z)V

    .line 82
    const/high16 v0, 0x40000

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->setDescendantFocusability(I)V

    .line 83
    return-void
.end method

.method private a(Landroid/util/AttributeSet;)Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;
    .locals 2

    .prologue
    .line 212
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method private a()V
    .locals 4

    .prologue
    const v2, 0x3d99999a    # 0.075f

    const/4 v1, 0x0

    .line 203
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->e:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_0
    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->f:I

    .line 204
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->e:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, v2

    float-to-int v0, v0

    :goto_1
    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->g:I

    .line 205
    :goto_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lt v1, v0, :cond_2

    .line 208
    return-void

    :cond_0
    move v0, v1

    .line 203
    goto :goto_0

    :cond_1
    move v0, v1

    .line 204
    goto :goto_1

    .line 206
    :cond_2
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/youtube/core/player/overlay/l;

    iget v2, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->f:I

    iget v3, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->g:I

    invoke-interface {v0, v2, v3}, Lcom/google/android/youtube/core/player/overlay/l;->a(II)V

    .line 205
    add-int/lit8 v1, v1, 0x1

    goto :goto_2
.end method


# virtual methods
.method protected checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1

    .prologue
    .line 227
    instance-of v0, p1, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;

    return v0
.end method

.method protected fitSystemWindows(Landroid/graphics/Rect;)Z
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->c:Lcom/google/android/youtube/core/player/overlay/m;

    if-eqz v0, :cond_0

    .line 135
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 136
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->c:Lcom/google/android/youtube/core/player/overlay/m;

    .line 138
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->fitSystemWindows(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method protected generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 222
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;

    const/4 v1, 0x0

    invoke-direct {v0, v2, v2, v1}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;-><init>(IIZ)V

    return-object v0
.end method

.method protected generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 217
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;

    invoke-direct {v0, p1}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method public synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/RelativeLayout$LayoutParams;
    .locals 1

    .prologue
    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->a(Landroid/util/AttributeSet;)Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 8

    .prologue
    const/4 v1, 0x0

    const/high16 v7, -0x80000000

    const v6, 0x3fe374bc    # 1.777f

    const/high16 v5, 0x40000000    # 2.0f

    .line 151
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 152
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 153
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 154
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 158
    if-ne v3, v5, :cond_0

    if-ne v4, v5, :cond_0

    move v1, v2

    .line 185
    :goto_0
    invoke-static {v1, p1}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->resolveSize(II)I

    move-result v1

    .line 186
    invoke-static {v0, p2}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->resolveSize(II)I

    move-result v0

    .line 188
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 189
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 191
    invoke-super {p0, v1, v0}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 192
    return-void

    .line 162
    :cond_0
    if-eq v3, v5, :cond_1

    .line 163
    if-ne v3, v7, :cond_2

    if-nez v4, :cond_2

    .line 165
    :cond_1
    int-to-float v0, v2

    div-float/2addr v0, v6

    float-to-int v0, v0

    move v1, v2

    goto :goto_0

    .line 166
    :cond_2
    if-eq v4, v5, :cond_3

    .line 167
    if-ne v4, v7, :cond_4

    if-nez v3, :cond_4

    .line 169
    :cond_3
    int-to-float v1, v0

    mul-float/2addr v1, v6

    float-to-int v1, v1

    goto :goto_0

    .line 170
    :cond_4
    if-ne v3, v7, :cond_6

    if-ne v4, v7, :cond_6

    .line 171
    int-to-float v1, v0

    int-to-float v3, v2

    div-float/2addr v3, v6

    cmpg-float v1, v1, v3

    if-gez v1, :cond_5

    .line 172
    int-to-float v1, v0

    mul-float/2addr v1, v6

    float-to-int v1, v1

    .line 173
    goto :goto_0

    .line 176
    :cond_5
    int-to-float v0, v2

    div-float/2addr v0, v6

    float-to-int v0, v0

    move v1, v2

    goto :goto_0

    :cond_6
    move v0, v1

    .line 181
    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 1

    .prologue
    .line 196
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;->onSizeChanged(IIII)V

    .line 197
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->e:Z

    if-eqz v0, :cond_0

    .line 198
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->a()V

    .line 200
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->b:Lcom/google/android/youtube/core/player/o;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->b:Lcom/google/android/youtube/core/player/o;

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setListener(Lcom/google/android/youtube/core/player/o;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->b:Lcom/google/android/youtube/core/player/o;

    .line 124
    return-void
.end method

.method public setMakeSafeForOverscan(Z)V
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->e:Z

    if-eq v0, p1, :cond_0

    .line 95
    iput-boolean p1, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->e:Z

    .line 96
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->a()V

    .line 98
    :cond_0
    return-void
.end method

.method public setSystemWindowInsetsListener(Lcom/google/android/youtube/core/player/overlay/m;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->c:Lcom/google/android/youtube/core/player/overlay/m;

    .line 128
    return-void
.end method

.method public setVideoView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, -0x2

    .line 86
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->d:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "videoView has already been set"

    invoke-static {v0, v2}, Lcom/google/android/youtube/core/utils/f;->b(ZLjava/lang/Object;)V

    .line 87
    iput-object p1, p0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->d:Landroid/view/View;

    .line 88
    new-instance v0, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;

    invoke-direct {v0, v3, v3}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;-><init>(II)V

    .line 89
    const/16 v2, 0xd

    invoke-virtual {v0, v2}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout$LayoutParams;->addRule(I)V

    .line 90
    invoke-virtual {p0, p1, v1, v0}, Lcom/google/android/youtube/core/player/overlay/PlayerOverlaysLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 91
    return-void

    :cond_0
    move v0, v1

    .line 86
    goto :goto_0
.end method

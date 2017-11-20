.class public abstract Lcom/google/glass/widget/FastScrollOverlay;
.super Landroid/widget/FrameLayout;
.source "FastScrollOverlay.java"


# static fields
.field private static final ITEM_VIEW_SPACING:F = 10.0f

.field private static final ITEM_VIEW_WIDTH:F = 211.20001f

.field private static final LABEL_LEFT_MARGIN:F = 40.0f

.field private static final LABEL_OFFSET_PER_ITEM:F = 221.20001f

.field private static final LABEL_OFFSET_WHEN_LEFT_ALIGNED:F = 60.0f

.field private static final LABEL_OFFSET_WHEN_RIGHT_ALIGNED:F = 10.0f

.field private static final LABEL_RIGHT_MARGIN:F = 40.0f

.field private static final MIN_ITEM_POSITION_FOR_LABEL:I = 0x1

.field private static final NUM_LABELS:I = 0x5

.field private static final NUM_LABELS_RIGHT_ALIGNED:I = 0x3

.field private static final SCREEN_WIDTH:F = 640.0f


# instance fields
.field private final labelText:[Ljava/lang/String;

.field private final labelTextWidths:[F

.field private final labelX:[F

.field private final labels:[Landroid/widget/TextView;

.field private lastCenterPosition:I

.field private lastZoomFactor:F

.field private final overlay:Landroid/widget/FrameLayout;

.field private final scrollView:Lcom/google/android/glass/widget/CardScrollView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/android/glass/widget/CardScrollView;)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I
    .param p4, "scrollView"    # Lcom/google/android/glass/widget/CardScrollView;

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    const/4 v6, 0x5

    .line 85
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    new-array v2, v6, [Landroid/widget/TextView;

    iput-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    .line 52
    new-array v2, v6, [Ljava/lang/String;

    iput-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelText:[Ljava/lang/String;

    .line 55
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelTextWidths:[F

    .line 58
    new-array v2, v6, [F

    iput-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelX:[F

    .line 61
    iput v7, p0, Lcom/google/glass/widget/FastScrollOverlay;->lastZoomFactor:F

    .line 67
    iput v8, p0, Lcom/google/glass/widget/FastScrollOverlay;->lastCenterPosition:I

    .line 87
    iput-object p4, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    .line 89
    new-instance v2, Landroid/widget/FrameLayout;

    invoke-direct {v2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    .line 90
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    const/16 v5, 0x50

    invoke-direct {v3, v8, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {p0, v2}, Lcom/google/glass/widget/FastScrollOverlay;->addView(Landroid/view/View;)V

    .line 95
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 96
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_0

    .line 97
    iget-object v3, p0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    sget v2, Lcom/google/glass/common/R$layout;->fast_scroll_label:I

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    aput-object v2, v3, v0

    .line 98
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    aget-object v2, v2, v0

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 99
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelText:[Ljava/lang/String;

    const-string v3, ""

    aput-object v3, v2, v0

    .line 100
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelTextWidths:[F

    const/high16 v3, -0x40800000    # -1.0f

    aput v3, v2, v0

    .line 101
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 96
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 105
    :cond_0
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    iget-object v3, p0, Lcom/google/glass/widget/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 106
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v7}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/android/glass/widget/CardScrollView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "scrollView"    # Lcom/google/android/glass/widget/CardScrollView;

    .prologue
    .line 80
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/google/glass/widget/FastScrollOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILcom/google/android/glass/widget/CardScrollView;)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/glass/widget/CardScrollView;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "scrollView"    # Lcom/google/android/glass/widget/CardScrollView;

    .prologue
    .line 76
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lcom/google/glass/widget/FastScrollOverlay;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/google/android/glass/widget/CardScrollView;)V

    .line 77
    return-void
.end method

.method static synthetic access$000(Lcom/google/glass/widget/FastScrollOverlay;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/FastScrollOverlay;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/glass/widget/FastScrollOverlay;->adjustFadeOutViewsAlphaForItemView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$100(Lcom/google/glass/widget/FastScrollOverlay;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lcom/google/glass/widget/FastScrollOverlay;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 21
    invoke-direct {p0, p1}, Lcom/google/glass/widget/FastScrollOverlay;->updateLabelForItemView(Landroid/view/View;)V

    return-void
.end method

.method private adjustFadeOutViewsAlphaForItemView(Landroid/view/View;)V
    .locals 5
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 228
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 229
    iget-object v4, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v4}, Lcom/google/android/glass/widget/CardScrollView;->getZoomOutFactor()F

    move-result v3

    .line 230
    .local v3, "zoomFactor":F
    invoke-virtual {p0, p1}, Lcom/google/glass/widget/FastScrollOverlay;->isLabelReady(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 231
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_fade_out_on_scroll:I

    .line 232
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 233
    .local v1, "fadeOutViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    if-eqz v1, :cond_1

    .line 234
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v0, v4, v3

    .line 235
    .local v0, "alpha":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 236
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    invoke-virtual {v4, v0}, Landroid/view/View;->setAlpha(F)V

    .line 235
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 240
    .end local v0    # "alpha":F
    .end local v1    # "fadeOutViews":Ljava/util/List;, "Ljava/util/List<Landroid/view/View;>;"
    .end local v2    # "i":I
    :cond_0
    new-instance v4, Lcom/google/glass/widget/FastScrollOverlay$1;

    invoke-direct {v4, p0, p1}, Lcom/google/glass/widget/FastScrollOverlay$1;-><init>(Lcom/google/glass/widget/FastScrollOverlay;Landroid/view/View;)V

    invoke-virtual {p0, p1, v4}, Lcom/google/glass/widget/FastScrollOverlay;->setRunnableForWhenLabelReady(Landroid/view/View;Ljava/lang/Runnable;)V

    .line 247
    :cond_1
    return-void
.end method

.method private getLabelTextWidth(I)F
    .locals 3
    .param p1, "i"    # I

    .prologue
    .line 158
    iget-object v0, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelTextWidths:[F

    aget v0, v0, p1

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelTextWidths:[F

    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelText:[Ljava/lang/String;

    aget-object v2, v2, p1

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    aput v1, v0, p1

    .line 161
    :cond_0
    iget-object v0, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelTextWidths:[F

    aget v0, v0, p1

    return v0
.end method

.method private setLabelText(ILjava/lang/String;Z)V
    .locals 4
    .param p1, "i"    # I
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "updateViews"    # Z

    .prologue
    .line 125
    if-nez p2, :cond_0

    .line 126
    const-string p2, ""

    .line 128
    :cond_0
    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelText:[Ljava/lang/String;

    aput-object p2, v1, p1

    .line 129
    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelTextWidths:[F

    const/high16 v2, -0x40800000    # -1.0f

    aput v2, v1, p1

    .line 130
    if-eqz p3, :cond_2

    .line 132
    invoke-direct {p0, p1}, Lcom/google/glass/widget/FastScrollOverlay;->updateLabelVisibility(I)V

    .line 133
    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 134
    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_1
    if-lez p1, :cond_2

    .line 137
    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    const/4 v0, 0x1

    .line 138
    .local v0, "wasVisible":Z
    :goto_0
    add-int/lit8 v1, p1, -0x1

    invoke-direct {p0, v1}, Lcom/google/glass/widget/FastScrollOverlay;->updateLabelVisibility(I)V

    .line 139
    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 140
    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelText:[Ljava/lang/String;

    add-int/lit8 v3, p1, -0x1

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 144
    .end local v0    # "wasVisible":Z
    :cond_2
    return-void

    .line 137
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateLabelForItemView(Landroid/view/View;)V
    .locals 6
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 250
    iget-object v4, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v4}, Lcom/google/android/glass/widget/CardScrollView;->getScrollPosition()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 251
    .local v0, "centerPosition":I
    sget v4, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    .line 252
    invoke-virtual {p1, v4}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 254
    .local v1, "itemPosition":I
    sub-int v4, v1, v0

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    const/4 v5, 0x2

    if-le v4, v5, :cond_0

    .line 261
    :goto_0
    return-void

    .line 257
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/glass/widget/FastScrollOverlay;->getLabelForItem(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v3

    .line 258
    .local v3, "text":Ljava/lang/String;
    add-int/lit8 v2, v0, -0x2

    .line 259
    .local v2, "leftPosition":I
    sub-int v4, v1, v2

    const/4 v5, 0x1

    invoke-direct {p0, v4, v3, v5}, Lcom/google/glass/widget/FastScrollOverlay;->setLabelText(ILjava/lang/String;Z)V

    .line 260
    invoke-direct {p0}, Lcom/google/glass/widget/FastScrollOverlay;->updateLabelPositions()V

    goto :goto_0
.end method

.method private updateLabelPositions()V
    .locals 17

    .prologue
    .line 165
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 168
    move-object/from16 v0, p0

    iget v12, v0, Lcom/google/glass/widget/FastScrollOverlay;->lastZoomFactor:F

    const/4 v13, 0x0

    cmpl-float v12, v12, v13

    if-nez v12, :cond_1

    .line 224
    :cond_0
    return-void

    .line 172
    :cond_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v12}, Lcom/google/android/glass/widget/CardScrollView;->getScrollPosition()F

    move-result v10

    .line 173
    .local v10, "scrollPosition":F
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 174
    .local v1, "centerPosition":I
    add-int/lit8 v6, v1, -0x2

    .line 175
    .local v6, "leftPosition":I
    int-to-float v12, v1

    sub-float v12, v10, v12

    const v13, 0x435d3334    # 221.20001f

    mul-float v8, v12, v13

    .line 178
    .local v8, "periodicOffset":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    const/4 v12, 0x3

    if-ge v2, v12, :cond_2

    .line 179
    const v12, 0x435d3334    # 221.20001f

    add-int/lit8 v13, v2, -0x3

    int-to-float v13, v13

    mul-float v3, v12, v13

    .line 180
    .local v3, "itemOffset":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/widget/FastScrollOverlay;->labelX:[F

    const/high16 v13, 0x41200000    # 10.0f

    add-float/2addr v13, v3

    sub-float/2addr v13, v8

    aput v13, v12, v2

    .line 178
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 184
    .end local v3    # "itemOffset":F
    :cond_2
    const/4 v2, 0x3

    :goto_1
    const/4 v12, 0x5

    if-ge v2, v12, :cond_6

    .line 185
    const v12, 0x435d3334    # 221.20001f

    add-int/lit8 v13, v2, -0x3

    int-to-float v13, v13

    mul-float v3, v12, v13

    .line 186
    .restart local v3    # "itemOffset":F
    const/high16 v12, 0x41200000    # 10.0f

    add-float/2addr v12, v3

    sub-float v9, v12, v8

    .line 187
    .local v9, "rightOffset":F
    const/high16 v12, 0x42700000    # 60.0f

    add-float/2addr v12, v3

    const v13, 0x435d3334    # 221.20001f

    sub-float/2addr v12, v13

    sub-float/2addr v12, v8

    .line 189
    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/google/glass/widget/FastScrollOverlay;->getLabelTextWidth(I)F

    move-result v13

    add-float v5, v12, v13

    .line 190
    .local v5, "leftOffset":F
    move v7, v5

    .line 191
    .local v7, "offset":F
    const/high16 v12, -0x3de00000    # -40.0f

    cmpg-float v12, v7, v12

    if-gez v12, :cond_3

    .line 192
    const/high16 v12, -0x3de00000    # -40.0f

    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v7

    .line 195
    :cond_3
    move v4, v2

    .line 196
    .local v4, "j":I
    :goto_2
    const/4 v12, 0x2

    if-lt v4, v12, :cond_4

    add-int v12, v6, v4

    const/4 v13, 0x1

    if-le v12, v13, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    add-int/lit8 v13, v4, -0x1

    aget-object v12, v12, v13

    .line 198
    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    const/4 v13, 0x4

    if-ne v12, v13, :cond_4

    .line 199
    add-int/lit8 v4, v4, -0x1

    goto :goto_2

    .line 201
    :cond_4
    if-ge v4, v2, :cond_5

    .line 202
    const/high16 v12, -0x3de00000    # -40.0f

    .line 203
    invoke-static {v12, v9}, Ljava/lang/Math;->min(FF)F

    move-result v12

    sub-int v13, v2, v4

    int-to-float v13, v13

    const v14, 0x435d3334    # 221.20001f

    mul-float/2addr v13, v14

    sub-float v13, v7, v13

    .line 202
    invoke-static {v12, v13}, Ljava/lang/Math;->max(FF)F

    move-result v7

    .line 205
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/widget/FastScrollOverlay;->labelX:[F

    aput v7, v12, v2

    .line 184
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 209
    .end local v3    # "itemOffset":F
    .end local v4    # "j":I
    .end local v5    # "leftOffset":F
    .end local v7    # "offset":F
    .end local v9    # "rightOffset":F
    :cond_6
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v12}, Lcom/google/android/glass/widget/CardScrollView;->getZoomScale()F

    move-result v11

    .line 210
    .local v11, "zoomScale":F
    const v12, 0x3ea8f5c3    # 0.33f

    cmpl-float v12, v11, v12

    if-lez v12, :cond_7

    .line 211
    const/4 v2, 0x0

    :goto_3
    const/4 v12, 0x5

    if-ge v2, v12, :cond_7

    .line 212
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/widget/FastScrollOverlay;->labelX:[F

    const/high16 v13, -0x3c600000    # -320.0f

    const v14, 0x3ea8f5c3    # 0.33f

    div-float v14, v11, v14

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/google/glass/widget/FastScrollOverlay;->labelX:[F

    aget v15, v15, v2

    const/high16 v16, 0x43a00000    # 320.0f

    add-float v15, v15, v16

    mul-float/2addr v14, v15

    add-float/2addr v13, v14

    aput v13, v12, v2

    .line 211
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 218
    :cond_7
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/widget/FastScrollOverlay;->invalidate()V

    .line 219
    const/4 v2, 0x0

    :goto_4
    const/4 v12, 0x5

    if-ge v2, v12, :cond_0

    .line 220
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    aget-object v12, v12, v2

    invoke-virtual {v12}, Landroid/widget/TextView;->getVisibility()I

    move-result v12

    if-nez v12, :cond_8

    .line 221
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    aget-object v12, v12, v2

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/google/glass/widget/FastScrollOverlay;->labelX:[F

    aget v13, v13, v2

    invoke-static {v13}, Ljava/lang/Math;->round(F)I

    move-result v13

    int-to-float v13, v13

    invoke-virtual {v12, v13}, Landroid/widget/TextView;->setTranslationX(F)V

    .line 219
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4
.end method

.method private updateLabelVisibility(I)V
    .locals 6
    .param p1, "i"    # I

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 110
    iget-object v4, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelText:[Ljava/lang/String;

    aget-object v1, v4, p1

    .line 112
    .local v1, "text":Ljava/lang/String;
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_0

    if-ge p1, v3, :cond_2

    iget-object v4, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelText:[Ljava/lang/String;

    add-int/lit8 v5, p1, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 113
    .local v0, "shouldBeHidden":Z
    :goto_0
    iget-object v4, p0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    aget-object v4, v4, p1

    if-eqz v0, :cond_1

    move v2, v3

    :cond_1
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    return-void

    .end local v0    # "shouldBeHidden":Z
    :cond_2
    move v0, v2

    .line 112
    goto :goto_0
.end method

.method private updateLabels()V
    .locals 15

    .prologue
    const/4 v14, 0x5

    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 264
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 265
    iget-object v10, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v10}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/glass/widget/CardScrollAdapter;->getCount()I

    move-result v8

    .line 266
    .local v8, "numItems":I
    iget-object v10, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v10}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v10

    invoke-virtual {v10}, Lcom/google/android/glass/widget/CardScrollAdapter;->getHomePosition()I

    move-result v1

    .line 267
    .local v1, "homePosition":I
    iget-object v10, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v10}, Lcom/google/android/glass/widget/CardScrollView;->getScrollPosition()F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 268
    .local v0, "centerPosition":I
    add-int/lit8 v7, v0, -0x2

    .line 270
    .local v7, "leftPosition":I
    new-array v3, v14, [Z

    .line 272
    .local v3, "isLabelUsed":[Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v10, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v10}, Lcom/google/android/glass/widget/CardScrollView;->getChildCount()I

    move-result v10

    if-ge v2, v10, :cond_6

    .line 273
    iget-object v10, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v10, v2}, Lcom/google/android/glass/widget/CardScrollView;->getItemViewForChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 274
    .local v6, "itemView":Landroid/view/View;
    sget v10, Lcom/google/glass/common/R$id;->tag_horizontal_scroll_item_position:I

    invoke-virtual {v6, v10}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    .line 277
    .local v5, "itemPositionTag":Ljava/lang/Integer;
    if-nez v5, :cond_1

    .line 272
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 282
    :cond_1
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 283
    .local v4, "itemPosition":I
    sub-int v10, v4, v0

    invoke-static {v10}, Ljava/lang/Math;->abs(I)I

    move-result v10

    const/4 v11, 0x2

    if-gt v10, v11, :cond_0

    .line 287
    const-string v9, ""

    .line 291
    .local v9, "text":Ljava/lang/String;
    if-ne v4, v1, :cond_3

    .line 292
    invoke-virtual {p0}, Lcom/google/glass/widget/FastScrollOverlay;->getHomePositionLabel()Ljava/lang/String;

    move-result-object v9

    .line 316
    :cond_2
    :goto_2
    sub-int v10, v4, v7

    invoke-direct {p0, v10, v9, v13}, Lcom/google/glass/widget/FastScrollOverlay;->setLabelText(ILjava/lang/String;Z)V

    .line 317
    sub-int v10, v4, v7

    aput-boolean v12, v3, v10

    .line 319
    invoke-direct {p0, v6}, Lcom/google/glass/widget/FastScrollOverlay;->adjustFadeOutViewsAlphaForItemView(Landroid/view/View;)V

    goto :goto_1

    .line 293
    :cond_3
    if-lt v4, v12, :cond_2

    if-ge v4, v8, :cond_2

    .line 294
    invoke-virtual {p0, v6}, Lcom/google/glass/widget/FastScrollOverlay;->isLabelReady(Landroid/view/View;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 296
    invoke-virtual {p0, v6, v4}, Lcom/google/glass/widget/FastScrollOverlay;->getLabelForItem(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v9

    goto :goto_2

    .line 298
    :cond_4
    if-le v4, v12, :cond_2

    .line 302
    if-le v4, v7, :cond_5

    .line 303
    iget-object v10, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelText:[Ljava/lang/String;

    sub-int v11, v4, v7

    add-int/lit8 v11, v11, -0x1

    aget-object v9, v10, v11

    .line 305
    :cond_5
    new-instance v10, Lcom/google/glass/widget/FastScrollOverlay$2;

    invoke-direct {v10, p0, v6}, Lcom/google/glass/widget/FastScrollOverlay$2;-><init>(Lcom/google/glass/widget/FastScrollOverlay;Landroid/view/View;)V

    invoke-virtual {p0, v6, v10}, Lcom/google/glass/widget/FastScrollOverlay;->setRunnableForWhenLabelReady(Landroid/view/View;Ljava/lang/Runnable;)V

    goto :goto_2

    .line 323
    .end local v4    # "itemPosition":I
    .end local v5    # "itemPositionTag":Ljava/lang/Integer;
    .end local v6    # "itemView":Landroid/view/View;
    .end local v9    # "text":Ljava/lang/String;
    :cond_6
    const/4 v2, 0x0

    :goto_3
    if-ge v2, v14, :cond_8

    .line 324
    aget-boolean v10, v3, v2

    if-nez v10, :cond_7

    .line 325
    const-string v10, ""

    invoke-direct {p0, v2, v10, v13}, Lcom/google/glass/widget/FastScrollOverlay;->setLabelText(ILjava/lang/String;Z)V

    .line 323
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 329
    :cond_8
    invoke-direct {p0}, Lcom/google/glass/widget/FastScrollOverlay;->updateTextViews()V

    .line 330
    invoke-direct {p0}, Lcom/google/glass/widget/FastScrollOverlay;->updateLabelPositions()V

    .line 331
    return-void
.end method

.method private updateTextViews()V
    .locals 3

    .prologue
    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    .line 149
    invoke-direct {p0, v0}, Lcom/google/glass/widget/FastScrollOverlay;->updateLabelVisibility(I)V

    .line 150
    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 151
    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->labels:[Landroid/widget/TextView;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->labelText:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    :cond_1
    return-void
.end method


# virtual methods
.method protected getHomePositionLabel()Ljava/lang/String;
    .locals 2

    .prologue
    .line 397
    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollView;->getAdapter()Lcom/google/android/glass/widget/CardScrollAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/google/android/glass/widget/CardScrollAdapter;->getHomePosition()I

    move-result v0

    .line 398
    .local v0, "homePos":I
    iget-object v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v1, v0}, Lcom/google/android/glass/widget/CardScrollView;->getItemViewForChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lcom/google/glass/widget/FastScrollOverlay;->getLabelForItem(Landroid/view/View;I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected abstract getLabelForItem(Landroid/view/View;I)Ljava/lang/String;
.end method

.method protected getScrollView()Lcom/google/android/glass/widget/CardScrollView;
    .locals 1

    .prologue
    .line 381
    iget-object v0, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    return-object v0
.end method

.method protected isLabelReady(Landroid/view/View;)Z
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 408
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleChanged(F)V
    .locals 5
    .param p1, "scale"    # F

    .prologue
    const/4 v3, 0x0

    .line 352
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getZoomOutFactor()F

    move-result v1

    .line 353
    .local v1, "zoomFactor":F
    iget v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->lastZoomFactor:F

    cmpl-float v2, v1, v2

    if-nez v2, :cond_0

    .line 375
    :goto_0
    return-void

    .line 356
    :cond_0
    iget v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->lastZoomFactor:F

    cmpl-float v2, v2, v3

    if-nez v2, :cond_2

    .line 358
    invoke-direct {p0}, Lcom/google/glass/widget/FastScrollOverlay;->updateLabels()V

    .line 364
    :cond_1
    iput v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->lastZoomFactor:F

    .line 367
    cmpl-float v2, v1, v3

    if-nez v2, :cond_3

    .line 368
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 374
    :goto_1
    invoke-direct {p0}, Lcom/google/glass/widget/FastScrollOverlay;->updateLabelPositions()V

    goto :goto_0

    .line 360
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v2}, Lcom/google/android/glass/widget/CardScrollView;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 361
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->scrollView:Lcom/google/android/glass/widget/CardScrollView;

    invoke-virtual {v2, v0}, Lcom/google/android/glass/widget/CardScrollView;->getItemViewForChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/google/glass/widget/FastScrollOverlay;->adjustFadeOutViewsAlphaForItemView(Landroid/view/View;)V

    .line 360
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 370
    .end local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 371
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float/2addr v3, v1

    iget-object v4, p0, Lcom/google/glass/widget/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getHeight()I

    move-result v4

    int-to-float v4, v4

    mul-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 372
    iget-object v2, p0, Lcom/google/glass/widget/FastScrollOverlay;->overlay:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    goto :goto_1
.end method

.method public onScrollPositionChanged(F)V
    .locals 2
    .param p1, "scrollPosition"    # F

    .prologue
    .line 336
    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 341
    .local v0, "centerPosition":I
    iget v1, p0, Lcom/google/glass/widget/FastScrollOverlay;->lastCenterPosition:I

    if-eq v0, v1, :cond_0

    .line 342
    iput v0, p0, Lcom/google/glass/widget/FastScrollOverlay;->lastCenterPosition:I

    .line 343
    invoke-direct {p0}, Lcom/google/glass/widget/FastScrollOverlay;->updateLabels()V

    .line 348
    :goto_0
    return-void

    .line 346
    :cond_0
    invoke-direct {p0}, Lcom/google/glass/widget/FastScrollOverlay;->updateLabelPositions()V

    goto :goto_0
.end method

.method protected setRunnableForWhenLabelReady(Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "itemView"    # Landroid/view/View;
    .param p2, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 420
    return-void
.end method

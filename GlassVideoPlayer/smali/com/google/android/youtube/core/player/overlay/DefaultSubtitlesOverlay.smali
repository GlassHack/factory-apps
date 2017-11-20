.class public Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;
.super Landroid/view/ViewGroup;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/youtube/core/player/overlay/q;


# instance fields
.field private final a:Landroid/util/SparseArray;

.field private final b:Landroid/util/SparseArray;

.field private c:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 56
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->a:Landroid/util/SparseArray;

    .line 57
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->b:Landroid/util/SparseArray;

    .line 58
    const/4 v0, 0x2

    iput v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->c:I

    .line 59
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->b()V

    .line 60
    return-void
.end method

.method private a(Ljava/lang/Object;Ljava/lang/CharSequence;)Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 285
    new-instance v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 286
    const/high16 v1, -0x78000000

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 287
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 288
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 289
    sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 290
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 291
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    invoke-direct {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->a(Landroid/widget/TextView;)V

    .line 293
    return-object v0
.end method

.method private a(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 301
    sget v0, Lcom/google/android/youtube/core/utils/Util;->a:I

    .line 302
    const/16 v1, 0xb

    if-gt v1, v0, :cond_0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    .line 303
    invoke-static {p1}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->b(Landroid/widget/TextView;)V

    .line 305
    :cond_0
    return-void
.end method

.method private static a(Landroid/widget/TextView;Lcom/google/android/youtube/core/model/SubtitleWindowSettings;II)V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v5, -0x80000000

    .line 195
    iget v3, p1, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorPoint:I

    .line 196
    iget v0, p1, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorHorizontalPos:I

    mul-int/2addr v0, p2

    div-int/lit8 v2, v0, 0x64

    .line 197
    iget v0, p1, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorVerticalPos:I

    mul-int/2addr v0, p3

    div-int/lit8 v0, v0, 0x64

    .line 200
    and-int/lit8 v4, v3, 0x1

    if-eqz v4, :cond_2

    .line 201
    sub-int v2, p2, v2

    .line 212
    :cond_0
    :goto_0
    and-int/lit8 v4, v3, 0x8

    if-eqz v4, :cond_4

    .line 213
    sub-int v0, p3, v0

    .line 223
    :cond_1
    :goto_1
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    .line 224
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 223
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->measure(II)V

    .line 225
    return-void

    .line 202
    :cond_2
    and-int/lit8 v4, v3, 0x2

    if-eqz v4, :cond_3

    .line 203
    sub-int v4, p2, v2

    invoke-static {v2, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    .line 204
    :cond_3
    and-int/lit8 v4, v3, 0x4

    if-nez v4, :cond_0

    move v2, v1

    .line 208
    goto :goto_0

    .line 214
    :cond_4
    and-int/lit8 v4, v3, 0x10

    if-eqz v4, :cond_5

    .line 215
    sub-int v1, p3, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 216
    :cond_5
    and-int/lit8 v3, v3, 0x20

    if-nez v3, :cond_1

    move v0, v1

    .line 220
    goto :goto_1
.end method

.method private static a(Landroid/widget/TextView;Lcom/google/android/youtube/core/model/SubtitleWindowSettings;IIII)V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 248
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 249
    invoke-virtual {p0}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v4

    .line 251
    iget v5, p1, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorPoint:I

    .line 252
    iget v0, p1, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorHorizontalPos:I

    mul-int/2addr v0, p4

    div-int/lit8 v2, v0, 0x64

    .line 253
    iget v0, p1, Lcom/google/android/youtube/core/model/SubtitleWindowSettings;->anchorVerticalPos:I

    mul-int/2addr v0, p5

    div-int/lit8 v0, v0, 0x64

    .line 256
    and-int/lit8 v6, v5, 0x1

    if-eqz v6, :cond_0

    .line 268
    :goto_0
    and-int/lit8 v6, v5, 0x8

    if-eqz v6, :cond_3

    .line 278
    :goto_1
    add-int v1, v2, p2

    .line 279
    add-int/2addr v0, p3

    .line 281
    add-int v2, v1, v3

    add-int v3, v0, v4

    invoke-virtual {p0, v1, v0, v2, v3}, Landroid/widget/TextView;->layout(IIII)V

    .line 282
    return-void

    .line 258
    :cond_0
    and-int/lit8 v6, v5, 0x2

    if-eqz v6, :cond_1

    .line 259
    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v2, v6

    goto :goto_0

    .line 260
    :cond_1
    and-int/lit8 v6, v5, 0x4

    if-eqz v6, :cond_2

    .line 261
    sub-int/2addr v2, v3

    goto :goto_0

    :cond_2
    move v2, v1

    .line 264
    goto :goto_0

    .line 270
    :cond_3
    and-int/lit8 v6, v5, 0x10

    if-eqz v6, :cond_4

    .line 271
    div-int/lit8 v1, v4, 0x2

    sub-int/2addr v0, v1

    goto :goto_1

    .line 272
    :cond_4
    and-int/lit8 v5, v5, 0x20

    if-eqz v5, :cond_5

    .line 273
    sub-int/2addr v0, v4

    goto :goto_1

    :cond_5
    move v0, v1

    .line 276
    goto :goto_1
.end method

.method private static b(Landroid/widget/TextView;)V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 309
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/widget/TextView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 310
    return-void
.end method

.method private c()V
    .locals 7

    .prologue
    const/high16 v0, 0x41500000    # 13.0f

    .line 146
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 150
    const v1, 0x3ce66666    # 0.028125f

    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->getMeasuredWidth()I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    iget v3, v2, Landroid/util/DisplayMetrics;->density:F

    div-float/2addr v1, v3

    .line 152
    cmpg-float v3, v1, v0

    if-gez v3, :cond_2

    .line 157
    :goto_0
    const-wide v3, 0x3ff6666660000000L    # 1.399999976158142

    iget v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->c:I

    add-int/lit8 v1, v1, -0x2

    int-to-double v5, v1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    double-to-float v1, v3

    mul-float v3, v0, v1

    .line 158
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 171
    return-void

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->b:Landroid/util/SparseArray;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 160
    float-to-int v4, v3

    invoke-virtual {v0}, Landroid/widget/TextView;->getTextSize()F

    move-result v5

    iget v6, v2, Landroid/util/DisplayMetrics;->scaledDensity:F

    div-float/2addr v5, v6

    float-to-int v5, v5

    if-ge v4, v5, :cond_1

    .line 164
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->removeView(Landroid/view/View;)V

    .line 165
    invoke-virtual {v0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p0, v4, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->a(Ljava/lang/Object;Ljava/lang/CharSequence;)Landroid/widget/TextView;

    move-result-object v0

    .line 166
    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->addView(Landroid/view/View;)V

    .line 167
    iget-object v4, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->b:Landroid/util/SparseArray;

    invoke-virtual {v4, v1, v0}, Landroid/util/SparseArray;->setValueAt(ILjava/lang/Object;)V

    .line 169
    :cond_1
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextSize(F)V

    .line 158
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public final a()V
    .locals 1

    .prologue
    .line 122
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->removeAllViews()V

    .line 123
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 124
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->b:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 125
    return-void
.end method

.method public final b()V
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->setVisibility(I)V

    .line 133
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 7

    .prologue
    .line 229
    sub-int v0, p4, p2

    .line 230
    sub-int v1, p5, p3

    .line 231
    mul-int/lit8 v2, v0, 0xf

    div-int/lit8 v2, v2, 0x64

    div-int/lit8 v2, v2, 0x2

    .line 232
    mul-int/lit8 v3, v1, 0xf

    div-int/lit8 v3, v3, 0x64

    div-int/lit8 v3, v3, 0x2

    .line 234
    mul-int/lit8 v0, v0, 0x55

    div-int/lit8 v4, v0, 0x64

    .line 235
    mul-int/lit8 v0, v1, 0x55

    div-int/lit8 v5, v0, 0x64

    .line 237
    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v6, v0, :cond_0

    .line 244
    return-void

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->b:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 239
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 240
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v6}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->settings:Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    .line 241
    invoke-static/range {v0 .. v5}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->a(Landroid/widget/TextView;Lcom/google/android/youtube/core/model/SubtitleWindowSettings;IIII)V

    .line 237
    :cond_1
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5

    .prologue
    .line 175
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 176
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 177
    invoke-virtual {p0, v0, v1}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->setMeasuredDimension(II)V

    .line 179
    invoke-direct {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->c()V

    .line 181
    mul-int/lit8 v0, v0, 0x55

    div-int/lit8 v3, v0, 0x64

    .line 182
    mul-int/lit8 v0, v1, 0x55

    div-int/lit8 v4, v0, 0x64

    .line 184
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->a:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lt v2, v0, :cond_0

    .line 190
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->b:Landroid/util/SparseArray;

    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 186
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 187
    iget-object v1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->a:Landroid/util/SparseArray;

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;

    iget-object v1, v1, Lcom/google/android/youtube/core/model/SubtitleWindowSnapshot;->settings:Lcom/google/android/youtube/core/model/SubtitleWindowSettings;

    invoke-static {v0, v1, v3, v4}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->a(Landroid/widget/TextView;Lcom/google/android/youtube/core/model/SubtitleWindowSettings;II)V

    .line 184
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0
.end method

.method public setFontSizeLevel(I)V
    .locals 0

    .prologue
    .line 140
    iput p1, p0, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->c:I

    .line 141
    invoke-virtual {p0}, Lcom/google/android/youtube/core/player/overlay/DefaultSubtitlesOverlay;->requestLayout()V

    .line 142
    return-void
.end method

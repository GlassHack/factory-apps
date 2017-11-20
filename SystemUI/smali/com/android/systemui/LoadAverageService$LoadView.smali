.class Lcom/android/systemui/LoadAverageService$LoadView;
.super Landroid/view/View;
.source "LoadAverageService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/LoadAverageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadView"
.end annotation


# instance fields
.field private mAddedPaint:Landroid/graphics/Paint;

.field private mAscent:F

.field private mFH:I

.field private mHandler:Landroid/os/Handler;

.field private mIrqPaint:Landroid/graphics/Paint;

.field private mLoadPaint:Landroid/graphics/Paint;

.field private mNeededHeight:I

.field private mNeededWidth:I

.field private mRemovedPaint:Landroid/graphics/Paint;

.field private mShadow2Paint:Landroid/graphics/Paint;

.field private mShadowPaint:Landroid/graphics/Paint;

.field private final mStats:Lcom/android/systemui/LoadAverageService$CpuTracker;

.field private mSystemPaint:Landroid/graphics/Paint;

.field private mUserPaint:Landroid/graphics/Paint;

.field final synthetic this$0:Lcom/android/systemui/LoadAverageService;


# direct methods
.method constructor <init>(Lcom/android/systemui/LoadAverageService;Landroid/content/Context;)V
    .locals 12
    .param p2, "c"    # Landroid/content/Context;

    .prologue
    const/4 v11, 0x1

    const/16 v10, 0x80

    const/4 v9, 0x0

    const/16 v8, 0xff

    const/4 v7, 0x0

    .line 89
    iput-object p1, p0, Lcom/android/systemui/LoadAverageService$LoadView;->this$0:Lcom/android/systemui/LoadAverageService;

    .line 90
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v3, Lcom/android/systemui/LoadAverageService$LoadView$1;

    invoke-direct {v3, p0}, Lcom/android/systemui/LoadAverageService$LoadView$1;-><init>(Lcom/android/systemui/LoadAverageService$LoadView;)V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mHandler:Landroid/os/Handler;

    .line 92
    const/4 v3, 0x4

    const/4 v4, 0x4

    const/4 v5, 0x4

    const/4 v6, 0x4

    invoke-virtual {p0, v3, v4, v5, v6}, Lcom/android/systemui/LoadAverageService$LoadView;->setPadding(IIII)V

    .line 99
    const/16 v2, 0xa

    .line 100
    .local v2, "textSize":I
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v0, v3, Landroid/util/DisplayMetrics;->density:F

    .line 101
    .local v0, "density":F
    const/high16 v3, 0x3f800000    # 1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_1

    .line 102
    const/16 v2, 0x9

    .line 109
    :cond_0
    :goto_0
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    .line 110
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 111
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 112
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v8, v8, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 114
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    .line 115
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 116
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 117
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v10, v8, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 119
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    .line 120
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 121
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setStrikeThruText(Z)V

    .line 122
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 123
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v8, v8, v10, v10}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 125
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    .line 126
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 129
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    const/16 v4, 0xc0

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 130
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40800000    # 4.0f

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 132
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    .line 133
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    invoke-virtual {v3, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 134
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    int-to-float v4, v2

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 136
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    const/16 v4, 0xc0

    invoke-virtual {v3, v4, v7, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 137
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 139
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    .line 140
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10, v7, v7, v8}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 141
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 142
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    .line 143
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10, v8, v7, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 144
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 145
    new-instance v3, Landroid/graphics/Paint;

    invoke-direct {v3}, Landroid/graphics/Paint;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    .line 146
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    invoke-virtual {v3, v10, v7, v8, v7}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 147
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40000000    # 2.0f

    const/high16 v5, -0x1000000

    invoke-virtual {v3, v4, v9, v9, v5}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 149
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->ascent()F

    move-result v3

    iput v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAscent:F

    .line 150
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->descent()F

    move-result v1

    .line 151
    .local v1, "descent":F
    iget v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mAscent:F

    sub-float v3, v1, v3

    const/high16 v4, 0x3f000000    # 0.5f

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    .line 153
    new-instance v3, Lcom/android/systemui/LoadAverageService$CpuTracker;

    iget-object v4, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    invoke-direct {v3, v4}, Lcom/android/systemui/LoadAverageService$CpuTracker;-><init>(Landroid/graphics/Paint;)V

    iput-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$CpuTracker;

    .line 154
    iget-object v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$CpuTracker;

    invoke-virtual {v3}, Lcom/android/systemui/LoadAverageService$CpuTracker;->init()V

    .line 155
    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$LoadView;->updateDisplay()V

    .line 156
    return-void

    .line 104
    .end local v1    # "descent":F
    :cond_1
    const/high16 v3, 0x41200000    # 10.0f

    mul-float/2addr v3, v0

    float-to-int v2, v3

    .line 105
    const/16 v3, 0xa

    if-ge v2, v3, :cond_0

    .line 106
    const/16 v2, 0xa

    goto/16 :goto_0
.end method

.method static synthetic access$000(Lcom/android/systemui/LoadAverageService$LoadView;)Lcom/android/systemui/LoadAverageService$CpuTracker;
    .locals 1
    .param p0, "x0"    # Lcom/android/systemui/LoadAverageService$LoadView;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$CpuTracker;

    return-object v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 161
    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 162
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 166
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 167
    iget-object v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 168
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 178
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 179
    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededWidth:I

    .line 180
    .local v10, "W":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/LoadAverageService$LoadView;->getWidth()I

    move-result v2

    add-int/lit8 v9, v2, -0x1

    .line 182
    .local v9, "RIGHT":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$CpuTracker;

    move-object/from16 v20, v0

    .line 183
    .local v20, "stats":Lcom/android/systemui/LoadAverageService$CpuTracker;
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getLastUserTime()I

    move-result v25

    .line 184
    .local v25, "userTime":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getLastSystemTime()I

    move-result v21

    .line 185
    .local v21, "systemTime":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getLastIoWaitTime()I

    move-result v14

    .line 186
    .local v14, "iowaitTime":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getLastIrqTime()I

    move-result v15

    .line 187
    .local v15, "irqTime":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getLastSoftIrqTime()I

    move-result v18

    .line 188
    .local v18, "softIrqTime":I
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getLastIdleTime()I

    move-result v13

    .line 190
    .local v13, "idleTime":I
    add-int v2, v25, v21

    add-int/2addr v2, v14

    add-int/2addr v2, v15

    add-int v2, v2, v18

    add-int v24, v2, v13

    .line 191
    .local v24, "totalTime":I
    if-nez v24, :cond_1

    .line 259
    :cond_0
    return-void

    .line 194
    :cond_1
    mul-int v2, v25, v10

    div-int v26, v2, v24

    .line 195
    .local v26, "userW":I
    mul-int v2, v21, v10

    div-int v22, v2, v24

    .line 196
    .local v22, "systemW":I
    add-int v2, v14, v15

    add-int v2, v2, v18

    mul-int/2addr v2, v10

    div-int v16, v2, v24

    .line 198
    .local v16, "irqW":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v27, v9, v2

    .line 199
    .local v27, "x":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingTop:I

    add-int/lit8 v23, v2, 0x2

    .line 200
    .local v23, "top":I
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int/2addr v2, v3

    add-int/lit8 v11, v2, -0x2

    .line 202
    .local v11, "bottom":I
    if-lez v16, :cond_2

    .line 203
    sub-int v2, v27, v16

    int-to-float v3, v2

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mIrqPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 204
    sub-int v27, v27, v16

    .line 206
    :cond_2
    if-lez v22, :cond_3

    .line 207
    sub-int v2, v27, v22

    int-to-float v3, v2

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 208
    sub-int v27, v27, v22

    .line 210
    :cond_3
    if-lez v26, :cond_4

    .line 211
    sub-int v2, v27, v26

    int-to-float v3, v2

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 212
    sub-int v27, v27, v26

    .line 215
    :cond_4
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingTop:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mAscent:F

    float-to-int v3, v3

    sub-int v28, v2, v3

    .line 216
    .local v28, "y":I
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 218
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 220
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 222
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 224
    move-object/from16 v0, v20

    iget-object v2, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadText:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v20

    iget v4, v0, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v28

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 227
    invoke-virtual/range {v20 .. v20}, Lcom/android/systemui/LoadAverageService$CpuTracker;->countWorkingStats()I

    move-result v8

    .line 228
    .local v8, "N":I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    if-ge v12, v8, :cond_0

    .line 229
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v19

    .line 230
    .local v19, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int v28, v28, v2

    .line 231
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int v23, v23, v2

    .line 232
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int/2addr v11, v2

    .line 234
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_utime:I

    mul-int/2addr v2, v10

    div-int v26, v2, v24

    .line 235
    move-object/from16 v0, v19

    iget v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->rel_stime:I

    mul-int/2addr v2, v10

    div-int v22, v2, v24

    .line 236
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v27, v9, v2

    .line 237
    if-lez v22, :cond_5

    .line 238
    sub-int v2, v27, v22

    int-to-float v3, v2

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mSystemPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 239
    sub-int v27, v27, v22

    .line 241
    :cond_5
    if-lez v26, :cond_6

    .line 242
    sub-int v2, v27, v26

    int-to-float v3, v2

    move/from16 v0, v23

    int-to-float v4, v0

    move/from16 v0, v27

    int-to-float v5, v0

    int-to-float v6, v11

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mUserPaint:Landroid/graphics/Paint;

    move-object/from16 v2, p1

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 243
    sub-int v27, v27, v26

    .line 246
    :cond_6
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 248
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadowPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 250
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, -0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 252
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    add-int/lit8 v4, v28, 0x1

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mShadow2Paint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mLoadPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 255
    .local v17, "p":Landroid/graphics/Paint;
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->added:Z

    if-eqz v2, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mAddedPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 256
    :cond_7
    move-object/from16 v0, v19

    iget-boolean v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->removed:Z

    if-eqz v2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mRemovedPaint:Landroid/graphics/Paint;

    move-object/from16 v17, v0

    .line 257
    :cond_8
    move-object/from16 v0, v19

    iget-object v2, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    sub-int v3, v9, v3

    move-object/from16 v0, v19

    iget v4, v0, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move/from16 v0, v28

    int-to-float v4, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 228
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_0
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 172
    iget v0, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededWidth:I

    invoke-static {v0, p1}, Lcom/android/systemui/LoadAverageService$LoadView;->resolveSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededHeight:I

    invoke-static {v1, p2}, Lcom/android/systemui/LoadAverageService$LoadView;->resolveSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/LoadAverageService$LoadView;->setMeasuredDimension(II)V

    .line 174
    return-void
.end method

.method updateDisplay()V
    .locals 10

    .prologue
    .line 262
    iget-object v6, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mStats:Lcom/android/systemui/LoadAverageService$CpuTracker;

    .line 263
    .local v6, "stats":Lcom/android/systemui/LoadAverageService$CpuTracker;
    invoke-virtual {v6}, Lcom/android/systemui/LoadAverageService$CpuTracker;->countWorkingStats()I

    move-result v0

    .line 265
    .local v0, "NW":I
    iget v2, v6, Lcom/android/systemui/LoadAverageService$CpuTracker;->mLoadWidth:I

    .line 266
    .local v2, "maxWidth":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 267
    invoke-virtual {v6, v1}, Lcom/android/systemui/LoadAverageService$CpuTracker;->getWorkingStats(I)Lcom/android/internal/os/ProcessCpuTracker$Stats;

    move-result-object v5

    .line 268
    .local v5, "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    iget v7, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    if-le v7, v2, :cond_0

    .line 269
    iget v2, v5, Lcom/android/internal/os/ProcessCpuTracker$Stats;->nameWidth:I

    .line 266
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 273
    .end local v5    # "st":Lcom/android/internal/os/ProcessCpuTracker$Stats;
    :cond_1
    iget v7, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingLeft:I

    iget v8, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingRight:I

    add-int/2addr v7, v8

    add-int v4, v7, v2

    .line 274
    .local v4, "neededWidth":I
    iget v7, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingTop:I

    iget v8, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mPaddingBottom:I

    add-int/2addr v7, v8

    iget v8, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mFH:I

    add-int/lit8 v9, v0, 0x1

    mul-int/2addr v8, v9

    add-int v3, v7, v8

    .line 275
    .local v3, "neededHeight":I
    iget v7, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededWidth:I

    if-ne v4, v7, :cond_2

    iget v7, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededHeight:I

    if-eq v3, v7, :cond_3

    .line 276
    :cond_2
    iput v4, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededWidth:I

    .line 277
    iput v3, p0, Lcom/android/systemui/LoadAverageService$LoadView;->mNeededHeight:I

    .line 278
    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$LoadView;->requestLayout()V

    .line 282
    :goto_1
    return-void

    .line 280
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/LoadAverageService$LoadView;->invalidate()V

    goto :goto_1
.end method

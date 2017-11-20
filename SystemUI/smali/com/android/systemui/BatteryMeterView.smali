.class public Lcom/android/systemui/BatteryMeterView;
.super Landroid/view/View;
.source "BatteryMeterView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/BatteryMeterView$1;,
        Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mBatteryPaint:Landroid/graphics/Paint;

.field private final mBoltFrame:Landroid/graphics/RectF;

.field mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field mButtonHeight:I

.field private final mChargeColor:I

.field private final mClipFrame:Landroid/graphics/RectF;

.field mColors:[I

.field private mDemoMode:Z

.field private mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private final mFrame:Landroid/graphics/RectF;

.field mFramePaint:Landroid/graphics/Paint;

.field private mHeight:I

.field mShowPercent:Z

.field private mTextHeight:F

.field mTextPaint:Landroid/graphics/Paint;

.field mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    const-class v0, Lcom/android/systemui/BatteryMeterView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/BatteryMeterView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 168
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 169
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 172
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/BatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 173
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 176
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 64
    new-instance v6, Landroid/graphics/Path;

    invoke-direct {v6}, Landroid/graphics/Path;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    .line 66
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    .line 67
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    .line 68
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    .line 69
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    .line 144
    new-instance v6, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 364
    new-instance v6, Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;-><init>(Lcom/android/systemui/BatteryMeterView;Lcom/android/systemui/BatteryMeterView$1;)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 179
    .local v5, "res":Landroid/content/res/Resources;
    const v6, 0x7f060003

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 180
    .local v4, "levels":Landroid/content/res/TypedArray;
    const v6, 0x7f060004

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 182
    .local v1, "colors":Landroid/content/res/TypedArray;
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->length()I

    move-result v0

    .line 183
    .local v0, "N":I
    mul-int/lit8 v6, v0, 0x2

    new-array v6, v6, [I

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    .line 184
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 185
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    const/4 v8, 0x0

    invoke-virtual {v4, v3, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    aput v8, v6, v7

    .line 186
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    mul-int/lit8 v7, v3, 0x2

    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v1, v3, v8}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v6, v7

    .line 184
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 188
    :cond_0
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 189
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 190
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "status_bar_show_battery_percent"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, p0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    .line 193
    const v6, 0x7f0a00b7

    invoke-virtual {p1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    .line 195
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    .line 196
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const v7, 0x7f080006

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 197
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 198
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 199
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    new-instance v7, Landroid/graphics/PorterDuffXfermode;

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->DST_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v7, v8}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 202
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    .line 203
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setDither(Z)V

    .line 204
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 205
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 207
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    .line 208
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v7, -0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 209
    const-string v6, "sans-serif-condensed"

    const/4 v7, 0x0

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 210
    .local v2, "font":Landroid/graphics/Typeface;
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 211
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 213
    new-instance v6, Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-direct {v6, v7}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    .line 214
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v7, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    const/4 v8, 0x1

    aget v7, v7, v8

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 215
    const-string v6, "sans-serif"

    const/4 v7, 0x1

    invoke-static {v6, v7}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    .line 216
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 217
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 219
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f080007

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    .line 221
    new-instance v6, Landroid/graphics/Paint;

    invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    .line 222
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 223
    iget-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    const v7, 0x7f080008

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v6, v7}, Landroid/graphics/Paint;->setColor(I)V

    .line 224
    invoke-static {v5}, Lcom/android/systemui/BatteryMeterView;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v6

    iput-object v6, p0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    .line 225
    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0, v6, v7}, Lcom/android/systemui/BatteryMeterView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 226
    return-void

    .line 190
    .end local v2    # "font":Landroid/graphics/Typeface;
    :cond_1
    const/4 v6, 0x0

    goto/16 :goto_1
.end method

.method private getColorForLevel(I)I
    .locals 6
    .param p1, "percent"    # I

    .prologue
    .line 252
    const/4 v0, 0x0

    .line 253
    .local v0, "color":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    array-length v4, v4

    if-ge v2, v4, :cond_1

    .line 254
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    aget v3, v4, v2

    .line 255
    .local v3, "thresh":I
    iget-object v4, p0, Lcom/android/systemui/BatteryMeterView;->mColors:[I

    add-int/lit8 v5, v2, 0x1

    aget v0, v4, v5

    .line 256
    if-gt p1, v3, :cond_0

    move v1, v0

    .line 258
    .end local v0    # "color":I
    .end local v3    # "thresh":I
    .local v1, "color":I
    :goto_1
    return v1

    .line 253
    .end local v1    # "color":I
    .restart local v0    # "color":I
    .restart local v3    # "thresh":I
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .end local v3    # "thresh":I
    :cond_1
    move v1, v0

    .line 258
    .end local v0    # "color":I
    .restart local v1    # "color":I
    goto :goto_1
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8
    .param p0, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 229
    const v5, 0x7f060005

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v3

    .line 230
    .local v3, "pts":[I
    const/4 v1, 0x0

    .local v1, "maxX":I
    const/4 v2, 0x0

    .line 231
    .local v2, "maxY":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v5, v3

    if-ge v0, v5, :cond_0

    .line 232
    aget v5, v3, v0

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 233
    add-int/lit8 v5, v0, 0x1

    aget v5, v3, v5

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 231
    add-int/lit8 v0, v0, 0x2

    goto :goto_0

    .line 235
    :cond_0
    array-length v5, v3

    new-array v4, v5, [F

    .line 236
    .local v4, "ptsF":[F
    const/4 v0, 0x0

    :goto_1
    array-length v5, v3

    if-ge v0, v5, :cond_1

    .line 237
    aget v5, v3, v0

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    aput v5, v4, v0

    .line 238
    add-int/lit8 v5, v0, 0x1

    add-int/lit8 v6, v0, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    int-to-float v7, v2

    div-float/2addr v6, v7

    aput v6, v4, v5

    .line 236
    add-int/lit8 v0, v0, 0x2

    goto :goto_1

    .line 240
    :cond_1
    return-object v4
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 29
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 263
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mDemoMode:Z

    move/from16 v23, v0

    if-eqz v23, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mDemoTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v19, v0

    .line 264
    .local v19, "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :goto_0
    move-object/from16 v0, v19

    iget v13, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    .line 266
    .local v13, "level":I
    const/16 v23, -0x1

    move/from16 v0, v23

    if-ne v13, v0, :cond_2

    .line 361
    :cond_0
    :goto_1
    return-void

    .line 263
    .end local v13    # "level":I
    .end local v19    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    move-object/from16 v19, v0

    goto :goto_0

    .line 268
    .restart local v13    # "level":I
    .restart local v19    # "tracker":Lcom/android/systemui/BatteryMeterView$BatteryTracker;
    :cond_2
    int-to-float v0, v13

    move/from16 v23, v0

    const/high16 v24, 0x42c80000    # 100.0f

    div-float v10, v23, v24

    .line 269
    .local v10, "drawFrac":F
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingTop()I

    move-result v17

    .line 270
    .local v17, "pt":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingLeft()I

    move-result v15

    .line 271
    .local v15, "pl":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingRight()I

    move-result v16

    .line 272
    .local v16, "pr":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/BatteryMeterView;->getPaddingBottom()I

    move-result v14

    .line 273
    .local v14, "pb":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    move/from16 v23, v0

    sub-int v23, v23, v17

    sub-int v11, v23, v14

    .line 274
    .local v11, "height":I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    move/from16 v23, v0

    sub-int v23, v23, v15

    sub-int v20, v23, v16

    .line 276
    .local v20, "width":I
    int-to-float v0, v11

    move/from16 v23, v0

    const v24, 0x3df5c28f    # 0.12f

    mul-float v23, v23, v24

    move/from16 v0, v23

    float-to-int v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mButtonHeight:I

    .line 278
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v26, v0

    int-to-float v0, v11

    move/from16 v27, v0

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/RectF;->set(FFFF)V

    .line 279
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    int-to-float v0, v15

    move/from16 v24, v0

    move/from16 v0, v17

    int-to-float v0, v0

    move/from16 v25, v0

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/RectF;->offset(FF)V

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v25, v0

    const/high16 v26, 0x3e800000    # 0.25f

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v26, v0

    move/from16 v0, v20

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x3e800000    # 0.25f

    mul-float v27, v27, v28

    sub-float v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    move-object/from16 v0, v27

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v27, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeight:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-float v0, v0

    move/from16 v28, v0

    add-float v27, v27, v28

    const/high16 v28, 0x40a00000    # 5.0f

    add-float v27, v27, v28

    invoke-virtual/range {v23 .. v27}, Landroid/graphics/RectF;->set(FFFF)V

    .line 287
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonHeight:I

    move/from16 v25, v0

    move/from16 v0, v25

    int-to-float v0, v0

    move/from16 v25, v0

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->left:F

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->right:F

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v24, v0

    const v25, 0x3ecccccd    # 0.4f

    sub-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->bottom:F

    .line 298
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 301
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_5

    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/systemui/BatteryMeterView;->mChargeColor:I

    .line 302
    .local v9, "color":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setColor(I)V

    .line 304
    const/16 v23, 0x60

    move/from16 v0, v23

    if-lt v13, v0, :cond_6

    .line 305
    const/high16 v10, 0x3f800000    # 1.0f

    .line 310
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mButtonFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    const/high16 v23, 0x3f800000    # 1.0f

    cmpl-float v23, v10, v23

    if-nez v23, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    :goto_4
    move-object/from16 v0, p1

    move-object/from16 v1, v24

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/RectF;->height()F

    move-result v25

    const/high16 v26, 0x3f800000    # 1.0f

    sub-float v26, v26, v10

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move/from16 v0, v24

    move-object/from16 v1, v23

    iput v0, v1, Landroid/graphics/RectF;->top:F

    .line 315
    const/16 v23, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->save(I)I

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mClipFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/RectF;)Z

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBatteryPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 318
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 320
    move-object/from16 v0, v19

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->plugged:Z

    move/from16 v23, v0

    if-eqz v23, :cond_a

    .line 322
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    const/high16 v25, 0x40900000    # 4.5f

    div-float v24, v24, v25

    add-float v6, v23, v24

    .line 323
    .local v6, "bl":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    const/high16 v25, 0x40c00000    # 6.0f

    div-float v24, v24, v25

    add-float v8, v23, v24

    .line 324
    .local v8, "bt":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->width()F

    move-result v24

    const/high16 v25, 0x40e00000    # 7.0f

    div-float v24, v24, v25

    sub-float v7, v23, v24

    .line 325
    .local v7, "br":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Landroid/graphics/RectF;->height()F

    move-result v24

    const/high16 v25, 0x41200000    # 10.0f

    div-float v24, v24, v25

    sub-float v5, v23, v24

    .line 326
    .local v5, "bb":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v23, v0

    cmpl-float v23, v23, v6

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v23, v0

    cmpl-float v23, v23, v8

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->right:F

    move/from16 v23, v0

    cmpl-float v23, v23, v7

    if-nez v23, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    move/from16 v23, v0

    cmpl-float v23, v23, v5

    if-eqz v23, :cond_9

    .line 328
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6, v8, v7, v5}, Landroid/graphics/RectF;->set(FFFF)V

    .line 329
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Path;->reset()V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->moveTo(FF)V

    .line 333
    const/4 v12, 0x2

    .local v12, "i":I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    array-length v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    if-ge v12, v0, :cond_8

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v25, v0

    aget v25, v25, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    add-int/lit8 v27, v12, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->lineTo(FF)V

    .line 333
    add-int/lit8 v12, v12, 0x2

    goto :goto_5

    .line 301
    .end local v5    # "bb":F
    .end local v6    # "bl":F
    .end local v7    # "br":F
    .end local v8    # "bt":F
    .end local v9    # "color":I
    .end local v12    # "i":I
    :cond_5
    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/systemui/BatteryMeterView;->getColorForLevel(I)I

    move-result v9

    goto/16 :goto_2

    .line 306
    .restart local v9    # "color":I
    :cond_6
    const/16 v23, 0x4

    move/from16 v0, v23

    if-gt v13, v0, :cond_3

    .line 307
    const/4 v10, 0x0

    goto/16 :goto_3

    .line 310
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mFramePaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    goto/16 :goto_4

    .line 338
    .restart local v5    # "bb":F
    .restart local v6    # "bl":F
    .restart local v7    # "br":F
    .restart local v8    # "bt":F
    .restart local v12    # "i":I
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v24, v0

    move-object/from16 v0, v24

    iget v0, v0, Landroid/graphics/RectF;->left:F

    move/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aget v25, v25, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Landroid/graphics/RectF;->width()F

    move-result v26

    mul-float v25, v25, v26

    add-float v24, v24, v25

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    iget v0, v0, Landroid/graphics/RectF;->top:F

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPoints:[F

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltFrame:Landroid/graphics/RectF;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Landroid/graphics/RectF;->height()F

    move-result v27

    mul-float v26, v26, v27

    add-float v25, v25, v26

    invoke-virtual/range {v23 .. v25}, Landroid/graphics/Path;->lineTo(FF)V

    .line 342
    .end local v12    # "i":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPath:Landroid/graphics/Path;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mBoltPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 343
    .end local v5    # "bb":F
    .end local v6    # "bl":F
    .end local v7    # "br":F
    .end local v8    # "bt":F
    :cond_a
    const/16 v23, 0x4

    move/from16 v0, v23

    if-gt v13, v0, :cond_b

    .line 344
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v21, v23, v24

    .line 345
    .local v21, "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    const v24, 0x3ef5c28f    # 0.48f

    mul-float v22, v23, v24

    .line 346
    .local v22, "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningString:Ljava/lang/String;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v24

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 347
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_b
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/systemui/BatteryMeterView;->mShowPercent:Z

    move/from16 v23, v0

    if-eqz v23, :cond_0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v23, v0

    const/16 v24, 0x64

    move/from16 v0, v23

    move/from16 v1, v24

    if-eq v0, v1, :cond_0

    .line 348
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v24, v0

    int-to-float v0, v11

    move/from16 v25, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->level:I

    move/from16 v23, v0

    const/16 v26, 0x64

    move/from16 v0, v23

    move/from16 v1, v26

    if-ne v0, v1, :cond_c

    const v23, 0x3ec28f5c    # 0.38f

    :goto_6
    mul-float v23, v23, v25

    move-object/from16 v0, v24

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 351
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v23

    move-object/from16 v0, v23

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    move/from16 v23, v0

    move/from16 v0, v23

    neg-float v0, v0

    move/from16 v23, v0

    move/from16 v0, v23

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    .line 353
    invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v18

    .line 354
    .local v18, "str":Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    const/high16 v24, 0x3f000000    # 0.5f

    mul-float v21, v23, v24

    .line 355
    .restart local v21    # "x":F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    move/from16 v23, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextHeight:F

    move/from16 v24, v0

    add-float v23, v23, v24

    const v24, 0x3ef0a3d7    # 0.47f

    mul-float v22, v23, v24

    .line 356
    .restart local v22    # "y":F
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/systemui/BatteryMeterView;->mTextPaint:Landroid/graphics/Paint;

    move-object/from16 v23, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v22

    move-object/from16 v4, v23

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 348
    .end local v18    # "str":Ljava/lang/String;
    .end local v21    # "x":F
    .end local v22    # "y":F
    :cond_c
    const/high16 v23, 0x3f000000    # 0.5f

    goto :goto_6
.end method

.method public onAttachedToWindow()V
    .locals 4

    .prologue
    .line 148
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 150
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 151
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 152
    const-string v2, "com.android.systemui.BATTERY_LEVEL_TEST"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 154
    .local v1, "sticky":Landroid/content/Intent;
    if-eqz v1, :cond_0

    .line 156
    iget-object v2, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/systemui/BatteryMeterView$BatteryTracker;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 158
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .prologue
    .line 162
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 164
    invoke-virtual {p0}, Lcom/android/systemui/BatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/BatteryMeterView;->mTracker:Lcom/android/systemui/BatteryMeterView$BatteryTracker;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 165
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 245
    iput p2, p0, Lcom/android/systemui/BatteryMeterView;->mHeight:I

    .line 246
    iput p1, p0, Lcom/android/systemui/BatteryMeterView;->mWidth:I

    .line 247
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    int-to-float v1, p2

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 248
    iget-object v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/android/systemui/BatteryMeterView;->mWarningTextHeight:F

    .line 249
    return-void
.end method

.class public Lcom/google/glass/maps/SchematicView;
.super Landroid/view/View;
.source "SourceFile"


# static fields
.field private static final MAX_SEGMENTS:I = 0xf

.field private static final TAG:Ljava/lang/String;

.field private static circleRadius:I

.field private static innerCircleRadius:I

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static margin:I

.field private static final paint:Landroid/graphics/Paint;

.field private static final path:Landroid/graphics/Path;

.field private static strokeWidth:I


# instance fields
.field private minimumWidthPx:I

.field private segments:[Lcom/google/glass/maps/SchematicSegment;

.field private totalWeight:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/google/glass/maps/SchematicView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/SchematicView;->TAG:Ljava/lang/String;

    .line 29
    sget-object v0, Lcom/google/glass/maps/SchematicView;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/maps/SchematicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 42
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    .line 43
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    sput-object v0, Lcom/google/glass/maps/SchematicView;->path:Landroid/graphics/Path;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/SchematicView;->totalWeight:I

    .line 66
    invoke-direct {p0}, Lcom/google/glass/maps/SchematicView;->init()V

    .line 67
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 70
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/SchematicView;->totalWeight:I

    .line 71
    invoke-direct {p0}, Lcom/google/glass/maps/SchematicView;->init()V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/maps/SchematicView;->totalWeight:I

    .line 76
    invoke-direct {p0}, Lcom/google/glass/maps/SchematicView;->init()V

    .line 77
    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;FI)V
    .locals 3

    .prologue
    .line 281
    sget-object v0, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 283
    sget-object v0, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 284
    sget-object v0, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 286
    invoke-virtual {p0}, Lcom/google/glass/maps/SchematicView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 289
    sget-object v1, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 290
    sget v1, Lcom/google/glass/maps/SchematicView;->circleRadius:I

    int-to-float v1, v1

    sget-object v2, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 291
    sget-object v1, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 292
    sget v1, Lcom/google/glass/maps/SchematicView;->innerCircleRadius:I

    int-to-float v1, v1

    sget-object v2, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 293
    return-void
.end method

.method private drawLineSegment(Landroid/graphics/Canvas;FFIZ)V
    .locals 4

    .prologue
    .line 261
    sget-object v0, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 263
    sget-object v0, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 264
    sget-object v0, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    invoke-virtual {v0, p4}, Landroid/graphics/Paint;->setColor(I)V

    .line 265
    sget-object v0, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 266
    sget-object v0, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    sget v1, Lcom/google/glass/maps/SchematicView;->strokeWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 268
    if-eqz p5, :cond_0

    .line 270
    sget-object v0, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/DashPathEffect;

    const/4 v2, 0x2

    new-array v2, v2, [F

    fill-array-data v2, :array_0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 273
    :cond_0
    sget-object v0, Lcom/google/glass/maps/SchematicView;->path:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->rewind()V

    .line 274
    invoke-virtual {p0}, Lcom/google/glass/maps/SchematicView;->getHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    .line 275
    sget-object v1, Lcom/google/glass/maps/SchematicView;->path:Landroid/graphics/Path;

    invoke-virtual {v1, p2, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 276
    sget-object v1, Lcom/google/glass/maps/SchematicView;->path:Landroid/graphics/Path;

    invoke-virtual {v1, p3, v0}, Landroid/graphics/Path;->lineTo(FF)V

    .line 277
    sget-object v0, Lcom/google/glass/maps/SchematicView;->path:Landroid/graphics/Path;

    sget-object v1, Lcom/google/glass/maps/SchematicView;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 278
    return-void

    .line 270
    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method private init()V
    .locals 2

    .prologue
    .line 80
    invoke-virtual {p0}, Lcom/google/glass/maps/SchematicView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->schematic_margin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/glass/maps/SchematicView;->margin:I

    .line 81
    invoke-virtual {p0}, Lcom/google/glass/maps/SchematicView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->schematic_line_stroke_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/glass/maps/SchematicView;->strokeWidth:I

    .line 82
    invoke-virtual {p0}, Lcom/google/glass/maps/SchematicView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->schematic_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/glass/maps/SchematicView;->circleRadius:I

    .line 83
    invoke-virtual {p0}, Lcom/google/glass/maps/SchematicView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/glass/common/R$dimen;->schematic_inner_circle_radius:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/google/glass/maps/SchematicView;->innerCircleRadius:I

    .line 86
    sget v0, Lcom/google/glass/maps/SchematicView;->circleRadius:I

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/google/glass/maps/SchematicView;->minimumWidthPx:I

    .line 87
    return-void
.end method

.method static validate([Lcom/google/glass/maps/SchematicSegment;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 104
    if-nez p0, :cond_1

    move v1, v2

    .line 156
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    array-length v0, p0

    const/16 v3, 0xf

    if-le v0, v3, :cond_2

    move v1, v2

    .line 112
    goto :goto_0

    .line 115
    :cond_2
    array-length v0, p0

    packed-switch v0, :pswitch_data_0

    .line 139
    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->START:Lcom/google/glass/maps/SchematicSegment$Type;

    if-eq v0, v3, :cond_5

    .line 140
    sget-object v0, Lcom/google/glass/maps/SchematicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Segment 0 of an overview must be a start"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 141
    goto :goto_0

    :pswitch_0
    move v1, v2

    .line 117
    goto :goto_0

    .line 120
    :pswitch_1
    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->TRANSFER:Lcom/google/glass/maps/SchematicSegment$Type;

    if-ne v0, v3, :cond_0

    .line 121
    sget-object v0, Lcom/google/glass/maps/SchematicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Transfer requires an initial CONTINUE segment"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 122
    goto :goto_0

    .line 126
    :pswitch_2
    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->CONTINUE:Lcom/google/glass/maps/SchematicSegment$Type;

    if-ne v0, v3, :cond_3

    aget-object v0, p0, v1

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->TRANSFER:Lcom/google/glass/maps/SchematicSegment$Type;

    if-eq v0, v3, :cond_0

    .line 129
    :cond_3
    aget-object v0, p0, v2

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->START:Lcom/google/glass/maps/SchematicSegment$Type;

    if-ne v0, v3, :cond_4

    aget-object v0, p0, v1

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->END:Lcom/google/glass/maps/SchematicSegment$Type;

    if-eq v0, v3, :cond_0

    .line 133
    :cond_4
    sget-object v0, Lcom/google/glass/maps/SchematicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Illegal 2 segment schematic.  Segment 0: %s, Segment 1: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v5, p0, v2

    iget-object v5, v5, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    aput-object v5, v4, v2

    aget-object v5, p0, v1

    iget-object v5, v5, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 135
    goto :goto_0

    .line 143
    :cond_5
    array-length v0, p0

    add-int/lit8 v0, v0, -0x1

    aget-object v0, p0, v0

    iget-object v0, v0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v3, Lcom/google/glass/maps/SchematicSegment$Type;->END:Lcom/google/glass/maps/SchematicSegment$Type;

    if-eq v0, v3, :cond_6

    .line 144
    sget-object v0, Lcom/google/glass/maps/SchematicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Last segment of an overview must be an end"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 145
    goto/16 :goto_0

    :cond_6
    move v0, v1

    .line 148
    :goto_1
    array-length v3, p0

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_0

    .line 149
    aget-object v3, p0, v0

    iget-object v3, v3, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v4, Lcom/google/glass/maps/SchematicSegment$Type;->TRANSFER:Lcom/google/glass/maps/SchematicSegment$Type;

    if-eq v3, v4, :cond_7

    .line 150
    sget-object v0, Lcom/google/glass/maps/SchematicView;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Middle segments of an overview must be transfers"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 151
    goto/16 :goto_0

    .line 148
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 115
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method getSegmentWidth(ILcom/google/glass/maps/SchematicSegment;)I
    .locals 8

    .prologue
    .line 250
    iget-object v0, p0, Lcom/google/glass/maps/SchematicView;->segments:[Lcom/google/glass/maps/SchematicSegment;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/google/glass/maps/SchematicView;->minimumWidthPx:I

    mul-int/2addr v0, v1

    .line 251
    sub-int v0, p1, v0

    .line 255
    iget v1, p0, Lcom/google/glass/maps/SchematicView;->minimumWidthPx:I

    int-to-double v2, v0

    iget-wide v4, p2, Lcom/google/glass/maps/SchematicSegment;->weight:J

    long-to-double v4, v4

    iget v0, p0, Lcom/google/glass/maps/SchematicView;->totalWeight:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    mul-double/2addr v2, v4

    .line 256
    invoke-static {v2, v3}, Ljava/lang/Math;->round(D)J

    move-result-wide v2

    long-to-int v0, v2

    add-int/2addr v0, v1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17

    .prologue
    .line 161
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/SchematicView;->segments:[Lcom/google/glass/maps/SchematicSegment;

    if-nez v2, :cond_1

    .line 244
    :cond_0
    return-void

    .line 166
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/maps/SchematicView;->getWidth()I

    move-result v2

    sget v3, Lcom/google/glass/maps/SchematicView;->margin:I

    mul-int/lit8 v3, v3, 0x2

    sub-int v12, v2, v3

    .line 167
    sget v2, Lcom/google/glass/maps/SchematicView;->circleRadius:I

    mul-int/lit8 v13, v2, 0x2

    .line 169
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/SchematicView;->segments:[Lcom/google/glass/maps/SchematicSegment;

    array-length v2, v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    const/4 v2, 0x1

    move v8, v2

    .line 171
    :goto_0
    sget v3, Lcom/google/glass/maps/SchematicView;->margin:I

    .line 172
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/google/glass/maps/SchematicView;->segments:[Lcom/google/glass/maps/SchematicSegment;

    array-length v15, v14

    const/4 v2, 0x0

    move v10, v2

    move v11, v3

    :goto_1
    if-ge v10, v15, :cond_0

    aget-object v16, v14, v10

    .line 176
    const/4 v9, 0x0

    .line 178
    sget-object v2, Lcom/google/glass/maps/SchematicView$1;->$SwitchMap$com$google$glass$maps$SchematicSegment$Type:[I

    move-object/from16 v0, v16

    iget-object v3, v0, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    invoke-virtual {v3}, Lcom/google/glass/maps/SchematicSegment$Type;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 242
    :goto_2
    add-int v3, v11, v9

    .line 172
    add-int/lit8 v2, v10, 0x1

    move v10, v2

    move v11, v3

    goto :goto_1

    .line 169
    :cond_2
    const/4 v2, 0x0

    move v8, v2

    goto :goto_0

    .line 180
    :pswitch_0
    sget v2, Lcom/google/glass/maps/SchematicView;->margin:I

    sget v3, Lcom/google/glass/maps/SchematicView;->circleRadius:I

    add-int/2addr v2, v3

    int-to-float v5, v2

    .line 181
    sget v2, Lcom/google/glass/maps/SchematicView;->circleRadius:I

    int-to-float v2, v2

    add-float/2addr v2, v5

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v2, v3

    .line 182
    if-eqz v8, :cond_3

    .line 185
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/maps/SchematicView;->getWidth()I

    move-result v2

    sget v3, Lcom/google/glass/maps/SchematicView;->margin:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 191
    :goto_3
    move-object/from16 v0, v16

    iget v3, v0, Lcom/google/glass/maps/SchematicSegment;->color:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v5, v3}, Lcom/google/glass/maps/SchematicView;->drawCircle(Landroid/graphics/Canvas;FI)V

    .line 192
    add-float v5, v4, v2

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/glass/maps/SchematicSegment;->color:I

    move-object/from16 v0, v16

    iget-boolean v7, v0, Lcom/google/glass/maps/SchematicSegment;->isDotted:Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/maps/SchematicView;->drawLineSegment(Landroid/graphics/Canvas;FFIZ)V

    goto :goto_2

    .line 187
    :cond_3
    sget v2, Lcom/google/glass/maps/SchematicView;->circleRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/google/glass/maps/SchematicView;->getSegmentWidth(ILcom/google/glass/maps/SchematicSegment;)I

    move-result v2

    .line 188
    sub-int v3, v2, v13

    add-int/lit8 v3, v3, 0x1

    int-to-float v3, v3

    move v9, v2

    move v2, v3

    goto :goto_3

    .line 195
    :pswitch_1
    if-eqz v8, :cond_4

    .line 198
    const/4 v4, 0x0

    .line 199
    sget v2, Lcom/google/glass/maps/SchematicView;->margin:I

    int-to-float v2, v2

    .line 200
    add-float v5, v4, v2

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/glass/maps/SchematicSegment;->color:I

    move-object/from16 v0, v16

    iget-boolean v7, v0, Lcom/google/glass/maps/SchematicSegment;->isDotted:Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/maps/SchematicView;->drawLineSegment(Landroid/graphics/Canvas;FFIZ)V

    .line 202
    sget v2, Lcom/google/glass/maps/SchematicView;->margin:I

    sget v3, Lcom/google/glass/maps/SchematicView;->circleRadius:I

    add-int/2addr v2, v3

    int-to-float v2, v2

    .line 208
    :goto_4
    move-object/from16 v0, v16

    iget v3, v0, Lcom/google/glass/maps/SchematicSegment;->color:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/google/glass/maps/SchematicView;->drawCircle(Landroid/graphics/Canvas;FI)V

    goto :goto_2

    .line 204
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/maps/SchematicView;->getWidth()I

    move-result v2

    sget v3, Lcom/google/glass/maps/SchematicView;->margin:I

    sub-int/2addr v2, v3

    sget v3, Lcom/google/glass/maps/SchematicView;->circleRadius:I

    sub-int/2addr v2, v3

    add-int/lit8 v2, v2, -0x1

    int-to-float v2, v2

    goto :goto_4

    .line 211
    :pswitch_2
    if-eqz v8, :cond_5

    .line 214
    const/4 v4, 0x0

    .line 215
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/maps/SchematicView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    .line 216
    add-float v5, v4, v2

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/glass/maps/SchematicSegment;->color:I

    move-object/from16 v0, v16

    iget-boolean v7, v0, Lcom/google/glass/maps/SchematicSegment;->isDotted:Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/maps/SchematicView;->drawLineSegment(Landroid/graphics/Canvas;FFIZ)V

    goto/16 :goto_2

    .line 219
    :cond_5
    const/4 v4, 0x0

    .line 220
    sget v2, Lcom/google/glass/maps/SchematicView;->margin:I

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    .line 221
    add-float v5, v4, v2

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/glass/maps/SchematicSegment;->color:I

    move-object/from16 v0, v16

    iget-boolean v7, v0, Lcom/google/glass/maps/SchematicSegment;->isDotted:Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/maps/SchematicView;->drawLineSegment(Landroid/graphics/Canvas;FFIZ)V

    goto/16 :goto_2

    .line 225
    :pswitch_3
    sget v2, Lcom/google/glass/maps/SchematicView;->circleRadius:I

    add-int/2addr v2, v11

    int-to-float v3, v2

    .line 226
    sget v2, Lcom/google/glass/maps/SchematicView;->circleRadius:I

    int-to-float v2, v2

    add-float/2addr v2, v3

    const/high16 v4, 0x3f800000    # 1.0f

    sub-float v4, v2, v4

    .line 228
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/google/glass/maps/SchematicView;->segments:[Lcom/google/glass/maps/SchematicSegment;

    array-length v2, v2

    const/4 v5, 0x2

    if-ne v2, v5, :cond_6

    .line 231
    invoke-virtual/range {p0 .. p0}, Lcom/google/glass/maps/SchematicView;->getWidth()I

    move-result v2

    sget v5, Lcom/google/glass/maps/SchematicView;->margin:I

    sub-int/2addr v2, v5

    move v9, v2

    .line 236
    :goto_5
    sub-int v2, v9, v13

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    int-to-float v2, v2

    .line 237
    move-object/from16 v0, v16

    iget v5, v0, Lcom/google/glass/maps/SchematicSegment;->color:I

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v3, v5}, Lcom/google/glass/maps/SchematicView;->drawCircle(Landroid/graphics/Canvas;FI)V

    .line 238
    add-float v5, v4, v2

    move-object/from16 v0, v16

    iget v6, v0, Lcom/google/glass/maps/SchematicSegment;->color:I

    move-object/from16 v0, v16

    iget-boolean v7, v0, Lcom/google/glass/maps/SchematicSegment;->isDotted:Z

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v7}, Lcom/google/glass/maps/SchematicView;->drawLineSegment(Landroid/graphics/Canvas;FFIZ)V

    goto/16 :goto_2

    .line 233
    :cond_6
    sget v2, Lcom/google/glass/maps/SchematicView;->circleRadius:I

    mul-int/lit8 v2, v2, 0x2

    sub-int v2, v12, v2

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-virtual {v0, v2, v1}, Lcom/google/glass/maps/SchematicView;->getSegmentWidth(ILcom/google/glass/maps/SchematicSegment;)I

    move-result v2

    move v9, v2

    goto :goto_5

    .line 178
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setSegments([Lcom/google/glass/maps/SchematicSegment;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 90
    invoke-static {p1}, Lcom/google/glass/maps/SchematicView;->validate([Lcom/google/glass/maps/SchematicSegment;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 91
    iput-object p1, p0, Lcom/google/glass/maps/SchematicView;->segments:[Lcom/google/glass/maps/SchematicSegment;

    .line 93
    iput v0, p0, Lcom/google/glass/maps/SchematicView;->totalWeight:I

    .line 94
    array-length v1, p1

    :goto_0
    if-ge v0, v1, :cond_1

    aget-object v2, p1, v0

    .line 95
    iget-object v3, v2, Lcom/google/glass/maps/SchematicSegment;->type:Lcom/google/glass/maps/SchematicSegment$Type;

    sget-object v4, Lcom/google/glass/maps/SchematicSegment$Type;->END:Lcom/google/glass/maps/SchematicSegment$Type;

    if-eq v3, v4, :cond_0

    .line 97
    iget v3, p0, Lcom/google/glass/maps/SchematicView;->totalWeight:I

    int-to-long v3, v3

    iget-wide v5, v2, Lcom/google/glass/maps/SchematicSegment;->weight:J

    add-long v2, v3, v5

    long-to-int v2, v2

    iput v2, p0, Lcom/google/glass/maps/SchematicView;->totalWeight:I

    .line 94
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 101
    :cond_1
    return-void
.end method

.class public Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;
.super Landroid/view/View;
.source "LookAtScreenPlaypenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;
    }
.end annotation


# static fields
.field private static final WAVE_COLOR:I = -0x1

.field private static final WAVE_DURATION_MS:J

.field private static final WAVE_RADIUS_MINIMUM_PX:I = 0x32

.field private static final WAVE_STROKE_WIDTH_PX:I = 0xa


# instance fields
.field private centerDotPaint:Landroid/graphics/Paint;

.field private maxRadius:F

.field private oldWaves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;",
            ">;"
        }
    .end annotation
.end field

.field private wavePaint:Landroid/graphics/Paint;

.field private waves:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->WAVE_DURATION_MS:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->waves:Ljava/util/List;

    .line 41
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->oldWaves:Ljava/util/List;

    .line 95
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    .line 96
    .local v0, "displayMetrics":Landroid/util/DisplayMetrics;
    iget v1, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-double v1, v1

    .line 97
    invoke-static {v1, v2, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    iget v3, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-double v3, v3

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v3

    add-double/2addr v1, v3

    .line 96
    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    double-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->maxRadius:F

    .line 100
    invoke-direct {p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->createPaints()V

    .line 101
    return-void
.end method

.method static synthetic access$000()J
    .locals 2

    .prologue
    .line 25
    sget-wide v0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->WAVE_DURATION_MS:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->wavePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method private createPaints()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->wavePaint:Landroid/graphics/Paint;

    .line 145
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->wavePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 147
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->wavePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 148
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->wavePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41200000    # 10.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 150
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->centerDotPaint:Landroid/graphics/Paint;

    .line 151
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->centerDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 152
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->centerDotPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 153
    iget-object v0, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->centerDotPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 154
    return-void
.end method


# virtual methods
.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 8
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 113
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 116
    const/high16 v4, -0x1000000

    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v4

    div-int/lit8 v0, v4, 0x2

    .line 120
    .local v0, "centerX":I
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v4

    div-int/lit8 v1, v4, 0x2

    .line 123
    .local v1, "centerY":I
    int-to-float v4, v0

    int-to-float v5, v1

    const/high16 v6, 0x42480000    # 50.0f

    iget-object v7, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->centerDotPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 126
    iget-object v4, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->oldWaves:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 127
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v4, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->waves:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_1

    .line 128
    iget-object v4, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->waves:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;

    .line 129
    .local v3, "wave":Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;
    invoke-virtual {v3}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->getAlpha()F

    move-result v4

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    if-lez v4, :cond_0

    .line 130
    int-to-float v4, v0

    int-to-float v5, v1

    invoke-virtual {v3, v4, v5, p1}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;->draw(FFLandroid/graphics/Canvas;)V

    .line 127
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 132
    :cond_0
    iget-object v4, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->oldWaves:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 137
    .end local v3    # "wave":Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;
    :cond_1
    const/4 v2, 0x0

    :goto_2
    iget-object v4, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->oldWaves:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 138
    iget-object v4, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->oldWaves:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;

    .line 139
    .restart local v3    # "wave":Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;
    iget-object v4, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->waves:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 137
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 141
    .end local v3    # "wave":Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;
    :cond_2
    return-void
.end method

.method public pulse()V
    .locals 3

    .prologue
    .line 105
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertUiThread()V

    .line 106
    new-instance v0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;

    const/high16 v1, 0x42200000    # 40.0f

    iget v2, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->maxRadius:F

    invoke-direct {v0, p0, v1, v2}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;-><init>(Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;FF)V

    .line 107
    .local v0, "wave":Lcom/google/glass/settings/ui/LookAtScreenPlaypenView$Wave;
    iget-object v1, p0, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->waves:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/LookAtScreenPlaypenView;->invalidate()V

    .line 109
    return-void
.end method

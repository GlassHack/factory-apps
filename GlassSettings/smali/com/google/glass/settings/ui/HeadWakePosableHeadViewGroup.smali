.class public Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;
.super Landroid/widget/RelativeLayout;
.source "HeadWakePosableHeadViewGroup.java"


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final baseLayer:Landroid/widget/ImageView;

.field private final capLayer:Landroid/widget/ImageView;

.field enabled:Z

.field private final headLayer:Landroid/widget/ImageView;

.field private initialImageSizeCached:Z

.field private maxHeight:I

.field private maxWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "style"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 23
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->enabled:Z

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->initialImageSizeCached:Z

    .line 51
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/google/glass/settings/ui/R$layout;->posable_head_layout:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 54
    sget v0, Lcom/google/glass/settings/ui/R$id;->head_wake_icon_base:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->baseLayer:Landroid/widget/ImageView;

    .line 55
    sget v0, Lcom/google/glass/settings/ui/R$id;->head_wake_icon_head:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->headLayer:Landroid/widget/ImageView;

    .line 56
    sget v0, Lcom/google/glass/settings/ui/R$id;->head_wake_icon_cap:I

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->capLayer:Landroid/widget/ImageView;

    .line 57
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthSpec"    # I
    .param p2, "heightSpec"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 61
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 64
    iget-boolean v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->initialImageSizeCached:Z

    if-nez v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->baseLayer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredWidth()I

    move-result v0

    iput v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->maxWidth:I

    .line 66
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->baseLayer:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getMeasuredHeight()I

    move-result v0

    iput v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->maxHeight:I

    .line 67
    iput-boolean v4, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->initialImageSizeCached:Z

    .line 68
    sget-object v0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Base image size w,h = %s, %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->maxWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    iget v3, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->maxHeight:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 72
    iget v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->maxWidth:I

    iget v1, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->maxWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->maxHeight:I

    iget v2, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->maxHeight:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-int v0, v0

    iput v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->maxWidth:I

    .line 73
    sget-object v0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Max width = %s"

    new-array v2, v4, [Ljava/lang/Object;

    iget v3, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->maxWidth:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 78
    :cond_0
    iget v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->maxWidth:I

    iget v1, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->maxHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->setMeasuredDimension(II)V

    .line 79
    return-void
.end method

.method public setHeadAngleDegs(F)V
    .locals 2
    .param p1, "angleDegs"    # F

    .prologue
    .line 103
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->headLayer:Landroid/widget/ImageView;

    neg-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setRotation(F)V

    .line 104
    return-void
.end method

.method public setHeadWakeEnabled(Z)V
    .locals 3
    .param p1, "state"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 88
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->baseLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->headLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->capLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 98
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->invalidate()V

    .line 99
    return-void

    .line 95
    :cond_0
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->headLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/google/glass/settings/ui/HeadWakePosableHeadViewGroup;->capLayer:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

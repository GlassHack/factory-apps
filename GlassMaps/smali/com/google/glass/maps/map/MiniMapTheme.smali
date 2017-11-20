.class public Lcom/google/glass/maps/map/MiniMapTheme;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public backgroundColor:I

.field public poiLabels:Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;

.field public roadFillColor:I

.field public roadLabels:Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;

.field public roadOutlineColor:I

.field public roadWidthScaleFactor:F


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v3, -0x1

    const/4 v4, 0x0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    const v0, -0xcfcfd0

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapTheme;->backgroundColor:I

    .line 39
    const v0, -0x7f7f80

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapTheme;->roadFillColor:I

    .line 42
    const v0, -0x5f5f60

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapTheme;->roadOutlineColor:I

    .line 45
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/google/glass/maps/map/MiniMapTheme;->roadWidthScaleFactor:F

    .line 48
    new-instance v0, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;

    const-string v1, "sans-serif-condensed"

    const/4 v2, 0x1

    .line 49
    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;-><init>(Landroid/graphics/Typeface;FIILcom/google/glass/maps/map/MiniMapTheme$1;)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTheme;->roadLabels:Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;

    .line 55
    new-instance v0, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;

    const-string v1, "sans-serif-light"

    .line 56
    invoke-static {v1, v4}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    const/high16 v2, 0x41300000    # 11.0f

    invoke-direct/range {v0 .. v5}, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;-><init>(Landroid/graphics/Typeface;FIILcom/google/glass/maps/map/MiniMapTheme$1;)V

    iput-object v0, p0, Lcom/google/glass/maps/map/MiniMapTheme;->poiLabels:Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;

    .line 61
    return-void
.end method

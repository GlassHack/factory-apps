.class public Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public fillColor:I

.field public outlineColor:I

.field public sizeSp:F

.field public typeface:Landroid/graphics/Typeface;


# direct methods
.method private constructor <init>(Landroid/graphics/Typeface;FII)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    if-nez p1, :cond_0

    sget-object p1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    :cond_0
    iput-object p1, p0, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;->typeface:Landroid/graphics/Typeface;

    .line 29
    iput p2, p0, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;->sizeSp:F

    .line 30
    iput p3, p0, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;->fillColor:I

    .line 31
    iput p4, p0, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;->outlineColor:I

    .line 32
    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/Typeface;FIILcom/google/glass/maps/map/MiniMapTheme$1;)V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/glass/maps/map/MiniMapTheme$LabelTheme;-><init>(Landroid/graphics/Typeface;FII)V

    return-void
.end method

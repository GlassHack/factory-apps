.class public final Lcom/google/glass/sound/R$array;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "array"
.end annotation


# static fields
.field public static contact_colors:I

.field public static dynamic_text_baseline_positions:I

.field public static dynamic_text_line_spacing_adjustments:I

.field public static dynamic_text_sizes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const v0, 0x7f0b0003

    sput v0, Lcom/google/glass/sound/R$array;->contact_colors:I

    .line 40
    const v0, 0x7f0b0001

    sput v0, Lcom/google/glass/sound/R$array;->dynamic_text_baseline_positions:I

    .line 45
    const v0, 0x7f0b0002

    sput v0, Lcom/google/glass/sound/R$array;->dynamic_text_line_spacing_adjustments:I

    .line 48
    const/high16 v0, 0x7f0b0000

    sput v0, Lcom/google/glass/sound/R$array;->dynamic_text_sizes:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

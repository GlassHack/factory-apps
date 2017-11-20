.class public final Lcom/google/glass/sound/R$raw;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "raw"
.end annotation


# static fields
.field public static readme:I

.field public static sound_scale_01:I

.field public static sound_scale_02:I

.field public static sound_scale_03:I

.field public static sound_scale_04:I

.field public static sound_scale_05:I

.field public static sound_scale_06:I

.field public static sound_scale_07:I

.field public static sound_scale_08:I

.field public static sound_scale_resolve:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 805
    const/high16 v0, 0x7f060000

    sput v0, Lcom/google/glass/sound/R$raw;->readme:I

    .line 806
    const v0, 0x7f060001

    sput v0, Lcom/google/glass/sound/R$raw;->sound_scale_01:I

    .line 807
    const v0, 0x7f060002

    sput v0, Lcom/google/glass/sound/R$raw;->sound_scale_02:I

    .line 808
    const v0, 0x7f060003

    sput v0, Lcom/google/glass/sound/R$raw;->sound_scale_03:I

    .line 809
    const v0, 0x7f060004

    sput v0, Lcom/google/glass/sound/R$raw;->sound_scale_04:I

    .line 810
    const v0, 0x7f060005

    sput v0, Lcom/google/glass/sound/R$raw;->sound_scale_05:I

    .line 811
    const v0, 0x7f060006

    sput v0, Lcom/google/glass/sound/R$raw;->sound_scale_06:I

    .line 812
    const v0, 0x7f060007

    sput v0, Lcom/google/glass/sound/R$raw;->sound_scale_07:I

    .line 813
    const v0, 0x7f060008

    sput v0, Lcom/google/glass/sound/R$raw;->sound_scale_08:I

    .line 814
    const v0, 0x7f060009

    sput v0, Lcom/google/glass/sound/R$raw;->sound_scale_resolve:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 804
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

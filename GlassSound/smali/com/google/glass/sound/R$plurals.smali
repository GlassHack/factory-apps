.class public final Lcom/google/glass/sound/R$plurals;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/sound/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "plurals"
.end annotation


# static fields
.field public static time_days:I

.field public static time_hours:I

.field public static time_minutes:I

.field public static time_months:I

.field public static time_weeks:I

.field public static time_years:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 797
    const v0, 0x7f080002

    sput v0, Lcom/google/glass/sound/R$plurals;->time_days:I

    .line 798
    const v0, 0x7f080001

    sput v0, Lcom/google/glass/sound/R$plurals;->time_hours:I

    .line 799
    const/high16 v0, 0x7f080000

    sput v0, Lcom/google/glass/sound/R$plurals;->time_minutes:I

    .line 800
    const v0, 0x7f080004

    sput v0, Lcom/google/glass/sound/R$plurals;->time_months:I

    .line 801
    const v0, 0x7f080003

    sput v0, Lcom/google/glass/sound/R$plurals;->time_weeks:I

    .line 802
    const v0, 0x7f080005

    sput v0, Lcom/google/glass/sound/R$plurals;->time_years:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 796
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

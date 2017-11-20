.class public Lcom/google/glass/util/BatteryHelper$BatteryState;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PERCENT_CHARGED:I = 0x5f

.field public static final PERCENT_LOW:I = 0xa

.field public static final PERCENT_MEDIUM:I = 0x1e

.field public static final PERCENT_MINIMUM:I = 0x1

.field public static final PERCENT_UNKNOWN:I = -0x1


# instance fields
.field public isCharged:Z

.field public isCharging:Z

.field public isPowered:Z

.field public percent:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

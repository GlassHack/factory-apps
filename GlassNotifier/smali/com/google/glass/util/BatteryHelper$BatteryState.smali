.class public Lcom/google/glass/util/BatteryHelper$BatteryState;
.super Ljava/lang/Object;
.source "BatteryHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/util/BatteryHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryState"
.end annotation


# static fields
.field public static final PERCENT_CHARGED:I = 0x5f

.field public static final PERCENT_CRITICAL:I = 0x5

.field public static final PERCENT_LOW:I = 0x14

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
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

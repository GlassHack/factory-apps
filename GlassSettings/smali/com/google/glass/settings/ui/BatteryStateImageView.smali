.class public Lcom/google/glass/settings/ui/BatteryStateImageView;
.super Landroid/widget/ImageView;
.source "BatteryStateImageView.java"


# static fields
.field private static final CHARGING:[I

.field private static final DISCHARGING:[I


# instance fields
.field private final battery:Lcom/google/glass/util/BatteryHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 16
    const/16 v0, 0xb

    new-array v0, v0, [I

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_discharging_0_150:I

    aput v1, v0, v3

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_discharging_10_150:I

    aput v1, v0, v4

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_discharging_20_150:I

    aput v1, v0, v5

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_discharging_30_150:I

    aput v1, v0, v6

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_discharging_40_150:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_discharging_50_150:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_discharging_60_150:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_discharging_70_150:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_discharging_80_150:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_discharging_90_150:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_discharging_100_150:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/ui/BatteryStateImageView;->DISCHARGING:[I

    .line 31
    const/16 v0, 0xb

    new-array v0, v0, [I

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_charging_0_150:I

    aput v1, v0, v3

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_charging_10_150:I

    aput v1, v0, v4

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_charging_20_150:I

    aput v1, v0, v5

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_charging_30_150:I

    aput v1, v0, v6

    sget v1, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_charging_40_150:I

    aput v1, v0, v7

    const/4 v1, 0x5

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_charging_50_150:I

    aput v2, v0, v1

    const/4 v1, 0x6

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_charging_60_150:I

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_charging_70_150:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_charging_80_150:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_charging_90_150:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/google/glass/settings/ui/R$drawable;->ic_battery_charging_100_150:I

    aput v2, v0, v1

    sput-object v0, Lcom/google/glass/settings/ui/BatteryStateImageView;->CHARGING:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/google/glass/settings/ui/BatteryStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/settings/ui/BatteryStateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 57
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 58
    new-instance v0, Lcom/google/glass/util/BatteryHelper;

    invoke-direct {v0, p1}, Lcom/google/glass/util/BatteryHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/glass/settings/ui/BatteryStateImageView;->battery:Lcom/google/glass/util/BatteryHelper;

    .line 59
    return-void
.end method


# virtual methods
.method public update()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/google/glass/settings/ui/BatteryStateImageView;->battery:Lcom/google/glass/util/BatteryHelper;

    invoke-virtual {v0}, Lcom/google/glass/util/BatteryHelper;->getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/glass/settings/ui/BatteryStateImageView;->update(Lcom/google/glass/util/BatteryHelper$BatteryState;)V

    .line 64
    return-void
.end method

.method public update(Lcom/google/glass/util/BatteryHelper$BatteryState;)V
    .locals 4
    .param p1, "state"    # Lcom/google/glass/util/BatteryHelper$BatteryState;

    .prologue
    .line 68
    iget-boolean v3, p1, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    if-eqz v3, :cond_0

    sget-object v0, Lcom/google/glass/settings/ui/BatteryStateImageView;->CHARGING:[I

    .line 69
    .local v0, "images":[I
    :goto_0
    iget v3, p1, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 70
    .local v1, "percent":I
    iget-boolean v3, p1, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    if-eqz v3, :cond_1

    .line 71
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    aget v3, v0, v3

    invoke-virtual {p0, v3}, Lcom/google/glass/settings/ui/BatteryStateImageView;->setImageResource(I)V

    .line 78
    :goto_1
    return-void

    .line 68
    .end local v0    # "images":[I
    .end local v1    # "percent":I
    :cond_0
    sget-object v0, Lcom/google/glass/settings/ui/BatteryStateImageView;->DISCHARGING:[I

    goto :goto_0

    .line 73
    .restart local v0    # "images":[I
    .restart local v1    # "percent":I
    :cond_1
    div-int/lit8 v2, v1, 0xa

    .line 74
    .local v2, "position":I
    const/16 v3, 0xa

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 75
    const/4 v3, 0x0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 76
    aget v3, v0, v2

    invoke-virtual {p0, v3}, Lcom/google/glass/settings/ui/BatteryStateImageView;->setImageResource(I)V

    goto :goto_1
.end method

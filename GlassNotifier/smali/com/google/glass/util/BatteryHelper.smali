.class public Lcom/google/glass/util/BatteryHelper;
.super Ljava/lang/Object;
.source "BatteryHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/util/BatteryHelper$BatteryState;
    }
.end annotation


# static fields
.field private static final UNKNOWN_LEVEL:I = -0x1

.field private static final UNKNOWN_SCALE:I = -0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/BatteryHelper;->context:Landroid/content/Context;

    .line 59
    return-void
.end method


# virtual methods
.method public getChargePercent()F
    .locals 1

    .prologue
    .line 90
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getChargePercent(Landroid/content/Intent;)I
    .locals 8
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    const/4 v3, -0x1

    .line 98
    if-nez p1, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 100
    if-nez p1, :cond_1

    .line 101
    sget-object v4, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unknown battery state."

    new-array v6, v7, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    :cond_0
    :goto_0
    return v3

    .line 106
    :cond_1
    const-string v4, "level"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 107
    .local v1, "level":I
    const-string v4, "scale"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 108
    .local v2, "scale":I
    if-eq v1, v3, :cond_0

    if-eq v2, v3, :cond_0

    .line 112
    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    const/high16 v4, 0x42c80000    # 100.0f

    mul-float v0, v3, v4

    .line 113
    .local v0, "batteryPercent":F
    sget-object v3, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Current battery percent: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 114
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v3

    goto :goto_0
.end method

.method public getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->getCurrentState(Landroid/content/Intent;)Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState(Landroid/content/Intent;)Lcom/google/glass/util/BatteryHelper$BatteryState;
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 71
    new-instance v0, Lcom/google/glass/util/BatteryHelper$BatteryState;

    invoke-direct {v0}, Lcom/google/glass/util/BatteryHelper$BatteryState;-><init>()V

    .line 73
    .local v0, "state":Lcom/google/glass/util/BatteryHelper$BatteryState;
    if-nez p1, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 75
    if-nez p1, :cond_0

    .line 76
    sget-object v1, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown battery state."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 85
    :goto_0
    return-object v0

    .line 81
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    .line 82
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharged(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    .line 83
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharging(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharging:Z

    .line 84
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isPowered(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    goto :goto_0
.end method

.method public isCharged()Z
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->isCharged(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isCharged(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 133
    if-nez p1, :cond_0

    .line 134
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 135
    if-nez p1, :cond_0

    .line 136
    sget-object v2, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unknown battery state."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    :goto_0
    return v3

    .line 141
    :cond_0
    const-string v4, "status"

    .line 142
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 143
    .local v1, "status":I
    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    move v0, v2

    .line 145
    .local v0, "isCharged":Z
    :goto_1
    if-nez v0, :cond_1

    .line 146
    sget-object v4, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Driver is not reporting charged, checking percent."

    new-array v6, v3, [Ljava/lang/Object;

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 147
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)I

    move-result v4

    const/16 v5, 0x5f

    if-lt v4, v5, :cond_3

    move v0, v2

    .line 150
    :cond_1
    :goto_2
    sget-object v4, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Battery is charged? %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-interface {v4, v5, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v0

    .line 151
    goto :goto_0

    .end local v0    # "isCharged":Z
    :cond_2
    move v0, v3

    .line 143
    goto :goto_1

    .restart local v0    # "isCharged":Z
    :cond_3
    move v0, v3

    .line 147
    goto :goto_2
.end method

.method public isCharging()Z
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->isCharging(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isCharging(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 164
    if-nez p1, :cond_0

    .line 165
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 166
    if-nez p1, :cond_0

    .line 167
    sget-object v2, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Unknown battery state."

    new-array v5, v3, [Ljava/lang/Object;

    invoke-interface {v2, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 176
    :goto_0
    return v3

    .line 172
    :cond_0
    const-string v4, "status"

    .line 173
    invoke-virtual {p1, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 174
    .local v1, "status":I
    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    move v0, v2

    .line 175
    .local v0, "isCharging":Z
    :goto_1
    sget-object v4, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Battery currently charging? %s"

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    aput-object v6, v2, v3

    invoke-interface {v4, v5, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move v3, v0

    .line 176
    goto :goto_0

    .end local v0    # "isCharging":Z
    :cond_1
    move v0, v3

    .line 174
    goto :goto_1
.end method

.method public isPowered()Z
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->isPowered(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isPowered(Landroid/content/Intent;)Z
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 195
    if-nez p1, :cond_0

    .line 196
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 197
    if-nez p1, :cond_0

    .line 198
    sget-object v3, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Unknown battery state."

    new-array v6, v4, [Ljava/lang/Object;

    invoke-interface {v3, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 207
    :goto_0
    return v4

    .line 203
    :cond_0
    const-string v5, "plugged"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_2

    move v2, v3

    .line 204
    .local v2, "isPlugged":Z
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharging(Landroid/content/Intent;)Z

    move-result v1

    .line 205
    .local v1, "isCharging":Z
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharged(Landroid/content/Intent;)Z

    move-result v0

    .line 207
    .local v0, "isCharged":Z
    if-eqz v2, :cond_3

    if-nez v1, :cond_1

    if-eqz v0, :cond_3

    :cond_1
    :goto_2
    move v4, v3

    goto :goto_0

    .end local v0    # "isCharged":Z
    .end local v1    # "isCharging":Z
    .end local v2    # "isPlugged":Z
    :cond_2
    move v2, v4

    .line 203
    goto :goto_1

    .restart local v0    # "isCharged":Z
    .restart local v1    # "isCharging":Z
    .restart local v2    # "isPlugged":Z
    :cond_3
    move v3, v4

    .line 207
    goto :goto_2
.end method

.method public retrieveCurrentIntent()Landroid/content/Intent;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/google/glass/util/BatteryHelper;->context:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

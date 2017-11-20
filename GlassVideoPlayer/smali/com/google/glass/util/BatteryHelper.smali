.class public Lcom/google/glass/util/BatteryHelper;
.super Ljava/lang/Object;
.source "SourceFile"


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
    .line 18
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/util/BatteryHelper;->context:Landroid/content/Context;

    .line 63
    return-void
.end method


# virtual methods
.method public getChargePercent()F
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)I

    move-result v0

    int-to-float v0, v0

    return v0
.end method

.method public getChargePercent(Landroid/content/Intent;)I
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v0, -0x1

    .line 103
    if-nez p1, :cond_1

    .line 104
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 105
    if-nez p1, :cond_1

    .line 106
    sget-object v1, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown battery state."

    new-array v3, v5, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    :cond_0
    :goto_0
    return v0

    .line 111
    :cond_1
    const-string v1, "level"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 112
    const-string v2, "scale"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 113
    if-eq v1, v0, :cond_0

    if-eq v2, v0, :cond_0

    .line 117
    int-to-float v0, v1

    int-to-float v1, v2

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    .line 118
    sget-object v1, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Current battery percent: %s"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 119
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {v0, v6}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public getCurrentState()Lcom/google/glass/util/BatteryHelper$BatteryState;
    .locals 1

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->getCurrentState(Landroid/content/Intent;)Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentState(Landroid/content/Intent;)Lcom/google/glass/util/BatteryHelper$BatteryState;
    .locals 4

    .prologue
    .line 75
    new-instance v0, Lcom/google/glass/util/BatteryHelper$BatteryState;

    invoke-direct {v0}, Lcom/google/glass/util/BatteryHelper$BatteryState;-><init>()V

    .line 77
    if-nez p1, :cond_0

    .line 78
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 79
    if-nez p1, :cond_0

    .line 80
    sget-object v1, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Unknown battery state."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 89
    :goto_0
    return-object v0

    .line 85
    :cond_0
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)I

    move-result v1

    int-to-float v1, v1

    iput v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    .line 86
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharged(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    .line 87
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharging(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharging:Z

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isPowered(Landroid/content/Intent;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    goto :goto_0
.end method

.method public isCharged()Z
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->isCharged(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isCharged(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 138
    if-nez p1, :cond_0

    .line 139
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 140
    if-nez p1, :cond_0

    .line 141
    sget-object v0, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown battery state."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 156
    :goto_0
    return v2

    .line 146
    :cond_0
    const-string v0, "status"

    .line 147
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 148
    const/4 v3, 0x5

    if-ne v0, v3, :cond_2

    move v0, v1

    .line 150
    :goto_1
    if-nez v0, :cond_1

    .line 151
    sget-object v0, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v3, "Driver is not reporting charged, checking percent."

    new-array v4, v2, [Ljava/lang/Object;

    invoke-interface {v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->getChargePercent(Landroid/content/Intent;)I

    move-result v0

    const/16 v3, 0x5f

    if-lt v0, v3, :cond_3

    move v0, v1

    .line 155
    :cond_1
    :goto_2
    sget-object v3, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Battery is charged? %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-interface {v3, v4, v1}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    .line 156
    goto :goto_0

    :cond_2
    move v0, v2

    .line 148
    goto :goto_1

    :cond_3
    move v0, v2

    .line 152
    goto :goto_2
.end method

.method public isCharging()Z
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->isCharging(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isCharging(Landroid/content/Intent;)Z
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 169
    if-nez p1, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 171
    if-nez p1, :cond_0

    .line 172
    sget-object v0, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown battery state."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    :goto_0
    return v2

    .line 177
    :cond_0
    const-string v0, "status"

    .line 178
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 179
    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    move v0, v1

    .line 180
    :goto_1
    sget-object v3, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Battery currently charging? %s"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v1, v2

    invoke-interface {v3, v4, v1}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move v2, v0

    .line 181
    goto :goto_0

    :cond_1
    move v0, v2

    .line 179
    goto :goto_1
.end method

.method public isPowered()Z
    .locals 1

    .prologue
    .line 191
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/google/glass/util/BatteryHelper;->isPowered(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method public isPowered(Landroid/content/Intent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 200
    if-nez p1, :cond_0

    .line 201
    invoke-virtual {p0}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object p1

    .line 202
    if-nez p1, :cond_0

    .line 203
    sget-object v0, Lcom/google/glass/util/BatteryHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Unknown battery state."

    new-array v3, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 212
    :goto_0
    return v2

    .line 208
    :cond_0
    const-string v0, "plugged"

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 209
    :goto_1
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharging(Landroid/content/Intent;)Z

    move-result v3

    .line 210
    invoke-virtual {p0, p1}, Lcom/google/glass/util/BatteryHelper;->isCharged(Landroid/content/Intent;)Z

    move-result v4

    .line 212
    if-eqz v0, :cond_3

    if-nez v3, :cond_1

    if-eqz v4, :cond_3

    :cond_1
    :goto_2
    move v2, v1

    goto :goto_0

    :cond_2
    move v0, v2

    .line 208
    goto :goto_1

    :cond_3
    move v1, v2

    .line 212
    goto :goto_2
.end method

.method public retrieveCurrentIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 218
    iget-object v0, p0, Lcom/google/glass/util/BatteryHelper;->context:Landroid/content/Context;

    const/4 v1, 0x0

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.class public final Lcom/google/glass/util/BatteryUserEventUtils;
.super Ljava/lang/Object;
.source "BatteryUserEventUtils.java"


# static fields
.field private static final PARTIAL_DATA_FLASH_FILE_PATH:Ljava/lang/String; = "/sys/class/i2c-dev/i2c-1/device/1-0055/dump_partial_data_flash"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/util/BatteryUserEventUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getActionData(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    const/4 v8, 0x0

    .line 34
    invoke-static {}, Lcom/google/glass/util/BatteryHelperProvider;->getInstance()Lcom/google/glass/util/BatteryHelperProvider;

    move-result-object v5

    invoke-virtual {v5, p0}, Lcom/google/glass/util/BatteryHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/util/BatteryHelper;

    move-result-object v2

    .line 35
    .local v2, "helper":Lcom/google/glass/util/BatteryHelper;
    invoke-virtual {v2}, Lcom/google/glass/util/BatteryHelper;->retrieveCurrentIntent()Landroid/content/Intent;

    move-result-object v3

    .line 36
    .local v3, "intent":Landroid/content/Intent;
    invoke-virtual {v2, v3}, Lcom/google/glass/util/BatteryHelper;->getCurrentState(Landroid/content/Intent;)Lcom/google/glass/util/BatteryHelper$BatteryState;

    move-result-object v4

    .line 37
    .local v4, "state":Lcom/google/glass/util/BatteryHelper$BatteryState;
    const-string v1, ""

    .line 38
    .local v1, "gasGaugeData":Ljava/lang/String;
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 40
    :try_start_0
    invoke-static {}, Lcom/google/glass/util/BatteryUserEventUtils;->readPartialDataFlash()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 49
    :goto_0
    const-string v5, "a"

    const/16 v6, 0xc

    new-array v6, v6, [Ljava/lang/Object;

    const-string v7, "p"

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget v8, v4, Lcom/google/glass/util/BatteryHelper$BatteryState;->percent:F

    .line 51
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "t"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    .line 52
    invoke-static {v3}, Lcom/google/glass/util/BatteryUserEventUtils;->getTimeToDischarge(Landroid/content/Intent;)J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x4

    const-string v8, "cg"

    aput-object v8, v6, v7

    const/4 v7, 0x5

    iget-boolean v8, v4, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharging:Z

    .line 53
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x6

    const-string v8, "cd"

    aput-object v8, v6, v7

    const/4 v7, 0x7

    iget-boolean v8, v4, Lcom/google/glass/util/BatteryHelper$BatteryState;->isCharged:Z

    .line 54
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0x8

    const-string v8, "ip"

    aput-object v8, v6, v7

    const/16 v7, 0x9

    iget-boolean v8, v4, Lcom/google/glass/util/BatteryHelper$BatteryState;->isPowered:Z

    .line 55
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    const/16 v7, 0xa

    const-string v8, "gg"

    aput-object v8, v6, v7

    const/16 v7, 0xb

    aput-object v1, v6, v7

    .line 49
    invoke-static {v5, p1, v6}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    return-object v5

    .line 41
    :catch_0
    move-exception v0

    .line 42
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/util/BatteryUserEventUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error reading gas gauge data"

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 47
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    sget-object v5, Lcom/google/glass/util/BatteryUserEventUtils;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Not setting gas gauge data for this device."

    new-array v7, v8, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getTimeToDischarge(Landroid/content/Intent;)J
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 80
    const-string v0, "time_to_empty"

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static readPartialDataFlash()Ljava/lang/String;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    new-instance v1, Ljava/io/File;

    const-string v5, "/sys/class/i2c-dev/i2c-1/device/1-0055/dump_partial_data_flash"

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 62
    .local v1, "fl":Ljava/io/File;
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 63
    .local v0, "fin":Ljava/io/FileInputStream;
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-direct {v5, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v3, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    .line 64
    .local v3, "reader":Ljava/io/BufferedReader;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 65
    .local v4, "sb":Ljava/lang/StringBuilder;
    const/4 v2, 0x0

    .line 66
    .local v2, "line":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 67
    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 71
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

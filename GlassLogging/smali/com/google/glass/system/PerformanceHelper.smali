.class public Lcom/google/glass/system/PerformanceHelper;
.super Ljava/lang/Object;
.source "PerformanceHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/system/PerformanceHelper$Provider;,
        Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;
    }
.end annotation


# static fields
.field private static final BATTERY_TEMPERATURE_FILE:Ljava/lang/String;

.field private static final BOARD_TEMPERATURE_FILE:Ljava/lang/String;

.field private static final BOARD_TEMPERATURE_PATH:Ljava/lang/String;

.field public static final BOARD_TEMPERATURE_WARNING_THRESHOLD:J = 0xd6d8L

.field private static final CAPACITY_FILE_EVT2:Ljava/lang/String;

.field private static final CHARGE_FILE_EVT2:Ljava/lang/String;

.field private static final CHARGE_WHEN_FULL_FILE_EVT2:Ljava/lang/String;

.field private static final CPU_FREQUENCY_SCALING_GOVERNOR_FILE:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

.field private static final CPU_FREQUENCY_TIME_FILE:Ljava/lang/String; = "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

.field private static final POWER_SUPPLY_PATH:Ljava/lang/String;

.field private static final Q_PASSED:Ljava/lang/String;

.field private static final REPORTED_SOC_FILE_EVT2:Ljava/lang/String;

.field private static final SYSTEM_FILE_MAX_SIZE:I = 0x400

.field private static final UNKNOWN:J = -0x1L

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static final readSystemFileBuffer:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<[B>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 35
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/sys/class/power_supply/bq27520-0/"

    :goto_0
    sput-object v0, Lcom/google/glass/system/PerformanceHelper;->POWER_SUPPLY_PATH:Ljava/lang/String;

    .line 39
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->POWER_SUPPLY_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "capacity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/system/PerformanceHelper;->CAPACITY_FILE_EVT2:Ljava/lang/String;

    .line 42
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->POWER_SUPPLY_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charge_now"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/system/PerformanceHelper;->CHARGE_FILE_EVT2:Ljava/lang/String;

    .line 45
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->POWER_SUPPLY_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "capacity"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/system/PerformanceHelper;->REPORTED_SOC_FILE_EVT2:Ljava/lang/String;

    .line 48
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->POWER_SUPPLY_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "charge_full"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/system/PerformanceHelper;->CHARGE_WHEN_FULL_FILE_EVT2:Ljava/lang/String;

    .line 51
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->POWER_SUPPLY_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "temp"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/system/PerformanceHelper;->BATTERY_TEMPERATURE_FILE:Ljava/lang/String;

    .line 54
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->POWER_SUPPLY_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "device/qpassed_hires"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/glass/system/PerformanceHelper;->Q_PASSED:Ljava/lang/String;

    .line 61
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "/sys/devices/platform/notle_pcb_sensor.0/"

    :goto_1
    sput-object v0, Lcom/google/glass/system/PerformanceHelper;->BOARD_TEMPERATURE_PATH:Ljava/lang/String;

    .line 65
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->BOARD_TEMPERATURE_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 66
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "temperature"

    :goto_2
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_3
    sput-object v0, Lcom/google/glass/system/PerformanceHelper;->BOARD_TEMPERATURE_FILE:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/google/glass/system/PerformanceHelper$1;

    invoke-direct {v0}, Lcom/google/glass/system/PerformanceHelper$1;-><init>()V

    sput-object v0, Lcom/google/glass/system/PerformanceHelper;->readSystemFileBuffer:Ljava/lang/ThreadLocal;

    return-void

    .line 35
    :cond_0
    const-string v0, "/sys/class/power_supply/bq27532_battery/"

    goto/16 :goto_0

    .line 61
    :cond_1
    const-string v0, "/sys/devices/virtual/thermal/thermal_zone0/"

    goto :goto_1

    .line 66
    :cond_2
    const-string v0, "temp"

    goto :goto_2

    :cond_3
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_3
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/system/PerformanceHelper$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/system/PerformanceHelper$1;

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/google/glass/system/PerformanceHelper;-><init>()V

    return-void
.end method

.method static parseLongToLongMapFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z
    .locals 13
    .param p0, "location"    # Ljava/lang/String;
    .param p1, "content"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 278
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 296
    :goto_0
    return v7

    .line 282
    :cond_0
    :try_start_0
    const-string v9, "\\s+"

    invoke-virtual {p1, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 283
    .local v4, "split":[Ljava/lang/String;
    array-length v9, v4

    and-int/lit8 v9, v9, 0x1

    if-eqz v9, :cond_1

    .line 284
    sget-object v9, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Not an even number of keys/values from file: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object p0, v11, v12

    invoke-interface {v9, v10, v11}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 293
    .end local v4    # "split":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 294
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v9, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v10, "Error reading the value as long from file: %s"

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p0, v8, v7

    invoke-interface {v9, v0, v10, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 287
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .restart local v4    # "split":[Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    :try_start_1
    array-length v9, v4

    if-ge v1, v9, :cond_2

    .line 288
    aget-object v9, v4, v1

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    .line 289
    .local v2, "key":J
    add-int/lit8 v9, v1, 0x1

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 290
    .local v5, "value":J
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-interface {p2, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 287
    add-int/lit8 v1, v1, 0x2

    goto :goto_1

    .end local v2    # "key":J
    .end local v5    # "value":J
    :cond_2
    move v7, v8

    .line 292
    goto :goto_0
.end method

.method private static readLongToLongMapFile(Ljava/lang/String;Ljava/util/Map;)Z
    .locals 1
    .param p0, "location"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 272
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 273
    invoke-static {p0}, Lcom/google/glass/system/PerformanceHelper;->readSystemFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/google/glass/system/PerformanceHelper;->parseLongToLongMapFile(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Z

    move-result v0

    return v0
.end method

.method private static readLongValue(Ljava/lang/String;)J
    .locals 8
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, -0x1

    .line 251
    invoke-static {p0}, Lcom/google/glass/system/PerformanceHelper;->readSystemFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 252
    .local v1, "value":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 259
    :goto_0
    return-wide v2

    .line 256
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    goto :goto_0

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "e":Ljava/lang/NumberFormatException;
    sget-object v4, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Error reading the value as long from file: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static readSystemFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 13
    .param p0, "location"    # Ljava/lang/String;

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 306
    invoke-static {}, Lcom/google/glass/predicates/Assert;->assertNotUiThread()V

    .line 308
    const/4 v2, 0x0

    .line 310
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 311
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .local v3, "fis":Ljava/io/FileInputStream;
    :try_start_1
    sget-object v5, Lcom/google/glass/system/PerformanceHelper;->readSystemFileBuffer:Ljava/lang/ThreadLocal;

    invoke-virtual {v5}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    .line 312
    .local v0, "buf":[B
    invoke-virtual {v3, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    .line 313
    .local v4, "length":I
    new-instance v5, Ljava/lang/String;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6, v4}, Ljava/lang/String;-><init>([BII)V

    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 319
    if-eqz v3, :cond_0

    .line 321
    :try_start_2
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v2, v3

    .line 327
    .end local v0    # "buf":[B
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "length":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :goto_1
    return-object v5

    .line 322
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v0    # "buf":[B
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v4    # "length":I
    :catch_0
    move-exception v1

    .line 323
    .local v1, "e":Ljava/io/IOException;
    sget-object v6, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error closing file. [file_path=%s] [message=%s]"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object p0, v8, v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 314
    .end local v0    # "buf":[B
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "fis":Ljava/io/FileInputStream;
    .end local v4    # "length":I
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    :catch_1
    move-exception v1

    .line 315
    .local v1, "e":Ljava/io/FileNotFoundException;
    :goto_2
    :try_start_3
    sget-object v5, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "File doesn\'t exist. [file_path=%s] [message=%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 319
    if-eqz v2, :cond_1

    .line 321
    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 327
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    :cond_1
    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    .line 322
    .restart local v1    # "e":Ljava/io/FileNotFoundException;
    :catch_2
    move-exception v1

    .line 323
    .local v1, "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error closing file. [file_path=%s] [message=%s]"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object p0, v7, v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 316
    .end local v1    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 317
    .restart local v1    # "e":Ljava/io/IOException;
    :goto_4
    :try_start_5
    sget-object v5, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error reading file. [file_path=%s] [message=%s]"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p0, v7, v8

    const/4 v8, 0x1

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 319
    if-eqz v2, :cond_1

    .line 321
    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 322
    :catch_4
    move-exception v1

    .line 323
    sget-object v5, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error closing file. [file_path=%s] [message=%s]"

    new-array v7, v12, [Ljava/lang/Object;

    aput-object p0, v7, v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v11

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 319
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_5
    if-eqz v2, :cond_2

    .line 321
    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    .line 324
    :cond_2
    :goto_6
    throw v5

    .line 322
    :catch_5
    move-exception v1

    .line 323
    .restart local v1    # "e":Ljava/io/IOException;
    sget-object v6, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error closing file. [file_path=%s] [message=%s]"

    new-array v8, v12, [Ljava/lang/Object;

    aput-object p0, v8, v10

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v11

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 319
    .end local v1    # "e":Ljava/io/IOException;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_5

    .line 316
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_6
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_4

    .line 314
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .restart local v3    # "fis":Ljava/io/FileInputStream;
    :catch_7
    move-exception v1

    move-object v2, v3

    .end local v3    # "fis":Ljava/io/FileInputStream;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    goto :goto_2
.end method


# virtual methods
.method public getBatteryCapacity()J
    .locals 2

    .prologue
    .line 117
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->CAPACITY_FILE_EVT2:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/system/PerformanceHelper;->readLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getBatteryChargeWhenFullUah()J
    .locals 5

    .prologue
    .line 145
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 146
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->CHARGE_WHEN_FULL_FILE_EVT2:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/system/PerformanceHelper;->readLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 151
    :goto_0
    return-wide v0

    .line 150
    :cond_0
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not reading %s on this device."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/glass/system/PerformanceHelper;->CHARGE_WHEN_FULL_FILE_EVT2:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 151
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getBatteryStateOfChargeUah()J
    .locals 5

    .prologue
    .line 124
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->CHARGE_FILE_EVT2:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/system/PerformanceHelper;->readLongValue(Ljava/lang/String;)J

    move-result-wide v0

    .line 130
    :goto_0
    return-wide v0

    .line 129
    :cond_0
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Not reading %s on this device."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/google/glass/system/PerformanceHelper;->CHARGE_FILE_EVT2:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 130
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public getBatteryTemperature()J
    .locals 4

    .prologue
    .line 160
    const-wide/16 v0, 0x64

    sget-object v2, Lcom/google/glass/system/PerformanceHelper;->BATTERY_TEMPERATURE_FILE:Ljava/lang/String;

    invoke-static {v2}, Lcom/google/glass/system/PerformanceHelper;->readLongValue(Ljava/lang/String;)J

    move-result-wide v2

    mul-long/2addr v0, v2

    return-wide v0
.end method

.method public getBoardTemperature()J
    .locals 2

    .prologue
    .line 169
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->BOARD_TEMPERATURE_FILE:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/system/PerformanceHelper;->readLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getFrequencyScalingGovernor()I
    .locals 7

    .prologue
    const/4 v2, -0x1

    .line 195
    const-string v3, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_governor"

    invoke-static {v3}, Lcom/google/glass/system/PerformanceHelper;->readSystemFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 196
    .local v1, "name":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 210
    :cond_0
    :goto_0
    return v2

    .line 201
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 202
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 207
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->valueOf(Ljava/lang/String;)Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/glass/system/PerformanceHelper$ScalingGovernor;->getId()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    sget-object v3, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Failed to convert name to ScalingGovernor: %s"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getFrequencyStats(Ljava/util/Map;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    .local p1, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-string v1, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    invoke-static {v1, p1}, Lcom/google/glass/system/PerformanceHelper;->readLongToLongMapFile(Ljava/lang/String;Ljava/util/Map;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 179
    sget-object v1, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to read time spent at different cpu frequencies from file: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-string v5, "/sys/devices/system/cpu/cpu0/cpufreq/stats/time_in_state"

    aput-object v5, v3, v4

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 181
    invoke-interface {p1}, Ljava/util/Map;->clear()V

    .line 188
    :cond_0
    return-void

    .line 185
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 186
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Long;Ljava/lang/Long;>;"
    const-wide/16 v3, 0xa

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    mul-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public getQPassedHiRes()[I
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 228
    const/4 v2, -0x1

    .line 229
    .local v2, "qPassedInteger":I
    const/4 v1, -0x1

    .line 234
    .local v1, "qPassedFractional":I
    :try_start_0
    sget-object v5, Lcom/google/glass/system/PerformanceHelper;->Q_PASSED:Ljava/lang/String;

    invoke-static {v5}, Lcom/google/glass/system/PerformanceHelper;->readSystemFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 235
    .local v4, "value":Ljava/lang/String;
    if-eqz v4, :cond_0

    .line 236
    const-string v5, ","

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 237
    .local v3, "splitValue":[Ljava/lang/String;
    const/4 v5, 0x1

    aget-object v5, v3, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v5

    long-to-int v2, v5

    .line 238
    const/4 v5, 0x2

    aget-object v5, v3, v5

    const/16 v6, 0x10

    invoke-static {v5, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v5

    long-to-int v1, v5

    .line 243
    .end local v3    # "splitValue":[Ljava/lang/String;
    .end local v4    # "value":Ljava/lang/String;
    :cond_0
    :goto_0
    new-array v5, v11, [I

    aput v2, v5, v10

    aput v1, v5, v9

    return-object v5

    .line 240
    :catch_0
    move-exception v0

    .line 241
    .local v0, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/google/glass/system/PerformanceHelper;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error reading the value from file: %s"

    new-array v7, v9, [Ljava/lang/Object;

    sget-object v8, Lcom/google/glass/system/PerformanceHelper;->Q_PASSED:Ljava/lang/String;

    aput-object v8, v7, v10

    invoke-interface {v5, v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public getReportedBatteryStateOfChargePercent()J
    .locals 2

    .prologue
    .line 137
    sget-object v0, Lcom/google/glass/system/PerformanceHelper;->REPORTED_SOC_FILE_EVT2:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/system/PerformanceHelper;->readLongValue(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getTotalBytesSent()J
    .locals 2

    .prologue
    .line 219
    invoke-static {}, Landroid/net/TrafficStats;->getTotalTxBytes()J

    move-result-wide v0

    return-wide v0
.end method

.class public Lcom/google/glass/logging/Util;
.super Ljava/lang/Object;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/logging/Util$LogDataLineParser;
    }
.end annotation


# static fields
.field private static final BOARD_TEMPERATURE_PATH:Ljava/lang/String;

.field static final CPU_INFO_FILE:Ljava/lang/String; = "/proc/cpuinfo"
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final CURRENT_FILE:Ljava/lang/String; = "/sys/class/power_supply/twl6030_battery/current_now"

.field private static final HARDWARE_VERSION_PATTERN:Ljava/util/regex/Pattern;

.field static final SINGLE_LINE_LONG_PARSER:Lcom/google/glass/logging/Util$LogDataLineParser;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/glass/logging/Util$LogDataLineParser",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final TEMPERATURE_FILE:Ljava/lang/String;

.field public static final UNKNOWN_LONG:J = -0x1L

.field private static final VOLTAGE_FILE:Ljava/lang/String; = "/sys/class/power_supply/twl6030_battery/voltage_now"

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 22
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/Util;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 44
    new-instance v0, Lcom/google/glass/logging/Util$1;

    invoke-direct {v0}, Lcom/google/glass/logging/Util$1;-><init>()V

    sput-object v0, Lcom/google/glass/logging/Util;->SINGLE_LINE_LONG_PARSER:Lcom/google/glass/logging/Util$LogDataLineParser;

    .line 65
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "/sys/devices/platform/notle_pcb_sensor.0/"

    :goto_0
    sput-object v0, Lcom/google/glass/logging/Util;->BOARD_TEMPERATURE_PATH:Ljava/lang/String;

    .line 69
    sget-object v0, Lcom/google/glass/logging/Util;->BOARD_TEMPERATURE_PATH:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 70
    invoke-static {}, Lcom/google/glass/build/BuildHelper;->isGlass1()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "temperature"

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    sput-object v0, Lcom/google/glass/logging/Util;->TEMPERATURE_FILE:Ljava/lang/String;

    .line 85
    const-string v0, "Revision\\s:\\s([0-9]+)"

    .line 86
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/Util;->HARDWARE_VERSION_PATTERN:Ljava/util/regex/Pattern;

    .line 85
    return-void

    .line 65
    :cond_0
    const-string v0, "/sys/devices/virtual/thermal/thermal_zone0/"

    goto :goto_0

    .line 70
    :cond_1
    const-string v0, "temp"

    goto :goto_1

    :cond_2
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method


# virtual methods
.method public getCpuCurrent()J
    .locals 4

    .prologue
    .line 123
    const-string v0, "/sys/class/power_supply/twl6030_battery/current_now"

    sget-object v1, Lcom/google/glass/logging/Util;->SINGLE_LINE_LONG_PARSER:Lcom/google/glass/logging/Util$LogDataLineParser;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/logging/Util;->readSystemFile(Ljava/lang/String;Lcom/google/glass/logging/Util$LogDataLineParser;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCpuTemperature()J
    .locals 4

    .prologue
    .line 95
    sget-object v0, Lcom/google/glass/logging/Util;->TEMPERATURE_FILE:Ljava/lang/String;

    sget-object v1, Lcom/google/glass/logging/Util;->SINGLE_LINE_LONG_PARSER:Lcom/google/glass/logging/Util$LogDataLineParser;

    const-wide/16 v2, -0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {p0, v0, v1, v2}, Lcom/google/glass/logging/Util;->readSystemFile(Ljava/lang/String;Lcom/google/glass/logging/Util$LogDataLineParser;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCpuVoltage()J
    .locals 9

    .prologue
    const-wide/16 v7, -0x1

    .line 105
    const-string v4, "/sys/class/power_supply/twl6030_battery/voltage_now"

    sget-object v5, Lcom/google/glass/logging/Util;->SINGLE_LINE_LONG_PARSER:Lcom/google/glass/logging/Util$LogDataLineParser;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/glass/logging/Util;->readSystemFile(Ljava/lang/String;Lcom/google/glass/logging/Util$LogDataLineParser;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 106
    .local v2, "voltage":J
    const/16 v1, 0xa

    .line 107
    .local v1, "maxNumberAttempts":I
    const/4 v0, 0x0

    .line 109
    .local v0, "counter":I
    :goto_0
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-gez v4, :cond_0

    const/16 v4, 0xa

    if-ge v0, v4, :cond_0

    .line 110
    const-string v4, "/sys/class/power_supply/twl6030_battery/voltage_now"

    sget-object v5, Lcom/google/glass/logging/Util;->SINGLE_LINE_LONG_PARSER:Lcom/google/glass/logging/Util$LogDataLineParser;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/google/glass/logging/Util;->readSystemFile(Ljava/lang/String;Lcom/google/glass/logging/Util$LogDataLineParser;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 111
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-wide v2
.end method

.method readSystemFile(Ljava/lang/String;Lcom/google/glass/logging/Util$LogDataLineParser;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p1, "location"    # Ljava/lang/String;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/glass/logging/Util$LogDataLineParser",
            "<TT;>;TT;)TT;"
        }
    .end annotation

    .prologue
    .local p2, "parser":Lcom/google/glass/logging/Util$LogDataLineParser;, "Lcom/google/glass/logging/Util$LogDataLineParser<TT;>;"
    .local p3, "unknown":Ljava/lang/Object;, "TT;"
    const/4 v8, 0x1

    const/4 v9, 0x0

    .line 134
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 135
    .local v3, "file":Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-nez v6, :cond_0

    .line 136
    sget-object v6, Lcom/google/glass/logging/Util;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "File does not exist [location=%s]."

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 165
    .end local p3    # "unknown":Ljava/lang/Object;, "TT;"
    :goto_0
    return-object p3

    .line 139
    .restart local p3    # "unknown":Ljava/lang/Object;, "TT;"
    :cond_0
    invoke-virtual {v3}, Ljava/io/File;->canRead()Z

    move-result v6

    if-nez v6, :cond_1

    .line 140
    sget-object v6, Lcom/google/glass/logging/Util;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Cannot read file [location=%s]."

    new-array v8, v8, [Ljava/lang/Object;

    aput-object p1, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :cond_1
    const/4 v0, 0x0

    .line 145
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/FileReader;

    invoke-direct {v6, v3}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_2
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_4

    .line 151
    invoke-interface {p2, v4, p3}, Lcom/google/glass/logging/Util$LogDataLineParser;->parse(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .local v5, "result":Ljava/lang/Object;, "TT;"
    if-eqz v5, :cond_2

    .line 152
    invoke-virtual {v5, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 153
    sget-object v6, Lcom/google/glass/logging/Util;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Defaulting to unknown value [location=%s, unknown=%s]."

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    const/4 v9, 0x1

    aput-object p3, v8, v9

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 163
    :cond_3
    sget-object v6, Lcom/google/glass/logging/Util;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    move-object p3, v5

    goto :goto_0

    .end local v5    # "result":Ljava/lang/Object;, "TT;"
    :cond_4
    sget-object v6, Lcom/google/glass/logging/Util;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v1, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    move-object v0, v1

    .line 164
    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_0

    .line 158
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 159
    .local v2, "e":Ljava/io/FileNotFoundException;
    :goto_1
    :try_start_2
    sget-object v6, Lcom/google/glass/logging/Util;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "File does not exist [location=%s]."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-interface {v6, v2, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 163
    sget-object v6, Lcom/google/glass/logging/Util;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .line 160
    .end local v2    # "e":Ljava/io/FileNotFoundException;
    :catch_1
    move-exception v2

    .line 161
    .local v2, "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    sget-object v6, Lcom/google/glass/logging/Util;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Error reading file [location=%s]."

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-interface {v6, v2, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 163
    sget-object v6, Lcom/google/glass/logging/Util;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    :goto_3
    sget-object v7, Lcom/google/glass/logging/Util;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v7}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v6

    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v6

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_3

    .line 160
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_2
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_2

    .line 158
    .end local v0    # "br":Ljava/io/BufferedReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    :catch_3
    move-exception v2

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    goto :goto_1
.end method

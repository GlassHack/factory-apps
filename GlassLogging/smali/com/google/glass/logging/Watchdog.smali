.class public Lcom/google/glass/logging/Watchdog;
.super Ljava/lang/Object;
.source "Watchdog.java"


# static fields
.field private static final WATCHDOG_SLOW_MS:I = 0x3e8

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;

.field private static reportedErrors:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final serviceContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/Watchdog;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 30
    new-instance v0, Lcom/google/android/util/ArraySet;

    invoke-direct {v0}, Lcom/google/android/util/ArraySet;-><init>()V

    sput-object v0, Lcom/google/glass/logging/Watchdog;->reportedErrors:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "serviceContext"    # Landroid/content/Context;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/glass/logging/Watchdog;->serviceContext:Landroid/content/Context;

    .line 36
    return-void
.end method

.method private checkLog(Ljava/io/BufferedReader;)V
    .locals 8
    .param p1, "logReader"    # Ljava/io/BufferedReader;

    .prologue
    .line 75
    :try_start_0
    invoke-static {}, Lcom/google/glass/logging/GlassError;->values()[Lcom/google/glass/logging/GlassError;

    move-result-object v2

    .line 76
    .local v2, "errors":[Lcom/google/glass/logging/GlassError;
    :cond_0
    invoke-virtual {p1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    .local v4, "line":Ljava/lang/String;
    if-eqz v4, :cond_3

    .line 77
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 78
    aget-object v1, v2, v3

    .line 79
    .local v1, "error":Lcom/google/glass/logging/GlassError;
    iget-object v5, v1, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 77
    :cond_1
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 82
    :cond_2
    iget-object v5, v1, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 83
    iget-object v5, v1, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    invoke-direct {p0, v4, v5}, Lcom/google/glass/logging/Watchdog;->extractErrorLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v1, v5}, Lcom/google/glass/logging/Watchdog;->reportError(Lcom/google/glass/logging/GlassError;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 87
    .end local v1    # "error":Lcom/google/glass/logging/GlassError;
    .end local v2    # "errors":[Lcom/google/glass/logging/GlassError;
    .end local v3    # "i":I
    .end local v4    # "line":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 88
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/logging/Watchdog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Error while checking logs"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v5, v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    return-void
.end method

.method private extractErrorLine(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "log"    # Ljava/lang/String;
    .param p2, "errorMsg"    # Ljava/lang/String;

    .prologue
    const/16 v5, 0xa

    const/4 v4, -0x1

    .line 99
    invoke-virtual {p1, p2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 102
    .local v2, "logIndex":I
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v3

    .line 103
    .local v3, "startIndex":I
    if-ne v3, v4, :cond_0

    .line 104
    const/4 v3, 0x0

    .line 108
    :cond_0
    invoke-virtual {p1, v5, v2}, Ljava/lang/String;->indexOf(II)I

    move-result v0

    .line 109
    .local v0, "endIndex":I
    if-ne v0, v4, :cond_1

    .line 110
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 112
    :cond_1
    invoke-virtual {p1, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "errorLine":Ljava/lang/String;
    return-object v1
.end method

.method public static getReportedErrorsForTest()Ljava/util/Set;
    .locals 1
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 135
    sget-object v0, Lcom/google/glass/logging/Watchdog;->reportedErrors:Ljava/util/Set;

    return-object v0
.end method

.method private reportError(Lcom/google/glass/logging/GlassError;Ljava/lang/String;)V
    .locals 5
    .param p1, "error"    # Lcom/google/glass/logging/GlassError;
    .param p2, "errorLine"    # Ljava/lang/String;

    .prologue
    .line 117
    if-nez p2, :cond_0

    .line 120
    iget-object p2, p1, Lcom/google/glass/logging/GlassError;->signature:Ljava/lang/String;

    .line 123
    :cond_0
    sget-object v0, Lcom/google/glass/logging/Watchdog;->reportedErrors:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 125
    sget-object v0, Lcom/google/glass/logging/Watchdog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Error detected and already reported so doing nothing [name=%s]."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/google/glass/logging/GlassError;->name:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 131
    :goto_0
    return-void

    .line 128
    :cond_1
    sget-object v0, Lcom/google/glass/logging/Watchdog;->reportedErrors:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, p0, Lcom/google/glass/logging/Watchdog;->serviceContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/google/glass/logging/GlassError;->report(Landroid/content/Context;Lcom/google/glass/logging/GlassError;)V

    goto :goto_0
.end method


# virtual methods
.method checkLogs(Ljava/io/BufferedReader;Ljava/io/BufferedReader;)V
    .locals 0
    .param p1, "dmesgReader"    # Ljava/io/BufferedReader;
    .param p2, "logcatReader"    # Ljava/io/BufferedReader;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0, p1}, Lcom/google/glass/logging/Watchdog;->checkLog(Ljava/io/BufferedReader;)V

    .line 69
    invoke-direct {p0, p2}, Lcom/google/glass/logging/Watchdog;->checkLog(Ljava/io/BufferedReader;)V

    .line 70
    return-void
.end method

.method public watch()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 39
    sget-object v5, Lcom/google/glass/logging/Watchdog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Checking for errors"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 40
    const/4 v0, 0x0

    .line 41
    .local v0, "dmesg":Ljava/io/InputStream;
    const/4 v1, 0x0

    .line 43
    .local v1, "logcat":Ljava/io/InputStream;
    :try_start_0
    new-instance v5, Lcom/google/glass/time/Stopwatch;

    invoke-direct {v5}, Lcom/google/glass/time/Stopwatch;-><init>()V

    invoke-virtual {v5}, Lcom/google/glass/time/Stopwatch;->start()Lcom/google/glass/time/Stopwatch;

    move-result-object v2

    .line 44
    .local v2, "stopwatch":Lcom/google/glass/time/Stopwatch;
    invoke-static {}, Lcom/google/glass/logging/FeedbackGenerator;->getDmesgOutput()Ljava/io/InputStream;

    move-result-object v0

    .line 45
    invoke-static {}, Lcom/google/glass/util/CommandOutputCollector;->getLogcat()Ljava/io/InputStream;

    move-result-object v1

    .line 46
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 47
    new-instance v5, Ljava/io/BufferedReader;

    new-instance v6, Ljava/io/InputStreamReader;

    invoke-direct {v6, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v6, Ljava/io/BufferedReader;

    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v6, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v5, v6}, Lcom/google/glass/logging/Watchdog;->checkLogs(Ljava/io/BufferedReader;Ljava/io/BufferedReader;)V

    .line 50
    :cond_0
    invoke-virtual {v2}, Lcom/google/glass/time/Stopwatch;->stop()Lcom/google/glass/time/Stopwatch;

    .line 53
    invoke-virtual {v2}, Lcom/google/glass/time/Stopwatch;->getTotalElapsedMilliseconds()J

    move-result-wide v3

    .line 54
    .local v3, "totalElapsedMilliseconds":J
    const-wide/16 v5, 0x3e8

    cmp-long v5, v3, v5

    if-lez v5, :cond_1

    .line 55
    invoke-static {}, Lcom/google/glass/userevent/UserEventHelperProvider;->getInstance()Lcom/google/glass/userevent/UserEventHelperProvider;

    move-result-object v5

    iget-object v6, p0, Lcom/google/glass/logging/Watchdog;->serviceContext:Landroid/content/Context;

    invoke-virtual {v5, v6}, Lcom/google/glass/userevent/UserEventHelperProvider;->get(Landroid/content/Context;)Lcom/google/glass/userevent/UserEventHelper;

    move-result-object v5

    sget-object v6, Lcom/google/glass/userevent/UserEventAction;->WATCHDOG:Lcom/google/glass/userevent/UserEventAction;

    const-string v7, "t"

    .line 57
    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Object;

    .line 56
    invoke-static {v7, v8, v9}, Lcom/google/glass/userevent/UserEventHelper;->createEventTuple(Ljava/lang/String;Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 55
    invoke-virtual {v5, v6, v7}, Lcom/google/glass/userevent/UserEventHelper;->log(Lcom/google/glass/userevent/UserEventAction;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    :cond_1
    const-string v5, "dmesg stdout"

    sget-object v6, Lcom/google/glass/logging/Watchdog;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v5, v0, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 61
    const-string v5, "logcat stdout"

    sget-object v6, Lcom/google/glass/logging/Watchdog;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v5, v1, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 63
    sget-object v5, Lcom/google/glass/logging/Watchdog;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Done checking for errors"

    new-array v7, v10, [Ljava/lang/Object;

    invoke-interface {v5, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 64
    return-void

    .line 60
    .end local v2    # "stopwatch":Lcom/google/glass/time/Stopwatch;
    .end local v3    # "totalElapsedMilliseconds":J
    :catchall_0
    move-exception v5

    const-string v6, "dmesg stdout"

    sget-object v7, Lcom/google/glass/logging/Watchdog;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v6, v0, v7}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 61
    const-string v6, "logcat stdout"

    sget-object v7, Lcom/google/glass/logging/Watchdog;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v6, v1, v7}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/lang/String;Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v5
.end method

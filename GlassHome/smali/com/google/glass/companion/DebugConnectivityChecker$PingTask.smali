.class Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;
.super Landroid/os/AsyncTask;
.source "DebugConnectivityChecker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/DebugConnectivityChecker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PingTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final connMan:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/glass/companion/DebugConnectivityChecker;


# direct methods
.method public constructor <init>(Lcom/google/glass/companion/DebugConnectivityChecker;Landroid/content/Context;)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 41
    iput-object p1, p0, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->this$0:Lcom/google/glass/companion/DebugConnectivityChecker;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 42
    iput-object p2, p0, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->context:Landroid/content/Context;

    .line 43
    const-string v0, "connectivity"

    .line 44
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->connMan:Landroid/net/ConnectivityManager;

    .line 45
    return-void
.end method

.method private writeLog(Ljava/lang/String;)V
    .locals 5
    .param p1, "logLine"    # Ljava/lang/String;

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 75
    .local v1, "fileOutputStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v2, p0, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->context:Landroid/content/Context;

    const-string v3, "connectivity.log"

    const v4, 0x8000

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V

    .line 77
    const-string v2, "\n"

    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {}, Lcom/google/glass/companion/DebugConnectivityChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 83
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    invoke-static {}, Lcom/google/glass/companion/DebugConnectivityChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "Error writing log line to file."

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    invoke-static {}, Lcom/google/glass/companion/DebugConnectivityChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/google/glass/companion/DebugConnectivityChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v2
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 37
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 10
    .param p1, "unused"    # [Ljava/lang/Void;

    .prologue
    .line 49
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    .line 50
    .local v3, "startDate":Ljava/util/Date;
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 51
    .local v4, "startTime":J
    invoke-virtual {v3}, Ljava/util/Date;->getTime()J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v9, 0x15

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "logLine":Ljava/lang/String;
    iget-object v6, p0, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->connMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v6}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 55
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->connMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v7}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v7

    invoke-virtual {v7}, Landroid/net/NetworkInfo;->getType()I

    move-result v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v9, v9, 0xc

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 60
    :goto_0
    iget-object v6, p0, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->context:Landroid/content/Context;

    invoke-static {v6}, Lcom/google/glass/net/NetworkUtil;->pingGoogle(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    sub-long/2addr v6, v4

    const-wide/32 v8, 0xf4240

    div-long v0, v6, v8

    .line 62
    .local v0, "latency":J
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x16

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "1 "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 67
    .end local v0    # "latency":J
    :goto_1
    invoke-static {}, Lcom/google/glass/companion/DebugConnectivityChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-interface {v6, v2, v7}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0, v2}, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->writeLog(Ljava/lang/String;)V

    .line 69
    const/4 v6, 0x0

    return-object v6

    .line 57
    :cond_0
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "-1 "

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    const-string v7, "0 0"

    invoke-virtual {v6, v7}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 1
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 87
    invoke-static {}, Lcom/google/glass/companion/DebugConnectivityChecker;->access$100()Lcom/google/glass/android/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/glass/android/os/PowerManager$WakeLock;->release()V

    .line 88
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/google/glass/companion/DebugConnectivityChecker;->access$202(Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;)Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;

    .line 89
    return-void
.end method

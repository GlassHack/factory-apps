.class Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# instance fields
.field private final connMan:Landroid/net/ConnectivityManager;

.field private final context:Landroid/content/Context;

.field final synthetic this$0:Lcom/google/glass/companion/DebugConnectivityChecker;


# direct methods
.method public constructor <init>(Lcom/google/glass/companion/DebugConnectivityChecker;Landroid/content/Context;)V
    .locals 1

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

    .prologue
    .line 73
    const/4 v1, 0x0

    .line 75
    :try_start_0
    iget-object v0, p0, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->context:Landroid/content/Context;

    const-string v2, "connectivity.log"

    const v3, 0x8000

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 76
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    .line 77
    const-string v0, "\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    invoke-static {}, Lcom/google/glass/companion/DebugConnectivityChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 83
    :goto_0
    return-void

    .line 78
    :catch_0
    move-exception v0

    .line 79
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

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {}, Lcom/google/glass/companion/DebugConnectivityChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0
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
    .locals 7

    .prologue
    .line 49
    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    .line 50
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 51
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v5, 0x15

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 54
    iget-object v3, p0, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->connMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 55
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v3, p0, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->connMan:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    :goto_0
    iget-object v3, p0, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/google/glass/net/NetworkUtil;->pingGoogle(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 61
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    sub-long v1, v3, v1

    const-wide/32 v3, 0xf4240

    div-long/2addr v1, v3

    .line 62
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x16

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "1 "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 67
    :goto_1
    invoke-static {}, Lcom/google/glass/companion/DebugConnectivityChecker;->access$000()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    invoke-direct {p0, v0}, Lcom/google/glass/companion/DebugConnectivityChecker$PingTask;->writeLog(Ljava/lang/String;)V

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 57
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v3, "-1 "

    invoke-virtual {v0, v3}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 64
    :cond_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "0 0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

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

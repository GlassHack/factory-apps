.class final Lcom/google/android/speech/debug/DebugAudioLogger$1;
.super Ljava/lang/Object;
.source "DebugAudioLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/speech/debug/DebugAudioLogger;->dumpLog(ILjava/lang/String;Ljava/util/concurrent/ExecutorService;[BILandroid/content/Context;Lcom/google/android/speech/SpeechSettings;Lcom/google/android/speech/embedded/Greco3Grammar;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$absolutePath:Ljava/lang/String;

.field final synthetic val$logBytes:[B

.field final synthetic val$strDebugLogType:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;[B)V
    .locals 0

    .prologue
    .line 191
    iput-object p1, p0, Lcom/google/android/speech/debug/DebugAudioLogger$1;->val$strDebugLogType:Ljava/lang/String;

    iput-object p2, p0, Lcom/google/android/speech/debug/DebugAudioLogger$1;->val$absolutePath:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/speech/debug/DebugAudioLogger$1;->val$logBytes:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 199
    const/4 v1, 0x0

    .line 201
    .local v1, "logOutputStream":Ljava/io/OutputStream;
    :try_start_0
    new-instance v2, Ljava/io/BufferedOutputStream;

    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v4, p0, Lcom/google/android/speech/debug/DebugAudioLogger$1;->val$absolutePath:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/google/android/speech/debug/DebugAudioLogger$1;->val$logBytes:[B

    array-length v4, v4

    invoke-direct {v2, v3, v4}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    .end local v1    # "logOutputStream":Ljava/io/OutputStream;
    .local v2, "logOutputStream":Ljava/io/OutputStream;
    :try_start_1
    iget-object v3, p0, Lcom/google/android/speech/debug/DebugAudioLogger$1;->val$logBytes:[B

    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V

    .line 204
    invoke-virtual {v2}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 208
    invoke-static {v2}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    move-object v1, v2

    .line 210
    .end local v2    # "logOutputStream":Ljava/io/OutputStream;
    .restart local v1    # "logOutputStream":Ljava/io/OutputStream;
    :goto_0
    return-void

    .line 205
    :catch_0
    move-exception v0

    .line 206
    .local v0, "ex":Ljava/io/IOException;
    :goto_1
    :try_start_2
    const-string v3, "DebugAudioLogger"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error opening log file for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/google/android/speech/debug/DebugAudioLogger$1;->val$strDebugLogType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 208
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    goto :goto_0

    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    :goto_2
    invoke-static {v1}, Lcom/google/common/io/Closeables;->closeQuietly(Ljava/io/Closeable;)V

    throw v3

    .end local v1    # "logOutputStream":Ljava/io/OutputStream;
    .restart local v2    # "logOutputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    move-object v1, v2

    .end local v2    # "logOutputStream":Ljava/io/OutputStream;
    .restart local v1    # "logOutputStream":Ljava/io/OutputStream;
    goto :goto_2

    .line 205
    .end local v1    # "logOutputStream":Ljava/io/OutputStream;
    .restart local v2    # "logOutputStream":Ljava/io/OutputStream;
    :catch_1
    move-exception v0

    move-object v1, v2

    .end local v2    # "logOutputStream":Ljava/io/OutputStream;
    .restart local v1    # "logOutputStream":Ljava/io/OutputStream;
    goto :goto_1
.end method

.class public abstract Lcom/google/glass/voice/network/translate/TtsPrepareTask;
.super Landroid/os/AsyncTask;
.source "TtsPrepareTask.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/io/File;",
        "Ljava/lang/Void;",
        ">;",
        "Landroid/media/MediaPlayer$OnPreparedListener;"
    }
.end annotation


# static fields
.field private static final NO_ERROR:I = -0x1

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final mAllMediaPlayers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDownloader:Lcom/google/glass/voice/network/translate/CachedAudioDownloader;

.field private mEncounteredError:Z

.field private final mLang:Ljava/lang/String;

.field private mPlayersPrepared:I

.field private final mTextList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;Ljava/lang/String;Lcom/google/glass/voice/network/translate/CachedAudioDownloader;)V
    .locals 2
    .param p2, "lang"    # Ljava/lang/String;
    .param p3, "downloader"    # Lcom/google/glass/voice/network/translate/CachedAudioDownloader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/google/glass/voice/network/translate/CachedAudioDownloader;",
            ")V"
        }
    .end annotation

    .prologue
    .local p1, "textList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 39
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mAllMediaPlayers:Ljava/util/List;

    .line 35
    iput v1, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mPlayersPrepared:I

    .line 36
    iput-boolean v1, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mEncounteredError:Z

    .line 40
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mTextList:Ljava/util/List;

    .line 41
    iput-object p2, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mLang:Ljava/lang/String;

    .line 42
    iput-object p3, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mDownloader:Lcom/google/glass/voice/network/translate/CachedAudioDownloader;

    .line 43
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 23
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected final varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 12
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 52
    :try_start_0
    iget-object v5, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mTextList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v4

    .line 53
    .local v4, "total":I
    const/4 v2, 0x0

    .line 54
    .local v2, "index":I
    iget-object v5, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mTextList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 55
    .local v3, "text":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->isCancelled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 73
    .end local v2    # "index":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "total":I
    :cond_0
    :goto_1
    return-object v11

    .line 58
    .restart local v2    # "index":I
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v4    # "total":I
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 59
    sget-object v6, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v7, "Requesting tts for empty text."

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-interface {v6, v7, v8}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Lcom/google/glass/voice/network/translate/LongTextNetworkTts$TtsDownloadException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 66
    .end local v2    # "index":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "total":I
    :catch_0
    move-exception v0

    .line 67
    .local v0, "e":Lcom/google/glass/voice/network/translate/LongTextNetworkTts$TtsDownloadException;
    sget-object v5, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Audio Download error"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 68
    iput-boolean v10, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mEncounteredError:Z

    goto :goto_1

    .line 61
    .end local v0    # "e":Lcom/google/glass/voice/network/translate/LongTextNetworkTts$TtsDownloadException;
    .restart local v2    # "index":I
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v4    # "total":I
    :cond_2
    :try_start_1
    iget-object v6, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mDownloader:Lcom/google/glass/voice/network/translate/CachedAudioDownloader;

    iget-object v7, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mLang:Ljava/lang/String;

    invoke-virtual {v6, v3, v7, v4, v2}, Lcom/google/glass/voice/network/translate/CachedAudioDownloader;->getAudioFile(Ljava/lang/String;Ljava/lang/String;II)Ljava/io/File;

    move-result-object v1

    .line 62
    .local v1, "file":Ljava/io/File;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/io/File;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-virtual {p0, v6}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->publishProgress([Ljava/lang/Object;)V
    :try_end_1
    .catch Lcom/google/glass/voice/network/translate/LongTextNetworkTts$TtsDownloadException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 63
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 69
    .end local v1    # "file":Ljava/io/File;
    .end local v2    # "index":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "total":I
    :catch_1
    move-exception v0

    .line 70
    .local v0, "e":Ljava/io/IOException;
    sget-object v5, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v6, "Audio file error"

    new-array v7, v9, [Ljava/lang/Object;

    invoke-interface {v5, v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 71
    iput-boolean v10, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mEncounteredError:Z

    goto :goto_1
.end method

.method public executeParallel()V
    .locals 2

    .prologue
    .line 162
    sget-object v0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p0, v0, v1}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 163
    return-void
.end method

.method public abstract onAllPlayersPrepared(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/media/MediaPlayer;",
            ">;)V"
        }
    .end annotation
.end method

.method protected final onCancelled()V
    .locals 1

    .prologue
    .line 87
    invoke-virtual {p0}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->releaseAllMedia()V

    .line 88
    iget-boolean v0, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mEncounteredError:Z

    if-eqz v0, :cond_0

    .line 89
    invoke-virtual {p0}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->onError()V

    .line 91
    :cond_0
    return-void
.end method

.method public abstract onError()V
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected final onPostExecute(Ljava/lang/Void;)V
    .locals 5
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 78
    iget-boolean v0, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mEncounteredError:Z

    if-eqz v0, :cond_0

    .line 79
    invoke-virtual {p0}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->releaseAllMedia()V

    .line 80
    invoke-virtual {p0}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->onError()V

    .line 82
    :cond_0
    sget-object v0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Completed loading %d players"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mAllMediaPlayers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 83
    return-void
.end method

.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2
    .param p1, "player"    # Landroid/media/MediaPlayer;

    .prologue
    .line 128
    iget v0, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mPlayersPrepared:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mPlayersPrepared:I

    .line 130
    iget v0, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mPlayersPrepared:I

    iget-object v1, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mTextList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 131
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mAllMediaPlayers:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->onAllPlayersPrepared(Ljava/util/List;)V

    .line 133
    :cond_0
    return-void
.end method

.method protected final varargs onProgressUpdate([Ljava/io/File;)V
    .locals 10
    .param p1, "values"    # [Ljava/io/File;

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 98
    if-eqz p1, :cond_0

    array-length v4, p1

    if-nez v4, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 102
    :cond_1
    aget-object v1, p1, v8

    .line 103
    .local v1, "file":Ljava/io/File;
    sget-object v4, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "File downloaded %s"

    new-array v6, v9, [Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-interface {v4, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 106
    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 108
    .local v3, "stream":Ljava/io/FileInputStream;
    new-instance v2, Landroid/media/MediaPlayer;

    invoke-direct {v2}, Landroid/media/MediaPlayer;-><init>()V

    .line 109
    .local v2, "player":Landroid/media/MediaPlayer;
    iget-object v4, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mAllMediaPlayers:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    invoke-virtual {v2, p0}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 111
    const/4 v4, 0x3

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 112
    invoke-virtual {v3}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 113
    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 115
    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 116
    .end local v2    # "player":Landroid/media/MediaPlayer;
    .end local v3    # "stream":Ljava/io/FileInputStream;
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/io/IOException;
    sget-object v4, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v5, "Failed to download file"

    new-array v6, v8, [Ljava/lang/Object;

    invoke-interface {v4, v0, v5, v6}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    invoke-virtual {p0, v9}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->cancel(Z)Z

    move-result v4

    if-nez v4, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->releaseAllMedia()V

    .line 122
    :cond_2
    invoke-virtual {p0}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->onError()V

    goto :goto_0
.end method

.method protected bridge synthetic onProgressUpdate([Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 23
    check-cast p1, [Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->onProgressUpdate([Ljava/io/File;)V

    return-void
.end method

.method public releaseAllMedia()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 147
    iget-object v2, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mAllMediaPlayers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/MediaPlayer;

    .line 149
    .local v1, "player":Landroid/media/MediaPlayer;
    :try_start_0
    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/IllegalStateException;
    sget-object v3, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "Error releasing MediaPlayer"

    new-array v5, v6, [Ljava/lang/Object;

    invoke-interface {v3, v0, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 158
    .end local v0    # "e":Ljava/lang/IllegalStateException;
    .end local v1    # "player":Landroid/media/MediaPlayer;
    :cond_0
    iput v6, p0, Lcom/google/glass/voice/network/translate/TtsPrepareTask;->mPlayersPrepared:I

    .line 159
    return-void
.end method

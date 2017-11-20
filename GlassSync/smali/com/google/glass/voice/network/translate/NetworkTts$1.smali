.class Lcom/google/glass/voice/network/translate/NetworkTts$1;
.super Ljava/lang/Object;
.source "NetworkTts.java"

# interfaces
.implements Lcom/google/glass/util/CachedFilesManager$Loader;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/glass/voice/network/translate/NetworkTts;->getPlayingLoader(Landroid/speech/tts/UtteranceProgressListener;)Lcom/google/glass/util/CachedFilesManager$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/glass/util/CachedFilesManager$Loader",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

.field final synthetic val$utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/translate/NetworkTts;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/glass/voice/network/translate/NetworkTts;

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    iput-object p2, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->val$utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 177
    const/4 v3, 0x0

    .line 179
    .local v3, "ttsInput":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    .local v2, "ttsFile":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    .end local v3    # "ttsInput":Ljava/io/FileInputStream;
    .local v4, "ttsInput":Ljava/io/FileInputStream;
    :try_start_1
    iget-object v5, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-virtual {v5}, Lcom/google/glass/voice/network/translate/NetworkTts;->stopSpeaking()V

    .line 183
    new-instance v1, Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;

    iget-object v5, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    iget-object v6, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->val$utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-direct {v1, v5, v6}, Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;-><init>(Lcom/google/glass/voice/network/translate/NetworkTts;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 184
    .local v1, "playerListener":Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;
    iget-object v5, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    new-instance v6, Landroid/media/MediaPlayer;

    invoke-direct {v6}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v5, v6}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$102(Lcom/google/glass/voice/network/translate/NetworkTts;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 185
    iget-object v5, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v5}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100(Lcom/google/glass/voice/network/translate/NetworkTts;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 186
    iget-object v5, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v5}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100(Lcom/google/glass/voice/network/translate/NetworkTts;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 187
    iget-object v5, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v5}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100(Lcom/google/glass/voice/network/translate/NetworkTts;)Landroid/media/MediaPlayer;

    move-result-object v5

    const/4 v6, 0x3

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 188
    iget-object v5, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v5}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100(Lcom/google/glass/voice/network/translate/NetworkTts;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v4}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 189
    iget-object v5, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v5}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100(Lcom/google/glass/voice/network/translate/NetworkTts;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->prepare()V

    .line 190
    iget-object v5, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v5}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100(Lcom/google/glass/voice/network/translate/NetworkTts;)Landroid/media/MediaPlayer;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/MediaPlayer;->start()V

    .line 191
    invoke-virtual {v1}, Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;->onStart()V

    .line 192
    const/4 v5, 0x1

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v5

    .line 198
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    move-object v3, v4

    .line 201
    .end local v1    # "playerListener":Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;
    .end local v2    # "ttsFile":Ljava/io/File;
    .end local v4    # "ttsInput":Ljava/io/FileInputStream;
    .restart local v3    # "ttsInput":Ljava/io/FileInputStream;
    :goto_0
    return-object v5

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "IOException playing audio bytes from cached file: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-interface {v5, v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 198
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 200
    .end local v0    # "e":Ljava/io/IOException;
    :goto_2
    iget-object v5, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v5}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$000(Lcom/google/glass/voice/network/translate/NetworkTts;)V

    .line 201
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    goto :goto_0

    .line 195
    :catch_1
    move-exception v0

    .line 196
    .local v0, "e":Ljava/lang/IllegalStateException;
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    const-string v6, "IllegalStateException playing audio bytes from cached file: %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object p1, v7, v8

    invoke-interface {v5, v0, v6, v7}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 198
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_2

    .end local v0    # "e":Ljava/lang/IllegalStateException;
    :catchall_0
    move-exception v5

    :goto_4
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v5

    .end local v3    # "ttsInput":Ljava/io/FileInputStream;
    .restart local v2    # "ttsFile":Ljava/io/File;
    .restart local v4    # "ttsInput":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "ttsInput":Ljava/io/FileInputStream;
    .restart local v3    # "ttsInput":Ljava/io/FileInputStream;
    goto :goto_4

    .line 195
    .end local v3    # "ttsInput":Ljava/io/FileInputStream;
    .restart local v4    # "ttsInput":Ljava/io/FileInputStream;
    :catch_2
    move-exception v0

    move-object v3, v4

    .end local v4    # "ttsInput":Ljava/io/FileInputStream;
    .restart local v3    # "ttsInput":Ljava/io/FileInputStream;
    goto :goto_3

    .line 193
    .end local v3    # "ttsInput":Ljava/io/FileInputStream;
    .restart local v4    # "ttsInput":Ljava/io/FileInputStream;
    :catch_3
    move-exception v0

    move-object v3, v4

    .end local v4    # "ttsInput":Ljava/io/FileInputStream;
    .restart local v3    # "ttsInput":Ljava/io/FileInputStream;
    goto :goto_1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/google/glass/voice/network/translate/NetworkTts$1;->load(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

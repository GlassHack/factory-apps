.class Lcom/google/glass/voice/network/translate/NetworkTts$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/glass/util/CachedFilesManager$Loader;


# instance fields
.field final synthetic this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

.field final synthetic val$utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;


# direct methods
.method constructor <init>(Lcom/google/glass/voice/network/translate/NetworkTts;Landroid/speech/tts/UtteranceProgressListener;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    iput-object p2, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->val$utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public load(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 177
    const/4 v2, 0x0

    .line 179
    :try_start_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 180
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    :try_start_1
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-virtual {v0}, Lcom/google/glass/voice/network/translate/NetworkTts;->stopSpeaking()V

    .line 183
    new-instance v0, Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;

    iget-object v2, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    iget-object v3, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->val$utteranceProgressListener:Landroid/speech/tts/UtteranceProgressListener;

    invoke-direct {v0, v2, v3}, Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;-><init>(Lcom/google/glass/voice/network/translate/NetworkTts;Landroid/speech/tts/UtteranceProgressListener;)V

    .line 184
    iget-object v2, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    new-instance v3, Landroid/media/MediaPlayer;

    invoke-direct {v3}, Landroid/media/MediaPlayer;-><init>()V

    invoke-static {v2, v3}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$102(Lcom/google/glass/voice/network/translate/NetworkTts;Landroid/media/MediaPlayer;)Landroid/media/MediaPlayer;

    .line 185
    iget-object v2, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v2}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100(Lcom/google/glass/voice/network/translate/NetworkTts;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 186
    iget-object v2, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v2}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100(Lcom/google/glass/voice/network/translate/NetworkTts;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 187
    iget-object v2, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v2}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100(Lcom/google/glass/voice/network/translate/NetworkTts;)Landroid/media/MediaPlayer;

    move-result-object v2

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 188
    iget-object v2, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v2}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100(Lcom/google/glass/voice/network/translate/NetworkTts;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/FileInputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/media/MediaPlayer;->setDataSource(Ljava/io/FileDescriptor;)V

    .line 189
    iget-object v2, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v2}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100(Lcom/google/glass/voice/network/translate/NetworkTts;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->prepare()V

    .line 190
    iget-object v2, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v2}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$100(Lcom/google/glass/voice/network/translate/NetworkTts;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-virtual {v2}, Landroid/media/MediaPlayer;->start()V

    .line 191
    invoke-virtual {v0}, Lcom/google/glass/voice/network/translate/NetworkTts$MediaPlayerListener;->onStart()V

    .line 192
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 198
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 201
    :goto_0
    return-object v0

    .line 193
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 194
    :goto_1
    :try_start_2
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "IOException playing audio bytes from cached file: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 198
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 200
    :goto_2
    iget-object v0, p0, Lcom/google/glass/voice/network/translate/NetworkTts$1;->this$0:Lcom/google/glass/voice/network/translate/NetworkTts;

    invoke-static {v0}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$000(Lcom/google/glass/voice/network/translate/NetworkTts;)V

    .line 201
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 195
    :catch_1
    move-exception v0

    move-object v1, v2

    .line 196
    :goto_3
    :try_start_3
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    const-string v3, "IllegalStateException playing audio bytes from cached file: %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p1, v4, v5

    invoke-interface {v2, v0, v3, v4}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 198
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    invoke-static {}, Lcom/google/glass/voice/network/translate/NetworkTts;->access$200()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    throw v0

    :catchall_1
    move-exception v0

    goto :goto_4

    .line 195
    :catch_2
    move-exception v0

    goto :goto_3

    .line 193
    :catch_3
    move-exception v0

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

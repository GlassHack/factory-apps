.class public Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;
.super Lcom/google/glass/voice/embedded/EmbeddedRecognizer;
.source "EmbeddedMenuRecognizer.java"


# instance fields
.field private final config:Lcom/google/glass/voice/VoiceConfig;

.field private final controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

.field private final logger:Lcom/google/glass/logging/FormattingLogger;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/glass/voice/VoiceConfig;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "config"    # Lcom/google/glass/voice/VoiceConfig;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Lcom/google/glass/voice/embedded/EmbeddedRecognizer;-><init>(Landroid/content/Context;)V

    .line 18
    invoke-static {p0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/Object;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    .line 25
    invoke-virtual {p0}, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->getHotwordLocale()Ljava/util/Locale;

    move-result-object v0

    .line 26
    invoke-virtual {p0}, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->getGrecoDirectory()Ljava/io/File;

    move-result-object v1

    const-string v2, "greco"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    .line 25
    invoke-static {v0, p1, v1, v2}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->getInstance(Ljava/util/Locale;Landroid/content/Context;Ljava/io/File;Ljava/io/File;)Lcom/google/glass/voice/embedded/MultiRecognizerController;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    .line 27
    iput-object p2, p0, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->config:Lcom/google/glass/voice/VoiceConfig;

    .line 28
    iget-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-virtual {v0, p2}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->preloadDecoder(Lcom/google/glass/voice/VoiceConfig;)Z

    .line 29
    return-void
.end method


# virtual methods
.method public activate(Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;)V
    .locals 4
    .param p1, "hotwordCallback"    # Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

    .prologue
    .line 49
    iget-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    iget-object v2, p0, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->config:Lcom/google/glass/voice/VoiceConfig;

    invoke-virtual {v1, v2, p1}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->switchDecoders(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;)Z

    move-result v0

    .line 50
    .local v0, "switchedSuccessfully":Z
    if-nez v0, :cond_0

    .line 51
    iget-object v1, p0, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Switching decoders failed."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 53
    :cond_0
    return-void
.end method

.method public declared-synchronized deactivate()V
    .locals 3

    .prologue
    .line 58
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-virtual {v0}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->resetAlignment()V

    .line 59
    iget-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->switchDecoders(Lcom/google/glass/voice/VoiceConfig;Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    monitor-exit p0

    return-void

    .line 58
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public destroy()V
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Destroy"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    return-void
.end method

.method public stringToCommand(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "symbol"    # Ljava/lang/String;

    .prologue
    .line 33
    iget-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-virtual {v0, p2}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->stringToCommand(Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized writeAudio(Ljava/nio/ByteBuffer;J)V
    .locals 1
    .param p1, "audio"    # Ljava/nio/ByteBuffer;
    .param p2, "sampleRate"    # J

    .prologue
    .line 38
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/google/glass/voice/embedded/EmbeddedMenuRecognizer;->controller:Lcom/google/glass/voice/embedded/MultiRecognizerController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/google/glass/voice/embedded/MultiRecognizerController;->writeAudio(Ljava/nio/ByteBuffer;J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit p0

    return-void

    .line 38
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.class public Lcom/google/glass/logging/audio/BufferedAudioSaver;
.super Ljava/lang/Object;
.source "BufferedAudioSaver.java"

# interfaces
.implements Lcom/google/glass/logging/audio/AudioSaver;


# static fields
.field public static final BYTES_PER_MICROPHONE_READ:I = 0xa0

.field public static final SAVE_TO_DISK_BASE_PATH:Ljava/lang/String; = "/data/data/com.google.glass.voice/recorded_audio/"

.field public static final SAVE_TO_DISK_BUFFER_CAPACITY:I = 0x1f40

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private final bufferSize:I

.field private destinationPath:Ljava/lang/String;

.field private final hotwordResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/glass/voice/HotwordResult;",
            ">;"
        }
    .end annotation
.end field

.field private outputStream:Ljava/io/OutputStream;

.field private final sampleRate:J

.field private savingAudio:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "sampleRate"    # J

    .prologue
    .line 53
    const/16 v0, 0x1f40

    invoke-direct {p0, p1, p2, v0}, Lcom/google/glass/logging/audio/BufferedAudioSaver;-><init>(JI)V

    .line 54
    return-void
.end method

.method public constructor <init>(JI)V
    .locals 1
    .param p1, "sampleRate"    # J
    .param p3, "bufferSize"    # I

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-static {}, Lcom/google/common/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->hotwordResults:Ljava/util/List;

    .line 57
    iput-wide p1, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->sampleRate:J

    .line 58
    iput p3, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->bufferSize:I

    .line 59
    return-void
.end method


# virtual methods
.method createOutputStream()Ljava/io/OutputStream;
    .locals 4
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "append":Z
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->destinationPath:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V

    iget v3, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->bufferSize:I

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    return-object v1
.end method

.method public final finishSavingAudio()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 104
    iget-boolean v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->savingAudio:Z

    if-nez v0, :cond_0

    .line 105
    sget-object v0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "finishSavingAudio() called before preparing or after finishing."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 118
    :goto_0
    return-void

    .line 109
    :cond_0
    sget-object v0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Closing out writing audio to disk"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->outputStream:Ljava/io/OutputStream;

    if-nez v0, :cond_1

    .line 111
    sget-object v0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "Output stream was not initialized before finishing."

    new-array v2, v3, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 115
    :cond_1
    iget-object v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->outputStream:Ljava/io/OutputStream;

    sget-object v1, Lcom/google/glass/logging/audio/BufferedAudioSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    invoke-static {v0, v1}, Lcom/google/glass/io/CloseableUtils;->tryClose(Ljava/io/Closeable;Lcom/google/glass/logging/FormattingLogger;)Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->outputStream:Ljava/io/OutputStream;

    .line 117
    iput-boolean v3, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->savingAudio:Z

    goto :goto_0
.end method

.method public final isSavingAudio()Z
    .locals 1

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->savingAudio:Z

    return v0
.end method

.method public final onResult(Lcom/google/glass/voice/HotwordResult;)V
    .locals 1
    .param p1, "hotwordResult"    # Lcom/google/glass/voice/HotwordResult;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->hotwordResults:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    return-void
.end method

.method public final prepareToSaveAudio(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 64
    iget-boolean v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->savingAudio:Z

    if-eqz v0, :cond_0

    .line 65
    sget-object v0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v1, "prepareToSaveAudio() called more than once."

    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 75
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->hotwordResults:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 70
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->savingAudio:Z

    .line 71
    const-string v0, "/data/data/com.google.glass.voice/recorded_audio/"

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x4

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v3, v4

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".pcm"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->destinationPath:Ljava/lang/String;

    .line 73
    sget-object v1, Lcom/google/glass/logging/audio/BufferedAudioSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Setting up to save audio to: "

    iget-object v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->destinationPath:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    new-array v2, v5, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    invoke-virtual {p0}, Lcom/google/glass/logging/audio/BufferedAudioSaver;->createOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->outputStream:Ljava/io/OutputStream;

    goto :goto_0

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public final registerWithStorage(Landroid/content/Context;Lcom/google/glass/logging/audio/SavedAudioStorage;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "savedAudioStorage"    # Lcom/google/glass/logging/audio/SavedAudioStorage;

    .prologue
    .line 122
    iget-object v2, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->destinationPath:Ljava/lang/String;

    iget-object v3, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->hotwordResults:Ljava/util/List;

    iget-wide v4, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->sampleRate:J

    .line 123
    invoke-static {}, Lcom/google/glass/logging/audio/SavedAudioStorage;->getEnabledStorageLabs()Ljava/util/List;

    move-result-object v6

    move-object v0, p2

    move-object v1, p1

    .line 122
    invoke-virtual/range {v0 .. v6}, Lcom/google/glass/logging/audio/SavedAudioStorage;->storeAudio(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;JLjava/util/List;)V

    .line 124
    return-void
.end method

.method public final saveAudio([BII)V
    .locals 4
    .param p1, "b"    # [B
    .param p2, "offset"    # I
    .param p3, "readByteCount"    # I

    .prologue
    const/4 v3, 0x0

    .line 85
    iget-boolean v1, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->savingAudio:Z

    if-nez v1, :cond_0

    .line 86
    sget-object v1, Lcom/google/glass/logging/audio/BufferedAudioSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "saveAudio() called before preparing or after finishing."

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 95
    :goto_0
    return-void

    .line 91
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/google/glass/logging/audio/BufferedAudioSaver;->outputStream:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Lcom/google/glass/logging/audio/BufferedAudioSaver;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Failed to write to buffered stream!"

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v0, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

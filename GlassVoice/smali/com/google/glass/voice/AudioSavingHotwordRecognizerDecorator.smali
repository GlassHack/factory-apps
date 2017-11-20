.class public Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;
.super Ljava/lang/Object;
.source "AudioSavingHotwordRecognizerDecorator.java"

# interfaces
.implements Lcom/google/glass/voice/HotwordRecognizer;


# static fields
.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field audioSaver:Lcom/google/glass/logging/audio/AudioSaver;
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation
.end field

.field private buf:[B

.field private final delegate:Lcom/google/glass/voice/HotwordRecognizer;

.field private final name:Ljava/lang/String;

.field private phaseCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    invoke-static {}, Lcom/google/glass/logging/FormattingLoggers;->getContextLogger()Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method private constructor <init>(Lcom/google/glass/voice/HotwordRecognizer;Ljava/lang/String;)V
    .locals 0
    .param p1, "delegate"    # Lcom/google/glass/voice/HotwordRecognizer;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    .line 33
    iput-object p2, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->name:Ljava/lang/String;

    .line 34
    return-void
.end method

.method public static create(Lcom/google/glass/voice/HotwordRecognizer;Ljava/lang/String;)Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;
    .locals 1
    .param p0, "delegate"    # Lcom/google/glass/voice/HotwordRecognizer;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 47
    if-nez p0, :cond_0

    .line 48
    const/4 v0, 0x0

    .line 51
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;

    invoke-direct {v0, p0, p1}, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;-><init>(Lcom/google/glass/voice/HotwordRecognizer;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getBuffer(I)[B
    .locals 1
    .param p1, "length"    # I

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->buf:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->buf:[B

    array-length v0, v0

    if-ge v0, p1, :cond_1

    .line 75
    :cond_0
    new-array v0, p1, [B

    iput-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->buf:[B

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->buf:[B

    return-object v0
.end method

.method private saveAudio(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "b"    # Ljava/nio/ByteBuffer;

    .prologue
    const/4 v3, 0x0

    .line 102
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 104
    .local v0, "availableBytes":I
    invoke-direct {p0, v0}, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->getBuffer(I)[B

    move-result-object v1

    .line 105
    .local v1, "buf":[B
    invoke-virtual {p1, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 107
    iget-object v2, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v2, v1, v3, v0}, Lcom/google/glass/logging/audio/AudioSaver;->saveAudio([BII)V

    .line 108
    return-void
.end method


# virtual methods
.method public activate(Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;)V
    .locals 1
    .param p1, "hotwordCallback"    # Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0, p1}, Lcom/google/glass/voice/HotwordRecognizer;->activate(Lcom/google/glass/voice/HotwordRecognizer$HotwordCallback;)V

    .line 71
    return-void
.end method

.method public deactivate()V
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0}, Lcom/google/glass/voice/HotwordRecognizer;->deactivate()V

    .line 62
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    if-eqz v0, :cond_0

    .line 63
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v0}, Lcom/google/glass/logging/audio/AudioSaver;->finishSavingAudio()V

    .line 64
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    .line 66
    :cond_0
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0}, Lcom/google/glass/voice/HotwordRecognizer;->destroy()V

    .line 113
    return-void
.end method

.method public stringToCommand(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "str"    # Ljava/lang/String;

    .prologue
    .line 56
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v0, p1, p2}, Lcom/google/glass/voice/HotwordRecognizer;->stringToCommand(Landroid/content/Context;Ljava/lang/String;)Lcom/google/glass/voice/VoiceCommand;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 117
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->name:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->phaseCount:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x50

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/2addr v4, v5

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "AudioSavingHotwordRecognizerDecorator [delegate="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ", name="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", phaseCount="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeAudio(Ljava/nio/ByteBuffer;J)V
    .locals 6
    .param p1, "b"    # Ljava/nio/ByteBuffer;
    .param p2, "rate"    # J

    .prologue
    .line 83
    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/google/glass/logging/audio/BufferedAudioSaver;

    invoke-direct {v1, p2, p3}, Lcom/google/glass/logging/audio/BufferedAudioSaver;-><init>(J)V

    iput-object v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    .line 87
    :cond_0
    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v1}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v1

    if-nez v1, :cond_1

    .line 89
    :try_start_0
    sget-object v1, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v2, "Preparing audio saver"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-interface {v1, v2, v3}, Lcom/google/glass/logging/FormattingLogger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 90
    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    iget-object v2, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->name:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->phaseCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->phaseCount:I

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0xc

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, "-"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/google/glass/logging/audio/AudioSaver;->prepareToSaveAudio(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :cond_1
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->asReadOnlyBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->saveAudio(Ljava/nio/ByteBuffer;)V

    .line 98
    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingHotwordRecognizerDecorator;->delegate:Lcom/google/glass/voice/HotwordRecognizer;

    invoke-interface {v1, p1, p2, p3}, Lcom/google/glass/voice/HotwordRecognizer;->writeAudio(Ljava/nio/ByteBuffer;J)V

    .line 99
    return-void

    .line 91
    :catch_0
    move-exception v0

    .line 92
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

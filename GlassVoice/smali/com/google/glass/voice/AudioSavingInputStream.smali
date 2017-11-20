.class public Lcom/google/glass/voice/AudioSavingInputStream;
.super Ljava/io/InputStream;
.source "AudioSavingInputStream.java"


# instance fields
.field private final audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

.field private final delegateStream:Ljava/io/InputStream;


# direct methods
.method public constructor <init>(Ljava/io/InputStream;Lcom/google/glass/logging/audio/AudioSaver;)V
    .locals 0
    .param p1, "delegateStream"    # Ljava/io/InputStream;
    .param p2, "audioSaver"    # Lcom/google/glass/logging/audio/AudioSaver;

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/google/glass/voice/AudioSavingInputStream;->delegateStream:Ljava/io/InputStream;

    .line 15
    iput-object p2, p0, Lcom/google/glass/voice/AudioSavingInputStream;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    .line 16
    return-void
.end method

.method private wrappedRead([BII)I
    .locals 2
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingInputStream;->delegateStream:Ljava/io/InputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 30
    .local v0, "read":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingInputStream;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v1}, Lcom/google/glass/logging/audio/AudioSaver;->isSavingAudio()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 31
    iget-object v1, p0, Lcom/google/glass/voice/AudioSavingInputStream;->audioSaver:Lcom/google/glass/logging/audio/AudioSaver;

    invoke-interface {v1, p1, p2, v0}, Lcom/google/glass/logging/audio/AudioSaver;->saveAudio([BII)V

    .line 33
    :cond_0
    return v0
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    iget-object v0, p0, Lcom/google/glass/voice/AudioSavingInputStream;->delegateStream:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 44
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 38
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    const/4 v0, 0x0

    array-length v1, p1

    invoke-direct {p0, p1, v0, v1}, Lcom/google/glass/voice/AudioSavingInputStream;->wrappedRead([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1, p2, p3}, Lcom/google/glass/voice/AudioSavingInputStream;->wrappedRead([BII)I

    move-result v0

    return v0
.end method

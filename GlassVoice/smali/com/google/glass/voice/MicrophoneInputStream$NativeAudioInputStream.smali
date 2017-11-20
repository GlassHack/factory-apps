.class final Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;
.super Ljava/io/InputStream;
.source "MicrophoneInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/voice/MicrophoneInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "NativeAudioInputStream"
.end annotation


# instance fields
.field private closed:Z

.field final synthetic this$0:Lcom/google/glass/voice/MicrophoneInputStream;


# direct methods
.method private constructor <init>(Lcom/google/glass/voice/MicrophoneInputStream;)V
    .locals 1

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;->this$0:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 56
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;->closed:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/glass/voice/MicrophoneInputStream;Lcom/google/glass/voice/MicrophoneInputStream$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/google/glass/voice/MicrophoneInputStream;
    .param p2, "x1"    # Lcom/google/glass/voice/MicrophoneInputStream$1;

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;-><init>(Lcom/google/glass/voice/MicrophoneInputStream;)V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 89
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;->closed:Z

    if-nez v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;->this$0:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-static {v0}, Lcom/google/glass/voice/MicrophoneInputStream;->access$000(Lcom/google/glass/voice/MicrophoneInputStream;)Lcom/google/glass/voice/ConcurrentAudioInterface;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/glass/voice/ConcurrentAudioInterface;->releaseLock()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;->closed:Z

    .line 93
    :cond_0
    invoke-super {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    monitor-exit p0

    return-void

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Not implemented"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 4
    .param p1, "buffer"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, -0x1

    .line 64
    if-nez p2, :cond_1

    array-length v3, p1

    if-ne p3, v3, :cond_1

    .line 65
    iget-object v3, p0, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;->this$0:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-static {v3}, Lcom/google/glass/voice/MicrophoneInputStream;->access$000(Lcom/google/glass/voice/MicrophoneInputStream;)Lcom/google/glass/voice/ConcurrentAudioInterface;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/google/glass/voice/ConcurrentAudioInterface;->read([B)I

    move-result v0

    .line 69
    .local v0, "readReturn":I
    if-ge v0, p3, :cond_0

    move v0, v2

    .line 84
    .end local v0    # "readReturn":I
    :cond_0
    :goto_0
    return v0

    .line 76
    :cond_1
    new-array v1, p3, [B

    .line 77
    .local v1, "temp":[B
    iget-object v3, p0, Lcom/google/glass/voice/MicrophoneInputStream$NativeAudioInputStream;->this$0:Lcom/google/glass/voice/MicrophoneInputStream;

    invoke-static {v3}, Lcom/google/glass/voice/MicrophoneInputStream;->access$000(Lcom/google/glass/voice/MicrophoneInputStream;)Lcom/google/glass/voice/ConcurrentAudioInterface;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/google/glass/voice/ConcurrentAudioInterface;->read([B)I

    move-result v0

    .line 79
    .restart local v0    # "readReturn":I
    if-ge v0, p3, :cond_2

    move v0, v2

    .line 80
    goto :goto_0

    .line 83
    :cond_2
    const/4 v2, 0x0

    invoke-static {v1, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

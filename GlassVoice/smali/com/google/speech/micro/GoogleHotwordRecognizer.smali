.class public Lcom/google/speech/micro/GoogleHotwordRecognizer;
.super Ljava/lang/Object;
.source "GoogleHotwordRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/speech/micro/GoogleHotwordRecognizer$AdaptSpeakerModelResult;,
        Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;
    }
.end annotation


# instance fields
.field private hotwordData:Lcom/google/speech/micro/GoogleHotwordData;

.field private nativeHotwordRecognizer:J


# direct methods
.method public constructor <init>(Lcom/google/speech/micro/GoogleHotwordData;)V
    .locals 2
    .param p1, "hotwordData"    # Lcom/google/speech/micro/GoogleHotwordData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer;->hotwordData:Lcom/google/speech/micro/GoogleHotwordData;

    .line 20
    invoke-static {p1}, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeNew(Lcom/google/speech/micro/GoogleHotwordData;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeHotwordRecognizer:J

    .line 21
    return-void
.end method

.method public constructor <init>(Lcom/google/speech/micro/GoogleHotwordData;[[B)V
    .locals 2
    .param p1, "hotwordData"    # Lcom/google/speech/micro/GoogleHotwordData;
    .param p2, "speakerModelsBytes"    # [[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer;->hotwordData:Lcom/google/speech/micro/GoogleHotwordData;

    .line 36
    invoke-static {p1, p2}, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeNew(Lcom/google/speech/micro/GoogleHotwordData;[[B)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeHotwordRecognizer:J

    .line 37
    return-void
.end method

.method private static native nativeAdaptSpeakerModel(JI)Lcom/google/speech/micro/GoogleHotwordRecognizer$AdaptSpeakerModelResult;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method private static native nativeClose(J)V
.end method

.method private static native nativeNew(Lcom/google/speech/micro/GoogleHotwordData;)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private static native nativeNew(Lcom/google/speech/micro/GoogleHotwordData;[[B)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method

.method private static native nativeNewSpeakerFromProcessedAudio(J)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation
.end method

.method private static native nativeProcess(J[BII)Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;
.end method

.method private static native nativeReset(J)V
.end method

.method private static native nativeSetHotwordThreshold(JFI)V
.end method


# virtual methods
.method public adaptSpeakerModel(I)Lcom/google/speech/micro/GoogleHotwordRecognizer$AdaptSpeakerModelResult;
    .locals 2
    .param p1, "speakerModel"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 148
    iget-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeHotwordRecognizer:J

    invoke-static {v0, v1, p1}, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeAdaptSpeakerModel(JI)Lcom/google/speech/micro/GoogleHotwordRecognizer$AdaptSpeakerModelResult;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized close()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 162
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeHotwordRecognizer:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 164
    iget-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeHotwordRecognizer:J

    invoke-static {v0, v1}, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeClose(J)V

    .line 165
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeHotwordRecognizer:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 167
    :cond_0
    monitor-exit p0

    return-void

    .line 162
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 175
    :try_start_0
    invoke-virtual {p0}, Lcom/google/speech/micro/GoogleHotwordRecognizer;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 179
    return-void

    .line 177
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public newSpeakerFromProcessedAudio()[B
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 126
    iget-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeHotwordRecognizer:J

    invoke-static {v0, v1}, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeNewSpeakerFromProcessedAudio(J)[B

    move-result-object v0

    return-object v0
.end method

.method public process([B)Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;
    .locals 2
    .param p1, "audioBuffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 76
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/google/speech/micro/GoogleHotwordRecognizer;->process([BII)Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;

    move-result-object v0

    return-object v0
.end method

.method public process([BII)Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;
    .locals 3
    .param p1, "audioBuffer"    # [B
    .param p2, "startByte"    # I
    .param p3, "lengthBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 103
    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_0

    and-int/lit8 v1, p3, 0x1

    if-eqz v1, :cond_1

    .line 104
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Samples must be 2-bytes."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 106
    :cond_1
    iget-wide v1, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeHotwordRecognizer:J

    invoke-static {v1, v2, p1, p2, p3}, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeProcess(J[BII)Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;

    move-result-object v0

    .line 108
    .local v0, "result":Lcom/google/speech/micro/GoogleHotwordRecognizer$GoogleHotwordResult;
    return-object v0
.end method

.method public reset()V
    .locals 2

    .prologue
    .line 152
    iget-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeHotwordRecognizer:J

    invoke-static {v0, v1}, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeReset(J)V

    .line 153
    return-void
.end method

.method public setHotwordThreshold(FI)V
    .locals 2
    .param p1, "threshold"    # F
    .param p2, "hotwordIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 55
    iget-wide v0, p0, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeHotwordRecognizer:J

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/micro/GoogleHotwordRecognizer;->nativeSetHotwordThreshold(JFI)V

    .line 56
    return-void
.end method

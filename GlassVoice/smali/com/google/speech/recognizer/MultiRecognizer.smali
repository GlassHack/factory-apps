.class public Lcom/google/speech/recognizer/MultiRecognizer;
.super Ljava/lang/Object;
.source "MultiRecognizer.java"

# interfaces
.implements Lcom/google/speech/recognizer/Recognizer;


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final logger:Lcom/google/glass/logging/FormattingLogger;


# instance fields
.field private callbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/speech/recognizer/RecognizerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private nativeObj:J

.field private reader:Ljava/io/InputStream;

.field private rm:Lcom/google/speech/recognizer/ResourceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 29
    const-class v0, Lcom/google/speech/recognizer/MultiRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/speech/recognizer/MultiRecognizer;->TAG:Ljava/lang/String;

    .line 30
    sget-object v0, Lcom/google/speech/recognizer/MultiRecognizer;->TAG:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/glass/logging/FormattingLoggers;->getLogger(Ljava/lang/String;)Lcom/google/glass/logging/FormattingLogger;

    move-result-object v0

    sput-object v0, Lcom/google/speech/recognizer/MultiRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->callbacks:Ljava/util/List;

    .line 35
    invoke-direct {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeConstruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    .line 36
    return-void
.end method

.method public static loadResourcesFromFile(Lcom/google/speech/recognizer/ResourceManager;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2
    .param p0, "rm"    # Lcom/google/speech/recognizer/ResourceManager;
    .param p1, "configFile"    # Ljava/lang/String;
    .param p2, "resourcePaths"    # [Ljava/lang/String;

    .prologue
    .line 58
    invoke-virtual {p0}, Lcom/google/speech/recognizer/ResourceManager;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeLoadResourcesFromFile(JLjava/lang/String;[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static loadResourcesFromProto(Lcom/google/speech/recognizer/ResourceManager;[B[Ljava/lang/String;)I
    .locals 2
    .param p0, "rm"    # Lcom/google/speech/recognizer/ResourceManager;
    .param p1, "proto"    # [B
    .param p2, "resourcePaths"    # [Ljava/lang/String;

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/google/speech/recognizer/ResourceManager;->getNativeObject()J

    move-result-wide v0

    invoke-static {v0, v1, p1, p2}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeLoadResourcesFromProto(J[B[Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method private native nativeCancel(J)I
.end method

.method private native nativeConstruct()J
.end method

.method private native nativeDelete(J)V
.end method

.method protected static native nativeInit()V
.end method

.method private native nativeInitFromFile(JJLjava/lang/String;)I
.end method

.method private native nativeInitFromProto(JJ[B)I
.end method

.method private static native nativeLoadResourcesFromFile(JLjava/lang/String;[Ljava/lang/String;)I
.end method

.method private static native nativeLoadResourcesFromProto(J[B[Ljava/lang/String;)I
.end method

.method private native nativeRun(J[B)[B
.end method

.method private native nativeSetConfig(JLjava/lang/String;)I
.end method

.method private validate()V
    .locals 4

    .prologue
    .line 170
    iget-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "recognizer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/speech/recognizer/RecognizerCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/google/speech/recognizer/RecognizerCallback;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()I
    .locals 2

    .prologue
    .line 117
    invoke-direct {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->validate()V

    .line 118
    iget-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    invoke-direct {p0, v0, v1}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeCancel(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 50
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 51
    iget-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    invoke-direct {p0, v0, v1}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeDelete(J)V

    .line 52
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    :cond_0
    monitor-exit p0

    return-void

    .line 50
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 41
    invoke-virtual {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->delete()V

    .line 42
    return-void
.end method

.method protected handleAudioLevelEvent([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 160
    invoke-static {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;->parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    move-result-object v1

    .line 161
    .local v1, "event":Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    iget-object v2, p0, Lcom/google/speech/recognizer/MultiRecognizer;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/RecognizerCallback;

    .line 162
    .local v0, "cb":Lcom/google/speech/recognizer/RecognizerCallback;
    invoke-interface {v0, v1}, Lcom/google/speech/recognizer/RecognizerCallback;->handleAudioLevelEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;)V

    goto :goto_0

    .line 164
    .end local v0    # "cb":Lcom/google/speech/recognizer/RecognizerCallback;
    :cond_0
    return-void
.end method

.method protected handleEndpointerEvent([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 152
    invoke-static {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;->parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    move-result-object v1

    .line 153
    .local v1, "event":Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    iget-object v2, p0, Lcom/google/speech/recognizer/MultiRecognizer;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/RecognizerCallback;

    .line 154
    .local v0, "cb":Lcom/google/speech/recognizer/RecognizerCallback;
    invoke-interface {v0, v1}, Lcom/google/speech/recognizer/RecognizerCallback;->handleEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V

    goto :goto_0

    .line 156
    .end local v0    # "cb":Lcom/google/speech/recognizer/RecognizerCallback;
    :cond_0
    return-void
.end method

.method protected handleRecognitionEvent([B)V
    .locals 4
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 144
    invoke-static {p1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;->parseFrom([B)Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    move-result-object v1

    .line 145
    .local v1, "event":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    iget-object v2, p0, Lcom/google/speech/recognizer/MultiRecognizer;->callbacks:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/RecognizerCallback;

    .line 146
    .local v0, "cb":Lcom/google/speech/recognizer/RecognizerCallback;
    invoke-interface {v0, v1}, Lcom/google/speech/recognizer/RecognizerCallback;->handleRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    goto :goto_0

    .line 148
    .end local v0    # "cb":Lcom/google/speech/recognizer/RecognizerCallback;
    :cond_0
    return-void
.end method

.method public initFromFile(Ljava/lang/String;Lcom/google/speech/recognizer/ResourceManager;)I
    .locals 6
    .param p1, "configFile"    # Ljava/lang/String;
    .param p2, "rm"    # Lcom/google/speech/recognizer/ResourceManager;

    .prologue
    .line 70
    invoke-direct {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->validate()V

    .line 71
    iput-object p2, p0, Lcom/google/speech/recognizer/MultiRecognizer;->rm:Lcom/google/speech/recognizer/ResourceManager;

    .line 72
    iget-wide v1, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    invoke-virtual {p2}, Lcom/google/speech/recognizer/ResourceManager;->getNativeObject()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeInitFromFile(JJLjava/lang/String;)I

    move-result v0

    return v0
.end method

.method public initFromProto([BLcom/google/speech/recognizer/ResourceManager;)I
    .locals 6
    .param p1, "configBytes"    # [B
    .param p2, "rm"    # Lcom/google/speech/recognizer/ResourceManager;

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->validate()V

    .line 81
    iput-object p2, p0, Lcom/google/speech/recognizer/MultiRecognizer;->rm:Lcom/google/speech/recognizer/ResourceManager;

    .line 82
    iget-wide v1, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    invoke-virtual {p2}, Lcom/google/speech/recognizer/ResourceManager;->getNativeObject()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeInitFromProto(JJ[B)I

    move-result v0

    return v0
.end method

.method protected read([B)I
    .locals 3
    .param p1, "buffer"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 128
    array-length v1, p1

    if-nez v1, :cond_0

    .line 129
    new-instance v1, Ljava/io/IOException;

    const-string v2, "illegal zero length buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 131
    :cond_0
    iget-object v1, p0, Lcom/google/speech/recognizer/MultiRecognizer;->reader:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 132
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 133
    const/4 v0, 0x0

    .line 135
    :cond_1
    return v0
.end method

.method public run(Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 6
    .param p1, "sessionParams"    # Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->validate()V

    .line 103
    iget-wide v3, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    invoke-static {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v5

    invoke-direct {p0, v3, v4, v5}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeRun(J[B)[B

    move-result-object v2

    .line 105
    .local v2, "resultBytes":[B
    :try_start_0
    new-instance v3, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    invoke-direct {v3}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;-><init>()V

    invoke-static {v3, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v3

    check-cast v3, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    :try_end_0
    .catch Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-object v3

    .line 106
    :catch_0
    move-exception v0

    .line 107
    .local v0, "ex":Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v3, Lcom/google/speech/recognizer/MultiRecognizer;->logger:Lcom/google/glass/logging/FormattingLogger;

    const-string v4, "bad protocol buffer from recognizer jni"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-interface {v3, v4, v5}, Lcom/google/glass/logging/FormattingLogger;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 108
    new-instance v1, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;-><init>()V

    .line 109
    .local v1, "nativeRecognitionResult":Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    const/4 v3, 0x2

    invoke-virtual {v1, v3}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->setStatus(I)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    move-object v3, v1

    .line 110
    goto :goto_0
.end method

.method public setAudioReader(Ljava/io/InputStream;)I
    .locals 1
    .param p1, "reader"    # Ljava/io/InputStream;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/google/speech/recognizer/MultiRecognizer;->reader:Ljava/io/InputStream;

    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public setConfig(Ljava/lang/String;)I
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/google/speech/recognizer/MultiRecognizer;->validate()V

    .line 123
    iget-wide v0, p0, Lcom/google/speech/recognizer/MultiRecognizer;->nativeObj:J

    invoke-direct {p0, v0, v1, p1}, Lcom/google/speech/recognizer/MultiRecognizer;->nativeSetConfig(JLjava/lang/String;)I

    move-result v0

    return v0
.end method

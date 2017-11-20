.class public abstract Lcom/google/speech/recognizer/AbstractRecognizer;
.super Ljava/lang/Object;
.source "AbstractRecognizer.java"

# interfaces
.implements Lcom/google/speech/recognizer/Recognizer;


# static fields
.field private static final logger:Ljava/util/logging/Logger;


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
    .line 30
    const-class v0, Lcom/google/speech/recognizer/AbstractRecognizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/speech/recognizer/AbstractRecognizer;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->callbacks:Ljava/util/List;

    .line 36
    invoke-direct {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeConstruct()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    .line 37
    return-void
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

.method private native nativeRun(J[B)[B
.end method

.method private validate()V
    .locals 4

    .prologue
    .line 158
    iget-wide v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 159
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "recognizer is not initialized"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/google/speech/recognizer/RecognizerCallback;)I
    .locals 1
    .param p1, "callback"    # Lcom/google/speech/recognizer/RecognizerCallback;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->callbacks:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const/4 v0, 0x0

    return v0
.end method

.method public cancel()I
    .locals 2

    .prologue
    .line 111
    invoke-direct {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;->validate()V

    .line 112
    iget-wide v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    invoke-direct {p0, v0, v1}, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeCancel(J)I

    move-result v0

    return v0
.end method

.method public declared-synchronized delete()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 52
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 53
    iget-wide v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    invoke-direct {p0, v0, v1}, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeDelete(J)V

    .line 54
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 56
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 0

    .prologue
    .line 42
    invoke-virtual {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;->delete()V

    .line 43
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
    .line 146
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;-><init>()V

    .line 147
    .local v1, "event":Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;
    invoke-static {v1, p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .line 148
    iget-object v3, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/RecognizerCallback;

    .line 149
    .local v0, "cb":Lcom/google/speech/recognizer/RecognizerCallback;
    invoke-interface {v0, v1}, Lcom/google/speech/recognizer/RecognizerCallback;->handleAudioLevelEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$AudioLevelEvent;)V

    goto :goto_0

    .line 151
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
    .line 137
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;-><init>()V

    .line 138
    .local v1, "event":Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;
    invoke-static {v1, p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .line 139
    iget-object v3, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/RecognizerCallback;

    .line 140
    .local v0, "cb":Lcom/google/speech/recognizer/RecognizerCallback;
    invoke-interface {v0, v1}, Lcom/google/speech/recognizer/RecognizerCallback;->handleEndpointerEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$EndpointerEvent;)V

    goto :goto_0

    .line 142
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
    .line 128
    new-instance v1, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;

    invoke-direct {v1}, Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;-><init>()V

    .line 129
    .local v1, "event":Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;
    invoke-static {v1, p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .line 130
    iget-object v3, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->callbacks:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/speech/recognizer/RecognizerCallback;

    .line 131
    .local v0, "cb":Lcom/google/speech/recognizer/RecognizerCallback;
    invoke-interface {v0, v1}, Lcom/google/speech/recognizer/RecognizerCallback;->handleRecognitionEvent(Lcom/google/speech/recognizer/api/RecognizerProtos$RecognitionEvent;)V

    goto :goto_0

    .line 133
    .end local v0    # "cb":Lcom/google/speech/recognizer/RecognizerCallback;
    :cond_0
    return-void
.end method

.method public initFromFile(Ljava/lang/String;Lcom/google/speech/recognizer/ResourceManager;)I
    .locals 7
    .param p1, "configFile"    # Ljava/lang/String;
    .param p2, "rm"    # Lcom/google/speech/recognizer/ResourceManager;

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;->validate()V

    .line 64
    iput-object p2, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->rm:Lcom/google/speech/recognizer/ResourceManager;

    .line 65
    iget-wide v1, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    invoke-virtual {p2}, Lcom/google/speech/recognizer/ResourceManager;->getNativeObject()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeInitFromFile(JJLjava/lang/String;)I

    move-result v6

    .line 66
    .local v6, "status":I
    return v6
.end method

.method public initFromProto([BLcom/google/speech/recognizer/ResourceManager;)I
    .locals 7
    .param p1, "configBytes"    # [B
    .param p2, "rm"    # Lcom/google/speech/recognizer/ResourceManager;

    .prologue
    .line 74
    invoke-direct {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;->validate()V

    .line 75
    iput-object p2, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->rm:Lcom/google/speech/recognizer/ResourceManager;

    .line 76
    iget-wide v1, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    invoke-virtual {p2}, Lcom/google/speech/recognizer/ResourceManager;->getNativeObject()J

    move-result-wide v3

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeInitFromProto(JJ[B)I

    move-result v6

    .line 77
    .local v6, "status":I
    return v6
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
    .line 117
    array-length v1, p1

    if-nez v1, :cond_0

    .line 118
    new-instance v1, Ljava/io/IOException;

    const-string v2, "illegal zero length buffer"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->reader:Ljava/io/InputStream;

    invoke-virtual {v1, p1}, Ljava/io/InputStream;->read([B)I

    move-result v0

    .line 121
    .local v0, "result":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 122
    const/4 v0, 0x0

    .line 123
    :cond_1
    return v0
.end method

.method public run(Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    .locals 5
    .param p1, "sessionParams"    # Lcom/google/speech/recognizer/api/RecognizerSessionParamsProto$RecognizerSessionParams;

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/google/speech/recognizer/AbstractRecognizer;->validate()V

    .line 98
    iget-wide v2, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeObj:J

    invoke-static {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v4

    invoke-direct {p0, v2, v3, v4}, Lcom/google/speech/recognizer/AbstractRecognizer;->nativeRun(J[B)[B

    move-result-object v1

    .line 100
    .local v1, "resultBytes":[B
    :try_start_0
    new-instance v2, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    invoke-direct {v2}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;-><init>()V

    invoke-static {v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v2

    check-cast v2, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;
    :try_end_0
    .catch Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    :goto_0
    return-object v2

    .line 101
    :catch_0
    move-exception v0

    .line 102
    .local v0, "ex":Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
    sget-object v2, Lcom/google/speech/recognizer/AbstractRecognizer;->logger:Ljava/util/logging/Logger;

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "bad protocol buffer from recognizer jni"

    invoke-virtual {v2, v3, v4}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 103
    new-instance v2, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    invoke-direct {v2}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;-><init>()V

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;->setStatus(I)Lcom/google/speech/recognizer/api/NativeRecognizer$NativeRecognitionResult;

    move-result-object v2

    goto :goto_0
.end method

.method public setAudioReader(Ljava/io/InputStream;)I
    .locals 1
    .param p1, "reader"    # Ljava/io/InputStream;

    .prologue
    .line 83
    iput-object p1, p0, Lcom/google/speech/recognizer/AbstractRecognizer;->reader:Ljava/io/InputStream;

    .line 84
    const/4 v0, 0x0

    return v0
.end method

.class public final Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EngineSpecific.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/synthesizer/EngineSpecific;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SynthesisEngineSpecificRequest"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 26
    invoke-virtual {p0}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->clear()Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    .line 27
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->_emptyArray:[Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->_emptyArray:[Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    sput-object v0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->_emptyArray:[Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->_emptyArray:[Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    return-object v0

    .line 20
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 65
    new-instance v0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    invoke-direct {v0}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 59
    new-instance v0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    invoke-direct {v0}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;
    .locals 1

    .prologue
    .line 30
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->cachedSize:I

    .line 31
    return-object p0
.end method

.method public bridge synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1
    .param p1, "x0"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/synthesizer/EngineSpecific$SynthesisEngineSpecificRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 43
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 44
    .local v0, "tag":I
    packed-switch v0, :pswitch_data_0

    .line 48
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 49
    :pswitch_0
    return-object p0

    .line 44
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 0
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    .prologue
    .line 36
    return-void
.end method

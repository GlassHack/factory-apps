.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VoiceSearch"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;


# instance fields
.field private actionCountDownMsec_:I

.field private bitField0_:I

.field private embeddedRecognizerFallbackTimeout_:I

.field public endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2880
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2881
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    .line 2882
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 2

    .prologue
    .line 2826
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    if-nez v0, :cond_1

    .line 2827
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2829
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    if-nez v0, :cond_0

    .line 2830
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    .line 2832
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2834
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    return-object v0

    .line 2832
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2970
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 2964
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2885
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    .line 2886
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 2887
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->actionCountDownMsec_:I

    .line 2888
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->embeddedRecognizerFallbackTimeout_:I

    .line 2889
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->cachedSize:I

    .line 2890
    return-object p0
.end method

.method public clearActionCountDownMsec()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1

    .prologue
    .line 2856
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->actionCountDownMsec_:I

    .line 2857
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    .line 2858
    return-object p0
.end method

.method public clearEmbeddedRecognizerFallbackTimeout()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1

    .prologue
    .line 2875
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->embeddedRecognizerFallbackTimeout_:I

    .line 2876
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    .line 2877
    return-object p0
.end method

.method public getActionCountDownMsec()I
    .locals 1

    .prologue
    .line 2845
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->actionCountDownMsec_:I

    return v0
.end method

.method public getEmbeddedRecognizerFallbackTimeout()I
    .locals 1

    .prologue
    .line 2864
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->embeddedRecognizerFallbackTimeout_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 2909
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 2910
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-eqz v1, :cond_0

    .line 2911
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2914
    :cond_0
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_1

    .line 2915
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->actionCountDownMsec_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2918
    :cond_1
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_2

    .line 2919
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->embeddedRecognizerFallbackTimeout_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 2922
    :cond_2
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->cachedSize:I

    .line 2923
    return v0
.end method

.method public hasActionCountDownMsec()Z
    .locals 1

    .prologue
    .line 2853
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasEmbeddedRecognizerFallbackTimeout()Z
    .locals 1

    .prologue
    .line 2872
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
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
    .line 2820
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2931
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 2932
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 2936
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 2937
    :sswitch_0
    return-object p0

    .line 2942
    :sswitch_1
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-nez v1, :cond_1

    .line 2943
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 2945
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 2949
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->actionCountDownMsec_:I

    .line 2950
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    goto :goto_0

    .line 2954
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->embeddedRecognizerFallbackTimeout_:I

    .line 2955
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    goto :goto_0

    .line 2932
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setActionCountDownMsec(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2848
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->actionCountDownMsec_:I

    .line 2849
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    .line 2850
    return-object p0
.end method

.method public setEmbeddedRecognizerFallbackTimeout(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 2867
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->embeddedRecognizerFallbackTimeout_:I

    .line 2868
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    .line 2869
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2896
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-eqz v0, :cond_0

    .line 2897
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2899
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    .line 2900
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->actionCountDownMsec_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2902
    :cond_1
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_2

    .line 2903
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$VoiceSearch;->embeddedRecognizerFallbackTimeout_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 2905
    :cond_2
    return-void
.end method

.class public final Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "RecognitionContextProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GrammarFstsContext"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;


# instance fields
.field public grammarFst:[[B


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 970
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 971
    invoke-virtual {p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->clear()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    .line 972
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;
    .locals 2

    .prologue
    .line 956
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    if-nez v0, :cond_1

    .line 957
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 959
    :try_start_0
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    if-nez v0, :cond_0

    .line 960
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    sput-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    .line 962
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 964
    :cond_1
    sget-object v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->_emptyArray:[Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    return-object v0

    .line 962
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1058
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1052
    new-instance v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    invoke-direct {v0}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;
    .locals 1

    .prologue
    .line 975
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    iput-object v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->grammarFst:[[B

    .line 976
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->cachedSize:I

    .line 977
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 995
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 996
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->grammarFst:[[B

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->grammarFst:[[B

    array-length v5, v5

    if-lez v5, :cond_2

    .line 997
    const/4 v0, 0x0

    .line 998
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 999
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->grammarFst:[[B

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 1000
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->grammarFst:[[B

    aget-object v2, v5, v3

    .line 1001
    .local v2, "element":[B
    if-eqz v2, :cond_0

    .line 1002
    add-int/lit8 v0, v0, 0x1

    .line 1003
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSizeNoTag([B)I

    move-result v5

    add-int/2addr v1, v5

    .line 999
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1007
    .end local v2    # "element":[B
    :cond_1
    add-int/2addr v4, v1

    .line 1008
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 1010
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_2
    iput v4, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->cachedSize:I

    .line 1011
    return v4
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
    .line 950
    invoke-virtual {p0, p1}, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 1019
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 1020
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 1024
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1025
    :sswitch_0
    return-object p0

    .line 1030
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 1032
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->grammarFst:[[B

    if-nez v5, :cond_2

    move v1, v4

    .line 1033
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [[B

    .line 1034
    .local v2, "newArray":[[B
    if-eqz v1, :cond_1

    .line 1035
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->grammarFst:[[B

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1037
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 1038
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    aput-object v5, v2, v1

    .line 1039
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 1037
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1032
    .end local v1    # "i":I
    .end local v2    # "newArray":[[B
    :cond_2
    iget-object v5, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->grammarFst:[[B

    array-length v1, v5

    goto :goto_1

    .line 1042
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[[B
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v5

    aput-object v5, v2, v1

    .line 1043
    iput-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->grammarFst:[[B

    goto :goto_0

    .line 1020
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 983
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->grammarFst:[[B

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->grammarFst:[[B

    array-length v2, v2

    if-lez v2, :cond_1

    .line 984
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->grammarFst:[[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 985
    iget-object v2, p0, Lcom/google/speech/common/proto/RecognitionContextProto$RequestContext$GrammarFstsContext;->grammarFst:[[B

    aget-object v0, v2, v1

    .line 986
    .local v0, "element":[B
    if-eqz v0, :cond_0

    .line 987
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 984
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 991
    .end local v0    # "element":[B
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "EmbeddedRecognizer"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;


# instance fields
.field private bitField0_:I

.field private grammarCompilationFrequencyMs_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 957
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 958
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    .line 959
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 2

    .prologue
    .line 925
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    if-nez v0, :cond_1

    .line 926
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 928
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    if-nez v0, :cond_0

    .line 929
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    .line 931
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 933
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    return-object v0

    .line 931
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1019
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1013
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 962
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->bitField0_:I

    .line 963
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->grammarCompilationFrequencyMs_:I

    .line 964
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->cachedSize:I

    .line 965
    return-object p0
.end method

.method public clearGrammarCompilationFrequencyMs()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 1

    .prologue
    .line 952
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->grammarCompilationFrequencyMs_:I

    .line 953
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->bitField0_:I

    .line 954
    return-object p0
.end method

.method public getGrammarCompilationFrequencyMs()I
    .locals 1

    .prologue
    .line 941
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->grammarCompilationFrequencyMs_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 978
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 979
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 980
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->grammarCompilationFrequencyMs_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 983
    :cond_0
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->cachedSize:I

    .line 984
    return v0
.end method

.method public hasGrammarCompilationFrequencyMs()Z
    .locals 1

    .prologue
    .line 949
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 919
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 992
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 993
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 997
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 998
    :sswitch_0
    return-object p0

    .line 1003
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->grammarCompilationFrequencyMs_:I

    .line 1004
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->bitField0_:I

    goto :goto_0

    .line 993
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
    .end sparse-switch
.end method

.method public setGrammarCompilationFrequencyMs(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 944
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->grammarCompilationFrequencyMs_:I

    .line 945
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->bitField0_:I

    .line 946
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
    .line 971
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 972
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EmbeddedRecognizer;->grammarCompilationFrequencyMs_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 974
    :cond_0
    return-void
.end method

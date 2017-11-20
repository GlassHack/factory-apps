.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SnippetResults"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;


# instance fields
.field public result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12048
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 12049
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    .line 12050
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    .locals 2

    .prologue
    .line 12034
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    if-nez v0, :cond_1

    .line 12035
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 12037
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    if-nez v0, :cond_0

    .line 12038
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    .line 12040
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12042
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    return-object v0

    .line 12040
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12134
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 12128
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    .locals 1

    .prologue
    .line 12053
    invoke-static {}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;->emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    .line 12054
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->cachedSize:I

    .line 12055
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 12073
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 12074
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 12075
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 12076
    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    aget-object v0, v3, v1

    .line 12077
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    if-eqz v0, :cond_0

    .line 12078
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 12075
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12083
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->cachedSize:I

    .line 12084
    return v2
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
    .line 12028
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 12092
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 12093
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 12097
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 12098
    :sswitch_0
    return-object p0

    .line 12103
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 12105
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    if-nez v5, :cond_2

    move v1, v4

    .line 12106
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    .line 12108
    .local v2, "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    if-eqz v1, :cond_1

    .line 12109
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12111
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 12112
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;-><init>()V

    aput-object v5, v2, v1

    .line 12113
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12114
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 12111
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12105
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    array-length v1, v5

    goto :goto_1

    .line 12117
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;-><init>()V

    aput-object v5, v2, v1

    .line 12118
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12119
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    goto :goto_0

    .line 12093
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
    .line 12061
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 12062
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 12063
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResults;->result:[Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;

    aget-object v0, v2, v1

    .line 12064
    .local v0, "element":Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    if-eqz v0, :cond_0

    .line 12065
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 12062
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12069
    .end local v0    # "element":Lcom/google/majel/proto/EcoutezStructuredResponse$SnippetResult;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

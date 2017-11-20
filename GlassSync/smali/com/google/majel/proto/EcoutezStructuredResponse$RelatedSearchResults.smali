.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RelatedSearchResults"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;


# instance fields
.field public relatedTerm:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12158
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 12159
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    .line 12160
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    .locals 2

    .prologue
    .line 12144
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    if-nez v0, :cond_1

    .line 12145
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 12147
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    if-nez v0, :cond_0

    .line 12148
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    .line 12150
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 12152
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    return-object v0

    .line 12150
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 12246
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 12240
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    .locals 1

    .prologue
    .line 12163
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm:[Ljava/lang/String;

    .line 12164
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->cachedSize:I

    .line 12165
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 6

    .prologue
    .line 12183
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 12184
    .local v4, "size":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm:[Ljava/lang/String;

    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_2

    .line 12185
    const/4 v0, 0x0

    .line 12186
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 12187
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_1

    .line 12188
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 12189
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 12190
    add-int/lit8 v0, v0, 0x1

    .line 12191
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 12187
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 12195
    .end local v2    # "element":Ljava/lang/String;
    :cond_1
    add-int/2addr v4, v1

    .line 12196
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 12198
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_2
    iput v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->cachedSize:I

    .line 12199
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
    .line 12138
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 12207
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 12208
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 12212
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 12213
    :sswitch_0
    return-object p0

    .line 12218
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 12220
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 12221
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 12222
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 12223
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12225
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 12226
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 12227
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 12225
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 12220
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 12230
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 12231
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm:[Ljava/lang/String;

    goto :goto_0

    .line 12208
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
    .line 12171
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 12172
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 12173
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$RelatedSearchResults;->relatedTerm:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 12174
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 12175
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 12172
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 12179
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

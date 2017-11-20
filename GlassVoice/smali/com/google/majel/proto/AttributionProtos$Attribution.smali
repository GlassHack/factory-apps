.class public final Lcom/google/majel/proto/AttributionProtos$Attribution;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "AttributionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/AttributionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Attribution"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/AttributionProtos$Attribution;


# instance fields
.field private bitField0_:I

.field private displayText_:Ljava/lang/String;

.field private pageDomain_:Ljava/lang/String;

.field private pageTitle_:Ljava/lang/String;

.field private pageUrl_:Ljava/lang/String;

.field public snippet:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 119
    invoke-virtual {p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->clear()Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 120
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/majel/proto/AttributionProtos$Attribution;->_emptyArray:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/AttributionProtos$Attribution;->_emptyArray:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/AttributionProtos$Attribution;

    sput-object v0, Lcom/google/majel/proto/AttributionProtos$Attribution;->_emptyArray:[Lcom/google/majel/proto/AttributionProtos$Attribution;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/majel/proto/AttributionProtos$Attribution;->_emptyArray:[Lcom/google/majel/proto/AttributionProtos$Attribution;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    new-instance v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v0}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/AttributionProtos$Attribution;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    invoke-direct {v0}, Lcom/google/majel/proto/AttributionProtos$Attribution;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/AttributionProtos$Attribution;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    .line 124
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageUrl_:Ljava/lang/String;

    .line 125
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageDomain_:Ljava/lang/String;

    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageTitle_:Ljava/lang/String;

    .line 127
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet:[Ljava/lang/String;

    .line 128
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->displayText_:Ljava/lang/String;

    .line 129
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->cachedSize:I

    .line 130
    return-object p0
.end method

.method public clearDisplayText()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1

    .prologue
    .line 113
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->displayText_:Ljava/lang/String;

    .line 114
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    .line 115
    return-object p0
.end method

.method public clearPageDomain()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1

    .prologue
    .line 66
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageDomain_:Ljava/lang/String;

    .line 67
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    .line 68
    return-object p0
.end method

.method public clearPageTitle()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1

    .prologue
    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageTitle_:Ljava/lang/String;

    .line 89
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    .line 90
    return-object p0
.end method

.method public clearPageUrl()Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1

    .prologue
    .line 44
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageUrl_:Ljava/lang/String;

    .line 45
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    .line 46
    return-object p0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->displayText_:Ljava/lang/String;

    return-object v0
.end method

.method public getPageDomain()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageDomain_:Ljava/lang/String;

    return-object v0
.end method

.method public getPageTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getPageUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 30
    iget-object v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 160
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 161
    .local v4, "size":I
    iget v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 162
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageUrl_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 165
    :cond_0
    iget v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_1

    .line 166
    const/4 v5, 0x2

    iget-object v6, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageTitle_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 169
    :cond_1
    iget-object v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet:[Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_4

    .line 170
    const/4 v0, 0x0

    .line 171
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 172
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_3

    .line 173
    iget-object v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 174
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_2

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 172
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 180
    .end local v2    # "element":Ljava/lang/String;
    :cond_3
    add-int/2addr v4, v1

    .line 181
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 183
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_4
    iget v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_5

    .line 184
    const/4 v5, 0x4

    iget-object v6, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageDomain_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 187
    :cond_5
    iget v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v5, v5, 0x8

    if-eqz v5, :cond_6

    .line 188
    const/4 v5, 0x5

    iget-object v6, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->displayText_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 191
    :cond_6
    iput v4, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->cachedSize:I

    .line 192
    return v4
.end method

.method public hasDisplayText()Z
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPageDomain()Z
    .locals 1

    .prologue
    .line 63
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPageTitle()Z
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPageUrl()Z
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/AttributionProtos$Attribution;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AttributionProtos$Attribution;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 200
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 201
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 205
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    :sswitch_0
    return-object p0

    .line 211
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageUrl_:Ljava/lang/String;

    .line 212
    iget v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    goto :goto_0

    .line 216
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageTitle_:Ljava/lang/String;

    .line 217
    iget v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    goto :goto_0

    .line 221
    :sswitch_3
    const/16 v5, 0x1a

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 223
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 224
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 225
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 226
    iget-object v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 228
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 229
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 230
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 228
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 223
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 233
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 234
    iput-object v2, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet:[Ljava/lang/String;

    goto :goto_0

    .line 238
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageDomain_:Ljava/lang/String;

    .line 239
    iget v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    goto :goto_0

    .line 243
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->displayText_:Ljava/lang/String;

    .line 244
    iget v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    goto :goto_0

    .line 201
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
    .end sparse-switch
.end method

.method public setDisplayText(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 102
    if-nez p1, :cond_0

    .line 103
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 105
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->displayText_:Ljava/lang/String;

    .line 106
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    .line 107
    return-object p0
.end method

.method public setPageDomain(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 55
    if-nez p1, :cond_0

    .line 56
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 58
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageDomain_:Ljava/lang/String;

    .line 59
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    .line 60
    return-object p0
.end method

.method public setPageTitle(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 77
    if-nez p1, :cond_0

    .line 78
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 80
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageTitle_:Ljava/lang/String;

    .line 81
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    .line 82
    return-object p0
.end method

.method public setPageUrl(Ljava/lang/String;)Lcom/google/majel/proto/AttributionProtos$Attribution;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 33
    if-nez p1, :cond_0

    .line 34
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 36
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageUrl_:Ljava/lang/String;

    .line 37
    iget v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    .line 38
    return-object p0
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 136
    iget v2, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 137
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 139
    :cond_0
    iget v2, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_1

    .line 140
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageTitle_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 142
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 143
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 144
    iget-object v2, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->snippet:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 145
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 146
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 143
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 151
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->pageDomain_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 153
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_5

    .line 154
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/majel/proto/AttributionProtos$Attribution;->displayText_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 156
    :cond_5
    return-void
.end method

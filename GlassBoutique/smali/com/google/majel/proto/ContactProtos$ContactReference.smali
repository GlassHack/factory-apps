.class public final Lcom/google/majel/proto/ContactProtos$ContactReference;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ContactProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ContactReference"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactReference;


# instance fields
.field private bitField0_:I

.field private canonicalRelationshipName_:Ljava/lang/String;

.field public contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

.field public contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

.field public ecoutezLocalResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

.field private isRelationship_:Z

.field private name_:Ljava/lang/String;

.field private originalRelationshipName_:Ljava/lang/String;

.field private placeholderContact_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 146
    invoke-virtual {p0}, Lcom/google/majel/proto/ContactProtos$ContactReference;->clear()Lcom/google/majel/proto/ContactProtos$ContactReference;

    .line 147
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactReference;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactReference;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ContactProtos$ContactReference;

    sput-object v0, Lcom/google/majel/proto/ContactProtos$ContactReference;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactReference;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactReference;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 327
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactReference;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ContactProtos$ContactReference;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactReference;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 321
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactReference;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactReference;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ContactProtos$ContactReference;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 150
    iput v1, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    .line 151
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->name_:Ljava/lang/String;

    .line 152
    invoke-static {}, Lcom/google/majel/proto/ContactProtos$ContactInformation;->emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    .line 153
    iput-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

    .line 154
    iput-boolean v1, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->placeholderContact_:Z

    .line 155
    iput-boolean v1, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->isRelationship_:Z

    .line 156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->canonicalRelationshipName_:Ljava/lang/String;

    .line 157
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->originalRelationshipName_:Ljava/lang/String;

    .line 158
    iput-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->ecoutezLocalResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 159
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->cachedSize:I

    .line 160
    return-object p0
.end method

.method public clearCanonicalRelationshipName()Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 1

    .prologue
    .line 115
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->canonicalRelationshipName_:Ljava/lang/String;

    .line 116
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    .line 117
    return-object p0
.end method

.method public clearIsRelationship()Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->isRelationship_:Z

    .line 94
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    .line 95
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 1

    .prologue
    .line 49
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->name_:Ljava/lang/String;

    .line 50
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    .line 51
    return-object p0
.end method

.method public clearOriginalRelationshipName()Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 1

    .prologue
    .line 137
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->originalRelationshipName_:Ljava/lang/String;

    .line 138
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    .line 139
    return-object p0
.end method

.method public clearPlaceholderContact()Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 1

    .prologue
    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->placeholderContact_:Z

    .line 75
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    .line 76
    return-object p0
.end method

.method public getCanonicalRelationshipName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 101
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->canonicalRelationshipName_:Ljava/lang/String;

    return-object v0
.end method

.method public getIsRelationship()Z
    .locals 1

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->isRelationship_:Z

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 35
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getOriginalRelationshipName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->originalRelationshipName_:Ljava/lang/String;

    return-object v0
.end method

.method public getPlaceholderContact()Z
    .locals 1

    .prologue
    .line 63
    iget-boolean v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->placeholderContact_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 199
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 200
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 201
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->name_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 204
    :cond_0
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 205
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 206
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    aget-object v0, v3, v1

    .line 207
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactInformation;
    if-eqz v0, :cond_1

    .line 208
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 205
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 213
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .end local v1    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

    if-eqz v3, :cond_3

    .line 214
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 217
    :cond_3
    iget v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_4

    .line 218
    const/4 v3, 0x4

    iget-boolean v4, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->placeholderContact_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 221
    :cond_4
    iget v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_5

    .line 222
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->isRelationship_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 225
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_6

    .line 226
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->canonicalRelationshipName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 229
    :cond_6
    iget v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_7

    .line 230
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->originalRelationshipName_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 233
    :cond_7
    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->ecoutezLocalResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-eqz v3, :cond_8

    .line 234
    const/16 v3, 0x8

    iget-object v4, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->ecoutezLocalResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 237
    :cond_8
    iput v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->cachedSize:I

    .line 238
    return v2
.end method

.method public hasCanonicalRelationshipName()Z
    .locals 1

    .prologue
    .line 112
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsRelationship()Z
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasOriginalRelationshipName()Z
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPlaceholderContact()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

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
    .line 13
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ContactProtos$ContactReference;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactReference;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 246
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 247
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 251
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 252
    :sswitch_0
    return-object p0

    .line 257
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->name_:Ljava/lang/String;

    .line 258
    iget v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    goto :goto_0

    .line 262
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 264
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    if-nez v5, :cond_2

    move v1, v4

    .line 265
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ContactProtos$ContactInformation;

    .line 267
    .local v2, "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation;
    if-eqz v1, :cond_1

    .line 268
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 270
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 271
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactInformation;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactInformation;-><init>()V

    aput-object v5, v2, v1

    .line 272
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 273
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 270
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 264
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    array-length v1, v5

    goto :goto_1

    .line 276
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactInformation;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactInformation;-><init>()V

    aput-object v5, v2, v1

    .line 277
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 278
    iput-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    goto :goto_0

    .line 282
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ContactProtos$ContactInformation;
    :sswitch_3
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

    if-nez v5, :cond_4

    .line 283
    new-instance v5, Lcom/google/majel/proto/ContactProtos$ContactQuery;

    invoke-direct {v5}, Lcom/google/majel/proto/ContactProtos$ContactQuery;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

    .line 285
    :cond_4
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 289
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->placeholderContact_:Z

    .line 290
    iget v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    goto :goto_0

    .line 294
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->isRelationship_:Z

    .line 295
    iget v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    or-int/lit8 v5, v5, 0x4

    iput v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    goto/16 :goto_0

    .line 299
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->canonicalRelationshipName_:Ljava/lang/String;

    .line 300
    iget v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    or-int/lit8 v5, v5, 0x8

    iput v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    goto/16 :goto_0

    .line 304
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->originalRelationshipName_:Ljava/lang/String;

    .line 305
    iget v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    or-int/lit8 v5, v5, 0x10

    iput v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    goto/16 :goto_0

    .line 309
    :sswitch_8
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->ecoutezLocalResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-nez v5, :cond_5

    .line 310
    new-instance v5, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-direct {v5}, Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->ecoutezLocalResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    .line 312
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->ecoutezLocalResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 247
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
        0x42 -> :sswitch_8
    .end sparse-switch
.end method

.method public setCanonicalRelationshipName(Ljava/lang/String;)Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 104
    if-nez p1, :cond_0

    .line 105
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 107
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->canonicalRelationshipName_:Ljava/lang/String;

    .line 108
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    .line 109
    return-object p0
.end method

.method public setIsRelationship(Z)Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 85
    iput-boolean p1, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->isRelationship_:Z

    .line 86
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    .line 87
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 38
    if-nez p1, :cond_0

    .line 39
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 41
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->name_:Ljava/lang/String;

    .line 42
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public setOriginalRelationshipName(Ljava/lang/String;)Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 126
    if-nez p1, :cond_0

    .line 127
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 129
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->originalRelationshipName_:Ljava/lang/String;

    .line 130
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    .line 131
    return-object p0
.end method

.method public setPlaceholderContact(Z)Lcom/google/majel/proto/ContactProtos$ContactReference;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 66
    iput-boolean p1, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->placeholderContact_:Z

    .line 67
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    .line 68
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
    .line 166
    iget v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 167
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->name_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 169
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 170
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 171
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactInformation:[Lcom/google/majel/proto/ContactProtos$ContactInformation;

    aget-object v0, v2, v1

    .line 172
    .local v0, "element":Lcom/google/majel/proto/ContactProtos$ContactInformation;
    if-eqz v0, :cond_1

    .line 173
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 170
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 177
    .end local v0    # "element":Lcom/google/majel/proto/ContactProtos$ContactInformation;
    .end local v1    # "i":I
    :cond_2
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

    if-eqz v2, :cond_3

    .line 178
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->contactQuery:Lcom/google/majel/proto/ContactProtos$ContactQuery;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 180
    :cond_3
    iget v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 181
    const/4 v2, 0x4

    iget-boolean v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->placeholderContact_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 183
    :cond_4
    iget v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 184
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->isRelationship_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 186
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 187
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->canonicalRelationshipName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 189
    :cond_6
    iget v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_7

    .line 190
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->originalRelationshipName_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 192
    :cond_7
    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->ecoutezLocalResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    if-eqz v2, :cond_8

    .line 193
    const/16 v2, 0x8

    iget-object v3, p0, Lcom/google/majel/proto/ContactProtos$ContactReference;->ecoutezLocalResults:Lcom/google/majel/proto/EcoutezStructuredResponse$EcoutezLocalResults;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 195
    :cond_8
    return-void
.end method

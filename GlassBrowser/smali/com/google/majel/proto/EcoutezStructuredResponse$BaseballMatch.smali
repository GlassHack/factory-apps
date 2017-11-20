.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BaseballMatch"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;


# instance fields
.field private bitField0_:I

.field private firstTeamErrors_:I

.field private firstTeamHits_:I

.field private firstTeamRuns_:I

.field private secondTeamErrors_:I

.field private secondTeamHits_:I

.field private secondTeamRuns_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8200
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 8201
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    .line 8202
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 2

    .prologue
    .line 8073
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    if-nez v0, :cond_1

    .line 8074
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 8076
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    if-nez v0, :cond_0

    .line 8077
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    .line 8079
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8081
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    return-object v0

    .line 8079
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8327
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8321
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8205
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    .line 8206
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamRuns_:I

    .line 8207
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamHits_:I

    .line 8208
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamErrors_:I

    .line 8209
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamHits_:I

    .line 8210
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamRuns_:I

    .line 8211
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamErrors_:I

    .line 8212
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->cachedSize:I

    .line 8213
    return-object p0
.end method

.method public clearFirstTeamErrors()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    .line 8138
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamErrors_:I

    .line 8139
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    .line 8140
    return-object p0
.end method

.method public clearFirstTeamHits()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    .line 8119
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamHits_:I

    .line 8120
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    .line 8121
    return-object p0
.end method

.method public clearFirstTeamRuns()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    .line 8100
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamRuns_:I

    .line 8101
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    .line 8102
    return-object p0
.end method

.method public clearSecondTeamErrors()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    .line 8195
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamErrors_:I

    .line 8196
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    .line 8197
    return-object p0
.end method

.method public clearSecondTeamHits()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    .line 8157
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamHits_:I

    .line 8158
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    .line 8159
    return-object p0
.end method

.method public clearSecondTeamRuns()Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1

    .prologue
    .line 8176
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamRuns_:I

    .line 8177
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    .line 8178
    return-object p0
.end method

.method public getFirstTeamErrors()I
    .locals 1

    .prologue
    .line 8127
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamErrors_:I

    return v0
.end method

.method public getFirstTeamHits()I
    .locals 1

    .prologue
    .line 8108
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamHits_:I

    return v0
.end method

.method public getFirstTeamRuns()I
    .locals 1

    .prologue
    .line 8089
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamRuns_:I

    return v0
.end method

.method public getSecondTeamErrors()I
    .locals 1

    .prologue
    .line 8184
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamErrors_:I

    return v0
.end method

.method public getSecondTeamHits()I
    .locals 1

    .prologue
    .line 8146
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamHits_:I

    return v0
.end method

.method public getSecondTeamRuns()I
    .locals 1

    .prologue
    .line 8165
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamRuns_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8241
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 8242
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8243
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamRuns_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8246
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 8247
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamHits_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8250
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 8251
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamErrors_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8254
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 8255
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamHits_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8258
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 8259
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamRuns_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8262
    :cond_4
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 8263
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamErrors_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8266
    :cond_5
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->cachedSize:I

    .line 8267
    return v0
.end method

.method public hasFirstTeamErrors()Z
    .locals 1

    .prologue
    .line 8135
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFirstTeamHits()Z
    .locals 1

    .prologue
    .line 8116
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasFirstTeamRuns()Z
    .locals 1

    .prologue
    .line 8097
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecondTeamErrors()Z
    .locals 1

    .prologue
    .line 8192
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecondTeamHits()Z
    .locals 1

    .prologue
    .line 8154
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSecondTeamRuns()Z
    .locals 1

    .prologue
    .line 8173
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

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
    .line 8067
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8275
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8276
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8280
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8281
    :sswitch_0
    return-object p0

    .line 8286
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamRuns_:I

    .line 8287
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    goto :goto_0

    .line 8291
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamHits_:I

    .line 8292
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    goto :goto_0

    .line 8296
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamErrors_:I

    .line 8297
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    goto :goto_0

    .line 8301
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamHits_:I

    .line 8302
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    goto :goto_0

    .line 8306
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamRuns_:I

    .line 8307
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    goto :goto_0

    .line 8311
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamErrors_:I

    .line 8312
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    goto :goto_0

    .line 8276
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method

.method public setFirstTeamErrors(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8130
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamErrors_:I

    .line 8131
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    .line 8132
    return-object p0
.end method

.method public setFirstTeamHits(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8111
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamHits_:I

    .line 8112
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    .line 8113
    return-object p0
.end method

.method public setFirstTeamRuns(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8092
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamRuns_:I

    .line 8093
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    .line 8094
    return-object p0
.end method

.method public setSecondTeamErrors(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8187
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamErrors_:I

    .line 8188
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    .line 8189
    return-object p0
.end method

.method public setSecondTeamHits(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8149
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamHits_:I

    .line 8150
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    .line 8151
    return-object p0
.end method

.method public setSecondTeamRuns(I)Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8168
    iput p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamRuns_:I

    .line 8169
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    .line 8170
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
    .line 8219
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8220
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamRuns_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8222
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 8223
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamHits_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8225
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 8226
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->firstTeamErrors_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8228
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 8229
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamHits_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8231
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 8232
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamRuns_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8234
    :cond_4
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 8235
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$BaseballMatch;->secondTeamErrors_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8237
    :cond_5
    return-void
.end method

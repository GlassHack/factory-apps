.class public final Lcom/google/speech/common/Alternates$AlternateParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Alternates.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/speech/common/Alternates;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AlternateParams"
.end annotation


# static fields
.field public static final ALTERNATE_UNIT_UTF8_BYTES:I = 0x1

.field public static final ALTERNATE_UNIT_WORD:I

.field private static volatile _emptyArray:[Lcom/google/speech/common/Alternates$AlternateParams;


# instance fields
.field private bitField0_:I

.field private maxSpanLength_:I

.field private maxTotalSpanLength_:I

.field private unit_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 88
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 89
    invoke-virtual {p0}, Lcom/google/speech/common/Alternates$AlternateParams;->clear()Lcom/google/speech/common/Alternates$AlternateParams;

    .line 90
    return-void
.end method

.method public static emptyArray()[Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 2

    .prologue
    .line 18
    sget-object v0, Lcom/google/speech/common/Alternates$AlternateParams;->_emptyArray:[Lcom/google/speech/common/Alternates$AlternateParams;

    if-nez v0, :cond_1

    .line 19
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/google/speech/common/Alternates$AlternateParams;->_emptyArray:[Lcom/google/speech/common/Alternates$AlternateParams;

    if-nez v0, :cond_0

    .line 22
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/speech/common/Alternates$AlternateParams;

    sput-object v0, Lcom/google/speech/common/Alternates$AlternateParams;->_emptyArray:[Lcom/google/speech/common/Alternates$AlternateParams;

    .line 24
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :cond_1
    sget-object v0, Lcom/google/speech/common/Alternates$AlternateParams;->_emptyArray:[Lcom/google/speech/common/Alternates$AlternateParams;

    return-object v0

    .line 24
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 176
    new-instance v0, Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$AlternateParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/speech/common/Alternates$AlternateParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 170
    new-instance v0, Lcom/google/speech/common/Alternates$AlternateParams;

    invoke-direct {v0}, Lcom/google/speech/common/Alternates$AlternateParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/speech/common/Alternates$AlternateParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    .line 94
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    .line 95
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    .line 96
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->unit_:I

    .line 97
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->cachedSize:I

    .line 98
    return-object p0
.end method

.method public clearMaxSpanLength()Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    .line 45
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    .line 46
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    .line 47
    return-object p0
.end method

.method public clearMaxTotalSpanLength()Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    .line 64
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    .line 65
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    .line 66
    return-object p0
.end method

.method public clearUnit()Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->unit_:I

    .line 84
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    .line 85
    return-object p0
.end method

.method public getMaxSpanLength()I
    .locals 1

    .prologue
    .line 34
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    return v0
.end method

.method public getMaxTotalSpanLength()I
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 117
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 118
    .local v0, "size":I
    iget v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 119
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 122
    :cond_0
    iget v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 123
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 126
    :cond_1
    iget v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 127
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/speech/common/Alternates$AlternateParams;->unit_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 130
    :cond_2
    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->cachedSize:I

    .line 131
    return v0
.end method

.method public getUnit()I
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->unit_:I

    return v0
.end method

.method public hasMaxSpanLength()Z
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMaxTotalSpanLength()Z
    .locals 1

    .prologue
    .line 61
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnit()Z
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    invoke-virtual {p0, p1}, Lcom/google/speech/common/Alternates$AlternateParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$AlternateParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 139
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 140
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 144
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 145
    :sswitch_0
    return-object p0

    .line 150
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    .line 151
    iget v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    goto :goto_0

    .line 155
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    .line 156
    iget v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    goto :goto_0

    .line 160
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->unit_:I

    .line 161
    iget v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    goto :goto_0

    .line 140
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setMaxSpanLength(I)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 37
    iput p1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    .line 38
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    .line 39
    return-object p0
.end method

.method public setMaxTotalSpanLength(I)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 56
    iput p1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    .line 57
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public setUnit(I)Lcom/google/speech/common/Alternates$AlternateParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 75
    iput p1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->unit_:I

    .line 76
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    .line 77
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
    .line 104
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 105
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxSpanLength_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 107
    :cond_0
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 108
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->maxTotalSpanLength_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 110
    :cond_1
    iget v0, p0, Lcom/google/speech/common/Alternates$AlternateParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 111
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/speech/common/Alternates$AlternateParams;->unit_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 113
    :cond_2
    return-void
.end method

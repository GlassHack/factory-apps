.class public final Lcom/google/majel/proto/SpanProtos$Span;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SpanProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/SpanProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Span"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/SpanProtos$Span;


# instance fields
.field public alternateSpanExtension:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

.field private bitField0_:I

.field private length_:I

.field private start_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcom/google/majel/proto/SpanProtos$Span;->clear()Lcom/google/majel/proto/SpanProtos$Span;

    .line 70
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/SpanProtos$Span;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/majel/proto/SpanProtos$Span;->_emptyArray:[Lcom/google/majel/proto/SpanProtos$Span;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/SpanProtos$Span;->_emptyArray:[Lcom/google/majel/proto/SpanProtos$Span;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/SpanProtos$Span;

    sput-object v0, Lcom/google/majel/proto/SpanProtos$Span;->_emptyArray:[Lcom/google/majel/proto/SpanProtos$Span;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/majel/proto/SpanProtos$Span;->_emptyArray:[Lcom/google/majel/proto/SpanProtos$Span;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 158
    new-instance v0, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v0}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/SpanProtos$Span;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 152
    new-instance v0, Lcom/google/majel/proto/SpanProtos$Span;

    invoke-direct {v0}, Lcom/google/majel/proto/SpanProtos$Span;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/SpanProtos$Span;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    .line 74
    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->start_:I

    .line 75
    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->length_:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->alternateSpanExtension:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->cachedSize:I

    .line 78
    return-object p0
.end method

.method public clearLength()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->length_:I

    .line 61
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    .line 62
    return-object p0
.end method

.method public clearStart()Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->start_:I

    .line 42
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public getLength()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->length_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 97
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 98
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 99
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/SpanProtos$Span;->start_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 103
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/SpanProtos$Span;->length_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->alternateSpanExtension:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    if-eqz v1, :cond_2

    .line 107
    const v1, 0x19b2283

    iget-object v2, p0, Lcom/google/majel/proto/SpanProtos$Span;->alternateSpanExtension:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 110
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->cachedSize:I

    .line 111
    return v0
.end method

.method public getStart()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->start_:I

    return v0
.end method

.method public hasLength()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStart()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

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
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/SpanProtos$Span;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/SpanProtos$Span;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/SpanProtos$Span;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 120
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 124
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    :sswitch_0
    return-object p0

    .line 130
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->start_:I

    .line 131
    iget v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    goto :goto_0

    .line 135
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->length_:I

    .line 136
    iget v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    goto :goto_0

    .line 140
    :sswitch_3
    iget-object v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->alternateSpanExtension:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    if-nez v1, :cond_1

    .line 141
    new-instance v1, Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    invoke-direct {v1}, Lcom/google/majel/proto/SpanProtos$AlternateSpan;-><init>()V

    iput-object v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->alternateSpanExtension:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    .line 143
    :cond_1
    iget-object v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->alternateSpanExtension:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 120
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0xcd9141a -> :sswitch_3
    .end sparse-switch
.end method

.method public setLength(I)Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/google/majel/proto/SpanProtos$Span;->length_:I

    .line 53
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    .line 54
    return-object p0
.end method

.method public setStart(I)Lcom/google/majel/proto/SpanProtos$Span;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/google/majel/proto/SpanProtos$Span;->start_:I

    .line 34
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    .line 35
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
    .line 84
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 85
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->start_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 87
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 88
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->length_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 90
    :cond_1
    iget-object v0, p0, Lcom/google/majel/proto/SpanProtos$Span;->alternateSpanExtension:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    if-eqz v0, :cond_2

    .line 91
    const v0, 0x19b2283

    iget-object v1, p0, Lcom/google/majel/proto/SpanProtos$Span;->alternateSpanExtension:Lcom/google/majel/proto/SpanProtos$AlternateSpan;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 93
    :cond_2
    return-void
.end method

.class public final Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesCommonProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesCommonProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "BoundingBox"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;


# instance fields
.field private bitField0_:I

.field private height_:I

.field private width_:I

.field private x_:I

.field private y_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 103
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 104
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->clear()Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    .line 105
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 204
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 198
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 108
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    .line 109
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->x_:I

    .line 110
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->y_:I

    .line 111
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->width_:I

    .line 112
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->height_:I

    .line 113
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->cachedSize:I

    .line 114
    return-object p0
.end method

.method public clearHeight()Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .locals 1

    .prologue
    .line 98
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->height_:I

    .line 99
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    .line 100
    return-object p0
.end method

.method public clearWidth()Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .locals 1

    .prologue
    .line 79
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->width_:I

    .line 80
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    .line 81
    return-object p0
.end method

.method public clearX()Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->x_:I

    .line 42
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public clearY()Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->y_:I

    .line 61
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    .line 62
    return-object p0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 87
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->height_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 136
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 137
    .local v0, "size":I
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 138
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->x_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 141
    :cond_0
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 142
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->y_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 145
    :cond_1
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 146
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->width_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 149
    :cond_2
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 150
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->height_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 153
    :cond_3
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->cachedSize:I

    .line 154
    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->width_:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->x_:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->y_:I

    return v0
.end method

.method public hasHeight()Z
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWidth()Z
    .locals 1

    .prologue
    .line 76
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasX()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasY()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 162
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 163
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 167
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 168
    :sswitch_0
    return-object p0

    .line 173
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->x_:I

    .line 174
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    goto :goto_0

    .line 178
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->y_:I

    .line 179
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    goto :goto_0

    .line 183
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->width_:I

    .line 184
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    goto :goto_0

    .line 188
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->height_:I

    .line 189
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    goto :goto_0

    .line 163
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
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
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;

    move-result-object v0

    return-object v0
.end method

.method public setHeight(I)Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 90
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->height_:I

    .line 91
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    .line 92
    return-object p0
.end method

.method public setWidth(I)Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 71
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->width_:I

    .line 72
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    .line 73
    return-object p0
.end method

.method public setX(I)Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 33
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->x_:I

    .line 34
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    .line 35
    return-object p0
.end method

.method public setY(I)Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 52
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->y_:I

    .line 53
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    .line 54
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
    .line 120
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->x_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 123
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 124
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->y_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 126
    :cond_1
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 127
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->width_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 129
    :cond_2
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 130
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesCommonProtos$BoundingBox;->height_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 132
    :cond_3
    return-void
.end method

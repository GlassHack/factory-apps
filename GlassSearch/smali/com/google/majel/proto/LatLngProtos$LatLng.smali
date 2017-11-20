.class public final Lcom/google/majel/proto/LatLngProtos$LatLng;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "LatLngProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/LatLngProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LatLng"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/LatLngProtos$LatLng;


# instance fields
.field private accuracyMeters_:F

.field private bitField0_:I

.field private label_:Ljava/lang/String;

.field private latDegrees_:F

.field private lngDegrees_:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->clear()Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 108
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 2

    .prologue
    .line 14
    sget-object v0, Lcom/google/majel/proto/LatLngProtos$LatLng;->_emptyArray:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    if-nez v0, :cond_1

    .line 15
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 17
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/LatLngProtos$LatLng;->_emptyArray:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    if-nez v0, :cond_0

    .line 18
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/LatLngProtos$LatLng;

    sput-object v0, Lcom/google/majel/proto/LatLngProtos$LatLng;->_emptyArray:[Lcom/google/majel/proto/LatLngProtos$LatLng;

    .line 20
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    :cond_1
    sget-object v0, Lcom/google/majel/proto/LatLngProtos$LatLng;->_emptyArray:[Lcom/google/majel/proto/LatLngProtos$LatLng;

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

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 207
    new-instance v0, Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-direct {v0}, Lcom/google/majel/proto/LatLngProtos$LatLng;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/LatLngProtos$LatLng;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 201
    new-instance v0, Lcom/google/majel/proto/LatLngProtos$LatLng;

    invoke-direct {v0}, Lcom/google/majel/proto/LatLngProtos$LatLng;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/LatLngProtos$LatLng;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 111
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    .line 112
    iput v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->latDegrees_:F

    .line 113
    iput v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->lngDegrees_:F

    .line 114
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->label_:Ljava/lang/String;

    .line 115
    iput v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->accuracyMeters_:F

    .line 116
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->cachedSize:I

    .line 117
    return-object p0
.end method

.method public clearAccuracyMeters()Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1

    .prologue
    .line 101
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->accuracyMeters_:F

    .line 102
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    .line 103
    return-object p0
.end method

.method public clearLabel()Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1

    .prologue
    .line 82
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->label_:Ljava/lang/String;

    .line 83
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    .line 84
    return-object p0
.end method

.method public clearLatDegrees()Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1

    .prologue
    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->latDegrees_:F

    .line 42
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    .line 43
    return-object p0
.end method

.method public clearLngDegrees()Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->lngDegrees_:F

    .line 61
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    .line 62
    return-object p0
.end method

.method public getAccuracyMeters()F
    .locals 1

    .prologue
    .line 90
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->accuracyMeters_:F

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 68
    iget-object v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getLatDegrees()F
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->latDegrees_:F

    return v0
.end method

.method public getLngDegrees()F
    .locals 1

    .prologue
    .line 49
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->lngDegrees_:F

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 139
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 140
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 141
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->latDegrees_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 144
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 145
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->lngDegrees_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 148
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 149
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->label_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 152
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 153
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->accuracyMeters_:F

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSize(IF)I

    move-result v1

    add-int/2addr v0, v1

    .line 156
    :cond_3
    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->cachedSize:I

    .line 157
    return v0
.end method

.method public hasAccuracyMeters()Z
    .locals 1

    .prologue
    .line 98
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 79
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLatDegrees()Z
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLngDegrees()Z
    .locals 1

    .prologue
    .line 57
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/LatLngProtos$LatLng;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/LatLngProtos$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 165
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 166
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 170
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 171
    :sswitch_0
    return-object p0

    .line 176
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->latDegrees_:F

    .line 177
    iget v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    goto :goto_0

    .line 181
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->lngDegrees_:F

    .line 182
    iget v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    goto :goto_0

    .line 186
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->label_:Ljava/lang/String;

    .line 187
    iget v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    goto :goto_0

    .line 191
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->accuracyMeters_:F

    .line 192
    iget v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    goto :goto_0

    .line 166
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xd -> :sswitch_1
        0x15 -> :sswitch_2
        0x1a -> :sswitch_3
        0x25 -> :sswitch_4
    .end sparse-switch
.end method

.method public setAccuracyMeters(F)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 93
    iput p1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->accuracyMeters_:F

    .line 94
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    .line 95
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 71
    if-nez p1, :cond_0

    .line 72
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 74
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->label_:Ljava/lang/String;

    .line 75
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    .line 76
    return-object p0
.end method

.method public setLatDegrees(F)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 33
    iput p1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->latDegrees_:F

    .line 34
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    .line 35
    return-object p0
.end method

.method public setLngDegrees(F)Lcom/google/majel/proto/LatLngProtos$LatLng;
    .locals 1
    .param p1, "value"    # F

    .prologue
    .line 52
    iput p1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->lngDegrees_:F

    .line 53
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

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
    .line 123
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->latDegrees_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 126
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->lngDegrees_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 129
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 130
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->label_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 132
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 133
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/LatLngProtos$LatLng;->accuracyMeters_:F

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloat(IF)V

    .line 135
    :cond_3
    return-void
.end method

.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Hours"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;


# instance fields
.field private bitField0_:I

.field private day_:Ljava/lang/String;

.field public interval:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4035
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4036
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    .line 4037
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 2

    .prologue
    .line 3997
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    if-nez v0, :cond_1

    .line 3998
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4000
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    if-nez v0, :cond_0

    .line 4001
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    .line 4003
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4005
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    return-object v0

    .line 4003
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4137
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4131
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1

    .prologue
    .line 4040
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->bitField0_:I

    .line 4041
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->day_:Ljava/lang/String;

    .line 4042
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval:[Ljava/lang/String;

    .line 4043
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->cachedSize:I

    .line 4044
    return-object p0
.end method

.method public clearDay()Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1

    .prologue
    .line 4027
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->day_:Ljava/lang/String;

    .line 4028
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->bitField0_:I

    .line 4029
    return-object p0
.end method

.method public getDay()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4013
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->day_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 7

    .prologue
    .line 4065
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v4

    .line 4066
    .local v4, "size":I
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->bitField0_:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_0

    .line 4067
    const/4 v5, 0x1

    iget-object v6, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->day_:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v5

    add-int/2addr v4, v5

    .line 4070
    :cond_0
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval:[Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval:[Ljava/lang/String;

    array-length v5, v5

    if-lez v5, :cond_3

    .line 4071
    const/4 v0, 0x0

    .line 4072
    .local v0, "dataCount":I
    const/4 v1, 0x0

    .line 4073
    .local v1, "dataSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval:[Ljava/lang/String;

    array-length v5, v5

    if-ge v3, v5, :cond_2

    .line 4074
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval:[Ljava/lang/String;

    aget-object v2, v5, v3

    .line 4075
    .local v2, "element":Ljava/lang/String;
    if-eqz v2, :cond_1

    .line 4076
    add-int/lit8 v0, v0, 0x1

    .line 4077
    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v5

    add-int/2addr v1, v5

    .line 4073
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4081
    .end local v2    # "element":Ljava/lang/String;
    :cond_2
    add-int/2addr v4, v1

    .line 4082
    mul-int/lit8 v5, v0, 0x1

    add-int/2addr v4, v5

    .line 4084
    .end local v0    # "dataCount":I
    .end local v1    # "dataSize":I
    .end local v3    # "i":I
    :cond_3
    iput v4, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->cachedSize:I

    .line 4085
    return v4
.end method

.method public hasDay()Z
    .locals 1

    .prologue
    .line 4024
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->bitField0_:I

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
    .line 3991
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4093
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 4094
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 4098
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4099
    :sswitch_0
    return-object p0

    .line 4104
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->day_:Ljava/lang/String;

    .line 4105
    iget v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->bitField0_:I

    goto :goto_0

    .line 4109
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 4111
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval:[Ljava/lang/String;

    if-nez v5, :cond_2

    move v1, v4

    .line 4112
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Ljava/lang/String;

    .line 4113
    .local v2, "newArray":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 4114
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval:[Ljava/lang/String;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4116
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 4117
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 4118
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 4116
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 4111
    .end local v1    # "i":I
    .end local v2    # "newArray":[Ljava/lang/String;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval:[Ljava/lang/String;

    array-length v1, v5

    goto :goto_1

    .line 4121
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v1

    .line 4122
    iput-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval:[Ljava/lang/String;

    goto :goto_0

    .line 4094
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setDay(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4016
    if-nez p1, :cond_0

    .line 4017
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4019
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->day_:Ljava/lang/String;

    .line 4020
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->bitField0_:I

    .line 4021
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
    .line 4050
    iget v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 4051
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->day_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4053
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval:[Ljava/lang/String;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval:[Ljava/lang/String;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 4054
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 4055
    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Hours;->interval:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 4056
    .local v0, "element":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 4057
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4054
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4061
    .end local v0    # "element":Ljava/lang/String;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

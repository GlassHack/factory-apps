.class public final Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "EcoutezStructuredResponse.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/EcoutezStructuredResponse;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Fact"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;


# instance fields
.field private bitField0_:I

.field private label_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11149
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11150
    invoke-virtual {p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    .line 11151
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 2

    .prologue
    .line 11092
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    if-nez v0, :cond_1

    .line 11093
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11095
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    if-nez v0, :cond_0

    .line 11096
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    sput-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    .line 11098
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11100
    :cond_1
    sget-object v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->_emptyArray:[Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    return-object v0

    .line 11098
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11224
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11218
    new-instance v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    invoke-direct {v0}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1

    .prologue
    .line 11154
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    .line 11155
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->label_:Ljava/lang/String;

    .line 11156
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->value_:Ljava/lang/String;

    .line 11157
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->cachedSize:I

    .line 11158
    return-object p0
.end method

.method public clearLabel()Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1

    .prologue
    .line 11122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->label_:Ljava/lang/String;

    .line 11123
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    .line 11124
    return-object p0
.end method

.method public clearValue()Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1

    .prologue
    .line 11144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->value_:Ljava/lang/String;

    .line 11145
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    .line 11146
    return-object p0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11108
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 11174
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11175
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11176
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->label_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11179
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11180
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11183
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->cachedSize:I

    .line 11184
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11130
    iget-object v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 11119
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasValue()Z
    .locals 1

    .prologue
    .line 11141
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

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
    .line 11086
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11192
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11193
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11197
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11198
    :sswitch_0
    return-object p0

    .line 11203
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->label_:Ljava/lang/String;

    .line 11204
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    goto :goto_0

    .line 11208
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->value_:Ljava/lang/String;

    .line 11209
    iget v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    goto :goto_0

    .line 11193
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11111
    if-nez p1, :cond_0

    .line 11112
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11114
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->label_:Ljava/lang/String;

    .line 11115
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    .line 11116
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11133
    if-nez p1, :cond_0

    .line 11134
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11136
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->value_:Ljava/lang/String;

    .line 11137
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    .line 11138
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
    .line 11164
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11165
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->label_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11167
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11168
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/EcoutezStructuredResponse$Fact;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11170
    :cond_1
    return-void
.end method

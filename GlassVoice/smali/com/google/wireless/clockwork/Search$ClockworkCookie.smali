.class public final Lcom/google/wireless/clockwork/Search$ClockworkCookie;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/clockwork/Search;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ClockworkCookie"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;


# instance fields
.field private bitField0_:I

.field private name_:Ljava/lang/String;

.field private value_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 251
    invoke-virtual {p0}, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->clear()Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    .line 252
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    .locals 2

    .prologue
    .line 193
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    if-nez v0, :cond_1

    .line 194
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 196
    :try_start_0
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    if-nez v0, :cond_0

    .line 197
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    sput-object v0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    .line 199
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    :cond_1
    sget-object v0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->_emptyArray:[Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    return-object v0

    .line 199
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    new-instance v0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    invoke-direct {v0}, Lcom/google/wireless/clockwork/Search$ClockworkCookie;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 319
    new-instance v0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    invoke-direct {v0}, Lcom/google/wireless/clockwork/Search$ClockworkCookie;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    .locals 1

    .prologue
    .line 255
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    .line 256
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->name_:Ljava/lang/String;

    .line 257
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->value_:Ljava/lang/String;

    .line 258
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->cachedSize:I

    .line 259
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    .locals 1

    .prologue
    .line 223
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->name_:Ljava/lang/String;

    .line 224
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    .line 225
    return-object p0
.end method

.method public clearValue()Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    .locals 1

    .prologue
    .line 245
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->value_:Ljava/lang/String;

    .line 246
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    .line 247
    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 209
    iget-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 275
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 276
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 277
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 280
    :cond_0
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 281
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->value_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 284
    :cond_1
    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->cachedSize:I

    .line 285
    return v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->value_:Ljava/lang/String;

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 220
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

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
    .line 242
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

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
    .line 187
    invoke-virtual {p0, p1}, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkCookie;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 293
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 294
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 298
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 299
    :sswitch_0
    return-object p0

    .line 304
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->name_:Ljava/lang/String;

    .line 305
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    goto :goto_0

    .line 309
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->value_:Ljava/lang/String;

    .line 310
    iget v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    goto :goto_0

    .line 294
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 212
    if-nez p1, :cond_0

    .line 213
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 215
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->name_:Ljava/lang/String;

    .line 216
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    .line 217
    return-object p0
.end method

.method public setValue(Ljava/lang/String;)Lcom/google/wireless/clockwork/Search$ClockworkCookie;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 234
    if-nez p1, :cond_0

    .line 235
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 237
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->value_:Ljava/lang/String;

    .line 238
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    .line 239
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
    .line 265
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 266
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 268
    :cond_0
    iget v0, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 269
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/wireless/clockwork/Search$ClockworkCookie;->value_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 271
    :cond_1
    return-void
.end method

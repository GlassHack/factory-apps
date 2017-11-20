.class public final Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionDateTimeProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionDateTimeProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionDate"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;


# instance fields
.field private bitField0_:I

.field private day_:I

.field private month_:I

.field private year_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 252
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 253
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->clear()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 254
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 2

    .prologue
    .line 182
    sget-object v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->_emptyArray:[Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-nez v0, :cond_1

    .line 183
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 185
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->_emptyArray:[Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    if-nez v0, :cond_0

    .line 186
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    sput-object v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->_emptyArray:[Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    .line 188
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->_emptyArray:[Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    return-object v0

    .line 188
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 340
    new-instance v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 334
    new-instance v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 257
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    .line 258
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->year_:I

    .line 259
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->month_:I

    .line 260
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->day_:I

    .line 261
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->cachedSize:I

    .line 262
    return-object p0
.end method

.method public clearDay()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->day_:I

    .line 248
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    .line 249
    return-object p0
.end method

.method public clearMonth()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1

    .prologue
    .line 228
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->month_:I

    .line 229
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    .line 230
    return-object p0
.end method

.method public clearYear()Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1

    .prologue
    .line 209
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->year_:I

    .line 210
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    .line 211
    return-object p0
.end method

.method public getDay()I
    .locals 1

    .prologue
    .line 236
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->day_:I

    return v0
.end method

.method public getMonth()I
    .locals 1

    .prologue
    .line 217
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->month_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 281
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 282
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 283
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->year_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 286
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 287
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->month_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 290
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 291
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->day_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 294
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->cachedSize:I

    .line 295
    return v0
.end method

.method public getYear()I
    .locals 1

    .prologue
    .line 198
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->year_:I

    return v0
.end method

.method public hasDay()Z
    .locals 1

    .prologue
    .line 244
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMonth()Z
    .locals 1

    .prologue
    .line 225
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasYear()Z
    .locals 1

    .prologue
    .line 206
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

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
    .line 176
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 303
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 304
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 308
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 309
    :sswitch_0
    return-object p0

    .line 314
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->year_:I

    .line 315
    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    goto :goto_0

    .line 319
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->month_:I

    .line 320
    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    goto :goto_0

    .line 324
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->day_:I

    .line 325
    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    goto :goto_0

    .line 304
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setDay(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 239
    iput p1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->day_:I

    .line 240
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    .line 241
    return-object p0
.end method

.method public setMonth(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 220
    iput p1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->month_:I

    .line 221
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    .line 222
    return-object p0
.end method

.method public setYear(I)Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 201
    iput p1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->year_:I

    .line 202
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    .line 203
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
    .line 268
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 269
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->year_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 271
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 272
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->month_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 274
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 275
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/ActionDateTimeProtos$ActionDate;->day_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 277
    :cond_2
    return-void
.end method

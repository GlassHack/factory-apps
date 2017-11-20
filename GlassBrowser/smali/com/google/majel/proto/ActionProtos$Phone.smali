.class public final Lcom/google/majel/proto/ActionProtos$Phone;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Phone"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionProtos$Phone;


# instance fields
.field public contact:[Lcom/google/majel/proto/ActionProtos$Contact;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 229
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 230
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$Phone;->clear()Lcom/google/majel/proto/ActionProtos$Phone;

    .line 231
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionProtos$Phone;
    .locals 2

    .prologue
    .line 215
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Phone;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Phone;

    if-nez v0, :cond_1

    .line 216
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 218
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Phone;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Phone;

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionProtos$Phone;

    sput-object v0, Lcom/google/majel/proto/ActionProtos$Phone;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Phone;

    .line 221
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionProtos$Phone;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$Phone;

    return-object v0

    .line 221
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Phone;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 315
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Phone;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Phone;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$Phone;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Phone;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$Phone;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 309
    new-instance v0, Lcom/google/majel/proto/ActionProtos$Phone;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$Phone;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$Phone;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionProtos$Phone;
    .locals 1

    .prologue
    .line 234
    invoke-static {}, Lcom/google/majel/proto/ActionProtos$Contact;->emptyArray()[Lcom/google/majel/proto/ActionProtos$Contact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    .line 235
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$Phone;->cachedSize:I

    .line 236
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 254
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 255
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 256
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 257
    iget-object v3, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    aget-object v0, v3, v1

    .line 258
    .local v0, "element":Lcom/google/majel/proto/ActionProtos$Contact;
    if-eqz v0, :cond_0

    .line 259
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 256
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "element":Lcom/google/majel/proto/ActionProtos$Contact;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Lcom/google/majel/proto/ActionProtos$Phone;->cachedSize:I

    .line 265
    return v2
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
    .line 209
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$Phone;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Phone;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$Phone;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 273
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 274
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 278
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 279
    :sswitch_0
    return-object p0

    .line 284
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 286
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-nez v5, :cond_2

    move v1, v4

    .line 287
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionProtos$Contact;

    .line 289
    .local v2, "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    if-eqz v1, :cond_1

    .line 290
    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 293
    new-instance v5, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    aput-object v5, v2, v1

    .line 294
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 295
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 286
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v1, v5

    goto :goto_1

    .line 298
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionProtos$Contact;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionProtos$Contact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionProtos$Contact;-><init>()V

    aput-object v5, v2, v1

    .line 299
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 300
    iput-object v2, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    goto :goto_0

    .line 274
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 242
    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 243
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 244
    iget-object v2, p0, Lcom/google/majel/proto/ActionProtos$Phone;->contact:[Lcom/google/majel/proto/ActionProtos$Contact;

    aget-object v0, v2, v1

    .line 245
    .local v0, "element":Lcom/google/majel/proto/ActionProtos$Contact;
    if-eqz v0, :cond_0

    .line 246
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 243
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 250
    .end local v0    # "element":Lcom/google/majel/proto/ActionProtos$Contact;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

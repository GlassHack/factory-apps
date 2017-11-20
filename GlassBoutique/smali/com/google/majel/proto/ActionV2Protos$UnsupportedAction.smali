.class public final Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "UnsupportedAction"
.end annotation


# static fields
.field public static final UNSUPPORTED_REASON_APP_NOT_INSTALLED:I = 0x1

.field public static final UNSUPPORTED_REASON_UNKNOWN:I = 0x0

.field public static final UNSUPPORTED_REASON_UNSUPPORTED_VERSION:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;


# instance fields
.field private bitField0_:I

.field private explanation_:Ljava/lang/String;

.field private unsupportedReason_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11228
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 11229
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->clear()Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    .line 11230
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 2

    .prologue
    .line 11174
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    if-nez v0, :cond_1

    .line 11175
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 11177
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    if-nez v0, :cond_0

    .line 11178
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    .line 11180
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 11182
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    return-object v0

    .line 11180
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11303
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 11297
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 11233
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    .line 11234
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->explanation_:Ljava/lang/String;

    .line 11235
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->unsupportedReason_:I

    .line 11236
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->cachedSize:I

    .line 11237
    return-object p0
.end method

.method public clearExplanation()Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 1

    .prologue
    .line 11204
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->explanation_:Ljava/lang/String;

    .line 11205
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    .line 11206
    return-object p0
.end method

.method public clearUnsupportedReason()Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 1

    .prologue
    .line 11223
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->unsupportedReason_:I

    .line 11224
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    .line 11225
    return-object p0
.end method

.method public getExplanation()Ljava/lang/String;
    .locals 1

    .prologue
    .line 11190
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->explanation_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 11253
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 11254
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 11255
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->explanation_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11258
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 11259
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->unsupportedReason_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 11262
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->cachedSize:I

    .line 11263
    return v0
.end method

.method public getUnsupportedReason()I
    .locals 1

    .prologue
    .line 11212
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->unsupportedReason_:I

    return v0
.end method

.method public hasExplanation()Z
    .locals 1

    .prologue
    .line 11201
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUnsupportedReason()Z
    .locals 1

    .prologue
    .line 11220
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

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
    .line 11163
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 11271
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 11272
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 11276
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 11277
    :sswitch_0
    return-object p0

    .line 11282
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->explanation_:Ljava/lang/String;

    .line 11283
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    goto :goto_0

    .line 11287
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->unsupportedReason_:I

    .line 11288
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    goto :goto_0

    .line 11272
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setExplanation(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 11193
    if-nez p1, :cond_0

    .line 11194
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 11196
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->explanation_:Ljava/lang/String;

    .line 11197
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    .line 11198
    return-object p0
.end method

.method public setUnsupportedReason(I)Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 11215
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->unsupportedReason_:I

    .line 11216
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    .line 11217
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
    .line 11243
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 11244
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->explanation_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 11246
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 11247
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$UnsupportedAction;->unsupportedReason_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 11249
    :cond_1
    return-void
.end method

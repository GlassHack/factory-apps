.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceApi"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;


# instance fields
.field public endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2994
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2995
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    .line 2996
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    .locals 2

    .prologue
    .line 2980
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    if-nez v0, :cond_1

    .line 2981
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2983
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    if-nez v0, :cond_0

    .line 2984
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    .line 2986
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2988
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    return-object v0

    .line 2986
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3057
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3051
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    .locals 1

    .prologue
    .line 2999
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 3000
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->cachedSize:I

    .line 3001
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 3014
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 3015
    .local v0, "size":I
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-eqz v1, :cond_0

    .line 3016
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 3019
    :cond_0
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->cachedSize:I

    .line 3020
    return v0
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
    .line 2974
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3028
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 3029
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 3033
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3034
    :sswitch_0
    return-object p0

    .line 3039
    :sswitch_1
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-nez v1, :cond_1

    .line 3040
    new-instance v1, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-direct {v1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;-><init>()V

    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    .line 3042
    :cond_1
    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {p1, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 3029
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
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
    .line 3007
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    if-eqz v0, :cond_0

    .line 3008
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$ServiceApi;->endpointerParams:Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$EndpointerParams;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3010
    :cond_0
    return-void
.end method

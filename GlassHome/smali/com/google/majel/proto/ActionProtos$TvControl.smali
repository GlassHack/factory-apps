.class public final Lcom/google/majel/proto/ActionProtos$TvControl;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TvControl"
.end annotation


# static fields
.field public static final ACTION_CHANGE_CHANNEL:I = 0x0

.field public static final ACTION_LOWER_VOLUME:I = 0x2

.field public static final ACTION_RAISE_VOLUME:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionProtos$TvControl;


# instance fields
.field private action_:I

.field private bitField0_:I

.field private channel_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 901
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 902
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->clear()Lcom/google/majel/proto/ActionProtos$TvControl;

    .line 903
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 2

    .prologue
    .line 850
    sget-object v0, Lcom/google/majel/proto/ActionProtos$TvControl;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$TvControl;

    if-nez v0, :cond_1

    .line 851
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 853
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionProtos$TvControl;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$TvControl;

    if-nez v0, :cond_0

    .line 854
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionProtos$TvControl;

    sput-object v0, Lcom/google/majel/proto/ActionProtos$TvControl;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$TvControl;

    .line 856
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 858
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionProtos$TvControl;->_emptyArray:[Lcom/google/majel/proto/ActionProtos$TvControl;

    return-object v0

    .line 856
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 976
    new-instance v0, Lcom/google/majel/proto/ActionProtos$TvControl;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$TvControl;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionProtos$TvControl;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$TvControl;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 970
    new-instance v0, Lcom/google/majel/proto/ActionProtos$TvControl;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionProtos$TvControl;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionProtos$TvControl;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 906
    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    .line 907
    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->action_:I

    .line 908
    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->channel_:I

    .line 909
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->cachedSize:I

    .line 910
    return-object p0
.end method

.method public clearAction()Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1

    .prologue
    .line 877
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->action_:I

    .line 878
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    .line 879
    return-object p0
.end method

.method public clearChannel()Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1

    .prologue
    .line 896
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->channel_:I

    .line 897
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    .line 898
    return-object p0
.end method

.method public getAction()I
    .locals 1

    .prologue
    .line 866
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->action_:I

    return v0
.end method

.method public getChannel()I
    .locals 1

    .prologue
    .line 885
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->channel_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 926
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 927
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 928
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->action_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 931
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 932
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->channel_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 935
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->cachedSize:I

    .line 936
    return v0
.end method

.method public hasAction()Z
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasChannel()Z
    .locals 1

    .prologue
    .line 893
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

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
    .line 839
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionProtos$TvControl;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$TvControl;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 944
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 945
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 949
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 950
    :sswitch_0
    return-object p0

    .line 955
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->action_:I

    .line 956
    iget v1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    goto :goto_0

    .line 960
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->channel_:I

    .line 961
    iget v1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    goto :goto_0

    .line 945
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public setAction(I)Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 869
    iput p1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->action_:I

    .line 870
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    .line 871
    return-object p0
.end method

.method public setChannel(I)Lcom/google/majel/proto/ActionProtos$TvControl;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 888
    iput p1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->channel_:I

    .line 889
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    .line 890
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
    .line 916
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 917
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->action_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 919
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 920
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ActionProtos$TvControl;->channel_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 922
    :cond_1
    return-void
.end method

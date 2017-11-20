.class public final Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionContactGroup"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;


# instance fields
.field public contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2947
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 2948
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->clear()Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    .line 2949
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 2

    .prologue
    .line 2933
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    if-nez v0, :cond_1

    .line 2934
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 2936
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    if-nez v0, :cond_0

    .line 2937
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    .line 2939
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2941
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    return-object v0

    .line 2939
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3033
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3027
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 1

    .prologue
    .line 2952
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 2953
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->cachedSize:I

    .line 2954
    return-object p0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 2972
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 2973
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 2974
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 2975
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    aget-object v0, v3, v1

    .line 2976
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    if-eqz v0, :cond_0

    .line 2977
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 2974
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2982
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .end local v1    # "i":I
    :cond_1
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->cachedSize:I

    .line 2983
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
    .line 2927
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2991
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 2992
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 2996
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 2997
    :sswitch_0
    return-object p0

    .line 3002
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3004
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    if-nez v5, :cond_2

    move v1, v4

    .line 3005
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    .line 3007
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    if-eqz v1, :cond_1

    .line 3008
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3010
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3011
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    aput-object v5, v2, v1

    .line 3012
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3013
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3010
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3004
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v1, v5

    goto :goto_1

    .line 3016
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$ActionContact;-><init>()V

    aput-object v5, v2, v1

    .line 3017
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3018
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    goto :goto_0

    .line 2992
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
    .line 2960
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 2961
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 2962
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$ActionContactGroup;->contact:[Lcom/google/majel/proto/ActionV2Protos$ActionContact;

    aget-object v0, v2, v1

    .line 2963
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    if-eqz v0, :cond_0

    .line 2964
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 2961
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2968
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$ActionContact;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

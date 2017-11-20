.class public final Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ModularActionProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ModularActionProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ActionPrompts"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;


# instance fields
.field private bitField0_:I

.field public cancelSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

.field public confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

.field private isCancelableByTouch_:Z

.field public performSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

.field public prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3745
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3746
    invoke-virtual {p0}, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->clear()Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    .line 3747
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;
    .locals 2

    .prologue
    .line 3701
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    if-nez v0, :cond_1

    .line 3702
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3704
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    if-nez v0, :cond_0

    .line 3705
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    sput-object v0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    .line 3707
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3709
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->_emptyArray:[Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    return-object v0

    .line 3707
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3913
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3907
    new-instance v0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    invoke-direct {v0}, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 3750
    iput v1, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->bitField0_:I

    .line 3751
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    .line 3752
    invoke-static {}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;->emptyArray()[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 3753
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->performSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 3754
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->cancelSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 3755
    iput-boolean v1, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->isCancelableByTouch_:Z

    .line 3756
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->cachedSize:I

    .line 3757
    return-object p0
.end method

.method public clearIsCancelableByTouch()Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;
    .locals 1

    .prologue
    .line 3740
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->isCancelableByTouch_:Z

    .line 3741
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->bitField0_:I

    .line 3742
    return-object p0
.end method

.method public getIsCancelableByTouch()Z
    .locals 1

    .prologue
    .line 3729
    iget-boolean v0, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->isCancelableByTouch_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3792
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 3793
    .local v2, "size":I
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    array-length v3, v3

    if-lez v3, :cond_1

    .line 3794
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 3795
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    aget-object v0, v3, v1

    .line 3796
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    if-eqz v0, :cond_0

    .line 3797
    const/4 v3, 0x1

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3794
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3802
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    .end local v1    # "i":I
    :cond_1
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 3803
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 3804
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v3, v1

    .line 3805
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_2

    .line 3806
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3803
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3811
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_3
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->performSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v3, :cond_4

    .line 3812
    const/4 v3, 0x3

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->performSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3815
    :cond_4
    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->cancelSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v3, :cond_5

    .line 3816
    const/4 v3, 0x4

    iget-object v4, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->cancelSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3819
    :cond_5
    iget v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_6

    .line 3820
    const/4 v3, 0x5

    iget-boolean v4, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->isCancelableByTouch_:Z

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v3

    add-int/2addr v2, v3

    .line 3823
    :cond_6
    iput v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->cachedSize:I

    .line 3824
    return v2
.end method

.method public hasIsCancelableByTouch()Z
    .locals 1

    .prologue
    .line 3737
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->bitField0_:I

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
    .line 3695
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3832
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3833
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3837
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3838
    :sswitch_0
    return-object p0

    .line 3843
    :sswitch_1
    const/16 v5, 0xa

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3845
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    if-nez v5, :cond_2

    move v1, v4

    .line 3846
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    .line 3848
    .local v2, "newArray":[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    if-eqz v1, :cond_1

    .line 3849
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3851
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3852
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;-><init>()V

    aput-object v5, v2, v1

    .line 3853
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3854
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3851
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3845
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    array-length v1, v5

    goto :goto_1

    .line 3857
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;-><init>()V

    aput-object v5, v2, v1

    .line 3858
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3859
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    goto :goto_0

    .line 3863
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3865
    .restart local v0    # "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v5, :cond_5

    move v1, v4

    .line 3866
    .restart local v1    # "i":I
    :goto_3
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 3868
    .local v2, "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v1, :cond_4

    .line 3869
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3871
    :cond_4
    :goto_4
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_6

    .line 3872
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 3873
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3874
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3871
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 3865
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_5
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v1, v5

    goto :goto_3

    .line 3877
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :cond_6
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    aput-object v5, v2, v1

    .line 3878
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3879
    iput-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    goto/16 :goto_0

    .line 3883
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    :sswitch_3
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->performSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v5, :cond_7

    .line 3884
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->performSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 3886
    :cond_7
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->performSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3890
    :sswitch_4
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->cancelSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-nez v5, :cond_8

    .line 3891
    new-instance v5, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-direct {v5}, Lcom/google/majel/proto/ModularActionProtos$ResourceSet;-><init>()V

    iput-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->cancelSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    .line 3893
    :cond_8
    iget-object v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->cancelSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    goto/16 :goto_0

    .line 3897
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v5

    iput-boolean v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->isCancelableByTouch_:Z

    .line 3898
    iget v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->bitField0_:I

    goto/16 :goto_0

    .line 3833
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setIsCancelableByTouch(Z)Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 3732
    iput-boolean p1, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->isCancelableByTouch_:Z

    .line 3733
    iget v0, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->bitField0_:I

    .line 3734
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
    .line 3763
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    array-length v2, v2

    if-lez v2, :cond_1

    .line 3764
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 3765
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->prompt:[Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;

    aget-object v0, v2, v1

    .line 3766
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    if-eqz v0, :cond_0

    .line 3767
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3764
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3771
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ArgumentPrompt;
    .end local v1    # "i":I
    :cond_1
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 3772
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 3773
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->confirmSet:[Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    aget-object v0, v2, v1

    .line 3774
    .local v0, "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    if-eqz v0, :cond_2

    .line 3775
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3772
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3779
    .end local v0    # "element":Lcom/google/majel/proto/ModularActionProtos$ResourceSet;
    .end local v1    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->performSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v2, :cond_4

    .line 3780
    const/4 v2, 0x3

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->performSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3782
    :cond_4
    iget-object v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->cancelSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    if-eqz v2, :cond_5

    .line 3783
    const/4 v2, 0x4

    iget-object v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->cancelSet:Lcom/google/majel/proto/ModularActionProtos$ResourceSet;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3785
    :cond_5
    iget v2, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_6

    .line 3786
    const/4 v2, 0x5

    iget-boolean v3, p0, Lcom/google/majel/proto/ModularActionProtos$ActionPrompts;->isCancelableByTouch_:Z

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 3788
    :cond_6
    return-void
.end method

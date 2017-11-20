.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalizedResources"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;


# instance fields
.field private bitField0_:I

.field private javaLocale_:Ljava/lang/String;

.field public resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3712
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 3713
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    .line 3714
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 2

    .prologue
    .line 3674
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    if-nez v0, :cond_1

    .line 3675
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3677
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    if-nez v0, :cond_0

    .line 3678
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    .line 3680
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3682
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    return-object v0

    .line 3680
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3812
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 3806
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1

    .prologue
    .line 3717
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->bitField0_:I

    .line 3718
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->javaLocale_:Ljava/lang/String;

    .line 3719
    invoke-static {}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;->emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    move-result-object v0

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    .line 3720
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->cachedSize:I

    .line 3721
    return-object p0
.end method

.method public clearJavaLocale()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1

    .prologue
    .line 3704
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->javaLocale_:Ljava/lang/String;

    .line 3705
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->bitField0_:I

    .line 3706
    return-object p0
.end method

.method public getJavaLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3690
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->javaLocale_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 3742
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 3743
    .local v2, "size":I
    iget v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 3744
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->javaLocale_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3747
    :cond_0
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 3748
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 3749
    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    aget-object v0, v3, v1

    .line 3750
    .local v0, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    if-eqz v0, :cond_1

    .line 3751
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 3748
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3756
    .end local v0    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    .end local v1    # "i":I
    :cond_2
    iput v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->cachedSize:I

    .line 3757
    return v2
.end method

.method public hasJavaLocale()Z
    .locals 1

    .prologue
    .line 3701
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->bitField0_:I

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
    .line 3668
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3765
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 3766
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 3770
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 3771
    :sswitch_0
    return-object p0

    .line 3776
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->javaLocale_:Ljava/lang/String;

    .line 3777
    iget v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->bitField0_:I

    goto :goto_0

    .line 3781
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 3783
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    if-nez v5, :cond_2

    move v1, v4

    .line 3784
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    .line 3786
    .local v2, "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    if-eqz v1, :cond_1

    .line 3787
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3789
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 3790
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;-><init>()V

    aput-object v5, v2, v1

    .line 3791
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3792
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 3789
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 3783
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    :cond_2
    iget-object v5, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    array-length v1, v5

    goto :goto_1

    .line 3795
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    :cond_3
    new-instance v5, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    invoke-direct {v5}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;-><init>()V

    aput-object v5, v2, v1

    .line 3796
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3797
    iput-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    goto :goto_0

    .line 3766
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setJavaLocale(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 3693
    if-nez p1, :cond_0

    .line 3694
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 3696
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->javaLocale_:Ljava/lang/String;

    .line 3697
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->bitField0_:I

    .line 3698
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
    .line 3727
    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 3728
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->javaLocale_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 3730
    :cond_0
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 3731
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 3732
    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LocalizedResources;->resources:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;

    aget-object v0, v2, v1

    .line 3733
    .local v0, "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    if-eqz v0, :cond_1

    .line 3734
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 3731
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3738
    .end local v0    # "element":Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$Resource;
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

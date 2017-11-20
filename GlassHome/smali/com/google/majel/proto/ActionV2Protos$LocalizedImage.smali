.class public final Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LocalizedImage"
.end annotation


# static fields
.field public static final IMAGE_TYPE_DEFAULT:I = 0x0

.field public static final IMAGE_TYPE_STATIC_MAP:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;


# instance fields
.field private bitField0_:I

.field private defaultUrl_:Ljava/lang/String;

.field private imageType_:I

.field public localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9992
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 9993
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->clear()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    .line 9994
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 2

    .prologue
    .line 9935
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    if-nez v0, :cond_1

    .line 9936
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9938
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    if-nez v0, :cond_0

    .line 9939
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    .line 9941
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9943
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    return-object v0

    .line 9941
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 10105
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 10099
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 9997
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    .line 9998
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->defaultUrl_:Ljava/lang/String;

    .line 9999
    invoke-static {}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;->emptyArray()[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    move-result-object v0

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    .line 10000
    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->imageType_:I

    .line 10001
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->cachedSize:I

    .line 10002
    return-object p0
.end method

.method public clearDefaultUrl()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1

    .prologue
    .line 9965
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->defaultUrl_:Ljava/lang/String;

    .line 9966
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    .line 9967
    return-object p0
.end method

.method public clearImageType()Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1

    .prologue
    .line 9987
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->imageType_:I

    .line 9988
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    .line 9989
    return-object p0
.end method

.method public getDefaultUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 9951
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->defaultUrl_:Ljava/lang/String;

    return-object v0
.end method

.method public getImageType()I
    .locals 1

    .prologue
    .line 9976
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->imageType_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 5

    .prologue
    .line 10026
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v2

    .line 10027
    .local v2, "size":I
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 10028
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->defaultUrl_:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 10031
    :cond_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    array-length v3, v3

    if-lez v3, :cond_2

    .line 10032
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    array-length v3, v3

    if-ge v1, v3, :cond_2

    .line 10033
    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    aget-object v0, v3, v1

    .line 10034
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    if-eqz v0, :cond_1

    .line 10035
    const/4 v3, 0x2

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 10032
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10040
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .end local v1    # "i":I
    :cond_2
    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_3

    .line 10041
    const/4 v3, 0x3

    iget v4, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->imageType_:I

    invoke-static {v3, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 10044
    :cond_3
    iput v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->cachedSize:I

    .line 10045
    return v2
.end method

.method public hasDefaultUrl()Z
    .locals 1

    .prologue
    .line 9962
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImageType()Z
    .locals 1

    .prologue
    .line 9984
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

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
    .line 9925
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 6
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 10053
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v3

    .line 10054
    .local v3, "tag":I
    sparse-switch v3, :sswitch_data_0

    .line 10058
    invoke-static {p1, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 10059
    :sswitch_0
    return-object p0

    .line 10064
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->defaultUrl_:Ljava/lang/String;

    .line 10065
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    or-int/lit8 v5, v5, 0x1

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    goto :goto_0

    .line 10069
    :sswitch_2
    const/16 v5, 0x12

    invoke-static {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 10071
    .local v0, "arrayLength":I
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    if-nez v5, :cond_2

    move v1, v4

    .line 10072
    .local v1, "i":I
    :goto_1
    add-int v5, v1, v0

    new-array v2, v5, [Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    .line 10074
    .local v2, "newArray":[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    if-eqz v1, :cond_1

    .line 10075
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    invoke-static {v5, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 10077
    :cond_1
    :goto_2
    array-length v5, v2

    add-int/lit8 v5, v5, -0x1

    if-ge v1, v5, :cond_3

    .line 10078
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;-><init>()V

    aput-object v5, v2, v1

    .line 10079
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10080
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 10077
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 10071
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    :cond_2
    iget-object v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    array-length v1, v5

    goto :goto_1

    .line 10083
    .restart local v1    # "i":I
    .restart local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    :cond_3
    new-instance v5, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    invoke-direct {v5}, Lcom/google/majel/proto/ActionV2Protos$LocalizedString;-><init>()V

    aput-object v5, v2, v1

    .line 10084
    aget-object v5, v2, v1

    invoke-virtual {p1, v5}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10085
    iput-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    goto :goto_0

    .line 10089
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v2    # "newArray":[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->imageType_:I

    .line 10090
    iget v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    or-int/lit8 v5, v5, 0x2

    iput v5, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    goto :goto_0

    .line 10054
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
.end method

.method public setDefaultUrl(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 9954
    if-nez p1, :cond_0

    .line 9955
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 9957
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->defaultUrl_:Ljava/lang/String;

    .line 9958
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    .line 9959
    return-object p0
.end method

.method public setImageType(I)Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9979
    iput p1, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->imageType_:I

    .line 9980
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    .line 9981
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
    .line 10008
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 10009
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->defaultUrl_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 10011
    :cond_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    array-length v2, v2

    if-lez v2, :cond_2

    .line 10012
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    array-length v2, v2

    if-ge v1, v2, :cond_2

    .line 10013
    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->localizedUrl:[Lcom/google/majel/proto/ActionV2Protos$LocalizedString;

    aget-object v0, v2, v1

    .line 10014
    .local v0, "element":Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    if-eqz v0, :cond_1

    .line 10015
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 10012
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 10019
    .end local v0    # "element":Lcom/google/majel/proto/ActionV2Protos$LocalizedString;
    .end local v1    # "i":I
    :cond_2
    iget v2, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_3

    .line 10020
    const/4 v2, 0x3

    iget v3, p0, Lcom/google/majel/proto/ActionV2Protos$LocalizedImage;->imageType_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 10022
    :cond_3
    return-void
.end method

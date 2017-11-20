.class public final Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;


# instance fields
.field private bitField0_:I

.field public id:Ljava/lang/String;

.field private image_:[B


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 957
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 958
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 963
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    .line 966
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image_:[B

    .line 958
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    .locals 1

    .prologue
    .line 1075
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    .locals 1

    .prologue
    .line 1069
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    return-object v0
.end method


# virtual methods
.method public final clearImage()Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    .locals 1

    .prologue
    .line 982
    sget-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image_:[B

    .line 983
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->bitField0_:I

    .line 984
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 989
    if-ne p1, p0, :cond_1

    .line 994
    :cond_0
    :goto_0
    return v0

    .line 990
    :cond_1
    instance-of v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 991
    :cond_2
    check-cast p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    .line 992
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    if-nez v2, :cond_3

    :goto_1
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image_:[B

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image_:[B

    .line 993
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 994
    goto :goto_0

    .line 992
    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 993
    :cond_5
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->unknownFieldData:Ljava/util/List;

    .line 994
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getImage()[B
    .locals 1

    .prologue
    .line 968
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image_:[B

    return-object v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 1022
    const/4 v0, 0x0

    .line 1023
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    .line 1024
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1025
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1026
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image_:[B

    .line 1027
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1029
    :cond_0
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1030
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->cachedSize:I

    .line 1031
    return v0
.end method

.method public final hasImage()Z
    .locals 1

    .prologue
    .line 979
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 998
    .line 999
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    add-int/lit16 v0, v0, 0x20f

    .line 1000
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image_:[B

    if-nez v2, :cond_2

    mul-int/lit8 v2, v0, 0x1f

    .line 1006
    :cond_0
    mul-int/lit8 v0, v2, 0x1f

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_3

    :goto_1
    add-int/2addr v0, v1

    .line 1007
    return v0

    .line 999
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    :cond_2
    move v2, v0

    move v0, v1

    .line 1002
    :goto_2
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image_:[B

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1003
    mul-int/lit8 v2, v2, 0x1f

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image_:[B

    aget-byte v3, v3, v0

    add-int/2addr v2, v3

    .line 1002
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1006
    :cond_3
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    .locals 2

    .prologue
    .line 1039
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1040
    sparse-switch v0, :sswitch_data_0

    .line 1044
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1045
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->unknownFieldData:Ljava/util/List;

    .line 1048
    :cond_1
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1050
    :sswitch_0
    return-object p0

    .line 1055
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    goto :goto_0

    .line 1059
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image_:[B

    .line 1060
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->bitField0_:I

    goto :goto_0

    .line 1040
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 954
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;

    move-result-object v0

    return-object v0
.end method

.method public final setImage([B)Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;
    .locals 1

    .prologue
    .line 971
    if-nez p1, :cond_0

    .line 972
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 974
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image_:[B

    .line 975
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->bitField0_:I

    .line 976
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 1012
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1013
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1014
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->image_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1016
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$MapRenderResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 1018
    return-void
.end method

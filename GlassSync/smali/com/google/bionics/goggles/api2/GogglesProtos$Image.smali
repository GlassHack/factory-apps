.class public final Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GogglesProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/bionics/goggles/api2/GogglesProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Image"
.end annotation


# static fields
.field public static final IMAGE_ENCODING_JPEG:I = 0x1

.field public static final IMAGE_ENCODING_WEBP:I = 0x2

.field public static final IMAGE_ROTATION_C_W_DEGREES_180:I = 0x2

.field public static final IMAGE_ROTATION_C_W_DEGREES_270:I = 0x3

.field public static final IMAGE_ROTATION_C_W_DEGREES_90:I = 0x1

.field private static volatile _emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Image;


# instance fields
.field private bitField0_:I

.field private encodedImage_:[B

.field private imageEncoding_:I

.field private imageRotation_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1051
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1052
    invoke-virtual {p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->clear()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    .line 1053
    return-void
.end method

.method public static emptyArray()[Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 2

    .prologue
    .line 978
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    if-nez v0, :cond_1

    .line 979
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 981
    :try_start_0
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    if-nez v0, :cond_0

    .line 982
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    sput-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    .line 984
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 986
    :cond_1
    sget-object v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->_emptyArray:[Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    return-object v0

    .line 984
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1139
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1133
    new-instance v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    invoke-direct {v0}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1056
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    .line 1057
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageEncoding_:I

    .line 1058
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->encodedImage_:[B

    .line 1059
    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageRotation_:I

    .line 1060
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->cachedSize:I

    .line 1061
    return-object p0
.end method

.method public clearEncodedImage()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1

    .prologue
    .line 1027
    sget-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    iput-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->encodedImage_:[B

    .line 1028
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    .line 1029
    return-object p0
.end method

.method public clearImageEncoding()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1

    .prologue
    .line 1005
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageEncoding_:I

    .line 1006
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    .line 1007
    return-object p0
.end method

.method public clearImageRotation()Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1

    .prologue
    .line 1046
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageRotation_:I

    .line 1047
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    .line 1048
    return-object p0
.end method

.method public getEncodedImage()[B
    .locals 1

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->encodedImage_:[B

    return-object v0
.end method

.method public getImageEncoding()I
    .locals 1

    .prologue
    .line 994
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageEncoding_:I

    return v0
.end method

.method public getImageRotation()I
    .locals 1

    .prologue
    .line 1035
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageRotation_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1080
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1081
    .local v0, "size":I
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1082
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageEncoding_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1085
    :cond_0
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1086
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->encodedImage_:[B

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBytesSize(I[B)I

    move-result v1

    add-int/2addr v0, v1

    .line 1089
    :cond_1
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1090
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageRotation_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1093
    :cond_2
    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->cachedSize:I

    .line 1094
    return v0
.end method

.method public hasEncodedImage()Z
    .locals 1

    .prologue
    .line 1024
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImageEncoding()Z
    .locals 1

    .prologue
    .line 1002
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasImageRotation()Z
    .locals 1

    .prologue
    .line 1043
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1102
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1103
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1107
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1108
    :sswitch_0
    return-object p0

    .line 1113
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageEncoding_:I

    .line 1114
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    goto :goto_0

    .line 1118
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v1

    iput-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->encodedImage_:[B

    .line 1119
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    goto :goto_0

    .line 1123
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageRotation_:I

    .line 1124
    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    goto :goto_0

    .line 1103
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
    .end sparse-switch
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
    .line 963
    invoke-virtual {p0, p1}, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;

    move-result-object v0

    return-object v0
.end method

.method public setEncodedImage([B)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1
    .param p1, "value"    # [B

    .prologue
    .line 1016
    if-nez p1, :cond_0

    .line 1017
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1019
    :cond_0
    iput-object p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->encodedImage_:[B

    .line 1020
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    .line 1021
    return-object p0
.end method

.method public setImageEncoding(I)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 997
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageEncoding_:I

    .line 998
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    .line 999
    return-object p0
.end method

.method public setImageRotation(I)Lcom/google/bionics/goggles/api2/GogglesProtos$Image;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1038
    iput p1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageRotation_:I

    .line 1039
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    .line 1040
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
    .line 1067
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1068
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageEncoding_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1070
    :cond_0
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1071
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->encodedImage_:[B

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBytes(I[B)V

    .line 1073
    :cond_1
    iget v0, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1074
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/bionics/goggles/api2/GogglesProtos$Image;->imageRotation_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1076
    :cond_2
    return-void
.end method

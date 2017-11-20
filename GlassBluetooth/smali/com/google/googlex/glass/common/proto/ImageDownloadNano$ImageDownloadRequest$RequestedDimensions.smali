.class public final Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "ImageDownloadNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "RequestedDimensions"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;


# instance fields
.field private bitField0_:I

.field private heightPixels_:I

.field private widthPixels_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    sput-object v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 26
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    .line 45
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    .line 21
    return-void
.end method


# virtual methods
.method public clearHeightPixels()Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    .line 59
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    .line 60
    return-object p0
.end method

.method public clearWidthPixels()Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;
    .locals 1

    .prologue
    .line 39
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    .line 40
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    .line 41
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 65
    if-ne p1, p0, :cond_1

    .line 70
    :cond_0
    :goto_0
    return v1

    .line 66
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 67
    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    .line 68
    .local v0, "other":Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 70
    goto :goto_0

    .line 68
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->unknownFieldData:Ljava/util/List;

    .line 70
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getHeightPixels()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 95
    const/4 v0, 0x0

    .line 96
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 97
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    .line 98
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 101
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    .line 102
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 104
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 105
    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->cachedSize:I

    .line 106
    return v0
.end method

.method public getWidthPixels()I
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    return v0
.end method

.method public hasHeightPixels()Z
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWidthPixels()Z
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 3

    .prologue
    .line 74
    const/16 v0, 0x11

    .line 75
    .local v0, "result":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    add-int/lit16 v0, v1, 0x20f

    .line 76
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    add-int v0, v1, v2

    .line 77
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 78
    return v0

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 114
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 115
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 119
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 120
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->unknownFieldData:Ljava/util/List;

    .line 123
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    :sswitch_0
    return-object p0

    .line 130
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    .line 131
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    goto :goto_0

    .line 135
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    .line 136
    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    goto :goto_0

    .line 115
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 151
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    move-result-object v0

    return-object v0
.end method

.method public parseFrom([B)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .param p1, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 145
    new-instance v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;

    return-object v0
.end method

.method public setHeightPixels(I)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 50
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    .line 51
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    .line 52
    return-object p0
.end method

.method public setWidthPixels(I)Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    .line 32
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    .line 33
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 83
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->widthPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 86
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 87
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->heightPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 89
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/ImageDownloadNano$ImageDownloadRequest$RequestedDimensions;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 91
    return-void
.end method

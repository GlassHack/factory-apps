.class public final Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;


# instance fields
.field private bitField0_:I

.field private heightPixels_:I

.field private widthPixels_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    sput-object v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 21
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 40
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 16
    return-void
.end method


# virtual methods
.method public final clearHeightPixels()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 54
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    .line 55
    return-object p0
.end method

.method public final clearWidthPixels()Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 35
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 60
    if-ne p1, p0, :cond_1

    .line 65
    :cond_0
    :goto_0
    return v0

    .line 61
    :cond_1
    instance-of v2, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 62
    :cond_2
    check-cast p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    .line 63
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    iget v3, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 65
    goto :goto_0

    .line 63
    :cond_4
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Ljava/util/List;

    .line 65
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getHeightPixels()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    return v0
.end method

.method public final getSerializedSize()I
    .locals 3

    .prologue
    .line 90
    const/4 v0, 0x0

    .line 91
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 93
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 95
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 96
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 97
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 99
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 100
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->cachedSize:I

    .line 101
    return v0
.end method

.method public final getWidthPixels()I
    .locals 1

    .prologue
    .line 23
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    return v0
.end method

.method public final hasHeightPixels()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasWidthPixels()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

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
    .locals 2

    .prologue
    .line 69
    .line 70
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    add-int/lit16 v0, v0, 0x20f

    .line 71
    mul-int/lit8 v0, v0, 0x1f

    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    add-int/2addr v0, v1

    .line 72
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 73
    return v0

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 2

    .prologue
    .line 109
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 110
    sparse-switch v0, :sswitch_data_0

    .line 114
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 115
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Ljava/util/List;

    .line 118
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 120
    :sswitch_0
    return-object p0

    .line 125
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 126
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    goto :goto_0

    .line 130
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 131
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    goto :goto_0

    .line 110
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 12
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public final parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 146
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public final parseFrom([B)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;-><init>()V

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;

    return-object v0
.end method

.method public final setHeightPixels(I)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 45
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 46
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    .line 47
    return-object p0
.end method

.method public final setWidthPixels(I)Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 26
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 27
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    .line 28
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 2

    .prologue
    .line 78
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 79
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 81
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 82
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AttachmentSyncNano$AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 86
    return-void
.end method

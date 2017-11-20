.class public final Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;


# instance fields
.field private bitField0_:I

.field private lat_:D

.field private lng_:D


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 15
    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat_:D

    .line 34
    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng_:D

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1

    .prologue
    .line 140
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1

    .prologue
    .line 134
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    return-object v0
.end method


# virtual methods
.method public final clearLat()Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat_:D

    .line 29
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    .line 30
    return-object p0
.end method

.method public final clearLng()Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 2

    .prologue
    .line 47
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng_:D

    .line 48
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    .line 49
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 54
    if-ne p1, p0, :cond_1

    .line 59
    :cond_0
    :goto_0
    return v0

    .line 55
    :cond_1
    instance-of v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 56
    :cond_2
    check-cast p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 57
    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat_:D

    iget-wide v4, p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat_:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng_:D

    iget-wide v4, p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng_:D

    cmpl-double v2, v2, v4

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 59
    goto :goto_0

    .line 57
    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->unknownFieldData:Ljava/util/List;

    .line 59
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getLat()D
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat_:D

    return-wide v0
.end method

.method public final getLng()D
    .locals 2

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng_:D

    return-wide v0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 84
    const/4 v0, 0x0

    .line 85
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 86
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat_:D

    .line 87
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 89
    :cond_0
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 90
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng_:D

    .line 91
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSize(ID)I

    move-result v1

    add-int/2addr v0, v1

    .line 93
    :cond_1
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->cachedSize:I

    .line 95
    return v0
.end method

.method public final hasLat()Z
    .locals 1

    .prologue
    .line 25
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hasLng()Z
    .locals 1

    .prologue
    .line 44
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/16 v5, 0x20

    .line 63
    .line 64
    iget-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat_:D

    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat_:D

    invoke-static {v2, v3}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v2

    ushr-long/2addr v2, v5

    xor-long/2addr v0, v2

    long-to-int v0, v0

    add-int/lit16 v0, v0, 0x20f

    .line 65
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng_:D

    invoke-static {v1, v2}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v1

    iget-wide v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng_:D

    invoke-static {v3, v4}, Ljava/lang/Double;->doubleToLongBits(D)J

    move-result-wide v3

    ushr-long/2addr v3, v5

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    .line 66
    mul-int/lit8 v1, v0, 0x1f

    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->unknownFieldData:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-int/2addr v0, v1

    .line 67
    return v0

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->unknownFieldData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public final mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 2

    .prologue
    .line 103
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 104
    sparse-switch v0, :sswitch_data_0

    .line 108
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 109
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->unknownFieldData:Ljava/util/List;

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    :sswitch_0
    return-object p0

    .line 119
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat_:D

    .line 120
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    goto :goto_0

    .line 124
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng_:D

    .line 125
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    goto :goto_0

    .line 104
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
    .end sparse-switch
.end method

.method public final bridge synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    move-result-object v0

    return-object v0
.end method

.method public final setLat(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat_:D

    .line 21
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    .line 22
    return-object p0
.end method

.method public final setLng(D)Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng_:D

    .line 40
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    .line 41
    return-object p0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 72
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 73
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lat_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 75
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 76
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->lng_:D

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDouble(ID)V

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 80
    return-void
.end method

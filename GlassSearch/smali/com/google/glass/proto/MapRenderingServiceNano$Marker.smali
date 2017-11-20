.class public final Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MapRenderingServiceNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MapRenderingServiceNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Marker"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/proto/MapRenderingServiceNano$Marker$MarkerType;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;


# instance fields
.field private bitField0_:I

.field private location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

.field private type_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 148
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    sput-object v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->EMPTY_ARRAY:[Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 149
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 159
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type_:I

    .line 149
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 286
    new-instance v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    invoke-direct {v0}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    return-object v0
.end method


# virtual methods
.method public clearLocation()Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 1

    .prologue
    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 194
    return-object p0
.end method

.method public clearType()Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 1

    .prologue
    .line 172
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type_:I

    .line 173
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->bitField0_:I

    .line 174
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 198
    if-ne p1, p0, :cond_1

    .line 203
    :cond_0
    :goto_0
    return v1

    .line 199
    :cond_1
    instance-of v3, p1, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 200
    check-cast v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    .line 201
    .local v0, "other":Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    iget v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type_:I

    iget v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v3, :cond_3

    .line 202
    :goto_1
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 203
    goto :goto_0

    .line 201
    :cond_4
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 202
    invoke-virtual {v3, v4}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->unknownFieldData:Ljava/util/List;

    .line 203
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getLocation()Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 228
    const/4 v0, 0x0

    .line 229
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 230
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type_:I

    .line 231
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 233
    :cond_0
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v1, :cond_1

    .line 234
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 235
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 237
    :cond_1
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 238
    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->cachedSize:I

    .line 239
    return v0
.end method

.method public getType()I
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type_:I

    return v0
.end method

.method public hasLocation()Z
    .locals 1

    .prologue
    .line 190
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasType()Z
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->bitField0_:I

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
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 207
    const/16 v0, 0x11

    .line 208
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type_:I

    add-int/lit16 v0, v1, 0x20f

    .line 209
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 210
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 211
    return v0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {v1}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;->hashCode()I

    move-result v1

    goto :goto_0

    .line 210
    :cond_1
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 247
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 248
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 252
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 253
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->unknownFieldData:Ljava/util/List;

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 258
    :sswitch_0
    return-object p0

    .line 263
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 264
    .local v1, "temp":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 266
    :cond_2
    iput v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type_:I

    .line 267
    iget v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->bitField0_:I

    goto :goto_0

    .line 269
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type_:I

    goto :goto_0

    .line 274
    .end local v1    # "temp":I
    :sswitch_2
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-nez v2, :cond_4

    .line 275
    new-instance v2, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-direct {v2}, Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;-><init>()V

    iput-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 277
    :cond_4
    iget-object v2, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 248
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x12 -> :sswitch_2
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
    .line 145
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;

    move-result-object v0

    return-object v0
.end method

.method public setLocation(Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .prologue
    .line 183
    if-nez p1, :cond_0

    .line 184
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 186
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    .line 187
    return-object p0
.end method

.method public setType(I)Lcom/google/glass/proto/MapRenderingServiceNano$Marker;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type_:I

    .line 165
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->bitField0_:I

    .line 166
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
    .line 216
    iget v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 217
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->type_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    if-eqz v0, :cond_1

    .line 220
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->location_:Lcom/google/glass/proto/MapRenderingServiceNano$LatLng;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 222
    :cond_1
    iget-object v0, p0, Lcom/google/glass/proto/MapRenderingServiceNano$Marker;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 224
    return-void
.end method

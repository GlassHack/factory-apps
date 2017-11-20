.class public final Lcom/google/glass/companion/Proto$SetWallpaperResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetWallpaperResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/glass/companion/Proto$SetWallpaperResponse$Update;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$SetWallpaperResponse;


# instance fields
.field private bitField0_:I

.field private id_:I

.field private update_:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8965
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    sput-object v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 8966
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8978
    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    .line 8997
    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    .line 8966
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9111
    new-instance v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9105
    new-instance v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    return-object v0
.end method


# virtual methods
.method public clearId()Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1

    .prologue
    .line 8991
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    .line 8992
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    .line 8993
    return-object p0
.end method

.method public clearUpdate()Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1

    .prologue
    .line 9010
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    .line 9011
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    .line 9012
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 9017
    if-ne p1, p0, :cond_1

    .line 9022
    :cond_0
    :goto_0
    return v1

    .line 9018
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 9019
    check-cast v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    .line 9020
    .local v0, "other":Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    iget v3, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 9022
    goto :goto_0

    .line 9020
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    .line 9022
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 8980
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 9047
    const/4 v0, 0x0

    .line 9048
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9049
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    .line 9050
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9052
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9053
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    .line 9054
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 9056
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 9057
    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->cachedSize:I

    .line 9058
    return v0
.end method

.method public getUpdate()I
    .locals 1

    .prologue
    .line 8999
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    return v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 8988
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUpdate()Z
    .locals 1

    .prologue
    .line 9007
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 9026
    const/16 v0, 0x11

    .line 9027
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    add-int/lit16 v0, v1, 0x20f

    .line 9028
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    add-int v0, v1, v2

    .line 9029
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    add-int v0, v2, v1

    .line 9030
    return v0

    .line 9029
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9066
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9067
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9071
    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 9072
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    .line 9075
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 9077
    :sswitch_0
    return-object p0

    .line 9082
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v2

    iput v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    .line 9083
    iget v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    goto :goto_0

    .line 9087
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 9088
    .local v1, "temp":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_2

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    .line 9092
    :cond_2
    iput v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    .line 9093
    iget v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    goto :goto_0

    .line 9095
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    goto :goto_0

    .line 9067
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
    .line 8962
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperResponse;

    move-result-object v0

    return-object v0
.end method

.method public setId(I)Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8983
    iput p1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    .line 8984
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    .line 8985
    return-object p0
.end method

.method public setUpdate(I)Lcom/google/glass/companion/Proto$SetWallpaperResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 9002
    iput p1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    .line 9003
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    .line 9004
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
    .line 9035
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9036
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->id_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9038
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9039
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->update_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 9041
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9043
    return-void
.end method

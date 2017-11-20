.class public final Lcom/google/glass/companion/Proto$SetWallpaperRequest;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SetWallpaperRequest"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$SetWallpaperRequest;


# instance fields
.field private bitField0_:I

.field private id_:I

.field private wallpaper_:Lcom/google/glass/companion/Proto$Media;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8824
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    sput-object v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 8825
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 8830
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    .line 8825
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8957
    new-instance v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 8951
    new-instance v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    return-object v0
.end method


# virtual methods
.method public clearId()Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1

    .prologue
    .line 8843
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    .line 8844
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    .line 8845
    return-object p0
.end method

.method public clearWallpaper()Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1

    .prologue
    .line 8864
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8865
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 8869
    if-ne p1, p0, :cond_1

    .line 8874
    :cond_0
    :goto_0
    return v1

    .line 8870
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 8871
    check-cast v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    .line 8872
    .local v0, "other":Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    iget v3, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    iget v4, v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v3, :cond_3

    .line 8873
    :goto_1
    iget-object v3, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 8874
    goto :goto_0

    .line 8872
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8873
    invoke-virtual {v3, v4}, Lcom/google/glass/companion/Proto$Media;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    .line 8874
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 8832
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 8899
    const/4 v0, 0x0

    .line 8900
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 8901
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    .line 8902
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 8904
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-eqz v1, :cond_1

    .line 8905
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8906
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8908
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 8909
    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->cachedSize:I

    .line 8910
    return v0
.end method

.method public getWallpaper()Lcom/google/glass/companion/Proto$Media;
    .locals 1

    .prologue
    .line 8851
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    return-object v0
.end method

.method public hasId()Z
    .locals 1

    .prologue
    .line 8840
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWallpaper()Z
    .locals 1

    .prologue
    .line 8861
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

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

    .line 8878
    const/16 v0, 0x11

    .line 8879
    .local v0, "result":I
    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    add-int/lit16 v0, v1, 0x20f

    .line 8880
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 8881
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 8882
    return v0

    .line 8880
    :cond_0
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {v1}, Lcom/google/glass/companion/Proto$Media;->hashCode()I

    move-result v1

    goto :goto_0

    .line 8881
    :cond_1
    iget-object v2, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8918
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 8919
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 8923
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 8924
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    .line 8927
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 8929
    :sswitch_0
    return-object p0

    .line 8934
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    .line 8935
    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    goto :goto_0

    .line 8939
    :sswitch_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-nez v1, :cond_2

    .line 8940
    new-instance v1, Lcom/google/glass/companion/Proto$Media;

    invoke-direct {v1}, Lcom/google/glass/companion/Proto$Media;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8942
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {p1, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    goto :goto_0

    .line 8919
    nop

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
    .line 8821
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$SetWallpaperRequest;

    move-result-object v0

    return-object v0
.end method

.method public setId(I)Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 8835
    iput p1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    .line 8836
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    .line 8837
    return-object p0
.end method

.method public setWallpaper(Lcom/google/glass/companion/Proto$Media;)Lcom/google/glass/companion/Proto$SetWallpaperRequest;
    .locals 1
    .param p1, "value"    # Lcom/google/glass/companion/Proto$Media;

    .prologue
    .line 8854
    if-nez p1, :cond_0

    .line 8855
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 8857
    :cond_0
    iput-object p1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    .line 8858
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
    .line 8887
    iget v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 8888
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->id_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 8890
    :cond_0
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    if-eqz v0, :cond_1

    .line 8891
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->wallpaper_:Lcom/google/glass/companion/Proto$Media;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 8893
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$SetWallpaperRequest;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 8895
    return-void
.end method

.class public final Lcom/google/glass/proto/MusicNano$MusicMetadata;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "MusicNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/proto/MusicNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MusicMetadata"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/proto/MusicNano$MusicMetadata;


# instance fields
.field private albumName_:Ljava/lang/String;

.field private artistName_:Ljava/lang/String;

.field private bitField0_:I

.field private duration_:J

.field private trackName_:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/proto/MusicNano$MusicMetadata;

    sput-object v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->EMPTY_ARRAY:[Lcom/google/glass/proto/MusicNano$MusicMetadata;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->trackName_:Ljava/lang/String;

    .line 37
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->albumName_:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->artistName_:Ljava/lang/String;

    .line 81
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->duration_:J

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MusicNano$MusicMetadata;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 215
    new-instance v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;

    invoke-direct {v0}, Lcom/google/glass/proto/MusicNano$MusicMetadata;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MusicNano$MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/proto/MusicNano$MusicMetadata;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 209
    new-instance v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;

    invoke-direct {v0}, Lcom/google/glass/proto/MusicNano$MusicMetadata;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;

    return-object v0
.end method


# virtual methods
.method public clearAlbumName()Lcom/google/glass/proto/MusicNano$MusicMetadata;
    .locals 1

    .prologue
    .line 53
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->albumName_:Ljava/lang/String;

    .line 54
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    .line 55
    return-object p0
.end method

.method public clearArtistName()Lcom/google/glass/proto/MusicNano$MusicMetadata;
    .locals 1

    .prologue
    .line 75
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->artistName_:Ljava/lang/String;

    .line 76
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    .line 77
    return-object p0
.end method

.method public clearDuration()Lcom/google/glass/proto/MusicNano$MusicMetadata;
    .locals 2

    .prologue
    .line 94
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->duration_:J

    .line 95
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    .line 96
    return-object p0
.end method

.method public clearTrackName()Lcom/google/glass/proto/MusicNano$MusicMetadata;
    .locals 1

    .prologue
    .line 31
    const-string v0, ""

    iput-object v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->trackName_:Ljava/lang/String;

    .line 32
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    .line 33
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    if-ne p1, p0, :cond_1

    .line 108
    :cond_0
    :goto_0
    return v1

    .line 102
    :cond_1
    instance-of v3, p1, Lcom/google/glass/proto/MusicNano$MusicMetadata;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 103
    check-cast v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;

    .line 104
    .local v0, "other":Lcom/google/glass/proto/MusicNano$MusicMetadata;
    iget-object v3, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->trackName_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->trackName_:Ljava/lang/String;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->albumName_:Ljava/lang/String;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->albumName_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 105
    :goto_2
    iget-object v3, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->artistName_:Ljava/lang/String;

    if-nez v3, :cond_6

    iget-object v3, v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->artistName_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 106
    :goto_3
    iget-wide v3, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->duration_:J

    iget-wide v5, v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->duration_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 108
    goto :goto_0

    .line 104
    :cond_4
    iget-object v3, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->trackName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->trackName_:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->albumName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->albumName_:Ljava/lang/String;

    .line 105
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_2

    :cond_6
    iget-object v3, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->artistName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->artistName_:Ljava/lang/String;

    .line 106
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_3

    :cond_7
    iget-object v3, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->unknownFieldData:Ljava/util/List;

    .line 108
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getAlbumName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->albumName_:Ljava/lang/String;

    return-object v0
.end method

.method public getArtistName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->artistName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    .prologue
    .line 83
    iget-wide v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->duration_:J

    return-wide v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 141
    const/4 v0, 0x0

    .line 142
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 143
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->trackName_:Ljava/lang/String;

    .line 144
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 146
    :cond_0
    iget v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 147
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->albumName_:Ljava/lang/String;

    .line 148
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 150
    :cond_1
    iget v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 151
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->artistName_:Ljava/lang/String;

    .line 152
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 154
    :cond_2
    iget v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 155
    const/4 v1, 0x4

    iget-wide v2, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->duration_:J

    .line 156
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 158
    :cond_3
    iget-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 159
    iput v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->cachedSize:I

    .line 160
    return v0
.end method

.method public getTrackName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 17
    iget-object v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->trackName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasAlbumName()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasArtistName()Z
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDuration()Z
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasTrackName()Z
    .locals 1

    .prologue
    .line 28
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

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
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 112
    const/16 v0, 0x11

    .line 113
    .local v0, "result":I
    iget-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->trackName_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 114
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->albumName_:Ljava/lang/String;

    if-nez v1, :cond_1

    move v1, v2

    :goto_1
    add-int v0, v3, v1

    .line 115
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->artistName_:Ljava/lang/String;

    if-nez v1, :cond_2

    move v1, v2

    :goto_2
    add-int v0, v3, v1

    .line 116
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v3, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->duration_:J

    iget-wide v5, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->duration_:J

    const/16 v7, 0x20

    ushr-long/2addr v5, v7

    xor-long/2addr v3, v5

    long-to-int v3, v3

    add-int v0, v1, v3

    .line 117
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_3

    :goto_3
    add-int v0, v1, v2

    .line 118
    return v0

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->trackName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 114
    :cond_1
    iget-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->albumName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_1

    .line 115
    :cond_2
    iget-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->artistName_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_2

    .line 117
    :cond_3
    iget-object v2, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_3
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MusicNano$MusicMetadata;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 168
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 169
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 173
    iget-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 174
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->unknownFieldData:Ljava/util/List;

    .line 177
    :cond_1
    iget-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 179
    :sswitch_0
    return-object p0

    .line 184
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->trackName_:Ljava/lang/String;

    .line 185
    iget v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    goto :goto_0

    .line 189
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->albumName_:Ljava/lang/String;

    .line 190
    iget v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    goto :goto_0

    .line 194
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->artistName_:Ljava/lang/String;

    .line 195
    iget v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    goto :goto_0

    .line 199
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readUInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->duration_:J

    .line 200
    iget v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    goto :goto_0

    .line 169
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/glass/proto/MusicNano$MusicMetadata;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/proto/MusicNano$MusicMetadata;

    move-result-object v0

    return-object v0
.end method

.method public setAlbumName(Ljava/lang/String;)Lcom/google/glass/proto/MusicNano$MusicMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 42
    if-nez p1, :cond_0

    .line 43
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 45
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->albumName_:Ljava/lang/String;

    .line 46
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    .line 47
    return-object p0
.end method

.method public setArtistName(Ljava/lang/String;)Lcom/google/glass/proto/MusicNano$MusicMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 64
    if-nez p1, :cond_0

    .line 65
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 67
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->artistName_:Ljava/lang/String;

    .line 68
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    .line 69
    return-object p0
.end method

.method public setDuration(J)Lcom/google/glass/proto/MusicNano$MusicMetadata;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 86
    iput-wide p1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->duration_:J

    .line 87
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    .line 88
    return-object p0
.end method

.method public setTrackName(Ljava/lang/String;)Lcom/google/glass/proto/MusicNano$MusicMetadata;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 20
    if-nez p1, :cond_0

    .line 21
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 23
    :cond_0
    iput-object p1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->trackName_:Ljava/lang/String;

    .line 24
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    .line 25
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 123
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 124
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->trackName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 126
    :cond_0
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 127
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->albumName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 129
    :cond_1
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 130
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->artistName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 132
    :cond_2
    iget v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 133
    const/4 v0, 0x4

    iget-wide v1, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->duration_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    .line 135
    :cond_3
    iget-object v0, p0, Lcom/google/glass/proto/MusicNano$MusicMetadata;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 137
    return-void
.end method

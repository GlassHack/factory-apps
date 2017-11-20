.class public final Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ClientInfoProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ClientInfoProtos;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PreviewParams"
.end annotation


# static fields
.field public static final PREVIEW_TYPE_DESKTOP:I = 0x1

.field public static final PREVIEW_TYPE_MOBILE:I = 0x0

.field public static final PREVIEW_TYPE_TABLET:I = 0x2

.field private static volatile _emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;


# instance fields
.field private bitField0_:I

.field private mapHeightPixels_:I

.field private mapWidthPixels_:I

.field private urlHeightPixels_:I

.field private urlPreviewType_:I

.field private urlWidthPixels_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 128
    invoke-virtual {p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->clear()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 129
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 2

    .prologue
    .line 19
    sget-object v0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    if-nez v0, :cond_1

    .line 20
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 22
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    if-nez v0, :cond_0

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    sput-object v0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    .line 25
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->_emptyArray:[Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    return-object v0

    .line 25
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 235
    new-instance v0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    invoke-direct {v0}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 2

    .prologue
    const/16 v1, 0x190

    const/4 v0, 0x0

    .line 132
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    .line 133
    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlWidthPixels_:I

    .line 134
    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlHeightPixels_:I

    .line 135
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlPreviewType_:I

    .line 136
    const/16 v0, 0x280

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapWidthPixels_:I

    .line 137
    const/16 v0, 0x140

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapHeightPixels_:I

    .line 138
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->cachedSize:I

    .line 139
    return-object p0
.end method

.method public clearMapHeightPixels()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1

    .prologue
    .line 122
    const/16 v0, 0x140

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapHeightPixels_:I

    .line 123
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    .line 124
    return-object p0
.end method

.method public clearMapWidthPixels()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1

    .prologue
    .line 103
    const/16 v0, 0x280

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapWidthPixels_:I

    .line 104
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    .line 105
    return-object p0
.end method

.method public clearUrlHeightPixels()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1

    .prologue
    .line 65
    const/16 v0, 0x190

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlHeightPixels_:I

    .line 66
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    .line 67
    return-object p0
.end method

.method public clearUrlPreviewType()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlPreviewType_:I

    .line 85
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    .line 86
    return-object p0
.end method

.method public clearUrlWidthPixels()Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1

    .prologue
    .line 46
    const/16 v0, 0x190

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlWidthPixels_:I

    .line 47
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    .line 48
    return-object p0
.end method

.method public getMapHeightPixels()I
    .locals 1

    .prologue
    .line 111
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapHeightPixels_:I

    return v0
.end method

.method public getMapWidthPixels()I
    .locals 1

    .prologue
    .line 92
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapWidthPixels_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 164
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 165
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 166
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlWidthPixels_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 169
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 170
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlHeightPixels_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 173
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 174
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlPreviewType_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 177
    :cond_2
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 178
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapWidthPixels_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 181
    :cond_3
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 182
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapHeightPixels_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 185
    :cond_4
    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->cachedSize:I

    .line 186
    return v0
.end method

.method public getUrlHeightPixels()I
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlHeightPixels_:I

    return v0
.end method

.method public getUrlPreviewType()I
    .locals 1

    .prologue
    .line 73
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlPreviewType_:I

    return v0
.end method

.method public getUrlWidthPixels()I
    .locals 1

    .prologue
    .line 35
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlWidthPixels_:I

    return v0
.end method

.method public hasMapHeightPixels()Z
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMapWidthPixels()Z
    .locals 1

    .prologue
    .line 100
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrlHeightPixels()Z
    .locals 1

    .prologue
    .line 62
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrlPreviewType()Z
    .locals 1

    .prologue
    .line 81
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasUrlWidthPixels()Z
    .locals 1

    .prologue
    .line 43
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 8
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 194
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 195
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 199
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 200
    :sswitch_0
    return-object p0

    .line 205
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlWidthPixels_:I

    .line 206
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    goto :goto_0

    .line 210
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlHeightPixels_:I

    .line 211
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    goto :goto_0

    .line 215
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlPreviewType_:I

    .line 216
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    goto :goto_0

    .line 220
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapWidthPixels_:I

    .line 221
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    goto :goto_0

    .line 225
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapHeightPixels_:I

    .line 226
    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    goto :goto_0

    .line 195
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
    .end sparse-switch
.end method

.method public setMapHeightPixels(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 114
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapHeightPixels_:I

    .line 115
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    .line 116
    return-object p0
.end method

.method public setMapWidthPixels(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 95
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapWidthPixels_:I

    .line 96
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    .line 97
    return-object p0
.end method

.method public setUrlHeightPixels(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 57
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlHeightPixels_:I

    .line 58
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    .line 59
    return-object p0
.end method

.method public setUrlPreviewType(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 76
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlPreviewType_:I

    .line 77
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    .line 78
    return-object p0
.end method

.method public setUrlWidthPixels(I)Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 38
    iput p1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlWidthPixels_:I

    .line 39
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    .line 40
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
    .line 145
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 146
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlWidthPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 148
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 149
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlHeightPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 151
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 152
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->urlPreviewType_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 154
    :cond_2
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 155
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapWidthPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 157
    :cond_3
    iget v0, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 158
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/majel/proto/ClientInfoProtos$PreviewParams;->mapHeightPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 160
    :cond_4
    return-void
.end method

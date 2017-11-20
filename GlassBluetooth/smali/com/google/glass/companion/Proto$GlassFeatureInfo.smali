.class public final Lcom/google/glass/companion/Proto$GlassFeatureInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassFeatureInfo"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassFeatureInfo;


# instance fields
.field private bitField0_:I

.field private isMediaRemoteControlEnabled_:Z

.field private isWallpaperFeatureEnabled_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 7869
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    sput-object v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->EMPTY_ARRAY:[Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 7870
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 7875
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 7894
    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    .line 7870
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 8000
    new-instance v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 7994
    new-instance v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    return-object v0
.end method


# virtual methods
.method public clearIsMediaRemoteControlEnabled()Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 1

    .prologue
    .line 7907
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    .line 7908
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    .line 7909
    return-object p0
.end method

.method public clearIsWallpaperFeatureEnabled()Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 1

    .prologue
    .line 7888
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 7889
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    .line 7890
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 7914
    if-ne p1, p0, :cond_1

    .line 7919
    :cond_0
    :goto_0
    return v1

    .line 7915
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 7916
    check-cast v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    .line 7917
    .local v0, "other":Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 7919
    goto :goto_0

    .line 7917
    :cond_4
    iget-object v3, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    .line 7919
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getIsMediaRemoteControlEnabled()Z
    .locals 1

    .prologue
    .line 7896
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    return v0
.end method

.method public getIsWallpaperFeatureEnabled()Z
    .locals 1

    .prologue
    .line 7877
    iget-boolean v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    return v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 7944
    const/4 v0, 0x0

    .line 7945
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 7946
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 7947
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7949
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 7950
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    .line 7951
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 7953
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 7954
    iput v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->cachedSize:I

    .line 7955
    return v0
.end method

.method public hasIsMediaRemoteControlEnabled()Z
    .locals 1

    .prologue
    .line 7904
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasIsWallpaperFeatureEnabled()Z
    .locals 1

    .prologue
    .line 7885
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

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
    .locals 5

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    .line 7923
    const/16 v0, 0x11

    .line 7924
    .local v0, "result":I
    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    if-eqz v1, :cond_0

    move v1, v2

    :goto_0
    add-int/lit16 v0, v1, 0x20f

    .line 7925
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    if-eqz v4, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 7926
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_2

    const/4 v1, 0x0

    :goto_2
    add-int v0, v2, v1

    .line 7927
    return v0

    :cond_0
    move v1, v3

    .line 7924
    goto :goto_0

    :cond_1
    move v2, v3

    .line 7925
    goto :goto_1

    .line 7926
    :cond_2
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 7963
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 7964
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 7968
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 7969
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    .line 7972
    :cond_1
    iget-object v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 7974
    :sswitch_0
    return-object p0

    .line 7979
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 7980
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    goto :goto_0

    .line 7984
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    .line 7985
    iget v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    goto :goto_0

    .line 7964
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
    .line 7866
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/Proto$GlassFeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public setIsMediaRemoteControlEnabled(Z)Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 7899
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    .line 7900
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    .line 7901
    return-object p0
.end method

.method public setIsWallpaperFeatureEnabled(Z)Lcom/google/glass/companion/Proto$GlassFeatureInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 7880
    iput-boolean p1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 7881
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    .line 7882
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
    .line 7932
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 7933
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7935
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 7936
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 7938
    :cond_1
    iget-object v0, p0, Lcom/google/glass/companion/Proto$GlassFeatureInfo;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 7940
    return-void
.end method

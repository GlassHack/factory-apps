.class public final Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "Proto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/glass/companion/nano/Proto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GlassFeatureInfo"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;


# instance fields
.field private bitField0_:I

.field private isMediaRemoteControlEnabled_:Z

.field private isWallpaperFeatureEnabled_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9109
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 9110
    invoke-virtual {p0}, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->clear()Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    .line 9111
    return-void
.end method

.method public static emptyArray()[Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;
    .locals 2

    .prologue
    .line 9056
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    if-nez v0, :cond_1

    .line 9057
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 9059
    :try_start_0
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    if-nez v0, :cond_0

    .line 9060
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    sput-object v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    .line 9062
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9064
    :cond_1
    sget-object v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->_emptyArray:[Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    return-object v0

    .line 9062
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9220
    new-instance v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 9214
    new-instance v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    invoke-direct {v0}, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 9114
    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    .line 9115
    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 9116
    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    .line 9117
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9118
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->cachedSize:I

    .line 9119
    return-object p0
.end method

.method public clearIsMediaRemoteControlEnabled()Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;
    .locals 1

    .prologue
    .line 9097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    .line 9098
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    .line 9099
    return-object p0
.end method

.method public clearIsWallpaperFeatureEnabled()Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;
    .locals 1

    .prologue
    .line 9078
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 9079
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    .line 9080
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 9171
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 9172
    .local v0, "size":I
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 9173
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 9174
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9176
    :cond_0
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 9177
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    .line 9178
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 9180
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 9124
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 9142
    :cond_0
    :goto_0
    return v1

    .line 9127
    :cond_1
    instance-of v3, p1, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 9130
    check-cast v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    .line 9131
    .local v0, "other":Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    if-ne v3, v4, :cond_0

    .line 9135
    iget v3, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    iget-boolean v4, v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    if-ne v3, v4, :cond_0

    .line 9139
    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 9140
    :cond_2
    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 9142
    :cond_4
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getIsMediaRemoteControlEnabled()Z
    .locals 1

    .prologue
    .line 9091
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    return v0
.end method

.method public getIsWallpaperFeatureEnabled()Z
    .locals 1

    .prologue
    .line 9072
    iget-boolean v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    return v0
.end method

.method public hasIsMediaRemoteControlEnabled()Z
    .locals 1

    .prologue
    .line 9094
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

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
    .line 9075
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

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
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    .line 9147
    const/16 v0, 0x11

    .line 9148
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 9149
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 9150
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    if-eqz v4, :cond_2

    :goto_1
    add-int v0, v1, v2

    .line 9151
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 9152
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 9153
    :goto_2
    add-int v0, v2, v1

    .line 9154
    return v0

    :cond_1
    move v1, v3

    .line 9149
    goto :goto_0

    :cond_2
    move v2, v3

    .line 9150
    goto :goto_1

    .line 9153
    :cond_3
    iget-object v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 9188
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 9189
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 9193
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9194
    :sswitch_0
    return-object p0

    .line 9199
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 9200
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    goto :goto_0

    .line 9204
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    .line 9205
    iget v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    goto :goto_0

    .line 9189
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
    .line 9050
    invoke-virtual {p0, p1}, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;

    move-result-object v0

    return-object v0
.end method

.method public setIsMediaRemoteControlEnabled(Z)Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 9102
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    .line 9103
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    .line 9104
    return-object p0
.end method

.method public setIsWallpaperFeatureEnabled(Z)Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 9083
    iput-boolean p1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    .line 9084
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    .line 9085
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
    .line 9160
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 9161
    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isWallpaperFeatureEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9163
    :cond_0
    iget v0, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 9164
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/glass/companion/nano/Proto$GlassFeatureInfo;->isMediaRemoteControlEnabled_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 9166
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 9167
    return-void
.end method

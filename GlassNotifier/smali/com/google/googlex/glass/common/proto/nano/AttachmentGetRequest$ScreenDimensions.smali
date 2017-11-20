.class public final Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AttachmentGetRequest.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ScreenDimensions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;


# instance fields
.field private bitField0_:I

.field private heightPixels_:I

.field private widthPixels_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 69
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->clear()Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    .line 70
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
    .locals 2

    .prologue
    .line 15
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    if-nez v0, :cond_1

    .line 16
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    if-nez v0, :cond_0

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    .line 21
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    return-object v0

    .line 21
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 179
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 173
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 73
    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    .line 74
    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 75
    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 76
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 77
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->cachedSize:I

    .line 78
    return-object p0
.end method

.method public clearHeightPixels()Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 57
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public clearWidthPixels()Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
    .locals 1

    .prologue
    .line 37
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 38
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    .line 39
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 130
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 131
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 132
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 133
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 135
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 136
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 137
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 139
    :cond_1
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 83
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 101
    :cond_0
    :goto_0
    return v1

    .line 86
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 89
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    .line 90
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    if-ne v3, v4, :cond_0

    .line 94
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    if-ne v3, v4, :cond_0

    .line 98
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 99
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 101
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getHeightPixels()I
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    return v0
.end method

.method public getWidthPixels()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    return v0
.end method

.method public hasHeightPixels()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

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
    .line 34
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

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
    .line 106
    const/16 v0, 0x11

    .line 107
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 108
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    add-int v0, v1, v2

    .line 109
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    add-int v0, v1, v2

    .line 110
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 111
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 112
    :goto_0
    add-int v0, v2, v1

    .line 113
    return v0

    .line 112
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 147
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 148
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 152
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 153
    :sswitch_0
    return-object p0

    .line 158
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 159
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    goto :goto_0

    .line 163
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 164
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    goto :goto_0

    .line 148
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
    .line 9
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;

    move-result-object v0

    return-object v0
.end method

.method public setHeightPixels(I)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 61
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    .line 62
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public setWidthPixels(I)Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 42
    iput p1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    .line 44
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
    .line 119
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 120
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->widthPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 122
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/AttachmentGetRequest$ScreenDimensions;->heightPixels_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 125
    :cond_1
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 126
    return-void
.end method

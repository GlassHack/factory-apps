.class public final Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AdminNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/googlex/glass/common/proto/AdminNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WipeConfirmationResponse"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse$Status;
    }
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;


# instance fields
.field private bitField0_:I

.field private status_:I

.field private wipeExternalStorage_:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;

    sput-object v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->EMPTY_ARRAY:[Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 167
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->status_:I

    .line 186
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->wipeExternalStorage_:Z

    .line 157
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 298
    new-instance v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 292
    new-instance v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;

    return-object v0
.end method


# virtual methods
.method public clearStatus()Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;
    .locals 1

    .prologue
    .line 180
    const/4 v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->status_:I

    .line 181
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    .line 182
    return-object p0
.end method

.method public clearWipeExternalStorage()Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;
    .locals 1

    .prologue
    .line 199
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->wipeExternalStorage_:Z

    .line 200
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    .line 201
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 206
    if-ne p1, p0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return v1

    .line 207
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 208
    check-cast v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;

    .line 209
    .local v0, "other":Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->status_:I

    iget v4, v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->status_:I

    if-ne v3, v4, :cond_3

    iget-boolean v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->wipeExternalStorage_:Z

    iget-boolean v4, v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->wipeExternalStorage_:Z

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 211
    goto :goto_0

    .line 209
    :cond_4
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->unknownFieldData:Ljava/util/List;

    .line 211
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 238
    const/4 v1, 0x1

    iget v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->status_:I

    .line 239
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 241
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 242
    const/4 v1, 0x2

    iget-boolean v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->wipeExternalStorage_:Z

    .line 243
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 245
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 246
    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->cachedSize:I

    .line 247
    return v0
.end method

.method public getStatus()I
    .locals 1

    .prologue
    .line 169
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->status_:I

    return v0
.end method

.method public getWipeExternalStorage()Z
    .locals 1

    .prologue
    .line 188
    iget-boolean v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->wipeExternalStorage_:Z

    return v0
.end method

.method public hasStatus()Z
    .locals 1

    .prologue
    .line 177
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasWipeExternalStorage()Z
    .locals 1

    .prologue
    .line 196
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

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
    .line 215
    const/16 v0, 0x11

    .line 216
    .local v0, "result":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->status_:I

    add-int/lit16 v0, v1, 0x20f

    .line 217
    mul-int/lit8 v2, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->wipeExternalStorage_:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    add-int v0, v2, v1

    .line 218
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    :goto_1
    add-int v0, v2, v1

    .line 219
    return v0

    .line 217
    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    .line 218
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 255
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 256
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 260
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    .line 261
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->unknownFieldData:Ljava/util/List;

    .line 264
    :cond_1
    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v2, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v2

    if-nez v2, :cond_0

    .line 266
    :sswitch_0
    return-object p0

    .line 271
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    .line 272
    .local v1, "temp":I
    if-eqz v1, :cond_2

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 274
    :cond_2
    iput v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->status_:I

    .line 275
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    goto :goto_0

    .line 277
    :cond_3
    const/4 v2, 0x0

    iput v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->status_:I

    goto :goto_0

    .line 282
    .end local v1    # "temp":I
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v2

    iput-boolean v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->wipeExternalStorage_:Z

    .line 283
    iget v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    goto :goto_0

    .line 256
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
    .line 153
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;

    move-result-object v0

    return-object v0
.end method

.method public setStatus(I)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 172
    iput p1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->status_:I

    .line 173
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    .line 174
    return-object p0
.end method

.method public setWipeExternalStorage(Z)Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 191
    iput-boolean p1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->wipeExternalStorage_:Z

    .line 192
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    .line 193
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
    .line 224
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 225
    const/4 v0, 0x1

    iget v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->status_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 227
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 228
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->wipeExternalStorage_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/AdminNano$WipeConfirmationResponse;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 232
    return-void
.end method

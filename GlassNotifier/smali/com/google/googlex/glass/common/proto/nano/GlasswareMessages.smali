.class public final Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlasswareMessages.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;


# instance fields
.field private bitField0_:I

.field private description_:Ljava/lang/String;

.field private locale_:Ljava/lang/String;

.field private moreInfoTitle_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private permissions_:Ljava/lang/String;

.field private shortDescription_:Ljava/lang/String;

.field private speakableName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 182
    invoke-virtual {p0}, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->clear()Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;

    .line 183
    return-void
.end method

.method public static emptyArray()[Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;

    sput-object v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->_emptyArray:[Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;

    return-object v0

    .line 18
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 376
    new-instance v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;

    invoke-direct {v0}, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1

    .prologue
    .line 186
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 187
    const-string v0, "en_US"

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->locale_:Ljava/lang/String;

    .line 188
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->name_:Ljava/lang/String;

    .line 189
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->description_:Ljava/lang/String;

    .line 190
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->shortDescription_:Ljava/lang/String;

    .line 191
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    .line 192
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->permissions_:Ljava/lang/String;

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->speakableName_:Ljava/lang/String;

    .line 194
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 195
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->cachedSize:I

    .line 196
    return-object p0
.end method

.method public clearDescription()Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1

    .prologue
    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->description_:Ljava/lang/String;

    .line 79
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 80
    return-object p0
.end method

.method public clearLocale()Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1

    .prologue
    .line 34
    const-string v0, "en_US"

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->locale_:Ljava/lang/String;

    .line 35
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearMoreInfoTitle()Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1

    .prologue
    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    .line 123
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 124
    return-object p0
.end method

.method public clearName()Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1

    .prologue
    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->name_:Ljava/lang/String;

    .line 57
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public clearPermissions()Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1

    .prologue
    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->permissions_:Ljava/lang/String;

    .line 145
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 146
    return-object p0
.end method

.method public clearShortDescription()Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1

    .prologue
    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->shortDescription_:Ljava/lang/String;

    .line 101
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 102
    return-object p0
.end method

.method public clearSpeakableName()Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1

    .prologue
    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->speakableName_:Ljava/lang/String;

    .line 167
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 168
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 3

    .prologue
    .line 288
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 289
    .local v0, "size":I
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 290
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->locale_:Ljava/lang/String;

    .line 291
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 293
    :cond_0
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 294
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->name_:Ljava/lang/String;

    .line 295
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 297
    :cond_1
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 298
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->description_:Ljava/lang/String;

    .line 299
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 301
    :cond_2
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 302
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->shortDescription_:Ljava/lang/String;

    .line 303
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 305
    :cond_3
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 306
    const/4 v1, 0x5

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    .line 307
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 309
    :cond_4
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 310
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->permissions_:Ljava/lang/String;

    .line 311
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 313
    :cond_5
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 314
    const/4 v1, 0x7

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->speakableName_:Ljava/lang/String;

    .line 315
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 317
    :cond_6
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 201
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 239
    :cond_0
    :goto_0
    return v1

    .line 204
    :cond_1
    instance-of v3, p1, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 207
    check-cast v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;

    .line 208
    .local v0, "other":Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->locale_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->locale_:Ljava/lang/String;

    .line 209
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->name_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->name_:Ljava/lang/String;

    .line 213
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 216
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->description_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->description_:Ljava/lang/String;

    .line 217
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->shortDescription_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->shortDescription_:Ljava/lang/String;

    .line 221
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 224
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    .line 225
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 228
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->permissions_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->permissions_:Ljava/lang/String;

    .line 229
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 232
    iget v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->speakableName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->speakableName_:Ljava/lang/String;

    .line 233
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 236
    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 237
    :cond_2
    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 239
    :cond_4
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getMoreInfoTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPermissions()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->permissions_:Ljava/lang/String;

    return-object v0
.end method

.method public getShortDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->shortDescription_:Ljava/lang/String;

    return-object v0
.end method

.method public getSpeakableName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->speakableName_:Ljava/lang/String;

    return-object v0
.end method

.method public hasDescription()Z
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLocale()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasMoreInfoTitle()Z
    .locals 1

    .prologue
    .line 119
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasName()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPermissions()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShortDescription()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSpeakableName()Z
    .locals 1

    .prologue
    .line 163
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

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
    .line 244
    const/16 v0, 0x11

    .line 245
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 246
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->locale_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 247
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->name_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 248
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->description_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 249
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->shortDescription_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 250
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 251
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->permissions_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 252
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->speakableName_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 253
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 254
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 255
    :goto_0
    add-int v0, v2, v1

    .line 256
    return v0

    .line 255
    :cond_1
    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 2
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 325
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 326
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 330
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 331
    :sswitch_0
    return-object p0

    .line 336
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->locale_:Ljava/lang/String;

    .line 337
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 341
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->name_:Ljava/lang/String;

    .line 342
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 346
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->description_:Ljava/lang/String;

    .line 347
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 351
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->shortDescription_:Ljava/lang/String;

    .line 352
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 356
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    .line 357
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 361
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->permissions_:Ljava/lang/String;

    .line 362
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 366
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->speakableName_:Ljava/lang/String;

    .line 367
    iget v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    goto :goto_0

    .line 326
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;

    move-result-object v0

    return-object v0
.end method

.method public setDescription(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 83
    if-nez p1, :cond_0

    .line 84
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 86
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->description_:Ljava/lang/String;

    .line 87
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 88
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 39
    if-nez p1, :cond_0

    .line 40
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 42
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->locale_:Ljava/lang/String;

    .line 43
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setMoreInfoTitle(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 127
    if-nez p1, :cond_0

    .line 128
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 130
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    .line 131
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 132
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 61
    if-nez p1, :cond_0

    .line 62
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 64
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->name_:Ljava/lang/String;

    .line 65
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 66
    return-object p0
.end method

.method public setPermissions(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 149
    if-nez p1, :cond_0

    .line 150
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 152
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->permissions_:Ljava/lang/String;

    .line 153
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 154
    return-object p0
.end method

.method public setShortDescription(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 105
    if-nez p1, :cond_0

    .line 106
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 108
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->shortDescription_:Ljava/lang/String;

    .line 109
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 110
    return-object p0
.end method

.method public setSpeakableName(Ljava/lang/String;)Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 171
    if-nez p1, :cond_0

    .line 172
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 174
    :cond_0
    iput-object p1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->speakableName_:Ljava/lang/String;

    .line 175
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    .line 176
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
    .line 262
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 263
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 265
    :cond_0
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 266
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 268
    :cond_1
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 269
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->description_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 271
    :cond_2
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 272
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->shortDescription_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 274
    :cond_3
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 275
    const/4 v0, 0x5

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->moreInfoTitle_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 277
    :cond_4
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 278
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->permissions_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 280
    :cond_5
    iget v0, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 281
    const/4 v0, 0x7

    iget-object v1, p0, Lcom/google/googlex/glass/common/proto/nano/GlasswareMessages;->speakableName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 283
    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 284
    return-void
.end method

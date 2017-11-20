.class public final Lcom/google/common/logging/nano/GlassExtensionsProto;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "GlassExtensionsProto.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/GlassExtensionsProto;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/GlassExtensionsProto;


# instance fields
.field private bitField0_:I

.field private hardwareVersion_:I

.field private locale_:Ljava/lang/String;

.field private manufacturingBuild_:Ljava/lang/String;

.field private region_:Ljava/lang/String;

.field private sessionId_:Ljava/lang/String;

.field private softwareVersion_:Ljava/lang/String;

.field public userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 160
    invoke-virtual {p0}, Lcom/google/common/logging/nano/GlassExtensionsProto;->clear()Lcom/google/common/logging/nano/GlassExtensionsProto;

    .line 161
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/GlassExtensionsProto;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->_emptyArray:[Lcom/google/common/logging/nano/GlassExtensionsProto;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->_emptyArray:[Lcom/google/common/logging/nano/GlassExtensionsProto;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/GlassExtensionsProto;

    sput-object v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->_emptyArray:[Lcom/google/common/logging/nano/GlassExtensionsProto;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->_emptyArray:[Lcom/google/common/logging/nano/GlassExtensionsProto;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassExtensionsProto;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 400
    new-instance v0, Lcom/google/common/logging/nano/GlassExtensionsProto;

    invoke-direct {v0}, Lcom/google/common/logging/nano/GlassExtensionsProto;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/GlassExtensionsProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/GlassExtensionsProto;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 394
    new-instance v0, Lcom/google/common/logging/nano/GlassExtensionsProto;

    invoke-direct {v0}, Lcom/google/common/logging/nano/GlassExtensionsProto;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/GlassExtensionsProto;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/GlassExtensionsProto;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    .line 165
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    .line 166
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    .line 167
    invoke-static {}, Lcom/google/common/logging/nano/GlassUserEventProto;->emptyArray()[Lcom/google/common/logging/nano/GlassUserEventProto;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    .line 168
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->hardwareVersion_:I

    .line 169
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    .line 170
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->locale_:Ljava/lang/String;

    .line 171
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->region_:Ljava/lang/String;

    .line 172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 173
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->cachedSize:I

    .line 174
    return-object p0
.end method

.method public clearHardwareVersion()Lcom/google/common/logging/nano/GlassExtensionsProto;
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    .line 87
    const/4 v0, 0x7

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->hardwareVersion_:I

    .line 88
    return-object p0
.end method

.method public clearLocale()Lcom/google/common/logging/nano/GlassExtensionsProto;
    .locals 1

    .prologue
    .line 122
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->locale_:Ljava/lang/String;

    .line 123
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    .line 124
    return-object p0
.end method

.method public clearManufacturingBuild()Lcom/google/common/logging/nano/GlassExtensionsProto;
    .locals 1

    .prologue
    .line 100
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    .line 101
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    .line 102
    return-object p0
.end method

.method public clearRegion()Lcom/google/common/logging/nano/GlassExtensionsProto;
    .locals 1

    .prologue
    .line 144
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->region_:Ljava/lang/String;

    .line 145
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    .line 146
    return-object p0
.end method

.method public clearSessionId()Lcom/google/common/logging/nano/GlassExtensionsProto;
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    .line 35
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearSoftwareVersion()Lcom/google/common/logging/nano/GlassExtensionsProto;
    .locals 1

    .prologue
    .line 56
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    .line 57
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    .line 58
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    .prologue
    .line 272
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v2

    .line 273
    .local v2, "size":I
    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    .line 274
    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    .line 275
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 277
    :cond_0
    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1

    .line 278
    const/4 v3, 0x2

    iget-object v4, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    .line 279
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 281
    :cond_1
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    array-length v3, v3

    if-lez v3, :cond_3

    .line 282
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    array-length v3, v3

    if-ge v1, v3, :cond_3

    .line 283
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    aget-object v0, v3, v1

    .line 284
    .local v0, "element":Lcom/google/common/logging/nano/GlassUserEventProto;
    if-eqz v0, :cond_2

    .line 285
    const/4 v3, 0x3

    .line 286
    invoke-static {v3, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v3

    add-int/2addr v2, v3

    .line 282
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 290
    .end local v0    # "element":Lcom/google/common/logging/nano/GlassUserEventProto;
    .end local v1    # "i":I
    :cond_3
    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    if-eqz v3, :cond_4

    .line 291
    const/4 v3, 0x4

    iget v4, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->hardwareVersion_:I

    .line 292
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v3

    add-int/2addr v2, v3

    .line 294
    :cond_4
    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    if-eqz v3, :cond_5

    .line 295
    const/4 v3, 0x5

    iget-object v4, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->locale_:Ljava/lang/String;

    .line 296
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 298
    :cond_5
    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    if-eqz v3, :cond_6

    .line 299
    const/4 v3, 0x6

    iget-object v4, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->region_:Ljava/lang/String;

    .line 300
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 302
    :cond_6
    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_7

    .line 303
    const/4 v3, 0x7

    iget-object v4, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    .line 304
    invoke-static {v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v3

    add-int/2addr v2, v3

    .line 306
    :cond_7
    return v2
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 179
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 217
    :cond_0
    :goto_0
    return v1

    .line 182
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/GlassExtensionsProto;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 185
    check-cast v0, Lcom/google/common/logging/nano/GlassExtensionsProto;

    .line 186
    .local v0, "other":Lcom/google/common/logging/nano/GlassExtensionsProto;
    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    .line 187
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 190
    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    .line 191
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 194
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    invoke-static {v3, v4}, Lcom/google/protobuf/nano/InternalNano;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 198
    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->hardwareVersion_:I

    iget v4, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->hardwareVersion_:I

    if-ne v3, v4, :cond_0

    .line 202
    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    .line 203
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 206
    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->locale_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->locale_:Ljava/lang/String;

    .line 207
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->region_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->region_:Ljava/lang/String;

    .line 211
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 214
    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 215
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 217
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/GlassExtensionsProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getHardwareVersion()I
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->hardwareVersion_:I

    return v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 116
    iget-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getManufacturingBuild()Ljava/lang/String;
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    return-object v0
.end method

.method public getRegion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->region_:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    return-object v0
.end method

.method public getSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    return-object v0
.end method

.method public hasHardwareVersion()Z
    .locals 1

    .prologue
    .line 83
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

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
    .line 119
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasManufacturingBuild()Z
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasRegion()Z
    .locals 1

    .prologue
    .line 141
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSessionId()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasSoftwareVersion()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

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
    .line 222
    const/16 v0, 0x11

    .line 223
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 224
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 225
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 226
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    .line 227
    invoke-static {v2}, Lcom/google/protobuf/nano/InternalNano;->hashCode([Ljava/lang/Object;)I

    move-result v2

    add-int v0, v1, v2

    .line 228
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->hardwareVersion_:I

    add-int v0, v1, v2

    .line 229
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 230
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->locale_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 231
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->region_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 232
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 233
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 234
    :goto_0
    add-int v0, v2, v1

    .line 235
    return v0

    .line 234
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassExtensionsProto;
    .locals 8
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 314
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v4

    .line 315
    .local v4, "tag":I
    sparse-switch v4, :sswitch_data_0

    .line 319
    invoke-super {p0, p1, v4}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v7

    if-nez v7, :cond_0

    .line 320
    :sswitch_0
    return-object p0

    .line 325
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    .line 326
    iget v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x1

    iput v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    goto :goto_0

    .line 330
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    .line 331
    iget v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x2

    iput v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    goto :goto_0

    .line 335
    :sswitch_3
    const/16 v7, 0x1a

    .line 336
    invoke-static {p1, v7}, Lcom/google/protobuf/nano/WireFormatNano;->getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I

    move-result v0

    .line 337
    .local v0, "arrayLength":I
    iget-object v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    if-nez v7, :cond_2

    move v1, v6

    .line 338
    .local v1, "i":I
    :goto_1
    add-int v7, v1, v0

    new-array v3, v7, [Lcom/google/common/logging/nano/GlassUserEventProto;

    .line 340
    .local v3, "newArray":[Lcom/google/common/logging/nano/GlassUserEventProto;
    if-eqz v1, :cond_1

    .line 341
    iget-object v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    invoke-static {v7, v6, v3, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 343
    :cond_1
    :goto_2
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    if-ge v1, v7, :cond_3

    .line 344
    new-instance v7, Lcom/google/common/logging/nano/GlassUserEventProto;

    invoke-direct {v7}, Lcom/google/common/logging/nano/GlassUserEventProto;-><init>()V

    aput-object v7, v3, v1

    .line 345
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 346
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 337
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/common/logging/nano/GlassUserEventProto;
    :cond_2
    iget-object v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    array-length v1, v7

    goto :goto_1

    .line 349
    .restart local v1    # "i":I
    .restart local v3    # "newArray":[Lcom/google/common/logging/nano/GlassUserEventProto;
    :cond_3
    new-instance v7, Lcom/google/common/logging/nano/GlassUserEventProto;

    invoke-direct {v7}, Lcom/google/common/logging/nano/GlassUserEventProto;-><init>()V

    aput-object v7, v3, v1

    .line 350
    aget-object v7, v3, v1

    invoke-virtual {p1, v7}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 351
    iput-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    goto :goto_0

    .line 355
    .end local v0    # "arrayLength":I
    .end local v1    # "i":I
    .end local v3    # "newArray":[Lcom/google/common/logging/nano/GlassUserEventProto;
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v2

    .line 356
    .local v2, "initialPos":I
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v5

    .line 357
    .local v5, "value":I
    packed-switch v5, :pswitch_data_0

    .line 367
    :pswitch_0
    invoke-virtual {p1, v2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 368
    invoke-virtual {p0, p1, v4}, Lcom/google/common/logging/nano/GlassExtensionsProto;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    goto :goto_0

    .line 363
    :pswitch_1
    iput v5, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->hardwareVersion_:I

    .line 364
    iget v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x4

    iput v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    goto/16 :goto_0

    .line 374
    .end local v2    # "initialPos":I
    .end local v5    # "value":I
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->locale_:Ljava/lang/String;

    .line 375
    iget v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x10

    iput v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    goto/16 :goto_0

    .line 379
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->region_:Ljava/lang/String;

    .line 380
    iget v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x20

    iput v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    goto/16 :goto_0

    .line 384
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    .line 385
    iget v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v7, v7, 0x8

    iput v7, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    goto/16 :goto_0

    .line 315
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
        0x20 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
        0x3a -> :sswitch_7
    .end sparse-switch

    .line 357
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/GlassExtensionsProto;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/GlassExtensionsProto;

    move-result-object v0

    return-object v0
.end method

.method public setHardwareVersion(I)Lcom/google/common/logging/nano/GlassExtensionsProto;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 78
    iput p1, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->hardwareVersion_:I

    .line 79
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    .line 80
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/common/logging/nano/GlassExtensionsProto;
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
    iput-object p1, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->locale_:Ljava/lang/String;

    .line 131
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    .line 132
    return-object p0
.end method

.method public setManufacturingBuild(Ljava/lang/String;)Lcom/google/common/logging/nano/GlassExtensionsProto;
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
    iput-object p1, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    .line 109
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    .line 110
    return-object p0
.end method

.method public setRegion(Ljava/lang/String;)Lcom/google/common/logging/nano/GlassExtensionsProto;
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
    iput-object p1, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->region_:Ljava/lang/String;

    .line 153
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    .line 154
    return-object p0
.end method

.method public setSessionId(Ljava/lang/String;)Lcom/google/common/logging/nano/GlassExtensionsProto;
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
    iput-object p1, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    .line 43
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setSoftwareVersion(Ljava/lang/String;)Lcom/google/common/logging/nano/GlassExtensionsProto;
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
    iput-object p1, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    .line 65
    iget v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    .line 66
    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .param p1, "output"    # Lcom/google/protobuf/nano/CodedOutputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 241
    iget v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    .line 242
    const/4 v2, 0x1

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->sessionId_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 244
    :cond_0
    iget v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    .line 245
    const/4 v2, 0x2

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->softwareVersion_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 247
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    array-length v2, v2

    if-lez v2, :cond_3

    .line 248
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 249
    iget-object v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->userEvent:[Lcom/google/common/logging/nano/GlassUserEventProto;

    aget-object v0, v2, v1

    .line 250
    .local v0, "element":Lcom/google/common/logging/nano/GlassUserEventProto;
    if-eqz v0, :cond_2

    .line 251
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    .line 248
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "element":Lcom/google/common/logging/nano/GlassUserEventProto;
    .end local v1    # "i":I
    :cond_3
    iget v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_4

    .line 256
    const/4 v2, 0x4

    iget v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->hardwareVersion_:I

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 258
    :cond_4
    iget v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_5

    .line 259
    const/4 v2, 0x5

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 261
    :cond_5
    iget v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x20

    if-eqz v2, :cond_6

    .line 262
    const/4 v2, 0x6

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->region_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 264
    :cond_6
    iget v2, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->bitField0_:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_7

    .line 265
    const/4 v2, 0x7

    iget-object v3, p0, Lcom/google/common/logging/nano/GlassExtensionsProto;->manufacturingBuild_:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 267
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 268
    return-void
.end method

.class public final Lcom/google/common/logging/nano/HotwordCompilation;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "HotwordCompilation.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/HotwordCompilation;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/HotwordCompilation;


# instance fields
.field private bitField0_:I

.field private clientproxyGetPronsVersion_:I

.field private compilationTime_:J

.field private locale_:Ljava/lang/String;

.field private numHotwordsFromCache_:I

.field private numHotwordsFromNetwork_:I

.field private numHotwordsUnpronounceable_:I

.field private numHotwords_:I

.field private pronDatabaseVersion_:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 183
    invoke-virtual {p0}, Lcom/google/common/logging/nano/HotwordCompilation;->clear()Lcom/google/common/logging/nano/HotwordCompilation;

    .line 184
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/common/logging/nano/HotwordCompilation;->_emptyArray:[Lcom/google/common/logging/nano/HotwordCompilation;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/HotwordCompilation;->_emptyArray:[Lcom/google/common/logging/nano/HotwordCompilation;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/HotwordCompilation;

    sput-object v0, Lcom/google/common/logging/nano/HotwordCompilation;->_emptyArray:[Lcom/google/common/logging/nano/HotwordCompilation;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/HotwordCompilation;->_emptyArray:[Lcom/google/common/logging/nano/HotwordCompilation;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 401
    new-instance v0, Lcom/google/common/logging/nano/HotwordCompilation;

    invoke-direct {v0}, Lcom/google/common/logging/nano/HotwordCompilation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/HotwordCompilation;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/HotwordCompilation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 395
    new-instance v0, Lcom/google/common/logging/nano/HotwordCompilation;

    invoke-direct {v0}, Lcom/google/common/logging/nano/HotwordCompilation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/HotwordCompilation;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 187
    iput v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 188
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->compilationTime_:J

    .line 189
    iput v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwords_:I

    .line 190
    iput v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromCache_:I

    .line 191
    iput v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromNetwork_:I

    .line 192
    iput v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsUnpronounceable_:I

    .line 193
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->locale_:Ljava/lang/String;

    .line 194
    iput v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->pronDatabaseVersion_:I

    .line 195
    iput v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->clientproxyGetPronsVersion_:I

    .line 196
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 197
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->cachedSize:I

    .line 198
    return-object p0
.end method

.method public clearClientproxyGetPronsVersion()Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1

    .prologue
    .line 170
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->clientproxyGetPronsVersion_:I

    .line 171
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 172
    return-object p0
.end method

.method public clearCompilationTime()Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 2

    .prologue
    .line 34
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->compilationTime_:J

    .line 35
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearLocale()Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1

    .prologue
    .line 129
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->locale_:Ljava/lang/String;

    .line 130
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 131
    return-object p0
.end method

.method public clearNumHotwords()Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1

    .prologue
    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwords_:I

    .line 54
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 55
    return-object p0
.end method

.method public clearNumHotwordsFromCache()Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromCache_:I

    .line 73
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 74
    return-object p0
.end method

.method public clearNumHotwordsFromNetwork()Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromNetwork_:I

    .line 92
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 93
    return-object p0
.end method

.method public clearNumHotwordsUnpronounceable()Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1

    .prologue
    .line 110
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsUnpronounceable_:I

    .line 111
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 112
    return-object p0
.end method

.method public clearPronDatabaseVersion()Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->pronDatabaseVersion_:I

    .line 152
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 153
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 298
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 299
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 300
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->compilationTime_:J

    .line 301
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 303
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 304
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwords_:I

    .line 305
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 307
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 308
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromCache_:I

    .line 309
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 311
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 312
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromNetwork_:I

    .line 313
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 315
    :cond_3
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 316
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsUnpronounceable_:I

    .line 317
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 319
    :cond_4
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 320
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->locale_:Ljava/lang/String;

    .line 321
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 323
    :cond_5
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 324
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->pronDatabaseVersion_:I

    .line 325
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 327
    :cond_6
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 328
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->clientproxyGetPronsVersion_:I

    .line 329
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 331
    :cond_7
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 203
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 245
    :cond_0
    :goto_0
    return v1

    .line 206
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/HotwordCompilation;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 209
    check-cast v0, Lcom/google/common/logging/nano/HotwordCompilation;

    .line 210
    .local v0, "other":Lcom/google/common/logging/nano/HotwordCompilation;
    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/HotwordCompilation;->compilationTime_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/HotwordCompilation;->compilationTime_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 214
    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwords_:I

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwords_:I

    if-ne v3, v4, :cond_0

    .line 218
    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromCache_:I

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromCache_:I

    if-ne v3, v4, :cond_0

    .line 222
    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromNetwork_:I

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromNetwork_:I

    if-ne v3, v4, :cond_0

    .line 226
    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v3, v3, 0x10

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v4, v4, 0x10

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsUnpronounceable_:I

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsUnpronounceable_:I

    if-ne v3, v4, :cond_0

    .line 230
    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v3, v3, 0x20

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v4, v4, 0x20

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->locale_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->locale_:Ljava/lang/String;

    .line 231
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 234
    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v3, v3, 0x40

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v4, v4, 0x40

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->pronDatabaseVersion_:I

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->pronDatabaseVersion_:I

    if-ne v3, v4, :cond_0

    .line 238
    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit16 v3, v3, 0x80

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit16 v4, v4, 0x80

    if-ne v3, v4, :cond_0

    iget v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->clientproxyGetPronsVersion_:I

    iget v4, v0, Lcom/google/common/logging/nano/HotwordCompilation;->clientproxyGetPronsVersion_:I

    if-ne v3, v4, :cond_0

    .line 242
    iget-object v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/HotwordCompilation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 243
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/HotwordCompilation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/HotwordCompilation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto/16 :goto_0

    .line 245
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/HotwordCompilation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto/16 :goto_0
.end method

.method public getClientproxyGetPronsVersion()I
    .locals 1

    .prologue
    .line 164
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->clientproxyGetPronsVersion_:I

    return v0
.end method

.method public getCompilationTime()J
    .locals 2

    .prologue
    .line 28
    iget-wide v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->compilationTime_:J

    return-wide v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumHotwords()I
    .locals 1

    .prologue
    .line 47
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwords_:I

    return v0
.end method

.method public getNumHotwordsFromCache()I
    .locals 1

    .prologue
    .line 66
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromCache_:I

    return v0
.end method

.method public getNumHotwordsFromNetwork()I
    .locals 1

    .prologue
    .line 85
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromNetwork_:I

    return v0
.end method

.method public getNumHotwordsUnpronounceable()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsUnpronounceable_:I

    return v0
.end method

.method public getPronDatabaseVersion()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->pronDatabaseVersion_:I

    return v0
.end method

.method public hasClientproxyGetPronsVersion()Z
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompilationTime()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

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
    .line 126
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumHotwords()Z
    .locals 1

    .prologue
    .line 50
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumHotwordsFromCache()Z
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumHotwordsFromNetwork()Z
    .locals 1

    .prologue
    .line 88
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasNumHotwordsUnpronounceable()Z
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPronDatabaseVersion()Z
    .locals 1

    .prologue
    .line 148
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

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
    .locals 7

    .prologue
    .line 250
    const/16 v0, 0x11

    .line 251
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 252
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->compilationTime_:J

    iget-wide v4, p0, Lcom/google/common/logging/nano/HotwordCompilation;->compilationTime_:J

    const/16 v6, 0x20

    ushr-long/2addr v4, v6

    xor-long/2addr v2, v4

    long-to-int v2, v2

    add-int v0, v1, v2

    .line 253
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwords_:I

    add-int v0, v1, v2

    .line 254
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromCache_:I

    add-int v0, v1, v2

    .line 255
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromNetwork_:I

    add-int v0, v1, v2

    .line 256
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsUnpronounceable_:I

    add-int v0, v1, v2

    .line 257
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->locale_:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v2

    add-int v0, v1, v2

    .line 258
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->pronDatabaseVersion_:I

    add-int v0, v1, v2

    .line 259
    mul-int/lit8 v1, v0, 0x1f

    iget v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->clientproxyGetPronsVersion_:I

    add-int v0, v1, v2

    .line 260
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 261
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x0

    .line 262
    :goto_0
    add-int v0, v2, v1

    .line 263
    return v0

    .line 262
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 339
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 340
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 344
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    :sswitch_0
    return-object p0

    .line 350
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->compilationTime_:J

    .line 351
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 355
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwords_:I

    .line 356
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 360
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromCache_:I

    .line 361
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 365
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromNetwork_:I

    .line 366
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 370
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsUnpronounceable_:I

    .line 371
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 375
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->locale_:Ljava/lang/String;

    .line 376
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 380
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->pronDatabaseVersion_:I

    .line 381
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 385
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->clientproxyGetPronsVersion_:I

    .line 386
    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 340
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
        0x28 -> :sswitch_5
        0x32 -> :sswitch_6
        0x38 -> :sswitch_7
        0x40 -> :sswitch_8
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
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/HotwordCompilation;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/HotwordCompilation;

    move-result-object v0

    return-object v0
.end method

.method public setClientproxyGetPronsVersion(I)Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 175
    iput p1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->clientproxyGetPronsVersion_:I

    .line 176
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 177
    return-object p0
.end method

.method public setCompilationTime(J)Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 39
    iput-wide p1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->compilationTime_:J

    .line 40
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 41
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 134
    if-nez p1, :cond_0

    .line 135
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 137
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->locale_:Ljava/lang/String;

    .line 138
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 139
    return-object p0
.end method

.method public setNumHotwords(I)Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwords_:I

    .line 59
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 60
    return-object p0
.end method

.method public setNumHotwordsFromCache(I)Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromCache_:I

    .line 78
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 79
    return-object p0
.end method

.method public setNumHotwordsFromNetwork(I)Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromNetwork_:I

    .line 97
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 98
    return-object p0
.end method

.method public setNumHotwordsUnpronounceable(I)Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 115
    iput p1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsUnpronounceable_:I

    .line 116
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 117
    return-object p0
.end method

.method public setPronDatabaseVersion(I)Lcom/google/common/logging/nano/HotwordCompilation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->pronDatabaseVersion_:I

    .line 157
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    .line 158
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
    .line 269
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 270
    const/4 v0, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/nano/HotwordCompilation;->compilationTime_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 272
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 273
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwords_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 275
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 276
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromCache_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 278
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 279
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsFromNetwork_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 281
    :cond_3
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 282
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->numHotwordsUnpronounceable_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 284
    :cond_4
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 285
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 287
    :cond_5
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 288
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->pronDatabaseVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 290
    :cond_6
    iget v0, p0, Lcom/google/common/logging/nano/HotwordCompilation;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 291
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/common/logging/nano/HotwordCompilation;->clientproxyGetPronsVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 293
    :cond_7
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 294
    return-void
.end method

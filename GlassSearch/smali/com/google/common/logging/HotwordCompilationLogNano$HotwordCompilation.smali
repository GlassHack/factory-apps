.class public final Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "HotwordCompilationLogNano.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/logging/HotwordCompilationLogNano;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "HotwordCompilation"
.end annotation


# static fields
.field public static final EMPTY_ARRAY:[Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;


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
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    sput-object v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->EMPTY_ARRAY:[Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 15
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->compilationTime_:J

    .line 34
    iput v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwords_:I

    .line 53
    iput v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromCache_:I

    .line 72
    iput v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromNetwork_:I

    .line 91
    iput v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsUnpronounceable_:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->locale_:Ljava/lang/String;

    .line 132
    iput v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->pronDatabaseVersion_:I

    .line 151
    iput v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->clientproxyGetPronsVersion_:I

    .line 10
    return-void
.end method

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 341
    new-instance v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    invoke-direct {v0}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 335
    new-instance v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    invoke-direct {v0}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    return-object v0
.end method


# virtual methods
.method public clearClientproxyGetPronsVersion()Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1

    .prologue
    .line 164
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->clientproxyGetPronsVersion_:I

    .line 165
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 166
    return-object p0
.end method

.method public clearCompilationTime()Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 2

    .prologue
    .line 28
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->compilationTime_:J

    .line 29
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 30
    return-object p0
.end method

.method public clearLocale()Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1

    .prologue
    .line 126
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->locale_:Ljava/lang/String;

    .line 127
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 128
    return-object p0
.end method

.method public clearNumHotwords()Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwords_:I

    .line 48
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 49
    return-object p0
.end method

.method public clearNumHotwordsFromCache()Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromCache_:I

    .line 67
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 68
    return-object p0
.end method

.method public clearNumHotwordsFromNetwork()Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromNetwork_:I

    .line 86
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 87
    return-object p0
.end method

.method public clearNumHotwordsUnpronounceable()Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1

    .prologue
    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsUnpronounceable_:I

    .line 105
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 106
    return-object p0
.end method

.method public clearPronDatabaseVersion()Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1

    .prologue
    .line 145
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->pronDatabaseVersion_:I

    .line 146
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 147
    return-object p0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 171
    if-ne p1, p0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v1

    .line 172
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    if-nez v3, :cond_2

    move v1, v2

    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 173
    check-cast v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    .line 174
    .local v0, "other":Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    iget-wide v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->compilationTime_:J

    iget-wide v5, v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->compilationTime_:J

    cmp-long v3, v3, v5

    if-nez v3, :cond_3

    iget v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwords_:I

    iget v4, v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwords_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromCache_:I

    iget v4, v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromCache_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromNetwork_:I

    iget v4, v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromNetwork_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsUnpronounceable_:I

    iget v4, v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsUnpronounceable_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->locale_:Ljava/lang/String;

    if-nez v3, :cond_4

    iget-object v3, v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->locale_:Ljava/lang/String;

    if-nez v3, :cond_3

    .line 179
    :goto_1
    iget v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->pronDatabaseVersion_:I

    iget v4, v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->pronDatabaseVersion_:I

    if-ne v3, v4, :cond_3

    iget v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->clientproxyGetPronsVersion_:I

    iget v4, v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->clientproxyGetPronsVersion_:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_5

    iget-object v3, v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->unknownFieldData:Ljava/util/List;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    .line 182
    goto :goto_0

    .line 174
    :cond_4
    iget-object v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->locale_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->locale_:Ljava/lang/String;

    .line 179
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->unknownFieldData:Ljava/util/List;

    iget-object v4, v0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->unknownFieldData:Ljava/util/List;

    .line 182
    invoke-interface {v3, v4}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getClientproxyGetPronsVersion()I
    .locals 1

    .prologue
    .line 153
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->clientproxyGetPronsVersion_:I

    return v0
.end method

.method public getCompilationTime()J
    .locals 2

    .prologue
    .line 17
    iget-wide v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->compilationTime_:J

    return-wide v0
.end method

.method public getLocale()Ljava/lang/String;
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->locale_:Ljava/lang/String;

    return-object v0
.end method

.method public getNumHotwords()I
    .locals 1

    .prologue
    .line 36
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwords_:I

    return v0
.end method

.method public getNumHotwordsFromCache()I
    .locals 1

    .prologue
    .line 55
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromCache_:I

    return v0
.end method

.method public getNumHotwordsFromNetwork()I
    .locals 1

    .prologue
    .line 74
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromNetwork_:I

    return v0
.end method

.method public getNumHotwordsUnpronounceable()I
    .locals 1

    .prologue
    .line 93
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsUnpronounceable_:I

    return v0
.end method

.method public getPronDatabaseVersion()I
    .locals 1

    .prologue
    .line 134
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->pronDatabaseVersion_:I

    return v0
.end method

.method public getSerializedSize()I
    .locals 4

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->compilationTime_:J

    .line 234
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_0
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 237
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwords_:I

    .line 238
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_1
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 241
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromCache_:I

    .line 242
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_2
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 245
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromNetwork_:I

    .line 246
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_3
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 249
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsUnpronounceable_:I

    .line 250
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    :cond_4
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 253
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->locale_:Ljava/lang/String;

    .line 254
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    :cond_5
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 257
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->pronDatabaseVersion_:I

    .line 258
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 260
    :cond_6
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 261
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->clientproxyGetPronsVersion_:I

    .line 262
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 264
    :cond_7
    iget-object v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->cachedSize:I

    .line 266
    return v0
.end method

.method public hasClientproxyGetPronsVersion()Z
    .locals 1

    .prologue
    .line 161
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

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
    .line 25
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

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
    .line 123
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

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
    .line 44
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

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
    .line 63
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

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
    .line 82
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

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
    .line 101
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

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
    .line 142
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

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
    const/4 v2, 0x0

    .line 186
    const/16 v0, 0x11

    .line 187
    .local v0, "result":I
    iget-wide v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->compilationTime_:J

    iget-wide v5, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->compilationTime_:J

    const/16 v1, 0x20

    ushr-long/2addr v5, v1

    xor-long/2addr v3, v5

    long-to-int v1, v3

    add-int/lit16 v0, v1, 0x20f

    .line 188
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwords_:I

    add-int v0, v1, v3

    .line 189
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromCache_:I

    add-int v0, v1, v3

    .line 190
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromNetwork_:I

    add-int v0, v1, v3

    .line 191
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsUnpronounceable_:I

    add-int v0, v1, v3

    .line 192
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->locale_:Ljava/lang/String;

    if-nez v1, :cond_0

    move v1, v2

    :goto_0
    add-int v0, v3, v1

    .line 193
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->pronDatabaseVersion_:I

    add-int v0, v1, v3

    .line 194
    mul-int/lit8 v1, v0, 0x1f

    iget v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->clientproxyGetPronsVersion_:I

    add-int v0, v1, v3

    .line 195
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->unknownFieldData:Ljava/util/List;

    if-nez v3, :cond_1

    :goto_1
    add-int v0, v1, v2

    .line 196
    return v0

    .line 192
    :cond_0
    iget-object v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->locale_:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    .line 195
    :cond_1
    iget-object v2, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->unknownFieldData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->hashCode()I

    move-result v2

    goto :goto_1
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 3
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 275
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 279
    iget-object v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->unknownFieldData:Ljava/util/List;

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 285
    :sswitch_0
    return-object p0

    .line 290
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->compilationTime_:J

    .line 291
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 295
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwords_:I

    .line 296
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 300
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromCache_:I

    .line 301
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 305
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromNetwork_:I

    .line 306
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 310
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsUnpronounceable_:I

    .line 311
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x10

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 315
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->locale_:Ljava/lang/String;

    .line 316
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x20

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 320
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->pronDatabaseVersion_:I

    .line 321
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v1, v1, 0x40

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    goto :goto_0

    .line 325
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->clientproxyGetPronsVersion_:I

    .line 326
    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit16 v1, v1, 0x80

    iput v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    goto/16 :goto_0

    .line 275
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
    .line 6
    invoke-virtual {p0, p1}, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;

    move-result-object v0

    return-object v0
.end method

.method public setClientproxyGetPronsVersion(I)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 156
    iput p1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->clientproxyGetPronsVersion_:I

    .line 157
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 158
    return-object p0
.end method

.method public setCompilationTime(J)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 20
    iput-wide p1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->compilationTime_:J

    .line 21
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 22
    return-object p0
.end method

.method public setLocale(Ljava/lang/String;)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 115
    if-nez p1, :cond_0

    .line 116
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 118
    :cond_0
    iput-object p1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->locale_:Ljava/lang/String;

    .line 119
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 120
    return-object p0
.end method

.method public setNumHotwords(I)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwords_:I

    .line 40
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 41
    return-object p0
.end method

.method public setNumHotwordsFromCache(I)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 58
    iput p1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromCache_:I

    .line 59
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 60
    return-object p0
.end method

.method public setNumHotwordsFromNetwork(I)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 77
    iput p1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromNetwork_:I

    .line 78
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 79
    return-object p0
.end method

.method public setNumHotwordsUnpronounceable(I)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 96
    iput p1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsUnpronounceable_:I

    .line 97
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 98
    return-object p0
.end method

.method public setPronDatabaseVersion(I)Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 137
    iput p1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->pronDatabaseVersion_:I

    .line 138
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    .line 139
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
    .line 201
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->compilationTime_:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 204
    :cond_0
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 205
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwords_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 207
    :cond_1
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 208
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromCache_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 210
    :cond_2
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 211
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsFromNetwork_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 213
    :cond_3
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 214
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->numHotwordsUnpronounceable_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 216
    :cond_4
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 217
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->locale_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 219
    :cond_5
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 220
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->pronDatabaseVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 222
    :cond_6
    iget v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 223
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->clientproxyGetPronsVersion_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 225
    :cond_7
    iget-object v0, p0, Lcom/google/common/logging/HotwordCompilationLogNano$HotwordCompilation;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 227
    return-void
.end method

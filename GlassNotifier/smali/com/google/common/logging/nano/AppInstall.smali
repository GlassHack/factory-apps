.class public final Lcom/google/common/logging/nano/AppInstall;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "AppInstall.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/protobuf/nano/ExtendableMessageNano",
        "<",
        "Lcom/google/common/logging/nano/AppInstall;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/common/logging/nano/AppInstall;


# instance fields
.field private androidPackageName_:Ljava/lang/String;

.field private bitField0_:I

.field private glasswareId_:J

.field private installedOnAndroid_:Z

.field private installedOnGlass_:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 106
    invoke-direct {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;-><init>()V

    .line 107
    invoke-virtual {p0}, Lcom/google/common/logging/nano/AppInstall;->clear()Lcom/google/common/logging/nano/AppInstall;

    .line 108
    return-void
.end method

.method public static emptyArray()[Lcom/google/common/logging/nano/AppInstall;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/google/common/logging/nano/AppInstall;->_emptyArray:[Lcom/google/common/logging/nano/AppInstall;

    if-nez v0, :cond_1

    .line 13
    sget-object v1, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 15
    :try_start_0
    sget-object v0, Lcom/google/common/logging/nano/AppInstall;->_emptyArray:[Lcom/google/common/logging/nano/AppInstall;

    if-nez v0, :cond_0

    .line 16
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/logging/nano/AppInstall;

    sput-object v0, Lcom/google/common/logging/nano/AppInstall;->_emptyArray:[Lcom/google/common/logging/nano/AppInstall;

    .line 18
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    :cond_1
    sget-object v0, Lcom/google/common/logging/nano/AppInstall;->_emptyArray:[Lcom/google/common/logging/nano/AppInstall;

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

.method public static parseFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/AppInstall;
    .locals 1
    .param p0, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 253
    new-instance v0, Lcom/google/common/logging/nano/AppInstall;

    invoke-direct {v0}, Lcom/google/common/logging/nano/AppInstall;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/common/logging/nano/AppInstall;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/AppInstall;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/common/logging/nano/AppInstall;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 247
    new-instance v0, Lcom/google/common/logging/nano/AppInstall;

    invoke-direct {v0}, Lcom/google/common/logging/nano/AppInstall;-><init>()V

    invoke-static {v0, p0}, Lcom/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/protobuf/nano/MessageNano;[B)Lcom/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/common/logging/nano/AppInstall;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/common/logging/nano/AppInstall;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 111
    iput v2, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    .line 112
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/AppInstall;->androidPackageName_:Ljava/lang/String;

    .line 113
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/AppInstall;->glasswareId_:J

    .line 114
    iput-boolean v2, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnAndroid_:Z

    .line 115
    iput-boolean v2, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnGlass_:Z

    .line 116
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/logging/nano/AppInstall;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 117
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/common/logging/nano/AppInstall;->cachedSize:I

    .line 118
    return-object p0
.end method

.method public clearAndroidPackageName()Lcom/google/common/logging/nano/AppInstall;
    .locals 1

    .prologue
    .line 34
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/logging/nano/AppInstall;->androidPackageName_:Ljava/lang/String;

    .line 35
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    .line 36
    return-object p0
.end method

.method public clearGlasswareId()Lcom/google/common/logging/nano/AppInstall;
    .locals 2

    .prologue
    .line 56
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/common/logging/nano/AppInstall;->glasswareId_:J

    .line 57
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    .line 58
    return-object p0
.end method

.method public clearInstalledOnAndroid()Lcom/google/common/logging/nano/AppInstall;
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnAndroid_:Z

    .line 76
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    .line 77
    return-object p0
.end method

.method public clearInstalledOnGlass()Lcom/google/common/logging/nano/AppInstall;
    .locals 1

    .prologue
    .line 94
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnGlass_:Z

    .line 95
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    .line 96
    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 4

    .prologue
    .line 186
    invoke-super {p0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->computeSerializedSize()I

    move-result v0

    .line 187
    .local v0, "size":I
    iget v1, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 188
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/common/logging/nano/AppInstall;->androidPackageName_:Ljava/lang/String;

    .line 189
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 191
    :cond_0
    iget v1, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 192
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/AppInstall;->glasswareId_:J

    .line 193
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 195
    :cond_1
    iget v1, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 196
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnAndroid_:Z

    .line 197
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 199
    :cond_2
    iget v1, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 200
    const/4 v1, 0x4

    iget-boolean v2, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnGlass_:Z

    .line 201
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 203
    :cond_3
    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 123
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 149
    :cond_0
    :goto_0
    return v1

    .line 126
    :cond_1
    instance-of v3, p1, Lcom/google/common/logging/nano/AppInstall;

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 129
    check-cast v0, Lcom/google/common/logging/nano/AppInstall;

    .line 130
    .local v0, "other":Lcom/google/common/logging/nano/AppInstall;
    iget v3, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v3, v3, 0x1

    iget v4, v0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v4, v4, 0x1

    if-ne v3, v4, :cond_0

    iget-object v3, p0, Lcom/google/common/logging/nano/AppInstall;->androidPackageName_:Ljava/lang/String;

    iget-object v4, v0, Lcom/google/common/logging/nano/AppInstall;->androidPackageName_:Ljava/lang/String;

    .line 131
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    iget v3, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v3, v3, 0x2

    iget v4, v0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v4, v4, 0x2

    if-ne v3, v4, :cond_0

    iget-wide v4, p0, Lcom/google/common/logging/nano/AppInstall;->glasswareId_:J

    iget-wide v6, v0, Lcom/google/common/logging/nano/AppInstall;->glasswareId_:J

    cmp-long v3, v4, v6

    if-nez v3, :cond_0

    .line 138
    iget v3, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v3, v3, 0x4

    iget v4, v0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v4, v4, 0x4

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnAndroid_:Z

    iget-boolean v4, v0, Lcom/google/common/logging/nano/AppInstall;->installedOnAndroid_:Z

    if-ne v3, v4, :cond_0

    .line 142
    iget v3, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v3, v3, 0x8

    iget v4, v0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v4, v4, 0x8

    if-ne v3, v4, :cond_0

    iget-boolean v3, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnGlass_:Z

    iget-boolean v4, v0, Lcom/google/common/logging/nano/AppInstall;->installedOnGlass_:Z

    if-ne v3, v4, :cond_0

    .line 146
    iget-object v3, p0, Lcom/google/common/logging/nano/AppInstall;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/google/common/logging/nano/AppInstall;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 147
    :cond_2
    iget-object v3, v0, Lcom/google/common/logging/nano/AppInstall;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v3, :cond_3

    iget-object v3, v0, Lcom/google/common/logging/nano/AppInstall;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v3}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .line 149
    :cond_4
    iget-object v1, p0, Lcom/google/common/logging/nano/AppInstall;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    iget-object v2, v0, Lcom/google/common/logging/nano/AppInstall;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1, v2}, Lcom/google/protobuf/nano/FieldArray;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getAndroidPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/common/logging/nano/AppInstall;->androidPackageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getGlasswareId()J
    .locals 2

    .prologue
    .line 50
    iget-wide v0, p0, Lcom/google/common/logging/nano/AppInstall;->glasswareId_:J

    return-wide v0
.end method

.method public getInstalledOnAndroid()Z
    .locals 1

    .prologue
    .line 69
    iget-boolean v0, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnAndroid_:Z

    return v0
.end method

.method public getInstalledOnGlass()Z
    .locals 1

    .prologue
    .line 88
    iget-boolean v0, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnGlass_:Z

    return v0
.end method

.method public hasAndroidPackageName()Z
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasGlasswareId()Z
    .locals 1

    .prologue
    .line 53
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInstalledOnAndroid()Z
    .locals 1

    .prologue
    .line 72
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasInstalledOnGlass()Z
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 9

    .prologue
    const/16 v3, 0x4d5

    const/16 v2, 0x4cf

    .line 154
    const/16 v0, 0x11

    .line 155
    .local v0, "result":I
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/lit16 v0, v1, 0x20f

    .line 156
    mul-int/lit8 v1, v0, 0x1f

    iget-object v4, p0, Lcom/google/common/logging/nano/AppInstall;->androidPackageName_:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    add-int v0, v1, v4

    .line 157
    mul-int/lit8 v1, v0, 0x1f

    iget-wide v4, p0, Lcom/google/common/logging/nano/AppInstall;->glasswareId_:J

    iget-wide v6, p0, Lcom/google/common/logging/nano/AppInstall;->glasswareId_:J

    const/16 v8, 0x20

    ushr-long/2addr v6, v8

    xor-long/2addr v4, v6

    long-to-int v4, v4

    add-int v0, v1, v4

    .line 158
    mul-int/lit8 v4, v0, 0x1f

    iget-boolean v1, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnAndroid_:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    add-int v0, v4, v1

    .line 159
    mul-int/lit8 v1, v0, 0x1f

    iget-boolean v4, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnGlass_:Z

    if-eqz v4, :cond_2

    :goto_1
    add-int v0, v1, v2

    .line 160
    mul-int/lit8 v2, v0, 0x1f

    iget-object v1, p0, Lcom/google/common/logging/nano/AppInstall;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/google/common/logging/nano/AppInstall;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    .line 161
    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_0
    const/4 v1, 0x0

    .line 162
    :goto_2
    add-int v0, v2, v1

    .line 163
    return v0

    :cond_1
    move v1, v3

    .line 158
    goto :goto_0

    :cond_2
    move v2, v3

    .line 159
    goto :goto_1

    .line 162
    :cond_3
    iget-object v1, p0, Lcom/google/common/logging/nano/AppInstall;->unknownFieldData:Lcom/google/protobuf/nano/FieldArray;

    invoke-virtual {v1}, Lcom/google/protobuf/nano/FieldArray;->hashCode()I

    move-result v1

    goto :goto_2
.end method

.method public mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/AppInstall;
    .locals 4
    .param p1, "input"    # Lcom/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 211
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 212
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 216
    invoke-super {p0, p1, v0}, Lcom/google/protobuf/nano/ExtendableMessageNano;->storeUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 217
    :sswitch_0
    return-object p0

    .line 222
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/common/logging/nano/AppInstall;->androidPackageName_:Ljava/lang/String;

    .line 223
    iget v1, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    goto :goto_0

    .line 227
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/google/common/logging/nano/AppInstall;->glasswareId_:J

    .line 228
    iget v1, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    goto :goto_0

    .line 232
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnAndroid_:Z

    .line 233
    iget v1, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    goto :goto_0

    .line 237
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnGlass_:Z

    .line 238
    iget v1, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    goto :goto_0

    .line 212
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
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
    .line 5
    invoke-virtual {p0, p1}, Lcom/google/common/logging/nano/AppInstall;->mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/logging/nano/AppInstall;

    move-result-object v0

    return-object v0
.end method

.method public setAndroidPackageName(Ljava/lang/String;)Lcom/google/common/logging/nano/AppInstall;
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
    iput-object p1, p0, Lcom/google/common/logging/nano/AppInstall;->androidPackageName_:Ljava/lang/String;

    .line 43
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    .line 44
    return-object p0
.end method

.method public setGlasswareId(J)Lcom/google/common/logging/nano/AppInstall;
    .locals 1
    .param p1, "value"    # J

    .prologue
    .line 61
    iput-wide p1, p0, Lcom/google/common/logging/nano/AppInstall;->glasswareId_:J

    .line 62
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    .line 63
    return-object p0
.end method

.method public setInstalledOnAndroid(Z)Lcom/google/common/logging/nano/AppInstall;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnAndroid_:Z

    .line 81
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    .line 82
    return-object p0
.end method

.method public setInstalledOnGlass(Z)Lcom/google/common/logging/nano/AppInstall;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 99
    iput-boolean p1, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnGlass_:Z

    .line 100
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    .line 101
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
    .line 169
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 170
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/common/logging/nano/AppInstall;->androidPackageName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 172
    :cond_0
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 173
    const/4 v0, 0x2

    iget-wide v2, p0, Lcom/google/common/logging/nano/AppInstall;->glasswareId_:J

    invoke-virtual {p1, v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 175
    :cond_1
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 176
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnAndroid_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 178
    :cond_2
    iget v0, p0, Lcom/google/common/logging/nano/AppInstall;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 179
    const/4 v0, 0x4

    iget-boolean v1, p0, Lcom/google/common/logging/nano/AppInstall;->installedOnGlass_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 181
    :cond_3
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/ExtendableMessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 182
    return-void
.end method

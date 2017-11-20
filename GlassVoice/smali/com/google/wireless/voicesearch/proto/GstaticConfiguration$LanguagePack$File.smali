.class public final Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "GstaticConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "File"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;


# instance fields
.field private bitField0_:I

.field private checksum_:Ljava/lang/String;

.field private compressed_:Z

.field private downloadSizeKb_:I

.field private name_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 4121
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 4122
    invoke-virtual {p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    .line 4123
    return-void
.end method

.method public static emptyArray()[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .locals 2

    .prologue
    .line 4026
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    if-nez v0, :cond_1

    .line 4027
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 4029
    :try_start_0
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    if-nez v0, :cond_0

    .line 4030
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    sput-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    .line 4032
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4034
    :cond_1
    sget-object v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->_emptyArray:[Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    return-object v0

    .line 4032
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4222
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 4216
    new-instance v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    invoke-direct {v0}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4126
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    .line 4127
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->name_:Ljava/lang/String;

    .line 4128
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->checksum_:Ljava/lang/String;

    .line 4129
    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->compressed_:Z

    .line 4130
    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->downloadSizeKb_:I

    .line 4131
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->cachedSize:I

    .line 4132
    return-object p0
.end method

.method public clearChecksum()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .locals 1

    .prologue
    .line 4078
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->checksum_:Ljava/lang/String;

    .line 4079
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    .line 4080
    return-object p0
.end method

.method public clearCompressed()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .locals 1

    .prologue
    .line 4097
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->compressed_:Z

    .line 4098
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    .line 4099
    return-object p0
.end method

.method public clearDownloadSizeKb()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .locals 1

    .prologue
    .line 4116
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->downloadSizeKb_:I

    .line 4117
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    .line 4118
    return-object p0
.end method

.method public clearName()Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .locals 1

    .prologue
    .line 4056
    const-string v0, ""

    iput-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->name_:Ljava/lang/String;

    .line 4057
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    .line 4058
    return-object p0
.end method

.method public getChecksum()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4064
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->checksum_:Ljava/lang/String;

    return-object v0
.end method

.method public getCompressed()Z
    .locals 1

    .prologue
    .line 4086
    iget-boolean v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->compressed_:Z

    return v0
.end method

.method public getDownloadSizeKb()I
    .locals 1

    .prologue
    .line 4105
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->downloadSizeKb_:I

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 4042
    iget-object v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 4154
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 4155
    .local v0, "size":I
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 4156
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4159
    :cond_0
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 4160
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->checksum_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 4163
    :cond_1
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 4164
    const/4 v1, 0x3

    iget-boolean v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->compressed_:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 4167
    :cond_2
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 4168
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->downloadSizeKb_:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 4171
    :cond_3
    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->cachedSize:I

    .line 4172
    return v0
.end method

.method public hasChecksum()Z
    .locals 1

    .prologue
    .line 4075
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasCompressed()Z
    .locals 1

    .prologue
    .line 4094
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasDownloadSizeKb()Z
    .locals 1

    .prologue
    .line 4113
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

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
    .line 4053
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

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
    .line 4020
    invoke-virtual {p0, p1}, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 4180
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 4181
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 4185
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 4186
    :sswitch_0
    return-object p0

    .line 4191
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->name_:Ljava/lang/String;

    .line 4192
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    goto :goto_0

    .line 4196
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->checksum_:Ljava/lang/String;

    .line 4197
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    goto :goto_0

    .line 4201
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->compressed_:Z

    .line 4202
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    goto :goto_0

    .line 4206
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v1

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->downloadSizeKb_:I

    .line 4207
    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    goto :goto_0

    .line 4181
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x18 -> :sswitch_3
        0x20 -> :sswitch_4
    .end sparse-switch
.end method

.method public setChecksum(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4067
    if-nez p1, :cond_0

    .line 4068
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4070
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->checksum_:Ljava/lang/String;

    .line 4071
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    .line 4072
    return-object p0
.end method

.method public setCompressed(Z)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .locals 1
    .param p1, "value"    # Z

    .prologue
    .line 4089
    iput-boolean p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->compressed_:Z

    .line 4090
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    .line 4091
    return-object p0
.end method

.method public setDownloadSizeKb(I)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 4108
    iput p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->downloadSizeKb_:I

    .line 4109
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    .line 4110
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 4045
    if-nez p1, :cond_0

    .line 4046
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 4048
    :cond_0
    iput-object p1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->name_:Ljava/lang/String;

    .line 4049
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    .line 4050
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
    .line 4138
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 4139
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4141
    :cond_0
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 4142
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->checksum_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 4144
    :cond_1
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 4145
    const/4 v0, 0x3

    iget-boolean v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->compressed_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 4147
    :cond_2
    iget v0, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 4148
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/wireless/voicesearch/proto/GstaticConfiguration$LanguagePack$File;->downloadSizeKb_:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 4150
    :cond_3
    return-void
.end method

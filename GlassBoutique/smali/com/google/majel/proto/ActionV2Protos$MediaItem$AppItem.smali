.class public final Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ActionV2Protos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ActionV2Protos$MediaItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AppItem"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;


# instance fields
.field private bitField0_:I

.field private developer_:Ljava/lang/String;

.field private name_:Ljava/lang/String;

.field private packageName_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14139
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 14140
    invoke-virtual {p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    .line 14141
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;
    .locals 2

    .prologue
    .line 14060
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    if-nez v0, :cond_1

    .line 14061
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 14063
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    if-nez v0, :cond_0

    .line 14064
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    sput-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    .line 14066
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14068
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->_emptyArray:[Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    return-object v0

    .line 14066
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14227
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 14221
    new-instance v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    invoke-direct {v0}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;
    .locals 1

    .prologue
    .line 14144
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    .line 14145
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->name_:Ljava/lang/String;

    .line 14146
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->packageName_:Ljava/lang/String;

    .line 14147
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->developer_:Ljava/lang/String;

    .line 14148
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->cachedSize:I

    .line 14149
    return-object p0
.end method

.method public clearDeveloper()Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;
    .locals 1

    .prologue
    .line 14134
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->developer_:Ljava/lang/String;

    .line 14135
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    .line 14136
    return-object p0
.end method

.method public clearName()Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;
    .locals 1

    .prologue
    .line 14090
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->name_:Ljava/lang/String;

    .line 14091
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    .line 14092
    return-object p0
.end method

.method public clearPackageName()Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;
    .locals 1

    .prologue
    .line 14112
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->packageName_:Ljava/lang/String;

    .line 14113
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    .line 14114
    return-object p0
.end method

.method public getDeveloper()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14120
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->developer_:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14076
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->name_:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14098
    iget-object v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->packageName_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 14168
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 14169
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 14170
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->name_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14173
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 14174
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->packageName_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14177
    :cond_1
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 14178
    const/4 v1, 0x3

    iget-object v2, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->developer_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 14181
    :cond_2
    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->cachedSize:I

    .line 14182
    return v0
.end method

.method public hasDeveloper()Z
    .locals 1

    .prologue
    .line 14131
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

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
    .line 14087
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPackageName()Z
    .locals 1

    .prologue
    .line 14109
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

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
    .line 14054
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 14190
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 14191
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 14195
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 14196
    :sswitch_0
    return-object p0

    .line 14201
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->name_:Ljava/lang/String;

    .line 14202
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    goto :goto_0

    .line 14206
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->packageName_:Ljava/lang/String;

    .line 14207
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    goto :goto_0

    .line 14211
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->developer_:Ljava/lang/String;

    .line 14212
    iget v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    goto :goto_0

    .line 14191
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public setDeveloper(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14123
    if-nez p1, :cond_0

    .line 14124
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14126
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->developer_:Ljava/lang/String;

    .line 14127
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    .line 14128
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14079
    if-nez p1, :cond_0

    .line 14080
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14082
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->name_:Ljava/lang/String;

    .line 14083
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    .line 14084
    return-object p0
.end method

.method public setPackageName(Ljava/lang/String;)Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 14101
    if-nez p1, :cond_0

    .line 14102
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 14104
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->packageName_:Ljava/lang/String;

    .line 14105
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    .line 14106
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
    .line 14155
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 14156
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->name_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14158
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 14159
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->packageName_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14161
    :cond_1
    iget v0, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 14162
    const/4 v0, 0x3

    iget-object v1, p0, Lcom/google/majel/proto/ActionV2Protos$MediaItem$AppItem;->developer_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 14164
    :cond_2
    return-void
.end method

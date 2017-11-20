.class public final Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "ContactProtos.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/majel/proto/ContactProtos$ContactInformation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GoogleAccount"
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;


# instance fields
.field private bitField0_:I

.field private gplusProfileId_:Ljava/lang/String;

.field private label_:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1213
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1214
    invoke-virtual {p0}, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->clear()Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    .line 1215
    return-void
.end method

.method public static emptyArray()[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    .locals 2

    .prologue
    .line 1156
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    if-nez v0, :cond_1

    .line 1157
    sget-object v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 1159
    :try_start_0
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    if-nez v0, :cond_0

    .line 1160
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    sput-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    .line 1162
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1164
    :cond_1
    sget-object v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->_emptyArray:[Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    return-object v0

    .line 1162
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public static parseFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    .locals 1
    .param p0, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1288
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;-><init>()V

    invoke-virtual {v0, p0}, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    move-result-object v0

    return-object v0
.end method

.method public static parseFrom([B)Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    .locals 1
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/glass/speechlib/com/google/protobuf/nano/InvalidProtocolBufferNanoException;
        }
    .end annotation

    .prologue
    .line 1282
    new-instance v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    invoke-direct {v0}, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;-><init>()V

    invoke-static {v0, p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;[B)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    move-result-object v0

    check-cast v0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    .locals 1

    .prologue
    .line 1218
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    .line 1219
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->label_:Ljava/lang/String;

    .line 1220
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->gplusProfileId_:Ljava/lang/String;

    .line 1221
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->cachedSize:I

    .line 1222
    return-object p0
.end method

.method public clearGplusProfileId()Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    .locals 1

    .prologue
    .line 1208
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->gplusProfileId_:Ljava/lang/String;

    .line 1209
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    .line 1210
    return-object p0
.end method

.method public clearLabel()Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    .locals 1

    .prologue
    .line 1186
    const-string v0, ""

    iput-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->label_:Ljava/lang/String;

    .line 1187
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    .line 1188
    return-object p0
.end method

.method public getGplusProfileId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1194
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->gplusProfileId_:Ljava/lang/String;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1172
    iget-object v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->label_:Ljava/lang/String;

    return-object v0
.end method

.method public getSerializedSize()I
    .locals 3

    .prologue
    .line 1238
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1239
    .local v0, "size":I
    iget v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1240
    const/4 v1, 0x1

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->label_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1243
    :cond_0
    iget v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1244
    const/4 v1, 0x2

    iget-object v2, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->gplusProfileId_:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1247
    :cond_1
    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->cachedSize:I

    .line 1248
    return v0
.end method

.method public hasGplusProfileId()Z
    .locals 1

    .prologue
    .line 1205
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasLabel()Z
    .locals 1

    .prologue
    .line 1183
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

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
    .line 1150
    invoke-virtual {p0, p1}, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;

    move-result-object v0

    return-object v0
.end method

.method public mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    .locals 2
    .param p1, "input"    # Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1256
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1257
    .local v0, "tag":I
    sparse-switch v0, :sswitch_data_0

    .line 1261
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1262
    :sswitch_0
    return-object p0

    .line 1267
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->label_:Ljava/lang/String;

    .line 1268
    iget v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    goto :goto_0

    .line 1272
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->gplusProfileId_:Ljava/lang/String;

    .line 1273
    iget v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    goto :goto_0

    .line 1257
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public setGplusProfileId(Ljava/lang/String;)Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1197
    if-nez p1, :cond_0

    .line 1198
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1200
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->gplusProfileId_:Ljava/lang/String;

    .line 1201
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    .line 1202
    return-object p0
.end method

.method public setLabel(Ljava/lang/String;)Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1175
    if-nez p1, :cond_0

    .line 1176
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 1178
    :cond_0
    iput-object p1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->label_:Ljava/lang/String;

    .line 1179
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    .line 1180
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
    .line 1228
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1229
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->label_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1231
    :cond_0
    iget v0, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1232
    const/4 v0, 0x2

    iget-object v1, p0, Lcom/google/majel/proto/ContactProtos$ContactInformation$GoogleAccount;->gplusProfileId_:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1234
    :cond_1
    return-void
.end method

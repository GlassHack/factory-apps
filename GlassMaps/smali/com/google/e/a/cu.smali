.class public final Lcom/google/e/a/cu;
.super Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J

.field private c:J

.field private d:I

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1202
    invoke-direct {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;-><init>()V

    .line 1203
    invoke-direct {p0}, Lcom/google/e/a/cu;->a()Lcom/google/e/a/cu;

    .line 1204
    return-void
.end method

.method private a()Lcom/google/e/a/cu;
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 1207
    iput v1, p0, Lcom/google/e/a/cu;->a:I

    .line 1208
    iput-wide v2, p0, Lcom/google/e/a/cu;->b:J

    .line 1209
    iput-wide v2, p0, Lcom/google/e/a/cu;->c:J

    .line 1210
    iput v1, p0, Lcom/google/e/a/cu;->d:I

    .line 1211
    const-string v0, ""

    iput-object v0, p0, Lcom/google/e/a/cu;->e:Ljava/lang/String;

    .line 1212
    iput-boolean v1, p0, Lcom/google/e/a/cu;->f:Z

    .line 1213
    iput v1, p0, Lcom/google/e/a/cu;->g:I

    .line 1214
    const/4 v0, -0x1

    iput v0, p0, Lcom/google/e/a/cu;->cachedSize:I

    .line 1215
    return-object p0
.end method

.method private a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/cu;
    .locals 2

    .prologue
    .line 1277
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 1278
    sparse-switch v0, :sswitch_data_0

    .line 1282
    invoke-static {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1283
    :sswitch_0
    return-object p0

    .line 1288
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/cu;->b:J

    .line 1289
    iget v0, p0, Lcom/google/e/a/cu;->a:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/e/a/cu;->a:I

    goto :goto_0

    .line 1293
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/e/a/cu;->c:J

    .line 1294
    iget v0, p0, Lcom/google/e/a/cu;->a:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/e/a/cu;->a:I

    goto :goto_0

    .line 1298
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/cu;->d:I

    .line 1299
    iget v0, p0, Lcom/google/e/a/cu;->a:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/e/a/cu;->a:I

    goto :goto_0

    .line 1303
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/e/a/cu;->e:Ljava/lang/String;

    .line 1304
    iget v0, p0, Lcom/google/e/a/cu;->a:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/e/a/cu;->a:I

    goto :goto_0

    .line 1308
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/e/a/cu;->f:Z

    .line 1309
    iget v0, p0, Lcom/google/e/a/cu;->a:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/e/a/cu;->a:I

    goto :goto_0

    .line 1313
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/e/a/cu;->g:I

    .line 1314
    iget v0, p0, Lcom/google/e/a/cu;->a:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/e/a/cu;->a:I

    goto :goto_0

    .line 1278
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x10 -> :sswitch_2
        0x18 -> :sswitch_3
        0x22 -> :sswitch_4
        0x28 -> :sswitch_5
        0x30 -> :sswitch_6
    .end sparse-switch
.end method


# virtual methods
.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 1243
    invoke-super {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 1244
    iget v1, p0, Lcom/google/e/a/cu;->a:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 1245
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/e/a/cu;->b:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1248
    :cond_0
    iget v1, p0, Lcom/google/e/a/cu;->a:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 1249
    const/4 v1, 0x2

    iget-wide v2, p0, Lcom/google/e/a/cu;->c:J

    invoke-static {v1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1252
    :cond_1
    iget v1, p0, Lcom/google/e/a/cu;->a:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 1253
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/e/a/cu;->d:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1256
    :cond_2
    iget v1, p0, Lcom/google/e/a/cu;->a:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 1257
    const/4 v1, 0x4

    iget-object v2, p0, Lcom/google/e/a/cu;->e:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 1260
    :cond_3
    iget v1, p0, Lcom/google/e/a/cu;->a:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 1261
    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/google/e/a/cu;->f:Z

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    .line 1264
    :cond_4
    iget v1, p0, Lcom/google/e/a/cu;->a:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 1265
    const/4 v1, 0x6

    iget v2, p0, Lcom/google/e/a/cu;->g:I

    invoke-static {v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 1268
    :cond_5
    iput v0, p0, Lcom/google/e/a/cu;->cachedSize:I

    .line 1269
    return v0
.end method

.method public final synthetic mergeFrom(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 1060
    invoke-direct {p0, p1}, Lcom/google/e/a/cu;->a(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/e/a/cu;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 1221
    iget v0, p0, Lcom/google/e/a/cu;->a:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 1222
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/e/a/cu;->b:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1224
    :cond_0
    iget v0, p0, Lcom/google/e/a/cu;->a:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 1225
    const/4 v0, 0x2

    iget-wide v1, p0, Lcom/google/e/a/cu;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 1227
    :cond_1
    iget v0, p0, Lcom/google/e/a/cu;->a:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 1228
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/e/a/cu;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1230
    :cond_2
    iget v0, p0, Lcom/google/e/a/cu;->a:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 1231
    const/4 v0, 0x4

    iget-object v1, p0, Lcom/google/e/a/cu;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 1233
    :cond_3
    iget v0, p0, Lcom/google/e/a/cu;->a:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 1234
    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/google/e/a/cu;->f:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    .line 1236
    :cond_4
    iget v0, p0, Lcom/google/e/a/cu;->a:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 1237
    const/4 v0, 0x6

    iget v1, p0, Lcom/google/e/a/cu;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 1239
    :cond_5
    return-void
.end method

.class public final Lcom/google/common/a/l;
.super Lcom/google/protobuf/nano/ExtendableMessageNano;
.source "SourceFile"


# static fields
.field public static final a:[Lcom/google/common/a/l;


# instance fields
.field private b:I

.field private c:J

.field private d:I

.field private e:I

.field private f:I

.field private g:I

.field private h:Ljava/lang/String;

.field private i:I

.field private j:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/a/l;

    sput-object v0, Lcom/google/common/a/l;->a:[Lcom/google/common/a/l;

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

    iput-wide v0, p0, Lcom/google/common/a/l;->c:J

    .line 34
    iput v2, p0, Lcom/google/common/a/l;->d:I

    .line 53
    iput v2, p0, Lcom/google/common/a/l;->e:I

    .line 72
    iput v2, p0, Lcom/google/common/a/l;->f:I

    .line 91
    iput v2, p0, Lcom/google/common/a/l;->g:I

    .line 110
    const-string v0, ""

    iput-object v0, p0, Lcom/google/common/a/l;->h:Ljava/lang/String;

    .line 132
    iput v2, p0, Lcom/google/common/a/l;->i:I

    .line 151
    iput v2, p0, Lcom/google/common/a/l;->j:I

    .line 10
    return-void
.end method

.method private a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/l;
    .locals 2

    .prologue
    .line 274
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v0

    .line 275
    sparse-switch v0, :sswitch_data_0

    .line 279
    iget-object v1, p0, Lcom/google/common/a/l;->unknownFieldData:Ljava/util/List;

    if-nez v1, :cond_1

    .line 280
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/google/common/a/l;->unknownFieldData:Ljava/util/List;

    .line 283
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/l;->unknownFieldData:Ljava/util/List;

    invoke-static {v1, p1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 285
    :sswitch_0
    return-object p0

    .line 290
    :sswitch_1
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/common/a/l;->c:J

    .line 291
    iget v0, p0, Lcom/google/common/a/l;->b:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/google/common/a/l;->b:I

    goto :goto_0

    .line 295
    :sswitch_2
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/l;->d:I

    .line 296
    iget v0, p0, Lcom/google/common/a/l;->b:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/google/common/a/l;->b:I

    goto :goto_0

    .line 300
    :sswitch_3
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/l;->e:I

    .line 301
    iget v0, p0, Lcom/google/common/a/l;->b:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/google/common/a/l;->b:I

    goto :goto_0

    .line 305
    :sswitch_4
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/l;->f:I

    .line 306
    iget v0, p0, Lcom/google/common/a/l;->b:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/google/common/a/l;->b:I

    goto :goto_0

    .line 310
    :sswitch_5
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/l;->g:I

    .line 311
    iget v0, p0, Lcom/google/common/a/l;->b:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lcom/google/common/a/l;->b:I

    goto :goto_0

    .line 315
    :sswitch_6
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/a/l;->h:Ljava/lang/String;

    .line 316
    iget v0, p0, Lcom/google/common/a/l;->b:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lcom/google/common/a/l;->b:I

    goto :goto_0

    .line 320
    :sswitch_7
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/l;->i:I

    .line 321
    iget v0, p0, Lcom/google/common/a/l;->b:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lcom/google/common/a/l;->b:I

    goto :goto_0

    .line 325
    :sswitch_8
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    iput v0, p0, Lcom/google/common/a/l;->j:I

    .line 326
    iget v0, p0, Lcom/google/common/a/l;->b:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lcom/google/common/a/l;->b:I

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


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 171
    if-ne p1, p0, :cond_1

    .line 182
    :cond_0
    :goto_0
    return v0

    .line 172
    :cond_1
    instance-of v2, p1, Lcom/google/common/a/l;

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 173
    :cond_2
    check-cast p1, Lcom/google/common/a/l;

    .line 174
    iget-wide v2, p0, Lcom/google/common/a/l;->c:J

    iget-wide v4, p1, Lcom/google/common/a/l;->c:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_3

    iget v2, p0, Lcom/google/common/a/l;->d:I

    iget v3, p1, Lcom/google/common/a/l;->d:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/l;->e:I

    iget v3, p1, Lcom/google/common/a/l;->e:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/l;->f:I

    iget v3, p1, Lcom/google/common/a/l;->f:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/l;->g:I

    iget v3, p1, Lcom/google/common/a/l;->g:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/a/l;->h:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-object v2, p1, Lcom/google/common/a/l;->h:Ljava/lang/String;

    if-nez v2, :cond_3

    .line 179
    :goto_1
    iget v2, p0, Lcom/google/common/a/l;->i:I

    iget v3, p1, Lcom/google/common/a/l;->i:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Lcom/google/common/a/l;->j:I

    iget v3, p1, Lcom/google/common/a/l;->j:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/google/common/a/l;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_5

    iget-object v2, p1, Lcom/google/common/a/l;->unknownFieldData:Ljava/util/List;

    if-eqz v2, :cond_0

    :cond_3
    move v0, v1

    .line 182
    goto :goto_0

    .line 174
    :cond_4
    iget-object v2, p0, Lcom/google/common/a/l;->h:Ljava/lang/String;

    iget-object v3, p1, Lcom/google/common/a/l;->h:Ljava/lang/String;

    .line 179
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_5
    iget-object v2, p0, Lcom/google/common/a/l;->unknownFieldData:Ljava/util/List;

    iget-object v3, p1, Lcom/google/common/a/l;->unknownFieldData:Ljava/util/List;

    .line 182
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_0
.end method

.method public final getSerializedSize()I
    .locals 4

    .prologue
    .line 231
    const/4 v0, 0x0

    .line 232
    iget v1, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_0

    .line 233
    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/google/common/a/l;->c:J

    .line 234
    invoke-static {v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 236
    :cond_0
    iget v1, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_1

    .line 237
    const/4 v1, 0x2

    iget v2, p0, Lcom/google/common/a/l;->d:I

    .line 238
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 240
    :cond_1
    iget v1, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    .line 241
    const/4 v1, 0x3

    iget v2, p0, Lcom/google/common/a/l;->e:I

    .line 242
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 244
    :cond_2
    iget v1, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_3

    .line 245
    const/4 v1, 0x4

    iget v2, p0, Lcom/google/common/a/l;->f:I

    .line 246
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 248
    :cond_3
    iget v1, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_4

    .line 249
    const/4 v1, 0x5

    iget v2, p0, Lcom/google/common/a/l;->g:I

    .line 250
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 252
    :cond_4
    iget v1, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_5

    .line 253
    const/4 v1, 0x6

    iget-object v2, p0, Lcom/google/common/a/l;->h:Ljava/lang/String;

    .line 254
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSize(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 256
    :cond_5
    iget v1, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_6

    .line 257
    const/4 v1, 0x7

    iget v2, p0, Lcom/google/common/a/l;->i:I

    .line 258
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 260
    :cond_6
    iget v1, p0, Lcom/google/common/a/l;->b:I

    and-int/lit16 v1, v1, 0x80

    if-eqz v1, :cond_7

    .line 261
    const/16 v1, 0x8

    iget v2, p0, Lcom/google/common/a/l;->j:I

    .line 262
    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 264
    :cond_7
    iget-object v1, p0, Lcom/google/common/a/l;->unknownFieldData:Ljava/util/List;

    invoke-static {v1}, Lcom/google/protobuf/nano/WireFormatNano;->computeWireSize(Ljava/util/List;)I

    move-result v1

    add-int/2addr v0, v1

    .line 265
    iput v0, p0, Lcom/google/common/a/l;->cachedSize:I

    .line 266
    return v0
.end method

.method public final hashCode()I
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 186
    .line 187
    iget-wide v2, p0, Lcom/google/common/a/l;->c:J

    iget-wide v4, p0, Lcom/google/common/a/l;->c:J

    const/16 v0, 0x20

    ushr-long/2addr v4, v0

    xor-long/2addr v2, v4

    long-to-int v0, v2

    add-int/lit16 v0, v0, 0x20f

    .line 188
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/l;->d:I

    add-int/2addr v0, v2

    .line 189
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/l;->e:I

    add-int/2addr v0, v2

    .line 190
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/l;->f:I

    add-int/2addr v0, v2

    .line 191
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/l;->g:I

    add-int/2addr v0, v2

    .line 192
    mul-int/lit8 v2, v0, 0x1f

    iget-object v0, p0, Lcom/google/common/a/l;->h:Ljava/lang/String;

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    add-int/2addr v0, v2

    .line 193
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/l;->i:I

    add-int/2addr v0, v2

    .line 194
    mul-int/lit8 v0, v0, 0x1f

    iget v2, p0, Lcom/google/common/a/l;->j:I

    add-int/2addr v0, v2

    .line 195
    mul-int/lit8 v0, v0, 0x1f

    iget-object v2, p0, Lcom/google/common/a/l;->unknownFieldData:Ljava/util/List;

    if-nez v2, :cond_1

    :goto_1
    add-int/2addr v0, v1

    .line 196
    return v0

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/google/common/a/l;->h:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    goto :goto_0

    .line 195
    :cond_1
    iget-object v1, p0, Lcom/google/common/a/l;->unknownFieldData:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->hashCode()I

    move-result v1

    goto :goto_1
.end method

.method public final synthetic mergeFrom(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/protobuf/nano/MessageNano;
    .locals 1

    .prologue
    .line 6
    invoke-direct {p0, p1}, Lcom/google/common/a/l;->a(Lcom/google/protobuf/nano/CodedInputByteBufferNano;)Lcom/google/common/a/l;

    move-result-object v0

    return-object v0
.end method

.method public final writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 3

    .prologue
    .line 201
    iget v0, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, 0x1

    iget-wide v1, p0, Lcom/google/common/a/l;->c:J

    invoke-virtual {p1, v0, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64(IJ)V

    .line 204
    :cond_0
    iget v0, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 205
    const/4 v0, 0x2

    iget v1, p0, Lcom/google/common/a/l;->d:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 207
    :cond_1
    iget v0, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_2

    .line 208
    const/4 v0, 0x3

    iget v1, p0, Lcom/google/common/a/l;->e:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 210
    :cond_2
    iget v0, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_3

    .line 211
    const/4 v0, 0x4

    iget v1, p0, Lcom/google/common/a/l;->f:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 213
    :cond_3
    iget v0, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_4

    .line 214
    const/4 v0, 0x5

    iget v1, p0, Lcom/google/common/a/l;->g:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 216
    :cond_4
    iget v0, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_5

    .line 217
    const/4 v0, 0x6

    iget-object v1, p0, Lcom/google/common/a/l;->h:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeString(ILjava/lang/String;)V

    .line 219
    :cond_5
    iget v0, p0, Lcom/google/common/a/l;->b:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_6

    .line 220
    const/4 v0, 0x7

    iget v1, p0, Lcom/google/common/a/l;->i:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 222
    :cond_6
    iget v0, p0, Lcom/google/common/a/l;->b:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_7

    .line 223
    const/16 v0, 0x8

    iget v1, p0, Lcom/google/common/a/l;->j:I

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    .line 225
    :cond_7
    iget-object v0, p0, Lcom/google/common/a/l;->unknownFieldData:Ljava/util/List;

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    .line 227
    return-void
.end method

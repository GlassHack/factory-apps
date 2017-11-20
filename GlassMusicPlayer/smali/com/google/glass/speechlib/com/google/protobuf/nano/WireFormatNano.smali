.class public final Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_BYTES_ARRAY:[[B

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field static final MESSAGE_SET_ITEM:I = 0x1

.field static final MESSAGE_SET_ITEM_END_TAG:I

.field static final MESSAGE_SET_ITEM_TAG:I

.field static final MESSAGE_SET_MESSAGE:I = 0x3

.field static final MESSAGE_SET_MESSAGE_TAG:I

.field static final MESSAGE_SET_TYPE_ID:I = 0x2

.field static final MESSAGE_SET_TYPE_ID_TAG:I

.field static final TAG_TYPE_BITS:I = 0x3

.field static final TAG_TYPE_MASK:I = 0x7

.field static final WIRETYPE_END_GROUP:I = 0x4

.field static final WIRETYPE_FIXED32:I = 0x5

.field static final WIRETYPE_FIXED64:I = 0x1

.field static final WIRETYPE_LENGTH_DELIMITED:I = 0x2

.field static final WIRETYPE_START_GROUP:I = 0x3

.field static final WIRETYPE_VARINT:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 84
    invoke-static {v2, v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_TAG:I

    .line 86
    const/4 v0, 0x4

    invoke-static {v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_END_TAG:I

    .line 88
    invoke-static {v3, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 90
    invoke-static {v4, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_MESSAGE_TAG:I

    .line 93
    new-array v0, v1, [I

    sput-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    .line 94
    new-array v0, v1, [J

    sput-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    .line 95
    new-array v0, v1, [F

    sput-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    .line 96
    new-array v0, v1, [D

    sput-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    .line 97
    new-array v0, v1, [Z

    sput-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 98
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 99
    new-array v0, v1, [[B

    sput-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    .line 100
    new-array v0, v1, [B

    sput-object v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static computeWireSize(Ljava/util/List;)I
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 340
    if-nez p0, :cond_0

    .line 348
    :goto_0
    return v0

    .line 344
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move v1, v0

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    .line 345
    iget v3, v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 346
    iget-object v0, v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_1

    :cond_1
    move v0, v1

    .line 348
    goto :goto_0
.end method

.method public static getExtension(Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;Ljava/util/List;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 179
    if-nez p1, :cond_0

    move-object v0, v1

    .line 203
    :goto_0
    return-object v0

    .line 182
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 183
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    .line 184
    iget v4, v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v4}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v4

    iget v5, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;->fieldNumber:I

    if-ne v4, v5, :cond_1

    .line 185
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 188
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 189
    goto :goto_0

    .line 192
    :cond_3
    iget-boolean v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;->isRepeatedField:Z

    if-eqz v0, :cond_5

    .line 193
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 194
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    .line 195
    iget-object v3, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v3, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->readData(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 197
    :cond_4
    iget-object v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;->listType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 202
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    .line 203
    iget-object v1, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->readData(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getRepeatedFieldArrayLength(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)I
    .locals 3

    .prologue
    .line 160
    const/4 v0, 0x1

    .line 161
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 162
    invoke-virtual {p0, p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 163
    :goto_0
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v2

    if-lez v2, :cond_0

    .line 164
    invoke-virtual {p0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v2

    .line 165
    if-eq v2, p1, :cond_1

    .line 171
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 172
    return v0

    .line 168
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 169
    add-int/lit8 v0, v0, 0x1

    .line 170
    goto :goto_0
.end method

.method public static getTagFieldNumber(I)I
    .locals 1

    .prologue
    .line 70
    ushr-int/lit8 v0, p0, 0x3

    return v0
.end method

.method static getTagWireType(I)I
    .locals 1

    .prologue
    .line 65
    and-int/lit8 v0, p0, 0x7

    return v0
.end method

.method static makeTag(II)I
    .locals 1

    .prologue
    .line 75
    shl-int/lit8 v0, p0, 0x3

    or-int/2addr v0, p1

    return v0
.end method

.method public static parseUnknownField(Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0, p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    return v0
.end method

.method private static readData(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 212
    array-length v0, p1

    if-nez v0, :cond_0

    .line 213
    const/4 v0, 0x0

    .line 235
    :goto_0
    return-object v0

    .line 215
    :cond_0
    invoke-static {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v1

    .line 217
    :try_start_0
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_1

    .line 218
    invoke-virtual {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 219
    :cond_1
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_2

    .line 220
    invoke-virtual {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 221
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_3

    .line 222
    invoke-virtual {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 223
    :cond_3
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_4

    .line 224
    invoke-virtual {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_4
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_5

    .line 226
    invoke-virtual {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_5
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_6

    .line 228
    invoke-virtual {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_6
    const-class v0, [B

    if-ne p0, v0, :cond_7

    .line 230
    invoke-virtual {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_7
    const-class v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_8

    .line 233
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .line 234
    invoke-virtual {v1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)V

    .line 235
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 236
    :catch_0
    move-exception v0

    .line 237
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating instance of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 244
    :catch_1
    move-exception v0

    .line 245
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 238
    :catch_2
    move-exception v0

    .line 239
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error creating instance of class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 242
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unhandled extension field type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public static setExtension(Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;Ljava/lang/Object;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 252
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    .line 254
    iget v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;->fieldNumber:I

    iget v0, v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 255
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 258
    :cond_1
    if-nez p1, :cond_3

    .line 269
    :cond_2
    :goto_1
    return-void

    .line 262
    :cond_3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 263
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 264
    iget v2, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;->fieldNumber:I

    invoke-static {v2, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->write(ILjava/lang/Object;)Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 267
    :cond_4
    iget v0, p0, Lcom/google/glass/speechlib/com/google/protobuf/nano/Extension;->fieldNumber:I

    invoke-static {v0, p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->write(ILjava/lang/Object;)Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static storeUnknownField(Ljava/util/List;Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 136
    invoke-virtual {p1, p2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 137
    const/4 v0, 0x0

    .line 142
    :goto_0
    return v0

    .line 139
    :cond_0
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 140
    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v0

    .line 141
    new-instance v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    invoke-direct {v1, p2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static write(ILjava/lang/Object;)Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;
    .locals 4

    .prologue
    .line 280
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 282
    :try_start_0
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 283
    check-cast p1, Ljava/lang/String;

    .line 284
    invoke-static {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    new-array v1, v0, [B

    .line 285
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    .line 286
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 333
    :goto_0
    new-instance v2, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    invoke-direct {v2, v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    return-object v2

    .line 287
    :cond_0
    :try_start_1
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    .line 288
    check-cast p1, Ljava/lang/Integer;

    .line 289
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v0

    new-array v1, v0, [B

    .line 290
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 291
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto :goto_0

    .line 292
    :cond_1
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_2

    .line 293
    check-cast p1, Ljava/lang/Long;

    .line 294
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v0

    new-array v1, v0, [B

    .line 295
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 296
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto :goto_0

    .line 297
    :cond_2
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_3

    .line 298
    check-cast p1, Ljava/lang/Boolean;

    .line 299
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSizeNoTag(Z)I

    move-result v0

    new-array v1, v0, [B

    .line 300
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 301
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto :goto_0

    .line 302
    :cond_3
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_4

    .line 303
    check-cast p1, Ljava/lang/Float;

    .line 304
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSizeNoTag(F)I

    move-result v0

    new-array v1, v0, [B

    .line 305
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 306
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto/16 :goto_0

    .line 307
    :cond_4
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_5

    .line 308
    check-cast p1, Ljava/lang/Double;

    .line 309
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSizeNoTag(D)I

    move-result v0

    new-array v1, v0, [B

    .line 310
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 311
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto/16 :goto_0

    .line 312
    :cond_5
    const-class v1, [B

    if-ne v0, v1, :cond_6

    .line 313
    check-cast p1, [B

    check-cast p1, [B

    .line 314
    invoke-static {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeByteArraySizeNoTag([B)I

    move-result v0

    new-array v1, v0, [B

    .line 315
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeByteArrayNoTag([B)V

    .line 316
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto/16 :goto_0

    .line 317
    :cond_6
    const-class v1, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 318
    check-cast p1, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;

    .line 320
    invoke-virtual {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 321
    invoke-static {v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    .line 322
    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 323
    invoke-static {v1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v2

    .line 324
    invoke-virtual {v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 325
    invoke-static {p1}, Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/glass/speechlib/com/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 326
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto/16 :goto_0

    .line 328
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled extension field type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeUnknownFields(Ljava/util/List;Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 356
    if-nez p0, :cond_1

    .line 363
    :cond_0
    return-void

    .line 359
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;

    .line 360
    iget v2, v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v2}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    iget v3, v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 361
    iget-object v0, v0, Lcom/google/glass/speechlib/com/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/google/glass/speechlib/com/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    goto :goto_0
.end method

.class public final Lcom/google/protobuf/nano/WireFormatNano;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BOOLEAN_REF_ARRAY:[Ljava/lang/Boolean;

.field public static final EMPTY_BYTES:[B

.field public static final EMPTY_BYTES_ARRAY:[[B

.field public static final EMPTY_DOUBLE_ARRAY:[D

.field public static final EMPTY_DOUBLE_REF_ARRAY:[Ljava/lang/Double;

.field public static final EMPTY_FLOAT_ARRAY:[F

.field public static final EMPTY_FLOAT_REF_ARRAY:[Ljava/lang/Float;

.field public static final EMPTY_INT_ARRAY:[I

.field public static final EMPTY_INT_REF_ARRAY:[Ljava/lang/Integer;

.field public static final EMPTY_LONG_ARRAY:[J

.field public static final EMPTY_LONG_REF_ARRAY:[Ljava/lang/Long;

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

    .line 85
    invoke-static {v2, v4}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_TAG:I

    .line 86
    const/4 v0, 0x4

    .line 87
    invoke-static {v2, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_ITEM_END_TAG:I

    .line 89
    invoke-static {v3, v1}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_TYPE_ID_TAG:I

    .line 91
    invoke-static {v4, v3}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    sput v0, Lcom/google/protobuf/nano/WireFormatNano;->MESSAGE_SET_MESSAGE_TAG:I

    .line 93
    new-array v0, v1, [I

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_ARRAY:[I

    .line 94
    new-array v0, v1, [J

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_ARRAY:[J

    .line 95
    new-array v0, v1, [F

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_ARRAY:[F

    .line 96
    new-array v0, v1, [D

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_ARRAY:[D

    .line 97
    new-array v0, v1, [Z

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 98
    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 99
    new-array v0, v1, [[B

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES_ARRAY:[[B

    .line 100
    new-array v0, v1, [B

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BYTES:[B

    .line 102
    new-array v0, v1, [Ljava/lang/Integer;

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_INT_REF_ARRAY:[Ljava/lang/Integer;

    .line 103
    new-array v0, v1, [Ljava/lang/Long;

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_LONG_REF_ARRAY:[Ljava/lang/Long;

    .line 104
    new-array v0, v1, [Ljava/lang/Float;

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_FLOAT_REF_ARRAY:[Ljava/lang/Float;

    .line 105
    new-array v0, v1, [Ljava/lang/Double;

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_DOUBLE_REF_ARRAY:[Ljava/lang/Double;

    .line 106
    new-array v0, v1, [Ljava/lang/Boolean;

    sput-object v0, Lcom/google/protobuf/nano/WireFormatNano;->EMPTY_BOOLEAN_REF_ARRAY:[Ljava/lang/Boolean;

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

    .line 346
    if-nez p0, :cond_0

    .line 354
    :goto_0
    return v0

    .line 350
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

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 351
    iget v3, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v3

    add-int/2addr v1, v3

    .line 352
    iget-object v0, v0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    array-length v0, v0

    add-int/2addr v0, v1

    move v1, v0

    .line 353
    goto :goto_1

    :cond_1
    move v0, v1

    .line 354
    goto :goto_0
.end method

.method public static getExtension(Lcom/google/protobuf/nano/Extension;Ljava/util/List;)Ljava/lang/Object;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 185
    if-nez p1, :cond_0

    move-object v0, v1

    .line 209
    :goto_0
    return-object v0

    .line 188
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 189
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 190
    iget v4, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v4}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v4

    iget v5, p0, Lcom/google/protobuf/nano/Extension;->fieldNumber:I

    if-ne v4, v5, :cond_1

    .line 191
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 194
    :cond_2
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    .line 195
    goto :goto_0

    .line 198
    :cond_3
    iget-boolean v0, p0, Lcom/google/protobuf/nano/Extension;->isRepeatedField:Z

    if-eqz v0, :cond_5

    .line 199
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 200
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 201
    iget-object v3, p0, Lcom/google/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v3, v0}, Lcom/google/protobuf/nano/WireFormatNano;->readData(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 203
    :cond_4
    iget-object v0, p0, Lcom/google/protobuf/nano/Extension;->listType:Ljava/lang/Class;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 208
    :cond_5
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 209
    iget-object v1, p0, Lcom/google/protobuf/nano/Extension;->fieldType:Ljava/lang/Class;

    iget-object v0, v0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-static {v1, v0}, Lcom/google/protobuf/nano/WireFormatNano;->readData(Ljava/lang/Class;[B)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getRepeatedFieldArrayLength(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)I
    .locals 3

    .prologue
    .line 166
    const/4 v0, 0x1

    .line 167
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 168
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 169
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getBytesUntilLimit()I

    move-result v2

    if-lez v2, :cond_0

    .line 170
    invoke-virtual {p0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readTag()I

    move-result v2

    .line 171
    if-eq v2, p1, :cond_1

    .line 177
    :cond_0
    invoke-virtual {p0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->rewindToPosition(I)V

    .line 178
    return v0

    .line 174
    :cond_1
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    .line 175
    add-int/lit8 v0, v0, 0x1

    .line 176
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

.method public static parseUnknownField(Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 1

    .prologue
    .line 119
    invoke-virtual {p0, p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v0

    return v0
.end method

.method private static readData(Ljava/lang/Class;[B)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 218
    array-length v0, p1

    if-nez v0, :cond_0

    .line 219
    const/4 v0, 0x0

    .line 241
    :goto_0
    return-object v0

    .line 221
    :cond_0
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedInputByteBufferNano;

    move-result-object v1

    .line 223
    :try_start_0
    const-class v0, Ljava/lang/String;

    if-ne p0, v0, :cond_1

    .line 224
    invoke-virtual {v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 225
    :cond_1
    const-class v0, Ljava/lang/Integer;

    if-ne p0, v0, :cond_2

    .line 226
    invoke-virtual {v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt32()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 227
    :cond_2
    const-class v0, Ljava/lang/Long;

    if-ne p0, v0, :cond_3

    .line 228
    invoke-virtual {v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readInt64()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 229
    :cond_3
    const-class v0, Ljava/lang/Boolean;

    if-ne p0, v0, :cond_4

    .line 230
    invoke-virtual {v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBool()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 231
    :cond_4
    const-class v0, Ljava/lang/Float;

    if-ne p0, v0, :cond_5

    .line 232
    invoke-virtual {v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readFloat()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 233
    :cond_5
    const-class v0, Ljava/lang/Double;

    if-ne p0, v0, :cond_6

    .line 234
    invoke-virtual {v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readDouble()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 235
    :cond_6
    const-class v0, [B

    if-ne p0, v0, :cond_7

    .line 236
    invoke-virtual {v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 237
    :cond_7
    const-class v0, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v0

    if-eqz v0, :cond_8

    .line 239
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/MessageNano;

    .line 240
    invoke-virtual {v1, v0}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->readMessage(Lcom/google/protobuf/nano/MessageNano;)V

    .line 241
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v0

    goto/16 :goto_0

    .line 242
    :catch_0
    move-exception v0

    .line 243
    :try_start_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 250
    :catch_1
    move-exception v0

    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Error reading extension field"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 244
    :catch_2
    move-exception v0

    .line 245
    :try_start_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x21

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v4, "Error creating instance of class "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 248
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unhandled extension field type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
.end method

.method public static setExtension(Lcom/google/protobuf/nano/Extension;Ljava/lang/Object;Ljava/util/List;)V
    .locals 3

    .prologue
    .line 258
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 259
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 260
    iget v2, p0, Lcom/google/protobuf/nano/Extension;->fieldNumber:I

    iget v0, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v0}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v0

    if-ne v2, v0, :cond_0

    .line 261
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 264
    :cond_1
    if-nez p1, :cond_3

    .line 275
    :cond_2
    :goto_1
    return-void

    .line 268
    :cond_3
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_4

    .line 269
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 270
    iget v2, p0, Lcom/google/protobuf/nano/Extension;->fieldNumber:I

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/WireFormatNano;->write(ILjava/lang/Object;)Lcom/google/protobuf/nano/UnknownFieldData;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 273
    :cond_4
    iget v0, p0, Lcom/google/protobuf/nano/Extension;->fieldNumber:I

    invoke-static {v0, p1}, Lcom/google/protobuf/nano/WireFormatNano;->write(ILjava/lang/Object;)Lcom/google/protobuf/nano/UnknownFieldData;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1
.end method

.method public static storeUnknownField(Ljava/util/List;Lcom/google/protobuf/nano/CodedInputByteBufferNano;I)Z
    .locals 2

    .prologue
    .line 141
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v0

    .line 142
    invoke-virtual {p1, p2}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->skipField(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 143
    const/4 v0, 0x0

    .line 148
    :goto_0
    return v0

    .line 145
    :cond_0
    invoke-virtual {p1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getPosition()I

    move-result v1

    .line 146
    sub-int/2addr v1, v0

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedInputByteBufferNano;->getData(II)[B

    move-result-object v0

    .line 147
    new-instance v1, Lcom/google/protobuf/nano/UnknownFieldData;

    invoke-direct {v1, p2, v0}, Lcom/google/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    invoke-interface {p0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private static write(ILjava/lang/Object;)Lcom/google/protobuf/nano/UnknownFieldData;
    .locals 4

    .prologue
    .line 286
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 288
    :try_start_0
    const-class v1, Ljava/lang/String;

    if-ne v0, v1, :cond_0

    .line 289
    check-cast p1, Ljava/lang/String;

    .line 290
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeStringSizeNoTag(Ljava/lang/String;)I

    move-result v0

    new-array v1, v0, [B

    .line 291
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeStringNoTag(Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 339
    :goto_0
    new-instance v2, Lcom/google/protobuf/nano/UnknownFieldData;

    invoke-direct {v2, v0, v1}, Lcom/google/protobuf/nano/UnknownFieldData;-><init>(I[B)V

    return-object v2

    .line 293
    :cond_0
    :try_start_1
    const-class v1, Ljava/lang/Integer;

    if-ne v0, v1, :cond_1

    .line 294
    check-cast p1, Ljava/lang/Integer;

    .line 295
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32SizeNoTag(I)I

    move-result v0

    new-array v1, v0, [B

    .line 296
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32NoTag(I)V

    .line 297
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto :goto_0

    .line 298
    :cond_1
    const-class v1, Ljava/lang/Long;

    if-ne v0, v1, :cond_2

    .line 299
    check-cast p1, Ljava/lang/Long;

    .line 300
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt64SizeNoTag(J)I

    move-result v0

    new-array v1, v0, [B

    .line 301
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt64NoTag(J)V

    .line 302
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto :goto_0

    .line 303
    :cond_2
    const-class v1, Ljava/lang/Boolean;

    if-ne v0, v1, :cond_3

    .line 304
    check-cast p1, Ljava/lang/Boolean;

    .line 305
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSizeNoTag(Z)I

    move-result v0

    new-array v1, v0, [B

    .line 306
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBoolNoTag(Z)V

    .line 307
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto :goto_0

    .line 308
    :cond_3
    const-class v1, Ljava/lang/Float;

    if-ne v0, v1, :cond_4

    .line 309
    check-cast p1, Ljava/lang/Float;

    .line 310
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeFloatSizeNoTag(F)I

    move-result v0

    new-array v1, v0, [B

    .line 311
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeFloatNoTag(F)V

    .line 312
    const/4 v0, 0x5

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto/16 :goto_0

    .line 313
    :cond_4
    const-class v1, Ljava/lang/Double;

    if-ne v0, v1, :cond_5

    .line 314
    check-cast p1, Ljava/lang/Double;

    .line 315
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeDoubleSizeNoTag(D)I

    move-result v0

    new-array v1, v0, [B

    .line 316
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeDoubleNoTag(D)V

    .line 317
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto/16 :goto_0

    .line 318
    :cond_5
    const-class v1, [B

    if-ne v0, v1, :cond_6

    .line 319
    check-cast p1, [B

    check-cast p1, [B

    .line 320
    invoke-static {p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeByteArraySizeNoTag([B)I

    move-result v0

    new-array v1, v0, [B

    .line 321
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeByteArrayNoTag([B)V

    .line 322
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto/16 :goto_0

    .line 323
    :cond_6
    const-class v1, Lcom/google/protobuf/nano/MessageNano;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 324
    check-cast p1, Lcom/google/protobuf/nano/MessageNano;

    .line 326
    invoke-virtual {p1}, Lcom/google/protobuf/nano/MessageNano;->getSerializedSize()I

    move-result v0

    .line 327
    invoke-static {v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeRawVarint32Size(I)I

    move-result v1

    .line 328
    add-int/2addr v1, v0

    new-array v1, v1, [B

    .line 329
    invoke-static {v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->newInstance([B)Lcom/google/protobuf/nano/CodedOutputByteBufferNano;

    move-result-object v2

    .line 330
    invoke-virtual {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawVarint32(I)V

    .line 331
    invoke-static {p1}, Lcom/google/protobuf/nano/MessageNano;->toByteArray(Lcom/google/protobuf/nano/MessageNano;)[B

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    .line 332
    const/4 v0, 0x2

    invoke-static {p0, v0}, Lcom/google/protobuf/nano/WireFormatNano;->makeTag(II)I

    move-result v0

    goto/16 :goto_0

    .line 334
    :cond_7
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x20

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Unhandled extension field type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 336
    :catch_0
    move-exception v0

    .line 337
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static writeUnknownFields(Ljava/util/List;Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4

    .prologue
    .line 362
    if-nez p0, :cond_1

    .line 369
    :cond_0
    return-void

    .line 365
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/nano/UnknownFieldData;

    .line 366
    iget v2, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v2}, Lcom/google/protobuf/nano/WireFormatNano;->getTagFieldNumber(I)I

    move-result v2

    iget v3, v0, Lcom/google/protobuf/nano/UnknownFieldData;->tag:I

    invoke-static {v3}, Lcom/google/protobuf/nano/WireFormatNano;->getTagWireType(I)I

    move-result v3

    invoke-virtual {p1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeTag(II)V

    .line 367
    iget-object v0, v0, Lcom/google/protobuf/nano/UnknownFieldData;->bytes:[B

    invoke-virtual {p1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeRawBytes([B)V

    goto :goto_0
.end method

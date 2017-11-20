.class public Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;
.super Ljava/lang/Object;
.source "ProtoBufType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;
    }
.end annotation


# static fields
.field public static final MASK_MODIFIER:I = 0xff00

.field public static final MASK_TYPE:I = 0xff

.field public static final NEXT_TYPE_VALUE:I = 0x25

.field private static final NULL_DATA_TYPEINFOS:[Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;

.field public static final OPTIONAL:I = 0x200

.field public static final REPEATED:I = 0x400

.field public static final REQUIRED:I = 0x100

.field public static final START_TYPE_VALUE:I = 0x10

.field public static final TYPES_BIT_RANGE:I = 0x8

.field public static final TYPES_VALUE_RANGE:I = 0x15

.field public static final TYPE_BOOL:I = 0x18

.field public static final TYPE_BYTES:I = 0x23

.field public static final TYPE_DATA:I = 0x19

.field public static final TYPE_DOUBLE:I = 0x11

.field public static final TYPE_ENUM:I = 0x1e

.field public static final TYPE_FIXED32:I = 0x17

.field public static final TYPE_FIXED64:I = 0x16

.field public static final TYPE_FLOAT:I = 0x12

.field public static final TYPE_GROUP:I = 0x1a

.field public static final TYPE_INT32:I = 0x15

.field public static final TYPE_INT64:I = 0x13

.field public static final TYPE_MESSAGE:I = 0x1b

.field public static final TYPE_SFIXED32:I = 0x1f

.field public static final TYPE_SFIXED64:I = 0x20

.field public static final TYPE_SINT32:I = 0x21

.field public static final TYPE_SINT64:I = 0x22

.field public static final TYPE_STRING:I = 0x24

.field public static final TYPE_TEXT:I = 0x1c

.field public static final TYPE_UINT32:I = 0x1d

.field public static final TYPE_UINT64:I = 0x14

.field public static final TYPE_UNDEFINED:I = 0x10


# instance fields
.field private final typeName:Ljava/lang/String;

.field private final types:Lcom/google/userfeedback/android/api/common/util/IntMap;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 65
    const/16 v4, 0xa8

    new-array v4, v4, [Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;

    sput-object v4, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;

    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/4 v4, 0x7

    if-gt v0, v4, :cond_1

    .line 71
    const/16 v3, 0x10

    .local v3, "j":I
    move v2, v1

    .end local v1    # "index":I
    .local v2, "index":I
    :goto_1
    const/16 v4, 0x25

    if-ge v3, v4, :cond_0

    .line 72
    sget-object v4, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;

    add-int/lit8 v1, v2, 0x1

    .end local v2    # "index":I
    .restart local v1    # "index":I
    new-instance v5, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;

    shl-int/lit8 v6, v0, 0x8

    add-int/2addr v6, v3

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;-><init>(ILjava/lang/Object;)V

    aput-object v5, v4, v2

    .line 71
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    .end local v1    # "index":I
    .restart local v2    # "index":I
    goto :goto_1

    .line 70
    :cond_0
    add-int/lit8 v0, v0, 0x1

    move v1, v2

    .end local v2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 75
    .end local v3    # "j":I
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->types:Lcom/google/userfeedback/android/api/common/util/IntMap;

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    .line 119
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "typeName"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    new-instance v0, Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-direct {v0}, Lcom/google/userfeedback/android/api/common/util/IntMap;-><init>()V

    iput-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->types:Lcom/google/userfeedback/android/api/common/util/IntMap;

    .line 125
    iput-object p1, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    .line 126
    return-void
.end method

.method private static getCacheTypeInfoForNullData(I)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;
    .locals 4
    .param p0, "optionsAndType"    # I

    .prologue
    .line 135
    const v3, 0xff00

    and-int/2addr v3, p0

    shr-int/lit8 v3, v3, 0x8

    mul-int/lit8 v0, v3, 0x15

    .line 138
    .local v0, "higher":I
    and-int/lit16 v3, p0, 0xff

    add-int/lit8 v2, v3, -0x10

    .line 141
    .local v2, "lower":I
    add-int v1, v0, v2

    .line 142
    .local v1, "index":I
    sget-object v3, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->NULL_DATA_TYPEINFOS:[Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;

    aget-object v3, v3, v1

    return-object v3
.end method


# virtual methods
.method public addElement(IILjava/lang/Object;)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;
    .locals 2
    .param p1, "optionsAndType"    # I
    .param p2, "tag"    # I
    .param p3, "data"    # Ljava/lang/Object;

    .prologue
    .line 158
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->types:Lcom/google/userfeedback/android/api/common/util/IntMap;

    if-nez p3, :cond_0

    .line 159
    invoke-static {p1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->getCacheTypeInfoForNullData(I)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;

    move-result-object v0

    .line 158
    :goto_0
    invoke-virtual {v1, p2, v0}, Lcom/google/userfeedback/android/api/common/util/IntMap;->put(ILjava/lang/Object;)V

    .line 161
    return-object p0

    .line 159
    :cond_0
    new-instance v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;

    invoke-direct {v0, p1, p3}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;-><init>(ILjava/lang/Object;)V

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "object"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x0

    .line 244
    if-nez p1, :cond_1

    .line 256
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    if-ne p0, p1, :cond_2

    .line 249
    const/4 v1, 0x1

    goto :goto_0

    .line 250
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-ne v2, v3, :cond_0

    move-object v0, p1

    .line 254
    check-cast v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 256
    .local v0, "other":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->types:Lcom/google/userfeedback/android/api/common/util/IntMap;

    iget-object v2, v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->types:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v1, v2}, Lcom/google/userfeedback/android/api/common/util/IntMap;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0
.end method

.method public getData(I)Ljava/lang/Object;
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 198
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->types:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v1, p1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;

    .line 199
    .local v0, "typeInfo":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;
    if-nez v0, :cond_0

    .end local v0    # "typeInfo":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;
    :goto_0
    return-object v0

    .restart local v0    # "typeInfo":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;
    :cond_0
    invoke-static {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->access$100(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getModifiers(I)I
    .locals 3
    .param p1, "tag"    # I

    .prologue
    .line 188
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->types:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v1, p1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;

    .line 189
    .local v0, "typeInfo":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;
    if-nez v0, :cond_0

    const/16 v1, 0x600

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->access$000(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;)I

    move-result v1

    const v2, 0xff00

    and-int/2addr v1, v2

    goto :goto_0
.end method

.method public getType(I)I
    .locals 2
    .param p1, "tag"    # I

    .prologue
    .line 178
    iget-object v1, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->types:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v1, p1}, Lcom/google/userfeedback/android/api/common/util/IntMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;

    .line 179
    .local v0, "typeInfo":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;
    if-nez v0, :cond_0

    const/16 v1, 0x10

    :goto_0
    return v1

    :cond_0
    invoke-static {v0}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;->access$000(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType$TypeInfo;)I

    move-result v1

    and-int/lit16 v1, v1, 0xff

    goto :goto_0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->types:Lcom/google/userfeedback/android/api/common/util/IntMap;

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->types:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/util/IntMap;->hashCode()I

    move-result v0

    .line 266
    :goto_0
    return v0

    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_0
.end method

.method public isValidProto(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;)Z
    .locals 10
    .param p1, "proto"    # Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 215
    iget-object v8, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->types:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v8}, Lcom/google/userfeedback/android/api/common/util/IntMap;->keys()Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;

    move-result-object v2

    .line 216
    .local v2, "keys":Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;
    :cond_0
    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 217
    invoke-virtual {v2}, Lcom/google/userfeedback/android/api/common/util/IntMap$KeyIterator;->next()I

    move-result v5

    .line 218
    .local v5, "tag":I
    invoke-virtual {p0, v5}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->getModifiers(I)I

    move-result v3

    .line 219
    .local v3, "modifiers":I
    and-int/lit16 v8, v3, 0x100

    if-eqz v8, :cond_2

    invoke-virtual {p1, v5}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->has(I)Z

    move-result v8

    if-nez v8, :cond_2

    .line 236
    .end local v3    # "modifiers":I
    .end local v5    # "tag":I
    :cond_1
    :goto_0
    return v6

    .line 222
    .restart local v3    # "modifiers":I
    .restart local v5    # "tag":I
    :cond_2
    invoke-virtual {p1, v5}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getCount(I)I

    move-result v0

    .line 223
    .local v0, "count":I
    and-int/lit16 v8, v3, 0x400

    if-nez v8, :cond_3

    if-gt v0, v7, :cond_1

    .line 226
    :cond_3
    invoke-virtual {p0, v5}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->getType(I)I

    move-result v8

    const/16 v9, 0x1b

    if-ne v8, v9, :cond_0

    .line 227
    invoke-virtual {p0, v5}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    if-eqz v8, :cond_0

    .line 228
    invoke-virtual {p0, v5}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->getData(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;

    .line 229
    .local v4, "subType":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_0

    .line 230
    invoke-virtual {p1, v5, v1}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;->getProtoBuf(II)Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;

    move-result-object v8

    invoke-virtual {v4, v8}, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->isValidProto(Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBuf;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 229
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .end local v0    # "count":I
    .end local v1    # "i":I
    .end local v3    # "modifiers":I
    .end local v4    # "subType":Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;
    .end local v5    # "tag":I
    :cond_4
    move v6, v7

    .line 236
    goto :goto_0
.end method

.method newIntMapForProtoBuf()Lcom/google/userfeedback/android/api/common/util/IntMap;
    .locals 1

    .prologue
    .line 170
    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->types:Lcom/google/userfeedback/android/api/common/util/IntMap;

    invoke-virtual {v0}, Lcom/google/userfeedback/android/api/common/util/IntMap;->newIntMapWithSameBufferSize()Lcom/google/userfeedback/android/api/common/util/IntMap;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 206
    const-string v1, "ProtoBufType Name: "

    iget-object v0, p0, Lcom/google/userfeedback/android/api/common/io/protocol/ProtoBufType;->typeName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

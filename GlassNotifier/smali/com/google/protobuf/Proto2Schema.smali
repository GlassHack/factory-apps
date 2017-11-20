.class final Lcom/google/protobuf/Proto2Schema;
.super Ljava/lang/Object;
.source "Proto2Schema.java"

# interfaces
.implements Lcom/google/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;,
        Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;,
        Lcom/google/protobuf/Proto2Schema$PositionStrategy;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Schema",
        "<TT;>;"
    }
.end annotation


# static fields
.field private static final EMPTY_LONG:J = -0x1L

.field static final ENFORCE_UTF8_MASK:I = 0x20000000

.field private static final FIELD_LENGTH:I = 0x10

.field private static final FIELD_SHIFT:I = 0x4

.field static final FIELD_TYPE_MASK:I = 0xff00000

.field private static final INT_LENGTH:I = 0x4

.field static final LAZY_MASK:I = 0x40000000

.field private static final LONGS_PER_FIELD:I = 0x2

.field private static final LONG_LENGTH:I = 0x8

.field private static final OFFSET_BITS:I = 0x14

.field private static final OFFSET_MASK:I = 0xfffff

.field private static final ONEOF_TYPE_OFFSET:I = 0x33

.field static final REQUIRED_MASK:I = 0x10000000


# instance fields
.field private final address:J

.field private final buffer:Ljava/nio/ByteBuffer;

.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

.field private final enumFieldMap:Lcom/google/protobuf/Int2ObjectHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final extensionSchema:Lcom/google/protobuf/ExtensionSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/ExtensionSchema",
            "<*>;"
        }
    .end annotation
.end field

.field private final hasExtensions:Z

.field private final limit:J

.field private final listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

.field private final lite:Z

.field private final mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

.field private final maxFieldNumber:I

.field private final messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final minFieldNumber:I

.field private final numFields:I

.field private final positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

.field private final unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;JJIIIZLjava/lang/Class;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;Lcom/google/protobuf/Int2ObjectHashMap;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "address"    # J
    .param p4, "limit"    # J
    .param p6, "numFields"    # I
    .param p7, "minFieldNumber"    # I
    .param p8, "maxFieldNumber"    # I
    .param p9, "table"    # Z
    .param p13, "listFieldSchema"    # Lcom/google/protobuf/ListFieldSchema;
    .param p16, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "JJIIIZ",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Class",
            "<*>;>;",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;>;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;",
            "Lcom/google/protobuf/ExtensionSchema",
            "<*>;",
            "Lcom/google/protobuf/MapFieldSchema;",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 95
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p10, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p11, "messageFieldClassMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Class<*>;>;"
    .local p12, "enumFieldMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Lcom/google/protobuf/Internal$EnumLiteMap<*>;>;"
    .local p14, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<*>;"
    .local p15, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<*>;"
    .local p17, "mapFieldDefaultEntryMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput-object p1, p0, Lcom/google/protobuf/Proto2Schema;->buffer:Ljava/nio/ByteBuffer;

    .line 97
    iput-wide p2, p0, Lcom/google/protobuf/Proto2Schema;->address:J

    .line 98
    iput-wide p4, p0, Lcom/google/protobuf/Proto2Schema;->limit:J

    .line 99
    iput p6, p0, Lcom/google/protobuf/Proto2Schema;->numFields:I

    .line 100
    iput p7, p0, Lcom/google/protobuf/Proto2Schema;->minFieldNumber:I

    .line 101
    iput p8, p0, Lcom/google/protobuf/Proto2Schema;->maxFieldNumber:I

    .line 102
    if-eqz p9, :cond_0

    new-instance v1, Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protobuf/Proto2Schema$TablePositionStrategy;-><init>(Lcom/google/protobuf/Proto2Schema;Lcom/google/protobuf/Proto2Schema$1;)V

    :goto_0
    iput-object v1, p0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    .line 103
    iput-object p11, p0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 104
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/protobuf/Proto2Schema;->enumFieldMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 105
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 106
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/protobuf/Proto2Schema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    .line 107
    move-object/from16 v0, p15

    invoke-virtual {v0, p10}, Lcom/google/protobuf/ExtensionSchema;->hasExtensions(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/Proto2Schema;->hasExtensions:Z

    .line 108
    move-object/from16 v0, p15

    iput-object v0, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    .line 109
    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/Proto2Schema;->lite:Z

    .line 110
    invoke-static {p10}, Lcom/google/protobuf/SchemaUtil;->reflectDefaultInstance(Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Proto2Schema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 111
    move-object/from16 v0, p16

    iput-object v0, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 112
    move-object/from16 v0, p17

    iput-object v0, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 113
    return-void

    .line 102
    :cond_0
    new-instance v1, Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protobuf/Proto2Schema$LookupPositionStrategy;-><init>(Lcom/google/protobuf/Proto2Schema;Lcom/google/protobuf/Proto2Schema$1;)V

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/google/protobuf/Proto2Schema;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Proto2Schema;

    .prologue
    .line 17
    iget v0, p0, Lcom/google/protobuf/Proto2Schema;->minFieldNumber:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/protobuf/Proto2Schema;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Proto2Schema;

    .prologue
    .line 17
    iget v0, p0, Lcom/google/protobuf/Proto2Schema;->maxFieldNumber:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/Proto2Schema;I)J
    .locals 2
    .param p0, "x0"    # Lcom/google/protobuf/Proto2Schema;
    .param p1, "x1"    # I

    .prologue
    .line 17
    invoke-direct {p0, p1}, Lcom/google/protobuf/Proto2Schema;->indexToAddress(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/protobuf/Proto2Schema;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Proto2Schema;

    .prologue
    .line 17
    iget v0, p0, Lcom/google/protobuf/Proto2Schema;->numFields:I

    return v0
.end method

.method static synthetic access$700(J)I
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 17
    invoke-static {p0, p1}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v0

    return v0
.end method

.method private static arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 2
    .param p2, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;I)Z"
        }
    .end annotation

    .prologue
    .line 2649
    .local p0, "message":Ljava/lang/Object;, "TT;"
    .local p1, "other":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p2}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v0

    invoke-static {p1, p2}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static booleanAt(Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .prologue
    .line 2624
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method private static doubleAt(Ljava/lang/Object;J)D
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .prologue
    .line 2608
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method private equals(Ljava/lang/Object;Ljava/lang/Object;J)Z
    .locals 11
    .param p3, "pos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;J)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    const-wide/16 v6, 0x8

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 302
    invoke-static {p3, p4}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v2

    .line 303
    .local v2, "typeAndOffset":I
    invoke-static {v2}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v0

    .line 306
    .local v0, "offset":J
    invoke-static {v2}, Lcom/google/protobuf/Proto2Schema;->type(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 426
    :cond_0
    :goto_0
    return v3

    .line 308
    :pswitch_0
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 309
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    :cond_1
    move v3, v4

    goto :goto_0

    .line 311
    :pswitch_1
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 312
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_2
    move v3, v4

    goto :goto_0

    .line 314
    :pswitch_2
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 315
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    :cond_3
    move v3, v4

    goto :goto_0

    .line 317
    :pswitch_3
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 318
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    :cond_4
    move v3, v4

    goto :goto_0

    .line 320
    :pswitch_4
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 321
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_5
    move v3, v4

    goto :goto_0

    .line 323
    :pswitch_5
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 324
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    :cond_6
    move v3, v4

    goto/16 :goto_0

    .line 326
    :pswitch_6
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 327
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_7
    move v3, v4

    goto/16 :goto_0

    .line 329
    :pswitch_7
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 330
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v5

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_8
    move v3, v4

    goto/16 :goto_0

    .line 332
    :pswitch_8
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 334
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 333
    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_9
    move v3, v4

    goto/16 :goto_0

    .line 336
    :pswitch_9
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 338
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 337
    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_a
    move v3, v4

    goto/16 :goto_0

    .line 340
    :pswitch_a
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 342
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 341
    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_b
    move v3, v4

    goto/16 :goto_0

    .line 344
    :pswitch_b
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 345
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_c
    move v3, v4

    goto/16 :goto_0

    .line 347
    :pswitch_c
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_d

    .line 348
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_d
    move v3, v4

    goto/16 :goto_0

    .line 350
    :pswitch_d
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 351
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_e
    move v3, v4

    goto/16 :goto_0

    .line 353
    :pswitch_e
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 354
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    :cond_f
    move v3, v4

    goto/16 :goto_0

    .line 356
    :pswitch_f
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_10

    .line 357
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    :cond_10
    move v3, v4

    goto/16 :goto_0

    .line 359
    :pswitch_10
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_11

    .line 360
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    :cond_11
    move v3, v4

    goto/16 :goto_0

    .line 362
    :pswitch_11
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->arePresentForEquals(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 364
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 363
    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_12
    move v3, v4

    goto/16 :goto_0

    .line 399
    :pswitch_12
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 398
    invoke-static {v3, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_0

    .line 402
    :pswitch_13
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 401
    invoke-static {v3, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_0

    .line 421
    :pswitch_14
    add-long/2addr v6, p3

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, p2, v5}, Lcom/google/protobuf/Proto2Schema;->isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 423
    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p2, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 422
    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_13
    move v3, v4

    goto/16 :goto_0

    .line 306
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
    .end packed-switch
.end method

.method static filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 7
    .param p0, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;TUT;",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<TUT;>;)TUT;"
        }
    .end annotation

    .prologue
    .line 2379
    .local p1, "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .local p2, "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    .local p3, "unknownFields":Ljava/lang/Object;, "TUT;"
    .local p4, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;>;"
    if-nez p2, :cond_0

    move-object v4, p3

    .line 2408
    .end local p3    # "unknownFields":Ljava/lang/Object;, "TUT;"
    .local v4, "unknownFields":Ljava/lang/Object;, "TUT;"
    :goto_0
    return-object v4

    .line 2382
    .end local v4    # "unknownFields":Ljava/lang/Object;, "TUT;"
    .restart local p3    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :cond_0
    instance-of v6, p1, Ljava/util/RandomAccess;

    if-eqz v6, :cond_5

    .line 2383
    const/4 v5, 0x0

    .line 2384
    .local v5, "writePos":I
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    .line 2385
    .local v3, "size":I
    const/4 v2, 0x0

    .local v2, "readPos":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 2386
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2387
    .local v0, "enumValue":I
    invoke-interface {p2, v0}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v6

    if-eqz v6, :cond_2

    .line 2388
    if-eq v2, v5, :cond_1

    .line 2389
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2391
    :cond_1
    add-int/lit8 v5, v5, 0x1

    .line 2385
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 2393
    :cond_2
    invoke-static {p0, v0, p3, p4}, Lcom/google/protobuf/Proto2Schema;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_2

    .line 2396
    .end local v0    # "enumValue":I
    :cond_3
    if-eq v5, v3, :cond_4

    .line 2397
    invoke-interface {p1, v5, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .end local v2    # "readPos":I
    .end local v3    # "size":I
    .end local v5    # "writePos":I
    :cond_4
    move-object v4, p3

    .line 2408
    .end local p3    # "unknownFields":Ljava/lang/Object;, "TUT;"
    .restart local v4    # "unknownFields":Ljava/lang/Object;, "TUT;"
    goto :goto_0

    .line 2400
    .end local v4    # "unknownFields":Ljava/lang/Object;, "TUT;"
    .restart local p3    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :cond_5
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/Integer;>;"
    :cond_6
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 2401
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 2402
    .restart local v0    # "enumValue":I
    invoke-interface {p2, v0}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v6

    if-nez v6, :cond_6

    .line 2403
    invoke-static {p0, v0, p3, p4}, Lcom/google/protobuf/Proto2Schema;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object p3

    .line 2404
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_3
.end method

.method private final filterUnknownEnumMap(ILjava/util/Map;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 9
    .param p1, "number"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            ">(I",
            "Ljava/util/Map",
            "<TK;TV;>;",
            "Lcom/google/protobuf/Internal$EnumLiteMap",
            "<*>;TUT;",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<TUT;>;)TUT;"
        }
    .end annotation

    .prologue
    .line 2437
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p2, "mapData":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    .local p3, "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    .local p4, "unknownFields":Ljava/lang/Object;, "TUT;"
    .local p5, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;>;"
    iget-object v7, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    iget-object v8, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 2438
    invoke-virtual {v8, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v6

    .line 2439
    .local v6, "metadata":Lcom/google/protobuf/MapEntryLite$Metadata;, "Lcom/google/protobuf/MapEntryLite$Metadata<TK;TV;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    :cond_0
    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 2440
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 2441
    .local v3, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-interface {p3, v7}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v7

    if-nez v7, :cond_0

    .line 2442
    if-nez p4, :cond_1

    .line 2443
    invoke-virtual {p5}, Lcom/google/protobuf/UnknownFieldSchema;->newInstance()Ljava/lang/Object;

    move-result-object p4

    .line 2446
    :cond_1
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/MapEntryLite;->computeSerializedSize(Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v4

    .line 2447
    .local v4, "entrySize":I
    invoke-static {v4}, Lcom/google/protobuf/ByteString;->newCodedBuilder(I)Lcom/google/protobuf/ByteString$CodedBuilder;

    move-result-object v0

    .line 2448
    .local v0, "codedBuilder":Lcom/google/protobuf/ByteString$CodedBuilder;
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$CodedBuilder;->getCodedOutput()Lcom/google/protobuf/CodedOutputStream;

    move-result-object v1

    .line 2450
    .local v1, "codedOutput":Lcom/google/protobuf/CodedOutputStream;
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-static {v1, v6, v7, v8}, Lcom/google/protobuf/MapEntryLite;->writeTo(Lcom/google/protobuf/CodedOutputStream;Lcom/google/protobuf/MapEntryLite$Metadata;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2455
    invoke-virtual {v0}, Lcom/google/protobuf/ByteString$CodedBuilder;->build()Lcom/google/protobuf/ByteString;

    move-result-object v7

    invoke-virtual {p5, p4, p1, v7}, Lcom/google/protobuf/UnknownFieldSchema;->addLengthDelimited(Ljava/lang/Object;ILcom/google/protobuf/ByteString;)V

    .line 2456
    invoke-interface {v5}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 2451
    :catch_0
    move-exception v2

    .line 2453
    .local v2, "e":Ljava/io/IOException;
    new-instance v7, Ljava/lang/RuntimeException;

    invoke-direct {v7, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v7

    .line 2459
    .end local v0    # "codedBuilder":Lcom/google/protobuf/ByteString$CodedBuilder;
    .end local v1    # "codedOutput":Lcom/google/protobuf/CodedOutputStream;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v4    # "entrySize":I
    :cond_2
    return-object p4
.end method

.method private static floatAt(Ljava/lang/Object;J)F
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .prologue
    .line 2612
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method private indexToAddress(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 2584
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    iget-wide v0, p0, Lcom/google/protobuf/Proto2Schema;->address:J

    shl-int/lit8 v2, p1, 0x4

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private static intAt(Ljava/lang/Object;J)I
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .prologue
    .line 2616
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static isEnforceUtf8(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 2596
    const/high16 v0, 0x20000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isFieldPresent(Ljava/lang/Object;I)Z
    .locals 4
    .param p1, "presenceMaskAndOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "message":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x1

    .line 2653
    ushr-int/lit8 v2, p1, 0x14

    shl-int v0, v1, v2

    .line 2654
    .local v0, "presenceMask":I
    const v2, 0xfffff

    and-int/2addr v2, p1

    int-to-long v2, v2

    invoke-static {p0, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v2

    and-int/2addr v2, v0

    if-eqz v2, :cond_0

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static isLazy(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 2600
    const/high16 v0, 0x40000000    # 2.0f

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z
    .locals 4
    .param p2, "presenceMaskAndOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;I)Z"
        }
    .end annotation

    .prologue
    .local p0, "message":Ljava/lang/Object;, "TT;"
    .local p1, "other":Ljava/lang/Object;, "TT;"
    const v2, 0xfffff

    .line 2671
    and-int v0, p2, v2

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    and-int v1, p2, v2

    int-to-long v2, v1

    .line 2672
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2671
    :goto_0
    return v0

    .line 2672
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isOneofPresent(Ljava/lang/Object;II)Z
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "presenceMaskAndOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;II)Z"
        }
    .end annotation

    .prologue
    .line 2667
    .local p0, "message":Ljava/lang/Object;, "TT;"
    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static isRequired(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 2592
    const/high16 v0, 0x10000000

    and-int/2addr v0, p0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static longAt(Ljava/lang/Object;J)J
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .prologue
    .line 2620
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 36
    .param p4, "reader"    # Lcom/google/protobuf/Reader;
    .param p5, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            "ET::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<TET;>;>(",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<TUT;>;",
            "Lcom/google/protobuf/ExtensionSchema",
            "<TET;>;TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1870
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;>;"
    .local p2, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TET;>;"
    .local p3, "message":Ljava/lang/Object;, "TT;"
    const/16 v34, 0x0

    .line 1871
    .local v34, "unknownFields":Ljava/lang/Object;, "TUT;"
    const/4 v13, 0x0

    .line 1872
    .local v13, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TET;>;"
    const/16 v20, 0x0

    .line 1873
    .local v20, "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/google/protobuf/Proto2Schema;->hasExtensions:Z

    if-eqz v4, :cond_0

    .line 1874
    invoke-static {}, Lcom/google/protobuf/FieldSet;->newFieldSet()Lcom/google/protobuf/FieldSet;

    move-result-object v13

    .line 1876
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v13}, Lcom/google/protobuf/ExtensionSchema;->setExtensions(Ljava/lang/Object;Lcom/google/protobuf/FieldSet;)V

    :cond_0
    move-object/from16 v30, v20

    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .local v30, "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v14, v34

    .line 1880
    .end local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :goto_0
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v19

    .line 1881
    .local v19, "number":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;->positionForFieldNumber(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v32

    .line 1882
    .local v32, "pos":J
    const-wide/16 v8, 0x0

    cmp-long v4, v32, v8

    if-gez v4, :cond_d

    .line 1883
    const v4, 0x7fffffff

    move/from16 v0, v19

    if-ne v0, v4, :cond_6

    .line 2337
    if-eqz v30, :cond_2

    .line 2338
    invoke-virtual/range {v30 .. v30}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    move-object v8, v14

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 2339
    .local v26, "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    invoke-interface/range {v26 .. v26}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v5

    .line 2340
    .local v5, "fieldNumber":I
    invoke-interface/range {v26 .. v26}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v29

    .line 2341
    .local v29, "mapField":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 2343
    .local v6, "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->enumFieldMap:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2344
    .local v7, "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    if-eqz v7, :cond_28

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    .line 2346
    invoke-direct/range {v4 .. v9}, Lcom/google/protobuf/Proto2Schema;->filterUnknownEnumMap(ILjava/util/Map;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v34

    .line 2349
    :goto_2
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 2350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v32

    .line 2352
    invoke-static/range {v32 .. v33}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2351
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    :cond_1
    move-object/from16 v8, v34

    .line 2354
    goto :goto_1

    .end local v5    # "fieldNumber":I
    .end local v6    # "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v7    # "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    .end local v26    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    .end local v29    # "mapField":Ljava/lang/Object;
    :cond_2
    move-object v8, v14

    .line 2356
    :cond_3
    if-eqz v8, :cond_4

    .line 2357
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v20, v30

    .line 2331
    .end local v19    # "number":I
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_5
    :goto_3
    return-void

    .line 1887
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "number":I
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 1888
    move-object/from16 v0, p2

    move-object/from16 v1, p5

    move/from16 v2, v19

    invoke-virtual {v0, v1, v4, v2}, Lcom/google/protobuf/ExtensionSchema;->findExtensionByNumber(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/MessageLite;I)Ljava/lang/Object;

    move-result-object v11

    .line 1889
    .local v11, "extension":Ljava/lang/Object;
    if-eqz v11, :cond_7

    .line 1890
    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/protobuf/Proto2Schema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    move-object/from16 v8, p2

    move-object/from16 v9, p4

    move-object/from16 v12, p5

    move-object/from16 v15, p1

    .line 1891
    invoke-virtual/range {v8 .. v15}, Lcom/google/protobuf/ExtensionSchema;->parseExtension(Lcom/google/protobuf/Reader;Lcom/google/protobuf/MessageLite;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/FieldSet;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v34

    .restart local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v14, v34

    .line 1899
    goto/16 :goto_0

    .line 1901
    .end local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :cond_7
    if-nez v14, :cond_27

    .line 1902
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/UnknownFieldSchema;->newInstance()Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v34

    .restart local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v8, v34

    .line 1905
    .end local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :goto_4
    :try_start_2
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v8, v1}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result v4

    if-eqz v4, :cond_8

    move-object v14, v8

    .line 1906
    goto/16 :goto_0

    .line 2337
    :cond_8
    if-eqz v30, :cond_b

    .line 2338
    invoke-virtual/range {v30 .. v30}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_9
    :goto_5
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 2339
    .restart local v26    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    invoke-interface/range {v26 .. v26}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v5

    .line 2340
    .restart local v5    # "fieldNumber":I
    invoke-interface/range {v26 .. v26}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v29

    .line 2341
    .restart local v29    # "mapField":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 2343
    .restart local v6    # "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->enumFieldMap:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2344
    .restart local v7    # "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    if-eqz v7, :cond_a

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    .line 2346
    invoke-direct/range {v4 .. v9}, Lcom/google/protobuf/Proto2Schema;->filterUnknownEnumMap(ILjava/util/Map;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v34

    .restart local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v8, v34

    .line 2349
    .end local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :cond_a
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_9

    .line 2350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v32

    .line 2352
    invoke-static/range {v32 .. v33}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2351
    move-object/from16 v0, p3

    invoke-static {v0, v14, v15, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_5

    .line 2356
    .end local v5    # "fieldNumber":I
    .end local v6    # "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v7    # "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    .end local v26    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    .end local v29    # "mapField":Ljava/lang/Object;
    :cond_b
    if-eqz v8, :cond_c

    .line 2357
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v20, v30

    .line 1909
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_3

    .line 1911
    .end local v11    # "extension":Ljava/lang/Object;
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_d
    :try_start_3
    invoke-static/range {v32 .. v33}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v17

    .line 1914
    .local v17, "typeAndOffset":I
    :try_start_4
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 2315
    if-nez v14, :cond_25

    .line 2316
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/UnknownFieldSchema;->newInstance()Ljava/lang/Object;
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v34

    .restart local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v8, v34

    .line 2318
    .end local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :goto_6
    :try_start_5
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v8, v1}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z
    :try_end_5
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v4

    if-nez v4, :cond_24

    .line 2337
    if-eqz v30, :cond_1d

    .line 2338
    invoke-virtual/range {v30 .. v30}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_e
    :goto_7
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1d

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 2339
    .restart local v26    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    invoke-interface/range {v26 .. v26}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v5

    .line 2340
    .restart local v5    # "fieldNumber":I
    invoke-interface/range {v26 .. v26}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v29

    .line 2341
    .restart local v29    # "mapField":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 2343
    .restart local v6    # "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->enumFieldMap:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2344
    .restart local v7    # "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    if-eqz v7, :cond_f

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    .line 2346
    invoke-direct/range {v4 .. v9}, Lcom/google/protobuf/Proto2Schema;->filterUnknownEnumMap(ILjava/util/Map;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v34

    .restart local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v8, v34

    .line 2349
    .end local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :cond_f
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_e

    .line 2350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v32

    .line 2352
    invoke-static/range {v32 .. v33}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2351
    move-object/from16 v0, p3

    invoke-static {v0, v14, v15, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 1916
    .end local v5    # "fieldNumber":I
    .end local v6    # "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v7    # "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    .end local v26    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    .end local v29    # "mapField":Ljava/lang/Object;
    :pswitch_0
    :try_start_6
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v22

    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 1917
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .end local v19    # "number":I
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :goto_8
    move-object/from16 v30, v20

    .line 2334
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 1920
    .restart local v19    # "number":I
    :pswitch_1
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 1921
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 1922
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_8

    .line 1924
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v22

    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1925
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 1926
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_8

    .line 1928
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v22

    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1929
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 1930
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_8

    .line 1932
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_4
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1933
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 1934
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_8

    .line 1936
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_5
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v22

    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 1937
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 1938
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 1940
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_6
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1941
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 1942
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 1944
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_7
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 1945
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 1946
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 1948
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v17

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    .line 1949
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 1950
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 1952
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_9
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 1953
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->isLazy(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 1955
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/google/protobuf/LazyFieldLite;

    .line 1956
    .local v35, "value":Lcom/google/protobuf/LazyFieldLite;
    new-instance v4, Lcom/google/protobuf/LazyFieldLite;

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-direct {v4, v0, v8}, Lcom/google/protobuf/LazyFieldLite;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/google/protobuf/LazyFieldLite;->merge(Lcom/google/protobuf/LazyFieldLite;)V

    .line 1957
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-static {v0, v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v20, v30

    .line 1958
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 1961
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v35    # "value":Lcom/google/protobuf/LazyFieldLite;
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_10
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1962
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 1960
    invoke-static {v8, v4}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    .line 1963
    .local v31, "mergedResult":Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-static {v0, v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v20, v30

    .line 1964
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 1966
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v31    # "mergedResult":Ljava/lang/Object;
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_11
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->isLazy(I)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 1969
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    new-instance v4, Lcom/google/protobuf/LazyFieldLite;

    .line 1970
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-direct {v4, v0, v10}, Lcom/google/protobuf/LazyFieldLite;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V

    .line 1967
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1977
    :goto_9
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 1979
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 1974
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_12
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1975
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 1972
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_9

    .line 2324
    .end local v19    # "number":I
    :catch_0
    move-exception v25

    move-object/from16 v20, v30

    .line 2327
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .local v25, "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :goto_a
    if-nez v14, :cond_23

    .line 2328
    :try_start_7
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/UnknownFieldSchema;->newInstance()Ljava/lang/Object;
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v34

    .restart local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v8, v34

    .line 2330
    .end local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :goto_b
    :try_start_8
    move-object/from16 v0, p1

    move-object/from16 v1, p4

    invoke-virtual {v0, v8, v1}, Lcom/google/protobuf/UnknownFieldSchema;->mergeOneFieldFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    move-result v4

    if-nez v4, :cond_22

    .line 2337
    if-eqz v20, :cond_1f

    .line 2338
    invoke-virtual/range {v20 .. v20}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_13
    :goto_c
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1f

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 2339
    .restart local v26    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    invoke-interface/range {v26 .. v26}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v5

    .line 2340
    .restart local v5    # "fieldNumber":I
    invoke-interface/range {v26 .. v26}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v29

    .line 2341
    .restart local v29    # "mapField":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 2343
    .restart local v6    # "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->enumFieldMap:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2344
    .restart local v7    # "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    if-eqz v7, :cond_14

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    .line 2346
    invoke-direct/range {v4 .. v9}, Lcom/google/protobuf/Proto2Schema;->filterUnknownEnumMap(ILjava/util/Map;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v34

    .restart local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v8, v34

    .line 2349
    .end local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :cond_14
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_13

    .line 2350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v32

    .line 2352
    invoke-static/range {v32 .. v33}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2351
    move-object/from16 v0, p3

    invoke-static {v0, v14, v15, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_c

    .line 1981
    .end local v5    # "fieldNumber":I
    .end local v6    # "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v7    # "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v25    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .end local v26    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    .end local v29    # "mapField":Ljava/lang/Object;
    .restart local v19    # "number":I
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_a
    :try_start_9
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1982
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 1983
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 1985
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_b
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1986
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 1987
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 1990
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_c
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readEnum()I

    move-result v28

    .line 1991
    .local v28, "enumValue":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->enumFieldMap:Lcom/google/protobuf/Int2ObjectHashMap;

    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 1992
    .restart local v7    # "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    if-eqz v7, :cond_15

    move/from16 v0, v28

    invoke-interface {v7, v0}, Lcom/google/protobuf/Internal$EnumLiteMap;->findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;

    move-result-object v4

    if-eqz v4, :cond_16

    .line 1993
    :cond_15
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    move/from16 v1, v28

    invoke-static {v0, v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 1994
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 1997
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_16
    move/from16 v0, v19

    move/from16 v1, v28

    move-object/from16 v2, p1

    invoke-static {v0, v1, v14, v2}, Lcom/google/protobuf/Proto2Schema;->storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v34

    .restart local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v20, v30

    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v14, v34

    .line 1999
    goto/16 :goto_8

    .line 2002
    .end local v7    # "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v28    # "enumValue":I
    .end local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_d
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 2003
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 2004
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2006
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_e
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v22

    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 2007
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 2008
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2010
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_f
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 2011
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 2012
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2014
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_10
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v22

    move-object/from16 v0, p3

    move-wide/from16 v1, v22

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 2015
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 2016
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2018
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_11
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 2021
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 2022
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 2020
    invoke-static {v8, v4}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    .line 2023
    .restart local v31    # "mergedResult":Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-static {v0, v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object/from16 v20, v30

    .line 2024
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2027
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v31    # "mergedResult":Ljava/lang/Object;
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_17
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 2028
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 2025
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2029
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    move-object/from16 v20, v30

    .line 2031
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2033
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2034
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2033
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2035
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2037
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2038
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2037
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2039
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2041
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2042
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2041
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2043
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2045
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2046
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2045
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2047
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2049
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2050
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2049
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2051
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2053
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2054
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2053
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2055
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2057
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2058
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2057
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2059
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2061
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2062
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2061
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2063
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2065
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v17

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->readStringList(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    move-object/from16 v20, v30

    .line 2066
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2068
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 2072
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v19

    .end local v19    # "number":I
    check-cast v19, Ljava/lang/Class;

    move-object/from16 v15, p0

    move-object/from16 v16, p3

    move-object/from16 v18, p4

    move-object/from16 v20, p5

    .line 2068
    invoke-virtual/range {v15 .. v20}, Lcom/google/protobuf/Proto2Schema;->readMessageList(Ljava/lang/Object;ILcom/google/protobuf/Reader;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V

    move-object/from16 v20, v30

    .line 2074
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2076
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "number":I
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2077
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2076
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readBytesList(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2078
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2080
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2081
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2080
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2082
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2085
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2086
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v27

    .line 2087
    .local v27, "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 2088
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->enumFieldMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 2092
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2089
    move/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    invoke-static {v0, v1, v4, v14, v2}, Lcom/google/protobuf/Proto2Schema;->filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v34

    .restart local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v20, v30

    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v14, v34

    .line 2095
    goto/16 :goto_8

    .line 2098
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v27    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2099
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2098
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2100
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2102
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2103
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2102
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2104
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2106
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2107
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2106
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2108
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2110
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2111
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2110
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2112
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2114
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2115
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2114
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2116
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2118
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2119
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2118
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2120
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2122
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2123
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2122
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2124
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2126
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2127
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2126
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2128
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2130
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2131
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2130
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2132
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2134
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2135
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2134
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2136
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2138
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2139
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2138
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2140
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2142
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2143
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2142
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2144
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2146
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2147
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2146
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2148
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2151
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2152
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v27

    .line 2153
    .restart local v27    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    move-object/from16 v0, p4

    move-object/from16 v1, v27

    invoke-interface {v0, v1}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    .line 2154
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->enumFieldMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 2158
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2155
    move/from16 v0, v19

    move-object/from16 v1, v27

    move-object/from16 v2, p1

    invoke-static {v0, v1, v4, v14, v2}, Lcom/google/protobuf/Proto2Schema;->filterUnknownEnumList(ILjava/util/List;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v34

    .restart local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v20, v30

    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object/from16 v14, v34

    .line 2161
    goto/16 :goto_8

    .line 2164
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v27    # "enumList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    .end local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2165
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2164
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2166
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2168
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2169
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2168
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2170
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2172
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2173
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2172
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2174
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2176
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2177
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 2176
    move-object/from16 v0, p4

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    move-object/from16 v20, v30

    .line 2178
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2182
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_31
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v20

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 2184
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/lang/Class;

    move-object/from16 v18, p0

    move-object/from16 v19, p3

    move-object/from16 v22, p4

    move-object/from16 v24, p5

    .line 2180
    invoke-virtual/range {v18 .. v24}, Lcom/google/protobuf/Proto2Schema;->readGroupList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .end local v19    # "number":I
    move-object/from16 v20, v30

    .line 2186
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2188
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "number":I
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_32
    if-nez v30, :cond_26

    .line 2189
    new-instance v20, Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct/range {v20 .. v20}, Lcom/google/protobuf/Int2ObjectHashMap;-><init>()V
    :try_end_9
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 2191
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :goto_d
    :try_start_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 2194
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v21

    move-object/from16 v18, p0

    move-object/from16 v22, p5

    move-object/from16 v23, p4

    .line 2191
    invoke-direct/range {v18 .. v23}, Lcom/google/protobuf/Proto2Schema;->mergeMap(ILcom/google/protobuf/Int2ObjectHashMap;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V
    :try_end_a
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto/16 :goto_8

    .line 2324
    :catch_1
    move-exception v25

    goto/16 :goto_a

    .line 2200
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_33
    :try_start_b
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 2199
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2201
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2202
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2205
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_34
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 2204
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2206
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2207
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2210
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_35
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2209
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2211
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2212
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2215
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_36
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2214
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2216
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2217
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2220
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_37
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2219
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2221
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2222
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2225
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_38
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2224
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2226
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2227
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2230
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_39
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2229
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2231
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2232
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2235
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3a
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 2234
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2236
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2237
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2239
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3b
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move/from16 v2, v17

    move-object/from16 v3, p4

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    .line 2240
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2241
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2243
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3c
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 2244
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->isLazy(I)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 2246
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v35

    check-cast v35, Lcom/google/protobuf/LazyFieldLite;

    .line 2247
    .restart local v35    # "value":Lcom/google/protobuf/LazyFieldLite;
    new-instance v4, Lcom/google/protobuf/LazyFieldLite;

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v8

    move-object/from16 v0, p5

    invoke-direct {v4, v0, v8}, Lcom/google/protobuf/LazyFieldLite;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V

    move-object/from16 v0, v35

    invoke-virtual {v0, v4}, Lcom/google/protobuf/LazyFieldLite;->merge(Lcom/google/protobuf/LazyFieldLite;)V

    .line 2248
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    move-object/from16 v1, v35

    invoke-static {v0, v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2270
    .end local v35    # "value":Lcom/google/protobuf/LazyFieldLite;
    :goto_e
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2271
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2252
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_18
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 2253
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 2251
    invoke-static {v8, v4}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v31

    .line 2254
    .restart local v31    # "mergedResult":Ljava/lang/Object;
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p3

    move-object/from16 v1, v31

    invoke-static {v0, v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    :try_end_b
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_b .. :try_end_b} :catch_0
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_e

    .line 2337
    .end local v17    # "typeAndOffset":I
    .end local v19    # "number":I
    .end local v31    # "mergedResult":Ljava/lang/Object;
    .end local v32    # "pos":J
    :catchall_0
    move-exception v4

    move-object v10, v4

    move-object/from16 v20, v30

    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object v8, v14

    :goto_f
    if-eqz v20, :cond_20

    .line 2338
    invoke-virtual/range {v20 .. v20}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v12

    :cond_19
    :goto_10
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_20

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 2339
    .restart local v26    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    invoke-interface/range {v26 .. v26}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v5

    .line 2340
    .restart local v5    # "fieldNumber":I
    invoke-interface/range {v26 .. v26}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v29

    .line 2341
    .restart local v29    # "mapField":Ljava/lang/Object;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v6

    .line 2343
    .restart local v6    # "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->enumFieldMap:Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/Internal$EnumLiteMap;

    .line 2344
    .restart local v7    # "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    if-eqz v7, :cond_1a

    move-object/from16 v4, p0

    move-object/from16 v9, p1

    .line 2346
    invoke-direct/range {v4 .. v9}, Lcom/google/protobuf/Proto2Schema;->filterUnknownEnumMap(ILjava/util/Map;Lcom/google/protobuf/Internal$EnumLiteMap;Ljava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;

    move-result-object v34

    .restart local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    move-object/from16 v8, v34

    .line 2349
    .end local v34    # "unknownFields":Ljava/lang/Object;, "TUT;"
    :cond_1a
    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_19

    .line 2350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->positionStrategy:Lcom/google/protobuf/Proto2Schema$PositionStrategy;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Proto2Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v32

    .line 2352
    .restart local v32    # "pos":J
    invoke-static/range {v32 .. v33}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v4

    invoke-static {v4}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v14

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    move-object/from16 v0, v29

    invoke-interface {v4, v0}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 2351
    move-object/from16 v0, p3

    invoke-static {v0, v14, v15, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_10

    .line 2257
    .end local v5    # "fieldNumber":I
    .end local v6    # "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v7    # "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v26    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    .end local v29    # "mapField":Ljava/lang/Object;
    .restart local v17    # "typeAndOffset":I
    .restart local v19    # "number":I
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_1b
    :try_start_c
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->isLazy(I)Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 2260
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    new-instance v4, Lcom/google/protobuf/LazyFieldLite;

    .line 2261
    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v10

    move-object/from16 v0, p5

    invoke-direct {v4, v0, v10}, Lcom/google/protobuf/LazyFieldLite;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V

    .line 2258
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2268
    :goto_11
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    invoke-static {v0, v4}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_e

    .line 2265
    :cond_1c
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 2266
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 2263
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_11

    .line 2273
    :pswitch_3d
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2274
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2275
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2278
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3e
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2277
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2279
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2280
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2283
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3f
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readEnum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2282
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2284
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2285
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2288
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_40
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2287
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2289
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2290
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2293
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_41
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2292
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2294
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2295
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2298
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_42
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 2297
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2299
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2300
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2303
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_43
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p4 .. p4}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v22

    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 2302
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2304
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object/from16 v20, v30

    .line 2305
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2309
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_44
    invoke-static/range {v17 .. v17}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto2Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 2310
    move/from16 v0, v19

    invoke-virtual {v4, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readGroup(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 2307
    move-object/from16 v0, p3

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2311
    const-wide/16 v8, 0x8

    add-long v8, v8, v32

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    move-object/from16 v0, p3

    move/from16 v1, v19

    invoke-static {v0, v1, v4}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V
    :try_end_c
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_c .. :try_end_c} :catch_0
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    move-object/from16 v20, v30

    .line 2312
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_8

    .line 2356
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_1d
    if-eqz v8, :cond_1e

    .line 2357
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_1e
    move-object/from16 v20, v30

    .line 2319
    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_3

    .line 2356
    .end local v19    # "number":I
    .restart local v25    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :cond_1f
    if-eqz v8, :cond_5

    .line 2357
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_3

    .line 2356
    .end local v17    # "typeAndOffset":I
    .end local v25    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .end local v32    # "pos":J
    :cond_20
    if-eqz v8, :cond_21

    .line 2357
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lcom/google/protobuf/UnknownFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object/from16 v0, p1

    move-object/from16 v1, p3

    invoke-virtual {v0, v1, v4}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_21
    throw v10

    .line 2337
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v19    # "number":I
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v32    # "pos":J
    :catchall_1
    move-exception v4

    move-object v10, v4

    move-object/from16 v20, v30

    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_f

    .end local v19    # "number":I
    .restart local v17    # "typeAndOffset":I
    :catchall_2
    move-exception v4

    move-object v10, v4

    move-object v8, v14

    goto/16 :goto_f

    .restart local v25    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :catchall_3
    move-exception v4

    move-object v10, v4

    goto/16 :goto_f

    .line 2324
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v25    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .restart local v19    # "number":I
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :catch_2
    move-exception v25

    move-object/from16 v20, v30

    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object v14, v8

    goto/16 :goto_a

    .end local v19    # "number":I
    .restart local v25    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :cond_22
    move-object v14, v8

    goto/16 :goto_8

    :cond_23
    move-object v8, v14

    goto/16 :goto_b

    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v25    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .restart local v19    # "number":I
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_24
    move-object/from16 v20, v30

    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object v14, v8

    goto/16 :goto_8

    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_25
    move-object v8, v14

    goto/16 :goto_6

    :cond_26
    move-object/from16 v20, v30

    .end local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_d

    .end local v17    # "typeAndOffset":I
    .end local v20    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v11    # "extension":Ljava/lang/Object;
    .restart local v30    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_27
    move-object v8, v14

    goto/16 :goto_4

    .end local v11    # "extension":Ljava/lang/Object;
    .restart local v5    # "fieldNumber":I
    .restart local v6    # "mapData":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .restart local v7    # "enumMap":Lcom/google/protobuf/Internal$EnumLiteMap;, "Lcom/google/protobuf/Internal$EnumLiteMap<*>;"
    .restart local v26    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    .restart local v29    # "mapField":Ljava/lang/Object;
    :cond_28
    move-object/from16 v34, v8

    goto/16 :goto_2

    .line 1914
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
    .end packed-switch
.end method

.method private mergeLazyMessage(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 11
    .param p3, "pos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;J)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    const-wide/16 v8, 0x8

    .line 881
    invoke-static {p3, p4}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v5

    .line 882
    .local v5, "typeAndOffset":I
    invoke-static {v5}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v2

    .line 884
    .local v2, "offset":J
    add-long v6, p3, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 896
    :cond_0
    :goto_0
    return-void

    .line 888
    :cond_1
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/LazyFieldLite;

    .line 889
    .local v1, "mine":Lcom/google/protobuf/LazyFieldLite;
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/LazyFieldLite;

    .line 890
    .local v4, "theirs":Lcom/google/protobuf/LazyFieldLite;
    if-eqz v4, :cond_0

    .line 891
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 892
    .local v0, "merged":Lcom/google/protobuf/LazyFieldLite;
    :goto_1
    invoke-virtual {v0, v4}, Lcom/google/protobuf/LazyFieldLite;->merge(Lcom/google/protobuf/LazyFieldLite;)V

    .line 893
    invoke-static {p1, v2, v3, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 894
    add-long v6, p3, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 891
    .end local v0    # "merged":Lcom/google/protobuf/LazyFieldLite;
    :cond_2
    new-instance v0, Lcom/google/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/google/protobuf/LazyFieldLite;-><init>()V

    goto :goto_1
.end method

.method private final mergeMap(ILcom/google/protobuf/Int2ObjectHashMap;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V
    .locals 3
    .param p1, "number"    # I
    .param p3, "mapDefaultEntry"    # Ljava/lang/Object;
    .param p4, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .param p5, "reader"    # Lcom/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(I",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/lang/Object;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            "Lcom/google/protobuf/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2419
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p2, "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    invoke-virtual {p2, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 2420
    .local v0, "mapField":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 2421
    iget-object v1, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v1, p3}, Lcom/google/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 2422
    invoke-virtual {p2, p1, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 2424
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 2425
    invoke-interface {v1, v0}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 2426
    invoke-interface {v2, p3}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v2

    .line 2424
    invoke-interface {p5, v1, v2, p4}, Lcom/google/protobuf/Reader;->readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2428
    return-void
.end method

.method private mergeMessage(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 11
    .param p3, "pos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;J)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    const-wide/16 v8, 0x8

    .line 840
    invoke-static {p3, p4}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v5

    .line 841
    .local v5, "typeAndOffset":I
    invoke-static {v5}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v2

    .line 843
    .local v2, "offset":J
    add-long v6, p3, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-nez v6, :cond_1

    .line 857
    :cond_0
    :goto_0
    return-void

    .line 847
    :cond_1
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 848
    .local v1, "mine":Ljava/lang/Object;
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 849
    .local v4, "theirs":Ljava/lang/Object;
    if-eqz v1, :cond_2

    if-eqz v4, :cond_2

    .line 850
    invoke-static {v1, v4}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 851
    .local v0, "merged":Ljava/lang/Object;
    invoke-static {p1, v2, v3, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 852
    add-long v6, p3, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0

    .line 853
    .end local v0    # "merged":Ljava/lang/Object;
    :cond_2
    if-eqz v4, :cond_0

    .line 854
    invoke-static {p1, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 855
    add-long v6, p3, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_0
.end method

.method private mergeOneofLazyMessage(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 11
    .param p3, "pos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;J)V"
        }
    .end annotation

    .prologue
    .line 899
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-static {p3, p4}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v6

    .line 900
    .local v6, "typeAndOffset":I
    invoke-static {p3, p4}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v2

    .line 901
    .local v2, "number":I
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    .line 903
    .local v4, "offset":J
    const-wide/16 v8, 0x8

    add-long/2addr v8, p3

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p2, v2, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 915
    :cond_0
    :goto_0
    return-void

    .line 907
    :cond_1
    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/LazyFieldLite;

    .line 908
    .local v1, "mine":Lcom/google/protobuf/LazyFieldLite;
    invoke-static {p2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/google/protobuf/LazyFieldLite;

    .line 909
    .local v3, "theirs":Lcom/google/protobuf/LazyFieldLite;
    if-eqz v3, :cond_0

    .line 910
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 911
    .local v0, "merged":Lcom/google/protobuf/LazyFieldLite;
    :goto_1
    invoke-virtual {v0, v3}, Lcom/google/protobuf/LazyFieldLite;->merge(Lcom/google/protobuf/LazyFieldLite;)V

    .line 912
    invoke-static {p1, v4, v5, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 913
    const-wide/16 v8, 0x8

    add-long/2addr v8, p3

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v2, v7}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_0

    .line 910
    .end local v0    # "merged":Lcom/google/protobuf/LazyFieldLite;
    :cond_2
    new-instance v0, Lcom/google/protobuf/LazyFieldLite;

    invoke-direct {v0}, Lcom/google/protobuf/LazyFieldLite;-><init>()V

    goto :goto_1
.end method

.method private mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 11
    .param p3, "pos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;J)V"
        }
    .end annotation

    .prologue
    .line 860
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-static {p3, p4}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v6

    .line 861
    .local v6, "typeAndOffset":I
    invoke-static {p3, p4}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v2

    .line 862
    .local v2, "number":I
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v4

    .line 864
    .local v4, "offset":J
    const-wide/16 v8, 0x8

    add-long/2addr v8, p3

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p2, v2, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 878
    :cond_0
    :goto_0
    return-void

    .line 868
    :cond_1
    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 869
    .local v1, "mine":Ljava/lang/Object;
    invoke-static {p2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 870
    .local v3, "theirs":Ljava/lang/Object;
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 871
    invoke-static {v1, v3}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 872
    .local v0, "merged":Ljava/lang/Object;
    invoke-static {p1, v4, v5, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 873
    const-wide/16 v8, 0x8

    add-long/2addr v8, p3

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v2, v7}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_0

    .line 874
    .end local v0    # "merged":Ljava/lang/Object;
    :cond_2
    if-eqz v3, :cond_0

    .line 875
    invoke-static {p1, v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 876
    const-wide/16 v8, 0x8

    add-long/2addr v8, p3

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v2, v7}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method static newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto2Schema;
    .locals 28
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .param p2, "listFieldSchema"    # Lcom/google/protobuf/ListFieldSchema;
    .param p5, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;",
            "Lcom/google/protobuf/ExtensionSchema",
            "<*>;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/Proto2Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 194
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<*>;"
    .local p4, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->getFields()Ljava/util/List;

    move-result-object v21

    .line 196
    .local v21, "fis":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/FieldInfo;>;"
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v23

    .line 197
    .local v23, "numFields":I
    mul-int/lit8 v20, v23, 0x10

    .line 198
    .local v20, "bufferLength":I
    add-int/lit8 v2, v20, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 199
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v26

    .line 200
    .local v26, "tempAddress":J
    const-wide/16 v12, 0x7

    and-long v12, v12, v26

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-eqz v2, :cond_0

    .line 202
    const-wide/16 v12, -0x8

    and-long v12, v12, v26

    const-wide/16 v14, 0x8

    add-long v26, v12, v14

    .line 204
    :cond_0
    move-wide/from16 v4, v26

    .line 205
    .local v4, "address":J
    move/from16 v0, v20

    int-to-long v12, v0

    add-long v6, v4, v12

    .line 208
    .local v6, "limit":J
    move-wide/from16 v24, v4

    .line 209
    .local v24, "pos":J
    const/16 v22, 0x0

    .local v22, "i":I
    :goto_0
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v22

    if-ge v0, v2, :cond_1

    .line 210
    invoke-interface/range {v21 .. v22}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    move-wide/from16 v0, v24

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/Proto2Schema;->storeFieldData(Lcom/google/protobuf/FieldInfo;J)V

    .line 209
    add-int/lit8 v22, v22, 0x1

    const-wide/16 v12, 0x10

    add-long v24, v24, v12

    goto :goto_0

    .line 213
    :cond_1
    const/4 v9, -0x1

    .line 214
    .local v9, "minFieldNumber":I
    const/4 v10, -0x1

    .line 215
    .local v10, "maxFieldNumber":I
    if-lez v23, :cond_2

    .line 216
    const/4 v2, 0x0

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v2}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v9

    .line 217
    add-int/lit8 v2, v23, -0x1

    move-object/from16 v0, v21

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v2}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v10

    .line 219
    :cond_2
    new-instance v2, Lcom/google/protobuf/Proto2Schema;

    .line 223
    invoke-interface/range {v21 .. v21}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    .line 228
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->messageFieldClassMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v13

    .line 229
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->enumFieldMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v14

    .line 234
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->mapFieldDefaultEntryMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v19

    move-object/from16 v12, p0

    move-object/from16 v15, p2

    move-object/from16 v16, p3

    move-object/from16 v17, p4

    move-object/from16 v18, p5

    invoke-direct/range {v2 .. v19}, Lcom/google/protobuf/Proto2Schema;-><init>(Ljava/nio/ByteBuffer;JJIIIZLjava/lang/Class;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;Lcom/google/protobuf/Int2ObjectHashMap;)V

    .line 219
    return-object v2
.end method

.method static newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto2Schema;
    .locals 38
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .param p2, "listFieldSchema"    # Lcom/google/protobuf/ListFieldSchema;
    .param p5, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;",
            "Lcom/google/protobuf/ExtensionSchema",
            "<*>;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/Proto2Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 122
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p3, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<*>;"
    .local p4, "extensionSchema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<*>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->getFields()Ljava/util/List;

    move-result-object v27

    .line 126
    .local v27, "fis":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/FieldInfo;>;"
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 127
    const/4 v11, 0x0

    .line 128
    .local v11, "minFieldNumber":I
    const/4 v12, 0x0

    .line 129
    .local v12, "maxFieldNumber":I
    const/16 v28, 0x0

    .line 137
    .local v28, "numEntries":I
    :goto_0
    mul-int/lit8 v23, v28, 0x10

    .line 138
    .local v23, "bufferLength":I
    add-int/lit8 v4, v23, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 139
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v5}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v36

    .line 140
    .local v36, "tempAddress":J
    const-wide/16 v14, 0x7

    and-long v14, v14, v36

    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-eqz v4, :cond_0

    .line 142
    const-wide/16 v14, -0x8

    and-long v14, v14, v36

    const-wide/16 v16, 0x8

    add-long v36, v14, v16

    .line 144
    :cond_0
    move-wide/from16 v6, v36

    .line 145
    .local v6, "address":J
    move/from16 v0, v23

    int-to-long v14, v0

    add-long v8, v6, v14

    .line 148
    .local v8, "limit":J
    const/16 v25, 0x0

    .line 149
    .local v25, "fieldIndex":I
    const/16 v22, 0x0

    .local v22, "bufferIndex":I
    :goto_1
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v25

    if-ge v0, v4, :cond_4

    .line 150
    move-object/from16 v0, v27

    move/from16 v1, v25

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Lcom/google/protobuf/FieldInfo;

    .line 151
    .local v24, "fi":Lcom/google/protobuf/FieldInfo;
    invoke-virtual/range {v24 .. v24}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v26

    .line 152
    .local v26, "fieldNumber":I
    sub-int v4, v26, v11

    shl-int/lit8 v4, v4, 0x4

    move/from16 v0, v22

    if-ge v0, v4, :cond_2

    .line 154
    move/from16 v0, v22

    int-to-long v14, v0

    add-long/2addr v14, v6

    const-wide/16 v16, 0x10

    add-long v32, v14, v16

    .line 155
    .local v32, "skipLimit":J
    move/from16 v0, v22

    int-to-long v14, v0

    add-long v34, v6, v14

    .local v34, "skipPos":J
    :goto_2
    cmp-long v4, v34, v32

    if-gez v4, :cond_3

    .line 156
    const-wide/16 v14, -0x1

    move-wide/from16 v0, v34

    invoke-static {v0, v1, v14, v15}, Lcom/google/protobuf/UnsafeUtil;->putLong(JJ)V

    .line 155
    const-wide/16 v14, 0x8

    add-long v34, v34, v14

    goto :goto_2

    .line 131
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "address":J
    .end local v8    # "limit":J
    .end local v11    # "minFieldNumber":I
    .end local v12    # "maxFieldNumber":I
    .end local v22    # "bufferIndex":I
    .end local v23    # "bufferLength":I
    .end local v24    # "fi":Lcom/google/protobuf/FieldInfo;
    .end local v25    # "fieldIndex":I
    .end local v26    # "fieldNumber":I
    .end local v28    # "numEntries":I
    .end local v32    # "skipLimit":J
    .end local v34    # "skipPos":J
    .end local v36    # "tempAddress":J
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v4}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v11

    .line 132
    .restart local v11    # "minFieldNumber":I
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v27

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v4}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v12

    .line 133
    .restart local v12    # "maxFieldNumber":I
    sub-int v4, v12, v11

    add-int/lit8 v28, v4, 0x1

    .restart local v28    # "numEntries":I
    goto/16 :goto_0

    .line 163
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "address":J
    .restart local v8    # "limit":J
    .restart local v22    # "bufferIndex":I
    .restart local v23    # "bufferLength":I
    .restart local v24    # "fi":Lcom/google/protobuf/FieldInfo;
    .restart local v25    # "fieldIndex":I
    .restart local v26    # "fieldNumber":I
    .restart local v36    # "tempAddress":J
    :cond_2
    move/from16 v0, v22

    int-to-long v14, v0

    add-long v30, v6, v14

    .line 164
    .local v30, "pos":J
    move-object/from16 v0, v24

    move-wide/from16 v1, v30

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/Proto2Schema;->storeFieldData(Lcom/google/protobuf/FieldInfo;J)V

    .line 166
    add-int/lit8 v25, v25, 0x1

    .line 149
    .end local v30    # "pos":J
    :cond_3
    add-int/lit8 v22, v22, 0x10

    goto :goto_1

    .line 169
    .end local v24    # "fi":Lcom/google/protobuf/FieldInfo;
    .end local v26    # "fieldNumber":I
    :cond_4
    new-instance v4, Lcom/google/protobuf/Proto2Schema;

    .line 173
    invoke-interface/range {v27 .. v27}, Ljava/util/List;->size()I

    move-result v10

    const/4 v13, 0x1

    .line 178
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->messageFieldClassMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v15

    .line 179
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->enumFieldMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v16

    .line 184
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->mapFieldDefaultEntryMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v21

    move-object/from16 v14, p0

    move-object/from16 v17, p2

    move-object/from16 v18, p3

    move-object/from16 v19, p4

    move-object/from16 v20, p5

    invoke-direct/range {v4 .. v21}, Lcom/google/protobuf/Proto2Schema;-><init>(Ljava/nio/ByteBuffer;JJIIIZLjava/lang/Class;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Lcom/google/protobuf/MapFieldSchema;Lcom/google/protobuf/Int2ObjectHashMap;)V

    .line 169
    return-object v4
.end method

.method private static numberAt(J)I
    .locals 2
    .param p0, "pos"    # J

    .prologue
    .line 2576
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v0

    return v0
.end method

.method private static offset(I)J
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 2604
    const v0, 0xfffff

    and-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static oneofBooleanAt(Ljava/lang/Object;J)Z
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)Z"
        }
    .end annotation

    .prologue
    .line 2644
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method private static oneofDoubleAt(Ljava/lang/Object;J)D
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)D"
        }
    .end annotation

    .prologue
    .line 2628
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method private static oneofFloatAt(Ljava/lang/Object;J)F
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)F"
        }
    .end annotation

    .prologue
    .line 2632
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    return v0
.end method

.method private static oneofIntAt(Ljava/lang/Object;J)I
    .locals 1
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)I"
        }
    .end annotation

    .prologue
    .line 2636
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method private static oneofLongAt(Ljava/lang/Object;J)J
    .locals 3
    .param p1, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;J)J"
        }
    .end annotation

    .prologue
    .line 2640
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V
    .locals 3
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Lcom/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2523
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2525
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 2535
    :goto_0
    return-void

    .line 2526
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/Proto2Schema;->lite:Z

    if-eqz v0, :cond_1

    .line 2529
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 2533
    :cond_1
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0
.end method

.method private readStringList(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V
    .locals 4
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Lcom/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2538
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2539
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2540
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 2539
    invoke-interface {p3, v0}, Lcom/google/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    .line 2544
    :goto_0
    return-void

    .line 2542
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/protobuf/Reader;->readStringList(Ljava/util/List;)V

    goto :goto_0
.end method

.method private static setFieldPresent(Ljava/lang/Object;I)V
    .locals 5
    .param p1, "presenceMaskAndOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;I)V"
        }
    .end annotation

    .prologue
    .line 2658
    .local p0, "message":Ljava/lang/Object;, "TT;"
    const/4 v3, 0x1

    ushr-int/lit8 v4, p1, 0x14

    shl-int v2, v3, v4

    .line 2659
    .local v2, "presenceMask":I
    const v3, 0xfffff

    and-int/2addr v3, p1

    int-to-long v0, v3

    .line 2663
    .local v0, "presenceFieldOffset":J
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v3

    or-int/2addr v3, v2

    .line 2660
    invoke-static {p0, v0, v1, v3}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 2664
    return-void
.end method

.method private static setOneofPresent(Ljava/lang/Object;II)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "presenceMaskAndOffset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;II)V"
        }
    .end annotation

    .prologue
    .line 2676
    .local p0, "message":Ljava/lang/Object;, "TT;"
    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 2677
    return-void
.end method

.method private static storeFieldData(Lcom/google/protobuf/FieldInfo;J)V
    .locals 13
    .param p0, "fi"    # Lcom/google/protobuf/FieldInfo;
    .param p1, "pos"    # J

    .prologue
    const/4 v7, 0x0

    .line 243
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getOneof()Lcom/google/protobuf/OneofInfo;

    move-result-object v1

    .line 244
    .local v1, "oneof":Lcom/google/protobuf/OneofInfo;
    if-eqz v1, :cond_1

    .line 245
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/FieldType;->id()I

    move-result v6

    add-int/lit8 v5, v6, 0x33

    .line 246
    .local v5, "typeId":I
    invoke-virtual {v1}, Lcom/google/protobuf/OneofInfo;->getValueField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v0, v8

    .line 247
    .local v0, "fieldOffset":I
    invoke-virtual {v1}, Lcom/google/protobuf/OneofInfo;->getCaseField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v2, v8

    .line 248
    .local v2, "presenceFieldOffset":I
    const/4 v3, 0x0

    .line 262
    .local v3, "presenceMaskShift":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v6

    invoke-static {p1, p2, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(JI)V

    .line 263
    const-wide/16 v8, 0x4

    add-long v10, p1, v8

    .line 265
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->isEnforceUtf8()Z

    move-result v6

    if-eqz v6, :cond_3

    const/high16 v6, 0x20000000

    .line 266
    :goto_1
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->isRequired()Z

    move-result v8

    if-eqz v8, :cond_4

    const/high16 v8, 0x10000000

    :goto_2
    or-int/2addr v6, v8

    .line 267
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->isLazy()Z

    move-result v8

    if-eqz v8, :cond_0

    const/high16 v7, 0x40000000    # 2.0f

    :cond_0
    or-int/2addr v6, v7

    shl-int/lit8 v7, v5, 0x14

    or-int/2addr v6, v7

    or-int/2addr v6, v0

    .line 263
    invoke-static {v10, v11, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(JI)V

    .line 270
    const-wide/16 v6, 0x8

    add-long/2addr v6, p1

    shl-int/lit8 v8, v3, 0x14

    or-int/2addr v8, v2

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->putInt(JI)V

    .line 271
    return-void

    .line 250
    .end local v0    # "fieldOffset":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "presenceMaskShift":I
    .end local v5    # "typeId":I
    :cond_1
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v4

    .line 251
    .local v4, "type":Lcom/google/protobuf/FieldType;
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v0, v8

    .line 252
    .restart local v0    # "fieldOffset":I
    invoke-virtual {v4}, Lcom/google/protobuf/FieldType;->id()I

    move-result v5

    .line 253
    .restart local v5    # "typeId":I
    invoke-virtual {v4}, Lcom/google/protobuf/FieldType;->isList()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v4}, Lcom/google/protobuf/FieldType;->isMap()Z

    move-result v6

    if-nez v6, :cond_2

    .line 254
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getPresenceField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v8

    long-to-int v2, v8

    .line 255
    .restart local v2    # "presenceFieldOffset":I
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getPresenceMask()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->numberOfTrailingZeros(I)I

    move-result v3

    .restart local v3    # "presenceMaskShift":I
    goto :goto_0

    .line 257
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "presenceMaskShift":I
    :cond_2
    const/4 v2, 0x0

    .line 258
    .restart local v2    # "presenceFieldOffset":I
    const/4 v3, 0x0

    .restart local v3    # "presenceMaskShift":I
    goto :goto_0

    .end local v4    # "type":Lcom/google/protobuf/FieldType;
    :cond_3
    move v6, v7

    .line 265
    goto :goto_1

    :cond_4
    move v8, v7

    .line 266
    goto :goto_2
.end method

.method static storeUnknownEnum(IILjava/lang/Object;Lcom/google/protobuf/UnknownFieldSchema;)Ljava/lang/Object;
    .locals 2
    .param p0, "number"    # I
    .param p1, "enumValue"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            ">(IITUT;",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<TUT;>;)TUT;"
        }
    .end annotation

    .prologue
    .line 2365
    .local p2, "unknownFields":Ljava/lang/Object;, "TUT;"
    .local p3, "unknownFieldSchema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;>;"
    if-nez p2, :cond_0

    .line 2366
    invoke-virtual {p3}, Lcom/google/protobuf/UnknownFieldSchema;->newInstance()Ljava/lang/Object;

    move-result-object p2

    .line 2368
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p3, p2, p0, v0, v1}, Lcom/google/protobuf/UnknownFieldSchema;->addVarint(Ljava/lang/Object;IJ)V

    .line 2369
    return-object p2
.end method

.method private static type(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 2588
    const/high16 v0, 0xff00000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method private static typeAndOffsetAt(J)I
    .locals 2
    .param p0, "pos"    # J

    .prologue
    .line 2580
    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v0

    return v0
.end method

.method private writeFieldsInAscendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 12
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 932
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-boolean v8, p0, Lcom/google/protobuf/Proto2Schema;->hasExtensions:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v8, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    .line 933
    .local v1, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    :goto_0
    if-nez v1, :cond_1

    .line 934
    const/4 v0, 0x0

    .line 935
    .local v0, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 936
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v2, v8

    .line 937
    .local v2, "nextExtension":Ljava/util/Map$Entry;
    :goto_2
    iget-wide v4, p0, Lcom/google/protobuf/Proto2Schema;->address:J

    .local v4, "pos":J
    :goto_3
    iget-wide v8, p0, Lcom/google/protobuf/Proto2Schema;->limit:J

    cmp-long v8, v4, v8

    if-gez v8, :cond_9

    .line 938
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v6

    .line 939
    .local v6, "typeAndOffset":I
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v3

    .line 942
    .local v3, "number":I
    :goto_4
    if-eqz v2, :cond_4

    iget-object v8, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v8, v2}, Lcom/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v8

    if-gt v8, v3, :cond_4

    .line 943
    iget-object v8, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v8, p2, v2}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 944
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v2, v8

    :goto_5
    goto :goto_4

    .line 932
    .end local v0    # "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    .end local v1    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    .end local v2    # "nextExtension":Ljava/util/Map$Entry;
    .end local v3    # "number":I
    .end local v4    # "pos":J
    .end local v6    # "typeAndOffset":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 934
    .restart local v1    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1

    .line 936
    .restart local v0    # "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 944
    .restart local v2    # "nextExtension":Ljava/util/Map$Entry;
    .restart local v3    # "number":I
    .restart local v4    # "pos":J
    .restart local v6    # "typeAndOffset":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_5

    .line 948
    :cond_4
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->type(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 937
    :cond_5
    :goto_6
    const-wide/16 v8, 0x10

    add-long/2addr v4, v8

    goto :goto_3

    .line 950
    :pswitch_0
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 951
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto :goto_6

    .line 955
    :pswitch_1
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 956
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->floatAt(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_6

    .line 960
    :pswitch_2
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 961
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_6

    .line 965
    :pswitch_3
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 966
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_6

    .line 970
    :pswitch_4
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 971
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_6

    .line 975
    :pswitch_5
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 976
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_6

    .line 980
    :pswitch_6
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 981
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_6

    .line 985
    :pswitch_7
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 986
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_6

    .line 990
    :pswitch_8
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 991
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v3, v8, p2}, Lcom/google/protobuf/Proto2Schema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 995
    :pswitch_9
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 996
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 997
    .local v7, "value":Ljava/lang/Object;
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->isLazy(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 998
    check-cast v7, Lcom/google/protobuf/LazyFieldLite;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7, p2, v3}, Lcom/google/protobuf/LazyFieldLite;->writeTo(Lcom/google/protobuf/Writer;I)V

    goto/16 :goto_6

    .line 1000
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_6
    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1005
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_a
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1007
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/ByteString;

    .line 1006
    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_6

    .line 1011
    :pswitch_b
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1012
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_6

    .line 1016
    :pswitch_c
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1017
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_6

    .line 1021
    :pswitch_d
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1022
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_6

    .line 1026
    :pswitch_e
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1027
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_6

    .line 1031
    :pswitch_f
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1032
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_6

    .line 1036
    :pswitch_10
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1037
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_6

    .line 1041
    :pswitch_11
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1042
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1047
    :pswitch_12
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1048
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1046
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1054
    :pswitch_13
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1055
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1053
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1061
    :pswitch_14
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1062
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1060
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1068
    :pswitch_15
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1069
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1067
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1075
    :pswitch_16
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1076
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1074
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1082
    :pswitch_17
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1083
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1081
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1089
    :pswitch_18
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1090
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1088
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1096
    :pswitch_19
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1097
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1095
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1103
    :pswitch_1a
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1104
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1102
    invoke-static {v9, v8, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1108
    :pswitch_1b
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->isLazy(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1110
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1111
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1109
    invoke-static {v9, v8, p2}, Lcom/google/protobuf/SchemaUtil;->writeLazyFieldList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1115
    :cond_7
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1116
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1114
    invoke-static {v9, v8, p2}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1122
    :pswitch_1c
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1123
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1121
    invoke-static {v9, v8, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1128
    :pswitch_1d
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1129
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1127
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1135
    :pswitch_1e
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1136
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1134
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1142
    :pswitch_1f
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1143
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1141
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1149
    :pswitch_20
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1150
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1148
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1156
    :pswitch_21
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1157
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1155
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1163
    :pswitch_22
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1164
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1162
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1170
    :pswitch_23
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1171
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1169
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1177
    :pswitch_24
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1178
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1176
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1184
    :pswitch_25
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1185
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1183
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1191
    :pswitch_26
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1192
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1190
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1198
    :pswitch_27
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1199
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1197
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1205
    :pswitch_28
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1206
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1204
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1212
    :pswitch_29
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1213
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1211
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1220
    :pswitch_2a
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1221
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1219
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1227
    :pswitch_2b
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1228
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1226
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1234
    :pswitch_2c
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1235
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1233
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1241
    :pswitch_2d
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1242
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1240
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1248
    :pswitch_2e
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1249
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1247
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1255
    :pswitch_2f
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1256
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1254
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1262
    :pswitch_30
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1263
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1261
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1269
    :pswitch_31
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1270
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1268
    invoke-static {v9, v8, p2}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1274
    :pswitch_32
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v3, v8}, Lcom/google/protobuf/Proto2Schema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1277
    :pswitch_33
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1278
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_6

    .line 1282
    :pswitch_34
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1283
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_6

    .line 1287
    :pswitch_35
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1288
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_6

    .line 1292
    :pswitch_36
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1293
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_6

    .line 1297
    :pswitch_37
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1298
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_6

    .line 1302
    :pswitch_38
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1303
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_6

    .line 1307
    :pswitch_39
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1308
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_6

    .line 1312
    :pswitch_3a
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1313
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_6

    .line 1317
    :pswitch_3b
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1318
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v3, v8, p2}, Lcom/google/protobuf/Proto2Schema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1322
    :pswitch_3c
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1323
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 1324
    .restart local v7    # "value":Ljava/lang/Object;
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->isLazy(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1325
    check-cast v7, Lcom/google/protobuf/LazyFieldLite;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7, p2, v3}, Lcom/google/protobuf/LazyFieldLite;->writeTo(Lcom/google/protobuf/Writer;I)V

    goto/16 :goto_6

    .line 1327
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_8
    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1332
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_3d
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1334
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/ByteString;

    .line 1333
    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_6

    .line 1338
    :pswitch_3e
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1339
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_6

    .line 1343
    :pswitch_3f
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1344
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_6

    .line 1348
    :pswitch_40
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1349
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_6

    .line 1353
    :pswitch_41
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1354
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_6

    .line 1358
    :pswitch_42
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1359
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_6

    .line 1363
    :pswitch_43
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1364
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_6

    .line 1368
    :pswitch_44
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1369
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1377
    .end local v3    # "number":I
    .end local v6    # "typeAndOffset":I
    :cond_9
    :goto_7
    if-eqz v2, :cond_b

    .line 1378
    iget-object v8, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v8, p2, v2}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 1379
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v2, v8

    :goto_8
    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    goto :goto_8

    .line 1381
    :cond_b
    iget-object v8, p0, Lcom/google/protobuf/Proto2Schema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v8, p1, p2}, Lcom/google/protobuf/Proto2Schema;->writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1382
    return-void

    .line 948
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
    .end packed-switch
.end method

.method private writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 12
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1386
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v8, p0, Lcom/google/protobuf/Proto2Schema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-direct {p0, v8, p1, p2}, Lcom/google/protobuf/Proto2Schema;->writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1387
    iget-boolean v8, p0, Lcom/google/protobuf/Proto2Schema;->hasExtensions:Z

    if-eqz v8, :cond_0

    iget-object v8, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v8, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    .line 1388
    .local v1, "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    :goto_0
    if-nez v1, :cond_1

    .line 1389
    const/4 v0, 0x0

    .line 1390
    .local v0, "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    :goto_1
    if-eqz v0, :cond_2

    .line 1391
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v2, v8

    .line 1392
    .local v2, "nextExtension":Ljava/util/Map$Entry;
    :goto_2
    iget-wide v8, p0, Lcom/google/protobuf/Proto2Schema;->limit:J

    const-wide/16 v10, 0x10

    sub-long v4, v8, v10

    .local v4, "pos":J
    :goto_3
    iget-wide v8, p0, Lcom/google/protobuf/Proto2Schema;->address:J

    cmp-long v8, v4, v8

    if-ltz v8, :cond_9

    .line 1393
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v6

    .line 1394
    .local v6, "typeAndOffset":I
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v3

    .line 1397
    .local v3, "number":I
    :goto_4
    if-eqz v2, :cond_4

    iget-object v8, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v8, v2}, Lcom/google/protobuf/ExtensionSchema;->extensionNumber(Ljava/util/Map$Entry;)I

    move-result v8

    if-le v8, v3, :cond_4

    .line 1398
    iget-object v8, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v8, p2, v2}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 1399
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v2, v8

    :goto_5
    goto :goto_4

    .line 1387
    .end local v0    # "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    .end local v1    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    .end local v2    # "nextExtension":Ljava/util/Map$Entry;
    .end local v3    # "number":I
    .end local v4    # "pos":J
    .end local v6    # "typeAndOffset":I
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1389
    .restart local v1    # "extensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    :cond_1
    invoke-virtual {v1}, Lcom/google/protobuf/FieldSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_1

    .line 1391
    .restart local v0    # "extensionIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+Ljava/util/Map$Entry<**>;>;"
    :cond_2
    const/4 v2, 0x0

    goto :goto_2

    .line 1399
    .restart local v2    # "nextExtension":Ljava/util/Map$Entry;
    .restart local v3    # "number":I
    .restart local v4    # "pos":J
    .restart local v6    # "typeAndOffset":I
    :cond_3
    const/4 v2, 0x0

    goto :goto_5

    .line 1403
    :cond_4
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->type(I)I

    move-result v8

    packed-switch v8, :pswitch_data_0

    .line 1392
    :cond_5
    :goto_6
    const-wide/16 v8, 0x10

    sub-long/2addr v4, v8

    goto :goto_3

    .line 1405
    :pswitch_0
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1406
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto :goto_6

    .line 1410
    :pswitch_1
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1411
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->floatAt(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto :goto_6

    .line 1415
    :pswitch_2
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1416
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto :goto_6

    .line 1420
    :pswitch_3
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1421
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto :goto_6

    .line 1425
    :pswitch_4
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1426
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto :goto_6

    .line 1430
    :pswitch_5
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1431
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_6

    .line 1435
    :pswitch_6
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1436
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_6

    .line 1440
    :pswitch_7
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1441
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_6

    .line 1445
    :pswitch_8
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1446
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v3, v8, p2}, Lcom/google/protobuf/Proto2Schema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1450
    :pswitch_9
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1451
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 1452
    .local v7, "value":Ljava/lang/Object;
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->isLazy(I)Z

    move-result v8

    if-eqz v8, :cond_6

    .line 1453
    check-cast v7, Lcom/google/protobuf/LazyFieldLite;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7, p2, v3}, Lcom/google/protobuf/LazyFieldLite;->writeTo(Lcom/google/protobuf/Writer;I)V

    goto/16 :goto_6

    .line 1455
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_6
    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1460
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_a
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1462
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/ByteString;

    .line 1461
    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_6

    .line 1466
    :pswitch_b
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1467
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_6

    .line 1471
    :pswitch_c
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1472
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_6

    .line 1476
    :pswitch_d
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1477
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_6

    .line 1481
    :pswitch_e
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1482
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_6

    .line 1486
    :pswitch_f
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1487
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->intAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_6

    .line 1491
    :pswitch_10
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1492
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_6

    .line 1496
    :pswitch_11
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v8}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1497
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1502
    :pswitch_12
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1503
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1501
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1509
    :pswitch_13
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1510
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1508
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1516
    :pswitch_14
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1517
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1515
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1523
    :pswitch_15
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1524
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1522
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1530
    :pswitch_16
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1531
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1529
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1537
    :pswitch_17
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1538
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1536
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1544
    :pswitch_18
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1545
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1543
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1551
    :pswitch_19
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1552
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1550
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1558
    :pswitch_1a
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1559
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1557
    invoke-static {v9, v8, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1563
    :pswitch_1b
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->isLazy(I)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1565
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1566
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1564
    invoke-static {v9, v8, p2}, Lcom/google/protobuf/SchemaUtil;->writeLazyFieldList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1570
    :cond_7
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1571
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1569
    invoke-static {v9, v8, p2}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1577
    :pswitch_1c
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1578
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1576
    invoke-static {v9, v8, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1583
    :pswitch_1d
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1584
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1582
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1590
    :pswitch_1e
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1591
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1589
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1597
    :pswitch_1f
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1598
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1596
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1604
    :pswitch_20
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1605
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1603
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1611
    :pswitch_21
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1612
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1610
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1618
    :pswitch_22
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1619
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x0

    .line 1617
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1625
    :pswitch_23
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1626
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1624
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1632
    :pswitch_24
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1633
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1631
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1639
    :pswitch_25
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1640
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1638
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1646
    :pswitch_26
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1647
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1645
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1653
    :pswitch_27
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1654
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1652
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1660
    :pswitch_28
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1661
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1659
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1667
    :pswitch_29
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1668
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1666
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1675
    :pswitch_2a
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1676
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1674
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1682
    :pswitch_2b
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1683
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1681
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1689
    :pswitch_2c
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1690
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1688
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1696
    :pswitch_2d
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1697
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1695
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1703
    :pswitch_2e
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1704
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1702
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1710
    :pswitch_2f
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1711
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1709
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1717
    :pswitch_30
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1718
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    const/4 v10, 0x1

    .line 1716
    invoke-static {v9, v8, p2, v10}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_6

    .line 1724
    :pswitch_31
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v9

    .line 1725
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v10

    invoke-static {p1, v10, v11}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/List;

    .line 1723
    invoke-static {v9, v8, p2}, Lcom/google/protobuf/SchemaUtil;->writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1729
    :pswitch_32
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, p2, v3, v8}, Lcom/google/protobuf/Proto2Schema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1732
    :pswitch_33
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1733
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_6

    .line 1737
    :pswitch_34
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1738
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_6

    .line 1742
    :pswitch_35
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1743
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_6

    .line 1747
    :pswitch_36
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1748
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_6

    .line 1752
    :pswitch_37
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1753
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_6

    .line 1757
    :pswitch_38
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1758
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_6

    .line 1762
    :pswitch_39
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1763
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_6

    .line 1767
    :pswitch_3a
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1768
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_6

    .line 1772
    :pswitch_3b
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1773
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-direct {p0, v3, v8, p2}, Lcom/google/protobuf/Proto2Schema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_6

    .line 1777
    :pswitch_3c
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1778
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    .line 1779
    .restart local v7    # "value":Ljava/lang/Object;
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->isLazy(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1780
    check-cast v7, Lcom/google/protobuf/LazyFieldLite;

    .end local v7    # "value":Ljava/lang/Object;
    invoke-virtual {v7, p2, v3}, Lcom/google/protobuf/LazyFieldLite;->writeTo(Lcom/google/protobuf/Writer;I)V

    goto/16 :goto_6

    .line 1782
    .restart local v7    # "value":Ljava/lang/Object;
    :cond_8
    invoke-interface {p2, v3, v7}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1787
    .end local v7    # "value":Ljava/lang/Object;
    :pswitch_3d
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1789
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/google/protobuf/ByteString;

    .line 1788
    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_6

    .line 1793
    :pswitch_3e
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1794
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_6

    .line 1798
    :pswitch_3f
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1799
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_6

    .line 1803
    :pswitch_40
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1804
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_6

    .line 1808
    :pswitch_41
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1809
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_6

    .line 1813
    :pswitch_42
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1814
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_6

    .line 1818
    :pswitch_43
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1819
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-interface {p2, v3, v8, v9}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_6

    .line 1823
    :pswitch_44
    const-wide/16 v8, 0x8

    add-long/2addr v8, v4

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v8

    invoke-static {p1, v3, v8}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1824
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {p2, v3, v8}, Lcom/google/protobuf/Writer;->writeGroup(ILjava/lang/Object;)V

    goto/16 :goto_6

    .line 1831
    .end local v3    # "number":I
    .end local v6    # "typeAndOffset":I
    :cond_9
    :goto_7
    if-eqz v2, :cond_b

    .line 1832
    iget-object v8, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v8, p2, v2}, Lcom/google/protobuf/ExtensionSchema;->serializeExtension(Lcom/google/protobuf/Writer;Ljava/util/Map$Entry;)V

    .line 1833
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    move-object v2, v8

    :goto_8
    goto :goto_7

    :cond_a
    const/4 v2, 0x0

    goto :goto_8

    .line 1835
    :cond_b
    return-void

    .line 1403
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
    .end packed-switch
.end method

.method private writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;)V
    .locals 2
    .param p1, "writer"    # Lcom/google/protobuf/Writer;
    .param p2, "number"    # I
    .param p3, "mapField"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/Writer;",
            "I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1839
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    if-eqz p3, :cond_0

    .line 1840
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    iget-object v1, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1843
    invoke-virtual {v1, p2}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 1844
    invoke-interface {v1, p3}, Lcom/google/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 1840
    invoke-interface {p1, p2, v0, v1}, Lcom/google/protobuf/Writer;->writeMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 1846
    :cond_0
    return-void
.end method

.method private writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 2515
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    instance-of v0, p2, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 2516
    check-cast p2, Ljava/lang/String;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 2520
    :goto_0
    return-void

    .line 2518
    .restart local p2    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p2, Lcom/google/protobuf/ByteString;

    .end local p2    # "value":Ljava/lang/Object;
    invoke-interface {p3, p1, p2}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0
.end method

.method private writeUnknownInMessageTo(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p3, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<UT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<TUT;>;TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1850
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "schema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;>;"
    .local p2, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1, v0, p3}, Lcom/google/protobuf/UnknownFieldSchema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 1851
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .line 281
    iget-wide v4, p0, Lcom/google/protobuf/Proto2Schema;->address:J

    .local v4, "pos":J
    :goto_0
    iget-wide v8, p0, Lcom/google/protobuf/Proto2Schema;->limit:J

    cmp-long v7, v4, v8

    if-gez v7, :cond_2

    .line 282
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/protobuf/Proto2Schema;->equals(Ljava/lang/Object;Ljava/lang/Object;J)Z

    move-result v7

    if-nez v7, :cond_1

    .line 298
    :cond_0
    :goto_1
    return v6

    .line 281
    :cond_1
    const-wide/16 v8, 0x10

    add-long/2addr v4, v8

    goto :goto_0

    .line 287
    :cond_2
    iget-object v7, p0, Lcom/google/protobuf/Proto2Schema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v7, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 288
    .local v1, "messageUnknown":Ljava/lang/Object;
    iget-object v7, p0, Lcom/google/protobuf/Proto2Schema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v7, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 289
    .local v3, "otherUnknown":Ljava/lang/Object;
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 293
    iget-boolean v6, p0, Lcom/google/protobuf/Proto2Schema;->hasExtensions:Z

    if-eqz v6, :cond_3

    .line 294
    iget-object v6, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v6, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 295
    .local v0, "messageExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    iget-object v6, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v6, p2}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v2

    .line 296
    .local v2, "otherExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    invoke-virtual {v0, v2}, Lcom/google/protobuf/FieldSet;->equals(Ljava/lang/Object;)Z

    move-result v6

    goto :goto_1

    .line 298
    .end local v0    # "messageExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    .end local v2    # "otherExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<*>;"
    :cond_3
    const/4 v6, 0x1

    goto :goto_1
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const-wide/16 v10, 0x8

    .line 432
    new-instance v0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;

    invoke-direct {v0}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;-><init>()V

    .line 434
    .local v0, "acc":Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;
    iget-wide v4, p0, Lcom/google/protobuf/Proto2Schema;->address:J

    .local v4, "pos":J
    :goto_0
    iget-wide v8, p0, Lcom/google/protobuf/Proto2Schema;->limit:J

    cmp-long v7, v4, v8

    if-gez v7, :cond_1

    .line 435
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v6

    .line 436
    .local v6, "typeAndOffset":I
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v1

    .line 438
    .local v1, "entryNumber":I
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v2

    .line 441
    .local v2, "offset":J
    invoke-static {v6}, Lcom/google/protobuf/Proto2Schema;->type(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 434
    :cond_0
    :goto_1
    const-wide/16 v8, 0x10

    add-long/2addr v4, v8

    goto :goto_0

    .line 443
    :pswitch_0
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto :goto_1

    .line 446
    :pswitch_1
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto :goto_1

    .line 449
    :pswitch_2
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto :goto_1

    .line 452
    :pswitch_3
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto :goto_1

    .line 455
    :pswitch_4
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto :goto_1

    .line 458
    :pswitch_5
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto :goto_1

    .line 461
    :pswitch_6
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto :goto_1

    .line 464
    :pswitch_7
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashBoolean(Z)V

    goto :goto_1

    .line 467
    :pswitch_8
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashString(Ljava/lang/String;)V

    goto :goto_1

    .line 470
    :pswitch_9
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashMessage(Ljava/lang/Object;)V

    goto :goto_1

    .line 473
    :pswitch_a
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashByteString(Lcom/google/protobuf/ByteString;)V

    goto :goto_1

    .line 476
    :pswitch_b
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto :goto_1

    .line 479
    :pswitch_c
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto :goto_1

    .line 482
    :pswitch_d
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto :goto_1

    .line 485
    :pswitch_e
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto :goto_1

    .line 488
    :pswitch_f
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 491
    :pswitch_10
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto/16 :goto_1

    .line 495
    :pswitch_11
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashMessage(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 530
    :pswitch_12
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashList(Ljava/util/List;)V

    goto/16 :goto_1

    .line 533
    :pswitch_13
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 536
    :pswitch_14
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 537
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashDouble(D)V

    goto/16 :goto_1

    .line 541
    :pswitch_15
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 542
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashFloat(F)V

    goto/16 :goto_1

    .line 546
    :pswitch_16
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 547
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto/16 :goto_1

    .line 551
    :pswitch_17
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 552
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto/16 :goto_1

    .line 556
    :pswitch_18
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 557
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 561
    :pswitch_19
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 562
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto/16 :goto_1

    .line 566
    :pswitch_1a
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 567
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 571
    :pswitch_1b
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 572
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashBoolean(Z)V

    goto/16 :goto_1

    .line 576
    :pswitch_1c
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 577
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 581
    :pswitch_1d
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 582
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashMessage(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 586
    :pswitch_1e
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 587
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashByteString(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_1

    .line 591
    :pswitch_1f
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 592
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 596
    :pswitch_20
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 597
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 601
    :pswitch_21
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 602
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 606
    :pswitch_22
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 607
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto/16 :goto_1

    .line 611
    :pswitch_23
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 612
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 616
    :pswitch_24
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 617
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto2Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto/16 :goto_1

    .line 621
    :pswitch_25
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 622
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashMessage(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 631
    .end local v1    # "entryNumber":I
    .end local v2    # "offset":J
    .end local v6    # "typeAndOffset":I
    :cond_1
    iget-object v7, p0, Lcom/google/protobuf/Proto2Schema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-virtual {v7, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashUnknown(Ljava/lang/Object;)V

    .line 633
    iget-boolean v7, p0, Lcom/google/protobuf/Proto2Schema;->hasExtensions:Z

    if-eqz v7, :cond_2

    .line 634
    iget-object v7, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-virtual {v7, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashExtensions(Lcom/google/protobuf/FieldSet;)V

    .line 636
    :cond_2
    iget v7, v0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    return v7

    .line 441
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
    .end packed-switch
.end method

.method public final isInitialized(Ljava/lang/Object;)Z
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const-wide/16 v10, 0x8

    const/4 v6, 0x0

    .line 2466
    iget-wide v2, p0, Lcom/google/protobuf/Proto2Schema;->address:J

    .local v2, "pos":J
    :goto_0
    iget-wide v8, p0, Lcom/google/protobuf/Proto2Schema;->limit:J

    cmp-long v5, v2, v8

    if-gez v5, :cond_4

    .line 2467
    invoke-static {v2, v3}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v0

    .line 2468
    .local v0, "fieldNumber":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_1

    .line 2466
    :cond_0
    :goto_1
    const-wide/16 v8, 0x10

    add-long/2addr v2, v8

    goto :goto_0

    .line 2472
    :cond_1
    invoke-static {v2, v3}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v4

    .line 2473
    .local v4, "typeAndOffset":I
    invoke-static {v4}, Lcom/google/protobuf/Proto2Schema;->isRequired(I)Z

    move-result v5

    if-eqz v5, :cond_2

    add-long v8, v2, v10

    .line 2474
    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, v5}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-nez v5, :cond_2

    move v5, v6

    .line 2511
    .end local v0    # "fieldNumber":I
    .end local v4    # "typeAndOffset":I
    :goto_2
    return v5

    .line 2478
    .restart local v0    # "fieldNumber":I
    .restart local v4    # "typeAndOffset":I
    :cond_2
    invoke-static {v4}, Lcom/google/protobuf/Proto2Schema;->type(I)I

    move-result v5

    sparse-switch v5, :sswitch_data_0

    goto :goto_1

    .line 2481
    :sswitch_0
    add-long v8, v2, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, v5}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2482
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v5

    .line 2483
    invoke-static {v4}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/protobuf/Protobuf;->isInitialized(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 2484
    goto :goto_2

    .line 2490
    :sswitch_1
    invoke-static {v4}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 2491
    .local v1, "nestedMessage":Ljava/lang/Object;
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v7

    invoke-virtual {v7, v1}, Lcom/google/protobuf/Protobuf;->isInitialized(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    move v5, v6

    .line 2492
    goto :goto_2

    .line 2498
    .end local v1    # "nestedMessage":Ljava/lang/Object;
    :sswitch_2
    add-long v8, v2, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p1, v0, v5}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2499
    invoke-static {}, Lcom/google/protobuf/Protobuf;->getInstance()Lcom/google/protobuf/Protobuf;

    move-result-object v5

    .line 2500
    invoke-static {v4}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v8

    invoke-static {p1, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/google/protobuf/Protobuf;->isInitialized(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    move v5, v6

    .line 2501
    goto :goto_2

    .line 2511
    .end local v0    # "fieldNumber":I
    .end local v4    # "typeAndOffset":I
    :cond_4
    const/4 v5, 0x1

    goto :goto_2

    .line 2478
    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x11 -> :sswitch_0
        0x1b -> :sswitch_1
        0x31 -> :sswitch_1
        0x3c -> :sswitch_2
        0x44 -> :sswitch_2
    .end sparse-switch
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 6
    .param p2, "reader"    # Lcom/google/protobuf/Reader;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Reader;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1856
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    iget-object v1, p0, Lcom/google/protobuf/Proto2Schema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    iget-object v2, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    move-object v0, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/protobuf/Proto2Schema;->mergeFromHelper(Lcom/google/protobuf/UnknownFieldSchema;Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1857
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    const-wide/16 v8, 0x8

    .line 641
    iget-wide v4, p0, Lcom/google/protobuf/Proto2Schema;->address:J

    .local v4, "pos":J
    :goto_0
    iget-wide v6, p0, Lcom/google/protobuf/Proto2Schema;->limit:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_3

    .line 642
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->typeAndOffsetAt(J)I

    move-result v1

    .line 643
    .local v1, "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v2

    .line 644
    .local v2, "offset":J
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto2Schema;->numberAt(J)I

    move-result v0

    .line 646
    .local v0, "number":I
    invoke-static {v1}, Lcom/google/protobuf/Proto2Schema;->type(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 641
    :cond_0
    :goto_1
    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    goto :goto_0

    .line 648
    :pswitch_0
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 649
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {p1, v2, v3, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    .line 650
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_1

    .line 654
    :pswitch_1
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 655
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    .line 656
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_1

    .line 660
    :pswitch_2
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 661
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v2, v3, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 662
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_1

    .line 666
    :pswitch_3
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 667
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v2, v3, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 668
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto :goto_1

    .line 672
    :pswitch_4
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 673
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 674
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 678
    :pswitch_5
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 679
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v2, v3, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 680
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 684
    :pswitch_6
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 685
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 686
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 690
    :pswitch_7
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 691
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    .line 692
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 696
    :pswitch_8
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 697
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 698
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 702
    :pswitch_9
    invoke-static {v1}, Lcom/google/protobuf/Proto2Schema;->isLazy(I)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 703
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/protobuf/Proto2Schema;->mergeLazyMessage(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 705
    :cond_1
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/protobuf/Proto2Schema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 709
    :pswitch_a
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 710
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 711
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 715
    :pswitch_b
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 716
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 717
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 721
    :pswitch_c
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 722
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 723
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 727
    :pswitch_d
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 728
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 729
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 733
    :pswitch_e
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 734
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v2, v3, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 735
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 739
    :pswitch_f
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 740
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 741
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 745
    :pswitch_10
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v6}, Lcom/google/protobuf/Proto2Schema;->isFieldPresent(Ljava/lang/Object;I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 746
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v2, v3, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    .line 747
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v6}, Lcom/google/protobuf/Proto2Schema;->setFieldPresent(Ljava/lang/Object;I)V

    goto/16 :goto_1

    .line 751
    :pswitch_11
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/protobuf/Proto2Schema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 785
    :pswitch_12
    iget-object v6, p0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    invoke-virtual {v6, p1, p2, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 788
    :pswitch_13
    iget-object v6, p0, Lcom/google/protobuf/Proto2Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-static {v6, p1, p2, v2, v3}, Lcom/google/protobuf/SchemaUtil;->mergeMap(Lcom/google/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 799
    :pswitch_14
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v0, v6}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 800
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 801
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v0, v6}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 806
    :pswitch_15
    invoke-static {v1}, Lcom/google/protobuf/Proto2Schema;->isLazy(I)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 807
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/protobuf/Proto2Schema;->mergeOneofLazyMessage(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 809
    :cond_2
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/protobuf/Proto2Schema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 819
    :pswitch_16
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v0, v6}, Lcom/google/protobuf/Proto2Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 820
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 821
    add-long v6, v4, v8

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v0, v6}, Lcom/google/protobuf/Proto2Schema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 825
    :pswitch_17
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/protobuf/Proto2Schema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 832
    .end local v0    # "number":I
    .end local v1    # "typeAndOffset":I
    .end local v2    # "offset":J
    :cond_3
    iget-object v6, p0, Lcom/google/protobuf/Proto2Schema;->unknownFieldSchema:Lcom/google/protobuf/UnknownFieldSchema;

    invoke-static {v6, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 834
    iget-boolean v6, p0, Lcom/google/protobuf/Proto2Schema;->hasExtensions:Z

    if-eqz v6, :cond_4

    .line 835
    iget-object v6, p0, Lcom/google/protobuf/Proto2Schema;->extensionSchema:Lcom/google/protobuf/ExtensionSchema;

    invoke-static {v6, p1, p2}, Lcom/google/protobuf/SchemaUtil;->mergeExtensions(Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 837
    :cond_4
    return-void

    .line 646
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_16
        :pswitch_17
    .end packed-switch
.end method

.method public newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 276
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->buildPartial()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
.end method

.method public readGroupList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "offset"    # J
    .param p4, "reader"    # Lcom/google/protobuf/Reader;
    .param p6, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "J",
            "Lcom/google/protobuf/Reader;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2571
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p5, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2572
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 2571
    invoke-interface {p4, v0, p5, p6}, Lcom/google/protobuf/Reader;->readGroupList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 2573
    return-void
.end method

.method public readMessageList(Ljava/lang/Object;ILcom/google/protobuf/Reader;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/Object;
    .param p2, "typeAndOffset"    # I
    .param p3, "reader"    # Lcom/google/protobuf/Reader;
    .param p5, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            "I",
            "Lcom/google/protobuf/Reader;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2553
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p4, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->offset(I)J

    move-result-wide v0

    .line 2554
    .local v0, "offset":J
    invoke-static {p2}, Lcom/google/protobuf/Proto2Schema;->isLazy(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2555
    iget-object v2, p0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2556
    invoke-virtual {v2, p1, v0, v1}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    new-instance v3, Lcom/google/protobuf/LazyFieldLite;

    .line 2557
    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    invoke-direct {v3, p5, v4}, Lcom/google/protobuf/LazyFieldLite;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/ByteString;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2562
    :goto_0
    return-void

    .line 2560
    :cond_0
    iget-object v2, p0, Lcom/google/protobuf/Proto2Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 2561
    invoke-virtual {v2, p1, v0, v1}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v2

    .line 2560
    invoke-interface {p3, v2, p4, p5}, Lcom/google/protobuf/Reader;->readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V

    goto :goto_0
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 2
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 923
    .local p0, "this":Lcom/google/protobuf/Proto2Schema;, "Lcom/google/protobuf/Proto2Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_0

    .line 924
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Proto2Schema;->writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 928
    :goto_0
    return-void

    .line 926
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Proto2Schema;->writeFieldsInAscendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_0
.end method

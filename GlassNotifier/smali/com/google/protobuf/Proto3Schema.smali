.class final Lcom/google/protobuf/Proto3Schema;
.super Ljava/lang/Object;
.source "Proto3Schema.java"

# interfaces
.implements Lcom/google/protobuf/Schema;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/Proto3Schema$LookupPositionStrategy;,
        Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;,
        Lcom/google/protobuf/Proto3Schema$PositionStrategy;
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

.field private static final LONGS_PER_FIELD:I = 0x2

.field private static final LONG_LENGTH:I = 0x8

.field private static final OFFSET_BITS:I = 0x14

.field private static final OFFSET_MASK:I = 0xfffff

.field private static final ONEOF_TYPE_OFFSET:I = 0x33


# instance fields
.field private final address:J

.field private final buffer:Ljava/nio/ByteBuffer;

.field private final defaultInstance:Lcom/google/protobuf/MessageLite;

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

.field private final positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;JJIIIZLjava/lang/Class;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/MapFieldSchema;Lcom/google/protobuf/Int2ObjectHashMap;)V
    .locals 4
    .param p1, "buffer"    # Ljava/nio/ByteBuffer;
    .param p2, "address"    # J
    .param p4, "limit"    # J
    .param p6, "numFields"    # I
    .param p7, "minFieldNumber"    # I
    .param p8, "maxFieldNumber"    # I
    .param p9, "table"    # Z
    .param p12, "listFieldSchema"    # Lcom/google/protobuf/ListFieldSchema;
    .param p13, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
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
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/MapFieldSchema;",
            "Lcom/google/protobuf/Int2ObjectHashMap",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 79
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p10, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p11, "messageFieldClassMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Class<*>;>;"
    .local p14, "mapFieldDefaultEntryMap":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    iput-object p1, p0, Lcom/google/protobuf/Proto3Schema;->buffer:Ljava/nio/ByteBuffer;

    .line 81
    iput-wide p2, p0, Lcom/google/protobuf/Proto3Schema;->address:J

    .line 82
    iput-wide p4, p0, Lcom/google/protobuf/Proto3Schema;->limit:J

    .line 83
    iput p6, p0, Lcom/google/protobuf/Proto3Schema;->numFields:I

    .line 84
    iput p7, p0, Lcom/google/protobuf/Proto3Schema;->minFieldNumber:I

    .line 85
    iput p8, p0, Lcom/google/protobuf/Proto3Schema;->maxFieldNumber:I

    .line 86
    if-eqz p9, :cond_0

    new-instance v1, Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protobuf/Proto3Schema$TablePositionStrategy;-><init>(Lcom/google/protobuf/Proto3Schema;Lcom/google/protobuf/Proto3Schema$1;)V

    :goto_0
    iput-object v1, p0, Lcom/google/protobuf/Proto3Schema;->positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;

    .line 87
    iput-object p11, p0, Lcom/google/protobuf/Proto3Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 88
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 89
    const-class v1, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v1, p10}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/google/protobuf/Proto3Schema;->lite:Z

    .line 90
    invoke-static {p10}, Lcom/google/protobuf/SchemaUtil;->reflectDefaultInstance(Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;

    move-result-object v1

    iput-object v1, p0, Lcom/google/protobuf/Proto3Schema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    .line 91
    move-object/from16 v0, p13

    iput-object v0, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 92
    move-object/from16 v0, p14

    iput-object v0, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 93
    return-void

    .line 86
    :cond_0
    new-instance v1, Lcom/google/protobuf/Proto3Schema$LookupPositionStrategy;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/google/protobuf/Proto3Schema$LookupPositionStrategy;-><init>(Lcom/google/protobuf/Proto3Schema;Lcom/google/protobuf/Proto3Schema$1;)V

    goto :goto_0
.end method

.method static synthetic access$300(Lcom/google/protobuf/Proto3Schema;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Proto3Schema;

    .prologue
    .line 12
    iget v0, p0, Lcom/google/protobuf/Proto3Schema;->minFieldNumber:I

    return v0
.end method

.method static synthetic access$400(Lcom/google/protobuf/Proto3Schema;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Proto3Schema;

    .prologue
    .line 12
    iget v0, p0, Lcom/google/protobuf/Proto3Schema;->maxFieldNumber:I

    return v0
.end method

.method static synthetic access$500(Lcom/google/protobuf/Proto3Schema;I)J
    .locals 2
    .param p0, "x0"    # Lcom/google/protobuf/Proto3Schema;
    .param p1, "x1"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1}, Lcom/google/protobuf/Proto3Schema;->indexToAddress(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$600(Lcom/google/protobuf/Proto3Schema;)I
    .locals 1
    .param p0, "x0"    # Lcom/google/protobuf/Proto3Schema;

    .prologue
    .line 12
    iget v0, p0, Lcom/google/protobuf/Proto3Schema;->numFields:I

    return v0
.end method

.method static synthetic access$700(J)I
    .locals 2
    .param p0, "x0"    # J

    .prologue
    .line 12
    invoke-static {p0, p1}, Lcom/google/protobuf/Proto3Schema;->numberAt(J)I

    move-result v0

    return v0
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
    .line 1995
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
    .line 1979
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method static equals(Ljava/lang/Object;Ljava/lang/Object;J)Z
    .locals 10
    .param p2, "pos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;J)Z"
        }
    .end annotation

    .prologue
    .local p0, "message":Ljava/lang/Object;, "TT;"
    .local p1, "other":Ljava/lang/Object;, "TT;"
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 258
    invoke-static {p2, p3}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v2

    .line 259
    .local v2, "typeAndOffset":I
    invoke-static {v2}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v0

    .line 262
    .local v0, "offset":J
    invoke-static {v2}, Lcom/google/protobuf/Proto3Schema;->type(I)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    .line 365
    :cond_0
    :goto_0
    return v3

    .line 264
    :pswitch_0
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 266
    :pswitch_1
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .line 268
    :pswitch_2
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 270
    :pswitch_3
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 272
    :pswitch_4
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .line 274
    :pswitch_5
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    move v3, v4

    goto :goto_0

    .line 276
    :pswitch_6
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .line 279
    :pswitch_7
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    move v3, v4

    goto :goto_0

    .line 282
    :pswitch_8
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 281
    invoke-static {v3, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto :goto_0

    .line 285
    :pswitch_9
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 284
    invoke-static {v3, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_0

    .line 288
    :pswitch_a
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 287
    invoke-static {v3, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_0

    .line 290
    :pswitch_b
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 292
    :pswitch_c
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 294
    :pswitch_d
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 296
    :pswitch_e
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 298
    :pswitch_f
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v5

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eq v5, v6, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 300
    :pswitch_10
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    cmp-long v5, v6, v8

    if-eqz v5, :cond_0

    move v3, v4

    goto/16 :goto_0

    .line 303
    :pswitch_11
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 302
    invoke-static {v3, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_0

    .line 338
    :pswitch_12
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 337
    invoke-static {v3, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_0

    .line 341
    :pswitch_13
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 340
    invoke-static {v3, v4}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_0

    .line 360
    :pswitch_14
    const-wide/16 v6, 0x8

    add-long/2addr v6, p2

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v5

    invoke-static {p0, p1, v5}, Lcom/google/protobuf/Proto3Schema;->isOneofCaseEqual(Ljava/lang/Object;Ljava/lang/Object;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 362
    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v5

    invoke-static {p1, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    .line 361
    invoke-static {v5, v6}, Lcom/google/protobuf/SchemaUtil;->safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    :cond_1
    move v3, v4

    goto/16 :goto_0

    .line 262
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
    .line 1983
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method private indexToAddress(I)J
    .locals 4
    .param p1, "index"    # I

    .prologue
    .line 1963
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    iget-wide v0, p0, Lcom/google/protobuf/Proto3Schema;->address:J

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
    .line 1987
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static isEnforceUtf8(I)Z
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1971
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

    .line 2023
    and-int v0, p2, v2

    int-to-long v0, v0

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    and-int v1, p2, v2

    int-to-long v2, v1

    .line 2024
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    .line 2023
    :goto_0
    return v0

    .line 2024
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
    .line 2019
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
    .line 1991
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
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
    .line 1895
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p2, "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    invoke-virtual {p2, p1}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v0

    .line 1896
    .local v0, "mapField":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 1897
    iget-object v1, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v1, p3}, Lcom/google/protobuf/MapFieldSchema;->newMapField(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 1898
    invoke-virtual {p2, p1, v0}, Lcom/google/protobuf/Int2ObjectHashMap;->put(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1900
    :cond_0
    iget-object v1, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 1901
    invoke-interface {v1, v0}, Lcom/google/protobuf/MapFieldSchema;->forMutableMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 1902
    invoke-interface {v2, p3}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v2

    .line 1900
    invoke-interface {p5, v1, v2, p4}, Lcom/google/protobuf/Reader;->readMap(Ljava/util/Map;Lcom/google/protobuf/MapEntryLite$Metadata;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1904
    return-void
.end method

.method private mergeMessage(Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 7
    .param p3, "pos"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;J)V"
        }
    .end annotation

    .prologue
    .line 748
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-static {p3, p4}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v5

    .line 749
    .local v5, "typeAndOffset":I
    invoke-static {v5}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v2

    .line 751
    .local v2, "offset":J
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 752
    .local v1, "mine":Ljava/lang/Object;
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 753
    .local v4, "theirs":Ljava/lang/Object;
    if-eqz v1, :cond_1

    if-eqz v4, :cond_1

    .line 754
    invoke-static {v1, v4}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 755
    .local v0, "merged":Ljava/lang/Object;
    invoke-static {p1, v2, v3, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 759
    .end local v0    # "merged":Ljava/lang/Object;
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    if-eqz v4, :cond_0

    .line 757
    invoke-static {p1, v2, v3, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0
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
    .line 762
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-static {p3, p4}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v6

    .line 763
    .local v6, "typeAndOffset":I
    invoke-static {p3, p4}, Lcom/google/protobuf/Proto3Schema;->numberAt(J)I

    move-result v2

    .line 764
    .local v2, "number":I
    invoke-static {v6}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    .line 766
    .local v4, "offset":J
    const-wide/16 v8, 0x8

    add-long/2addr v8, p3

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p2, v2, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-nez v7, :cond_1

    .line 780
    :cond_0
    :goto_0
    return-void

    .line 770
    :cond_1
    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    .line 771
    .local v1, "mine":Ljava/lang/Object;
    invoke-static {p2, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v3

    .line 772
    .local v3, "theirs":Ljava/lang/Object;
    if-eqz v1, :cond_2

    if-eqz v3, :cond_2

    .line 773
    invoke-static {v1, v3}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 774
    .local v0, "merged":Ljava/lang/Object;
    invoke-static {p1, v4, v5, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 775
    const-wide/16 v8, 0x8

    add-long/2addr v8, p3

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v2, v7}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_0

    .line 776
    .end local v0    # "merged":Ljava/lang/Object;
    :cond_2
    if-eqz v3, :cond_0

    .line 777
    invoke-static {p1, v4, v5, v3}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 778
    const-wide/16 v8, 0x8

    add-long/2addr v8, p3

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v2, v7}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    goto :goto_0
.end method

.method static newLookupSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto3Schema;
    .locals 26
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .param p2, "listFieldSchema"    # Lcom/google/protobuf/ListFieldSchema;
    .param p3, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/Proto3Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 167
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->getFields()Ljava/util/List;

    move-result-object v18

    .line 169
    .local v18, "fis":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/FieldInfo;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v20

    .line 170
    .local v20, "numFields":I
    mul-int/lit8 v17, v20, 0x10

    .line 171
    .local v17, "bufferLength":I
    add-int/lit8 v2, v17, 0x8

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 172
    .local v3, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v3}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v24

    .line 173
    .local v24, "tempAddress":J
    const-wide/16 v12, 0x7

    and-long v12, v12, v24

    const-wide/16 v14, 0x0

    cmp-long v2, v12, v14

    if-eqz v2, :cond_0

    .line 175
    const-wide/16 v12, -0x8

    and-long v12, v12, v24

    const-wide/16 v14, 0x8

    add-long v24, v12, v14

    .line 177
    :cond_0
    move-wide/from16 v4, v24

    .line 178
    .local v4, "address":J
    move/from16 v0, v17

    int-to-long v12, v0

    add-long v6, v4, v12

    .line 181
    .local v6, "limit":J
    move-wide/from16 v22, v4

    .line 182
    .local v22, "pos":J
    const/16 v19, 0x0

    .local v19, "i":I
    :goto_0
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_1

    .line 183
    invoke-interface/range {v18 .. v19}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    move-wide/from16 v0, v22

    invoke-static {v2, v0, v1}, Lcom/google/protobuf/Proto3Schema;->storeFieldData(Lcom/google/protobuf/FieldInfo;J)V

    .line 182
    add-int/lit8 v19, v19, 0x1

    const-wide/16 v12, 0x10

    add-long v22, v22, v12

    goto :goto_0

    .line 186
    :cond_1
    const/4 v9, -0x1

    .line 187
    .local v9, "minFieldNumber":I
    const/4 v10, -0x1

    .line 188
    .local v10, "maxFieldNumber":I
    if-lez v20, :cond_2

    .line 189
    const/4 v2, 0x0

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v2}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v9

    .line 190
    add-int/lit8 v2, v20, -0x1

    move-object/from16 v0, v18

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v2}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v10

    .line 192
    :cond_2
    new-instance v2, Lcom/google/protobuf/Proto3Schema;

    .line 196
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v8

    const/4 v11, 0x0

    .line 201
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->messageFieldClassMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v13

    .line 204
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->mapFieldDefaultEntryMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v16

    move-object/from16 v12, p0

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    invoke-direct/range {v2 .. v16}, Lcom/google/protobuf/Proto3Schema;-><init>(Ljava/nio/ByteBuffer;JJIIIZLjava/lang/Class;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/MapFieldSchema;Lcom/google/protobuf/Int2ObjectHashMap;)V

    .line 192
    return-object v2
.end method

.method static newTableSchema(Ljava/lang/Class;Lcom/google/protobuf/MessageInfo;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/MapFieldSchema;)Lcom/google/protobuf/Proto3Schema;
    .locals 34
    .param p1, "messageInfo"    # Lcom/google/protobuf/MessageInfo;
    .param p2, "listFieldSchema"    # Lcom/google/protobuf/ListFieldSchema;
    .param p3, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;",
            "Lcom/google/protobuf/MessageInfo;",
            "Lcom/google/protobuf/ListFieldSchema;",
            "Lcom/google/protobuf/MapFieldSchema;",
            ")",
            "Lcom/google/protobuf/Proto3Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 100
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->getFields()Ljava/util/List;

    move-result-object v24

    .line 105
    .local v24, "fis":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/FieldInfo;>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 106
    const/4 v11, 0x0

    .line 107
    .local v11, "minFieldNumber":I
    const/4 v12, 0x0

    .line 108
    .local v12, "maxFieldNumber":I
    const/16 v25, 0x0

    .line 115
    .local v25, "numEntries":I
    :goto_0
    mul-int/lit8 v20, v25, 0x10

    .line 116
    .local v20, "bufferLength":I
    add-int/lit8 v4, v20, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v5

    .line 117
    .local v5, "buffer":Ljava/nio/ByteBuffer;
    invoke-static {v5}, Lcom/google/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v32

    .line 118
    .local v32, "tempAddress":J
    const-wide/16 v14, 0x7

    and-long v14, v14, v32

    const-wide/16 v16, 0x0

    cmp-long v4, v14, v16

    if-eqz v4, :cond_0

    .line 120
    const-wide/16 v14, -0x8

    and-long v14, v14, v32

    const-wide/16 v16, 0x8

    add-long v32, v14, v16

    .line 122
    :cond_0
    move-wide/from16 v6, v32

    .line 123
    .local v6, "address":J
    move/from16 v0, v20

    int-to-long v14, v0

    add-long v8, v6, v14

    .line 126
    .local v8, "limit":J
    const/16 v22, 0x0

    .line 127
    .local v22, "fieldIndex":I
    const/16 v19, 0x0

    .local v19, "bufferIndex":I
    :goto_1
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    move/from16 v0, v22

    if-ge v0, v4, :cond_4

    .line 128
    move-object/from16 v0, v24

    move/from16 v1, v22

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Lcom/google/protobuf/FieldInfo;

    .line 129
    .local v21, "fi":Lcom/google/protobuf/FieldInfo;
    invoke-virtual/range {v21 .. v21}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v23

    .line 130
    .local v23, "fieldNumber":I
    sub-int v4, v23, v11

    shl-int/lit8 v4, v4, 0x4

    move/from16 v0, v19

    if-ge v0, v4, :cond_2

    .line 132
    move/from16 v0, v19

    int-to-long v14, v0

    add-long/2addr v14, v6

    const-wide/16 v16, 0x10

    add-long v28, v14, v16

    .line 133
    .local v28, "skipLimit":J
    move/from16 v0, v19

    int-to-long v14, v0

    add-long v30, v6, v14

    .local v30, "skipPos":J
    :goto_2
    cmp-long v4, v30, v28

    if-gez v4, :cond_3

    .line 134
    const-wide/16 v14, -0x1

    move-wide/from16 v0, v30

    invoke-static {v0, v1, v14, v15}, Lcom/google/protobuf/UnsafeUtil;->putLong(JJ)V

    .line 133
    const-wide/16 v14, 0x8

    add-long v30, v30, v14

    goto :goto_2

    .line 110
    .end local v5    # "buffer":Ljava/nio/ByteBuffer;
    .end local v6    # "address":J
    .end local v8    # "limit":J
    .end local v11    # "minFieldNumber":I
    .end local v12    # "maxFieldNumber":I
    .end local v19    # "bufferIndex":I
    .end local v20    # "bufferLength":I
    .end local v21    # "fi":Lcom/google/protobuf/FieldInfo;
    .end local v22    # "fieldIndex":I
    .end local v23    # "fieldNumber":I
    .end local v25    # "numEntries":I
    .end local v28    # "skipLimit":J
    .end local v30    # "skipPos":J
    .end local v32    # "tempAddress":J
    :cond_1
    const/4 v4, 0x0

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v4}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v11

    .line 111
    .restart local v11    # "minFieldNumber":I
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    move-object/from16 v0, v24

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v4}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v12

    .line 112
    .restart local v12    # "maxFieldNumber":I
    sub-int v4, v12, v11

    add-int/lit8 v25, v4, 0x1

    .restart local v25    # "numEntries":I
    goto/16 :goto_0

    .line 141
    .restart local v5    # "buffer":Ljava/nio/ByteBuffer;
    .restart local v6    # "address":J
    .restart local v8    # "limit":J
    .restart local v19    # "bufferIndex":I
    .restart local v20    # "bufferLength":I
    .restart local v21    # "fi":Lcom/google/protobuf/FieldInfo;
    .restart local v22    # "fieldIndex":I
    .restart local v23    # "fieldNumber":I
    .restart local v32    # "tempAddress":J
    :cond_2
    move/from16 v0, v19

    int-to-long v14, v0

    add-long v26, v6, v14

    .line 142
    .local v26, "pos":J
    move-object/from16 v0, v21

    move-wide/from16 v1, v26

    invoke-static {v0, v1, v2}, Lcom/google/protobuf/Proto3Schema;->storeFieldData(Lcom/google/protobuf/FieldInfo;J)V

    .line 144
    add-int/lit8 v22, v22, 0x1

    .line 127
    .end local v26    # "pos":J
    :cond_3
    add-int/lit8 v19, v19, 0x10

    goto :goto_1

    .line 147
    .end local v21    # "fi":Lcom/google/protobuf/FieldInfo;
    .end local v23    # "fieldNumber":I
    :cond_4
    new-instance v4, Lcom/google/protobuf/Proto3Schema;

    .line 151
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v10

    const/4 v13, 0x1

    .line 156
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->messageFieldClassMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v15

    .line 159
    invoke-virtual/range {p1 .. p1}, Lcom/google/protobuf/MessageInfo;->mapFieldDefaultEntryMap()Lcom/google/protobuf/Int2ObjectHashMap;

    move-result-object v18

    move-object/from16 v14, p0

    move-object/from16 v16, p2

    move-object/from16 v17, p3

    invoke-direct/range {v4 .. v18}, Lcom/google/protobuf/Proto3Schema;-><init>(Ljava/nio/ByteBuffer;JJIIIZLjava/lang/Class;Lcom/google/protobuf/Int2ObjectHashMap;Lcom/google/protobuf/ListFieldSchema;Lcom/google/protobuf/MapFieldSchema;Lcom/google/protobuf/Int2ObjectHashMap;)V

    .line 147
    return-object v4
.end method

.method private static numberAt(J)I
    .locals 2
    .param p0, "pos"    # J

    .prologue
    .line 1955
    invoke-static {p0, p1}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v0

    return v0
.end method

.method private static offset(I)J
    .locals 2
    .param p0, "value"    # I

    .prologue
    .line 1975
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
    .line 2015
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
    .line 1999
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
    .line 2003
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
    .line 2007
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
    .line 2011
    .local p0, "message":Ljava/lang/Object;, "TT;"
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private readMessageList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V
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
    .line 1918
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p5, "targetType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1919
    invoke-virtual {v0, p1, p2, p3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 1918
    invoke-interface {p4, v0, p5, p6}, Lcom/google/protobuf/Reader;->readMessageList(Ljava/util/List;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 1920
    return-void
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
    .line 1931
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1933
    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readStringRequireUtf8()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1943
    :goto_0
    return-void

    .line 1934
    :cond_0
    iget-boolean v0, p0, Lcom/google/protobuf/Proto3Schema;->lite:Z

    if-eqz v0, :cond_1

    .line 1937
    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v0

    invoke-interface {p3}, Lcom/google/protobuf/Reader;->readString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_0

    .line 1941
    :cond_1
    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

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
    .line 1946
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->isEnforceUtf8(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1947
    iget-object v0, p0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1948
    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    .line 1947
    invoke-interface {p3, v0}, Lcom/google/protobuf/Reader;->readStringListRequireUtf8(Ljava/util/List;)V

    .line 1952
    :goto_0
    return-void

    .line 1950
    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    invoke-static {p2}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v2

    invoke-virtual {v0, p1, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p3, v0}, Lcom/google/protobuf/Reader;->readStringList(Ljava/util/List;)V

    goto :goto_0
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
    .line 2028
    .local p0, "message":Ljava/lang/Object;, "TT;"
    const v0, 0xfffff

    and-int/2addr v0, p2

    int-to-long v0, v0

    invoke-static {p0, v0, v1, p1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 2029
    return-void
.end method

.method private static storeFieldData(Lcom/google/protobuf/FieldInfo;J)V
    .locals 11
    .param p0, "fi"    # Lcom/google/protobuf/FieldInfo;
    .param p1, "pos"    # J

    .prologue
    .line 213
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getOneof()Lcom/google/protobuf/OneofInfo;

    move-result-object v1

    .line 214
    .local v1, "oneof":Lcom/google/protobuf/OneofInfo;
    if-eqz v1, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v6

    invoke-virtual {v6}, Lcom/google/protobuf/FieldType;->id()I

    move-result v6

    add-int/lit8 v5, v6, 0x33

    .line 216
    .local v5, "typeId":I
    invoke-virtual {v1}, Lcom/google/protobuf/OneofInfo;->getValueField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 217
    .local v0, "fieldOffset":I
    invoke-virtual {v1}, Lcom/google/protobuf/OneofInfo;->getCaseField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v2, v6

    .line 218
    .local v2, "presenceFieldOffset":I
    const/4 v3, 0x0

    .line 227
    .local v3, "presenceMaskShift":I
    :goto_0
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v6

    invoke-static {p1, p2, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(JI)V

    .line 228
    const-wide/16 v6, 0x4

    add-long v8, p1, v6

    .line 230
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->isEnforceUtf8()Z

    move-result v6

    if-eqz v6, :cond_1

    const/high16 v6, 0x20000000

    :goto_1
    shl-int/lit8 v7, v5, 0x14

    or-int/2addr v6, v7

    or-int/2addr v6, v0

    .line 228
    invoke-static {v8, v9, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(JI)V

    .line 231
    const-wide/16 v6, 0x8

    add-long/2addr v6, p1

    or-int/lit8 v8, v2, 0x0

    invoke-static {v6, v7, v8}, Lcom/google/protobuf/UnsafeUtil;->putInt(JI)V

    .line 232
    return-void

    .line 220
    .end local v0    # "fieldOffset":I
    .end local v2    # "presenceFieldOffset":I
    .end local v3    # "presenceMaskShift":I
    .end local v5    # "typeId":I
    :cond_0
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getType()Lcom/google/protobuf/FieldType;

    move-result-object v4

    .line 221
    .local v4, "type":Lcom/google/protobuf/FieldType;
    invoke-virtual {p0}, Lcom/google/protobuf/FieldInfo;->getField()Ljava/lang/reflect/Field;

    move-result-object v6

    invoke-static {v6}, Lcom/google/protobuf/UnsafeUtil;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v6

    long-to-int v0, v6

    .line 222
    .restart local v0    # "fieldOffset":I
    invoke-virtual {v4}, Lcom/google/protobuf/FieldType;->id()I

    move-result v5

    .line 223
    .restart local v5    # "typeId":I
    const/4 v2, 0x0

    .line 224
    .restart local v2    # "presenceFieldOffset":I
    const/4 v3, 0x0

    .restart local v3    # "presenceMaskShift":I
    goto :goto_0

    .line 230
    .end local v4    # "type":Lcom/google/protobuf/FieldType;
    :cond_1
    const/4 v6, 0x0

    goto :goto_1
.end method

.method private static type(I)I
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 1967
    const/high16 v0, 0xff00000

    and-int/2addr v0, p0

    ushr-int/lit8 v0, v0, 0x14

    return v0
.end method

.method private static typeAndOffsetAt(J)I
    .locals 2
    .param p0, "pos"    # J

    .prologue
    .line 1959
    const-wide/16 v0, 0x4

    add-long/2addr v0, p0

    invoke-static {v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v0

    return v0
.end method

.method private writeFieldsInAscendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 10
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x8

    .line 796
    iget-wide v2, p0, Lcom/google/protobuf/Proto3Schema;->address:J

    .local v2, "pos":J
    :goto_0
    iget-wide v4, p0, Lcom/google/protobuf/Proto3Schema;->limit:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 797
    invoke-static {v2, v3}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v1

    .line 798
    .local v1, "typeAndOffset":I
    invoke-static {v2, v3}, Lcom/google/protobuf/Proto3Schema;->numberAt(J)I

    move-result v0

    .line 801
    .local v0, "number":I
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 796
    :cond_0
    :goto_1
    :pswitch_0
    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    goto :goto_0

    .line 803
    :pswitch_1
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeDouble(IDLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 806
    :pswitch_2
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeFloat(IFLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 809
    :pswitch_3
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeInt64(IJLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 812
    :pswitch_4
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeUInt64(IJLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 815
    :pswitch_5
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeInt32(IILcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 818
    :pswitch_6
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeFixed64(IJLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 821
    :pswitch_7
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeFixed32(IILcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 824
    :pswitch_8
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBool(IZLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 828
    :pswitch_9
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 827
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 832
    :pswitch_a
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 831
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 836
    :pswitch_b
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 835
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytes(ILcom/google/protobuf/ByteString;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 839
    :pswitch_c
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeUInt32(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 842
    :pswitch_d
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeEnum(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 845
    :pswitch_e
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 848
    :pswitch_f
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64(IJLcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 851
    :pswitch_10
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeSInt32(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 854
    :pswitch_11
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeSInt64(IJLcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 862
    :pswitch_12
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 860
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 869
    :pswitch_13
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 867
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 876
    :pswitch_14
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 874
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 883
    :pswitch_15
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 881
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 890
    :pswitch_16
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 888
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 897
    :pswitch_17
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 895
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 904
    :pswitch_18
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 902
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 911
    :pswitch_19
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 909
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 917
    :pswitch_1a
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 916
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 921
    :pswitch_1b
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 920
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 926
    :pswitch_1c
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 924
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 932
    :pswitch_1d
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 930
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 939
    :pswitch_1e
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 937
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 946
    :pswitch_1f
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 944
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 953
    :pswitch_20
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 951
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 960
    :pswitch_21
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 958
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 967
    :pswitch_22
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 965
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 974
    :pswitch_23
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 972
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 981
    :pswitch_24
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 979
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 988
    :pswitch_25
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 986
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 995
    :pswitch_26
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 993
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1002
    :pswitch_27
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1000
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1009
    :pswitch_28
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1007
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1016
    :pswitch_29
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1014
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1023
    :pswitch_2a
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1021
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1030
    :pswitch_2b
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1028
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1037
    :pswitch_2c
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1035
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1044
    :pswitch_2d
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1042
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1051
    :pswitch_2e
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1049
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1058
    :pswitch_2f
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1056
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1065
    :pswitch_30
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1063
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1073
    :pswitch_31
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v0, v4}, Lcom/google/protobuf/Proto3Schema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1076
    :pswitch_32
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1077
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_1

    .line 1081
    :pswitch_33
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1082
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_1

    .line 1086
    :pswitch_34
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1087
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_1

    .line 1091
    :pswitch_35
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1092
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_1

    .line 1096
    :pswitch_36
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1097
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_1

    .line 1101
    :pswitch_37
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1102
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_1

    .line 1106
    :pswitch_38
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1107
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_1

    .line 1111
    :pswitch_39
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1112
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_1

    .line 1116
    :pswitch_3a
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1117
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/Proto3Schema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 1121
    :pswitch_3b
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1122
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1126
    :pswitch_3c
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1128
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 1127
    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_1

    .line 1132
    :pswitch_3d
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1133
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_1

    .line 1137
    :pswitch_3e
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1138
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_1

    .line 1142
    :pswitch_3f
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1143
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_1

    .line 1147
    :pswitch_40
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1148
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_1

    .line 1152
    :pswitch_41
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1153
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_1

    .line 1157
    :pswitch_42
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1158
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_1

    .line 1166
    .end local v0    # "number":I
    .end local v1    # "typeAndOffset":I
    :cond_1
    return-void

    .line 801
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
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
        :pswitch_0
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
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const-wide/16 v10, 0x10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x8

    .line 1170
    iget-wide v4, p0, Lcom/google/protobuf/Proto3Schema;->limit:J

    sub-long v2, v4, v10

    .local v2, "pos":J
    :goto_0
    iget-wide v4, p0, Lcom/google/protobuf/Proto3Schema;->address:J

    cmp-long v4, v2, v4

    if-ltz v4, :cond_1

    .line 1171
    invoke-static {v2, v3}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v1

    .line 1172
    .local v1, "typeAndOffset":I
    invoke-static {v2, v3}, Lcom/google/protobuf/Proto3Schema;->numberAt(J)I

    move-result v0

    .line 1175
    .local v0, "number":I
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1170
    :cond_0
    :goto_1
    :pswitch_0
    sub-long/2addr v2, v10

    goto :goto_0

    .line 1177
    :pswitch_1
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->doubleAt(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeDouble(IDLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 1180
    :pswitch_2
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->floatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeFloat(IFLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 1183
    :pswitch_3
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeInt64(IJLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 1186
    :pswitch_4
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeUInt64(IJLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 1189
    :pswitch_5
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeInt32(IILcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 1192
    :pswitch_6
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeFixed64(IJLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 1195
    :pswitch_7
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeFixed32(IILcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 1198
    :pswitch_8
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->booleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBool(IZLcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 1202
    :pswitch_9
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1201
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 1206
    :pswitch_a
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 1205
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_1

    .line 1210
    :pswitch_b
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 1209
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytes(ILcom/google/protobuf/ByteString;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 1213
    :pswitch_c
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeUInt32(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 1216
    :pswitch_d
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeEnum(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 1219
    :pswitch_e
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 1222
    :pswitch_f
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64(IJLcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 1225
    :pswitch_10
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->intAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeSInt32(IILcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 1228
    :pswitch_11
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->longAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-static {v0, v4, v5, p2}, Lcom/google/protobuf/SchemaUtil;->writeSInt64(IJLcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 1236
    :pswitch_12
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1234
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1243
    :pswitch_13
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1241
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1250
    :pswitch_14
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1248
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1257
    :pswitch_15
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1255
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1264
    :pswitch_16
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1262
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1271
    :pswitch_17
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1269
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1278
    :pswitch_18
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1276
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1285
    :pswitch_19
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1283
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1291
    :pswitch_1a
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1290
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 1295
    :pswitch_1b
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1294
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 1300
    :pswitch_1c
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1298
    invoke-static {v0, v4, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 1306
    :pswitch_1d
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1304
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1313
    :pswitch_1e
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1311
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1320
    :pswitch_1f
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1318
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1327
    :pswitch_20
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1325
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1334
    :pswitch_21
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1332
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1341
    :pswitch_22
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1339
    invoke-static {v0, v4, p2, v8}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1348
    :pswitch_23
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1346
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1355
    :pswitch_24
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1353
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1362
    :pswitch_25
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1360
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1369
    :pswitch_26
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1367
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1376
    :pswitch_27
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1374
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1383
    :pswitch_28
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1381
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1390
    :pswitch_29
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1388
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1397
    :pswitch_2a
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1395
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1404
    :pswitch_2b
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1402
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1411
    :pswitch_2c
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1409
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1418
    :pswitch_2d
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1416
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1425
    :pswitch_2e
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1423
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1432
    :pswitch_2f
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1430
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1439
    :pswitch_30
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1437
    invoke-static {v0, v4, p2, v9}, Lcom/google/protobuf/SchemaUtil;->writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V

    goto/16 :goto_1

    .line 1447
    :pswitch_31
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-direct {p0, p2, v0, v4}, Lcom/google/protobuf/Proto3Schema;->writeMapHelper(Lcom/google/protobuf/Writer;ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1450
    :pswitch_32
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1451
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    goto/16 :goto_1

    .line 1455
    :pswitch_33
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1456
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    goto/16 :goto_1

    .line 1460
    :pswitch_34
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1461
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    goto/16 :goto_1

    .line 1465
    :pswitch_35
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1466
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    goto/16 :goto_1

    .line 1470
    :pswitch_36
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1471
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    goto/16 :goto_1

    .line 1475
    :pswitch_37
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1476
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    goto/16 :goto_1

    .line 1480
    :pswitch_38
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1481
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    goto/16 :goto_1

    .line 1485
    :pswitch_39
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1486
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    goto/16 :goto_1

    .line 1490
    :pswitch_3a
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1491
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-static {v0, v4, p2}, Lcom/google/protobuf/Proto3Schema;->writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto/16 :goto_1

    .line 1495
    :pswitch_3b
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1496
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    goto/16 :goto_1

    .line 1500
    :pswitch_3c
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1502
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/google/protobuf/ByteString;

    .line 1501
    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto/16 :goto_1

    .line 1506
    :pswitch_3d
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1507
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    goto/16 :goto_1

    .line 1511
    :pswitch_3e
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1512
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    goto/16 :goto_1

    .line 1516
    :pswitch_3f
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1517
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    goto/16 :goto_1

    .line 1521
    :pswitch_40
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1522
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    goto/16 :goto_1

    .line 1526
    :pswitch_41
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1527
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v4

    invoke-interface {p2, v0, v4}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    goto/16 :goto_1

    .line 1531
    :pswitch_42
    add-long v4, v2, v6

    invoke-static {v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v4

    invoke-static {p1, v0, v4}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1532
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v4

    invoke-static {p1, v4, v5}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v4

    invoke-interface {p2, v0, v4, v5}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    goto/16 :goto_1

    .line 1540
    .end local v0    # "number":I
    .end local v1    # "typeAndOffset":I
    :cond_1
    return-void

    .line 1175
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
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
        :pswitch_0
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
    .line 1544
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    iget-object v1, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1547
    invoke-virtual {v1, p2}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/google/protobuf/MapFieldSchema;->forMapMetadata(Ljava/lang/Object;)Lcom/google/protobuf/MapEntryLite$Metadata;

    move-result-object v0

    iget-object v1, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    .line 1548
    invoke-interface {v1, p3}, Lcom/google/protobuf/MapFieldSchema;->forMapData(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v1

    .line 1544
    invoke-interface {p1, p2, v0, v1}, Lcom/google/protobuf/Writer;->writeMap(ILcom/google/protobuf/MapEntryLite$Metadata;Ljava/util/Map;)V

    .line 1549
    return-void
.end method

.method private static writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 1923
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1924
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 1928
    :goto_0
    return-void

    .line 1926
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)Z"
        }
    .end annotation

    .prologue
    .line 242
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    iget-wide v2, p0, Lcom/google/protobuf/Proto3Schema;->address:J

    .local v2, "pos":J
    :goto_0
    iget-wide v4, p0, Lcom/google/protobuf/Proto3Schema;->limit:J

    cmp-long v4, v2, v4

    if-gez v4, :cond_1

    .line 243
    invoke-static {p1, p2, v2, v3}, Lcom/google/protobuf/Proto3Schema;->equals(Ljava/lang/Object;Ljava/lang/Object;J)Z

    move-result v4

    if-nez v4, :cond_0

    .line 244
    const/4 v4, 0x0

    .line 251
    :goto_1
    return v4

    .line 242
    :cond_0
    const-wide/16 v4, 0x10

    add-long/2addr v2, v4

    goto :goto_0

    .line 248
    :cond_1
    instance-of v4, p1, Lcom/google/protobuf/GeneratedMessageLite;

    if-eqz v4, :cond_2

    move-object v0, p1

    .line 249
    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite;

    .local v0, "a":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<**>;"
    move-object v1, p2

    .line 250
    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite;

    .line 251
    .local v1, "b":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<**>;"
    iget-object v4, v0, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    iget-object v5, v1, Lcom/google/protobuf/GeneratedMessageLite;->unknownFields:Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/UnknownFieldSetLite;->equals(Ljava/lang/Object;)Z

    move-result v4

    goto :goto_1

    .line 253
    .end local v0    # "a":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<**>;"
    .end local v1    # "b":Lcom/google/protobuf/GeneratedMessageLite;, "Lcom/google/protobuf/GeneratedMessageLite<**>;"
    :cond_2
    new-instance v4, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v4}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v4
.end method

.method public hashCode(Ljava/lang/Object;)I
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const-wide/16 v10, 0x8

    .line 371
    new-instance v0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;

    invoke-direct {v0}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;-><init>()V

    .line 373
    .local v0, "acc":Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;
    iget-wide v4, p0, Lcom/google/protobuf/Proto3Schema;->address:J

    .local v4, "pos":J
    :goto_0
    iget-wide v8, p0, Lcom/google/protobuf/Proto3Schema;->limit:J

    cmp-long v7, v4, v8

    if-gez v7, :cond_1

    .line 374
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v6

    .line 375
    .local v6, "typeAndOffset":I
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto3Schema;->numberAt(J)I

    move-result v1

    .line 377
    .local v1, "entryNumber":I
    invoke-static {v6}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v2

    .line 380
    .local v2, "offset":J
    invoke-static {v6}, Lcom/google/protobuf/Proto3Schema;->type(I)I

    move-result v7

    packed-switch v7, :pswitch_data_0

    .line 373
    :cond_0
    :goto_1
    :pswitch_0
    const-wide/16 v8, 0x10

    add-long/2addr v4, v8

    goto :goto_0

    .line 382
    :pswitch_1
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto :goto_1

    .line 385
    :pswitch_2
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto :goto_1

    .line 388
    :pswitch_3
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto :goto_1

    .line 391
    :pswitch_4
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto :goto_1

    .line 394
    :pswitch_5
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto :goto_1

    .line 397
    :pswitch_6
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto :goto_1

    .line 400
    :pswitch_7
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto :goto_1

    .line 403
    :pswitch_8
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashBoolean(Z)V

    goto :goto_1

    .line 406
    :pswitch_9
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashString(Ljava/lang/String;)V

    goto :goto_1

    .line 409
    :pswitch_a
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashMessage(Ljava/lang/Object;)V

    goto :goto_1

    .line 412
    :pswitch_b
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashByteString(Lcom/google/protobuf/ByteString;)V

    goto :goto_1

    .line 415
    :pswitch_c
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto :goto_1

    .line 418
    :pswitch_d
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto :goto_1

    .line 421
    :pswitch_e
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto :goto_1

    .line 424
    :pswitch_f
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto :goto_1

    .line 427
    :pswitch_10
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 430
    :pswitch_11
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto/16 :goto_1

    .line 468
    :pswitch_12
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashList(Ljava/util/List;)V

    goto/16 :goto_1

    .line 476
    :pswitch_13
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashMap(Ljava/util/Map;)V

    goto/16 :goto_1

    .line 480
    :pswitch_14
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 481
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofDoubleAt(Ljava/lang/Object;J)D

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashDouble(D)V

    goto/16 :goto_1

    .line 485
    :pswitch_15
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 486
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofFloatAt(Ljava/lang/Object;J)F

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashFloat(F)V

    goto/16 :goto_1

    .line 490
    :pswitch_16
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 491
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto/16 :goto_1

    .line 495
    :pswitch_17
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 496
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto/16 :goto_1

    .line 500
    :pswitch_18
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 501
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 505
    :pswitch_19
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 506
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto/16 :goto_1

    .line 510
    :pswitch_1a
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 511
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 515
    :pswitch_1b
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 516
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofBooleanAt(Ljava/lang/Object;J)Z

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashBoolean(Z)V

    goto/16 :goto_1

    .line 520
    :pswitch_1c
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 521
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashString(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 525
    :pswitch_1d
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 526
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashMessage(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 530
    :pswitch_1e
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 531
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/google/protobuf/ByteString;

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashByteString(Lcom/google/protobuf/ByteString;)V

    goto/16 :goto_1

    .line 535
    :pswitch_1f
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 536
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 540
    :pswitch_20
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 541
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 545
    :pswitch_21
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 546
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 550
    :pswitch_22
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 551
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto/16 :goto_1

    .line 555
    :pswitch_23
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 556
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofIntAt(Ljava/lang/Object;J)I

    move-result v7

    invoke-virtual {v0, v7}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashInt(I)V

    goto/16 :goto_1

    .line 560
    :pswitch_24
    add-long v8, v4, v10

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v7

    invoke-static {p1, v1, v7}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 561
    invoke-static {p1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->oneofLongAt(Ljava/lang/Object;J)J

    move-result-wide v8

    invoke-virtual {v0, v8, v9}, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashLong(J)V

    goto/16 :goto_1

    .line 572
    .end local v1    # "entryNumber":I
    .end local v2    # "offset":J
    .end local v6    # "typeAndOffset":I
    :cond_1
    iget v7, v0, Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;->hashCode:I

    return v7

    .line 380
    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
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
        :pswitch_0
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
        :pswitch_0
    .end packed-switch
.end method

.method public isInitialized(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .prologue
    .line 1908
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v0, 0x1

    return v0
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 22
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
    .line 1555
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    const/4 v6, 0x0

    .local v6, "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    move-object v13, v6

    .line 1558
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .local v13, "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->getFieldNumber()I

    move-result v5

    .line 1559
    .local v5, "number":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;

    invoke-virtual {v4, v5}, Lcom/google/protobuf/Proto3Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v16

    .line 1560
    .local v16, "pos":J
    const-wide/16 v8, 0x0

    cmp-long v4, v16, v8

    if-gez v4, :cond_3

    .line 1562
    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->skipField()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-nez v4, :cond_0

    .line 1877
    if-eqz v13, :cond_1

    .line 1878
    invoke-virtual {v13}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 1879
    .local v12, "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/protobuf/Proto3Schema;->positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/protobuf/Proto3Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v16

    .line 1881
    invoke-static/range {v16 .. v17}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1880
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v7}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_1

    .end local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    :cond_1
    move-object v6, v13

    .line 1872
    .end local v5    # "number":I
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_2
    :goto_2
    return-void

    .line 1568
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v5    # "number":I
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_3
    :try_start_1
    invoke-static/range {v16 .. v17}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v18

    .line 1569
    .local v18, "typeAndOffset":I
    const-wide/16 v8, 0x8

    add-long v8, v8, v16

    invoke-static {v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v15

    .line 1572
    .local v15, "presenceMaskAndOffset":I
    :try_start_2
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->type(I)I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 1861
    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->skipField()Z
    :try_end_2
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v4

    if-nez v4, :cond_8

    .line 1877
    if-eqz v13, :cond_6

    .line 1878
    invoke-virtual {v13}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 1879
    .restart local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/protobuf/Proto3Schema;->positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/protobuf/Proto3Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v16

    .line 1881
    invoke-static/range {v16 .. v17}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1880
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v7}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_3

    .line 1574
    .end local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    :pswitch_0
    :try_start_3
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v20

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    move-object v6, v13

    .end local v5    # "number":I
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_4
    :goto_4
    move-object v13, v6

    .line 1875
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_0

    .line 1577
    .restart local v5    # "number":I
    :pswitch_1
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    move-object v6, v13

    .line 1578
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1580
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v20

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    move-object v6, v13

    .line 1581
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1583
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v20

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    move-object v6, v13

    .line 1584
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1586
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_4
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v13

    .line 1587
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1589
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_5
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v20

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    move-object v6, v13

    .line 1590
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1592
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_6
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v13

    .line 1593
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1595
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_7
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    move-object v6, v13

    .line 1596
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1598
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_8
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    move-object v6, v13

    .line 1599
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto :goto_4

    .line 1601
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1602
    invoke-virtual {v4, v5}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v19

    .line 1603
    .local v19, "value":Ljava/lang/Object;
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v14

    .line 1604
    .local v14, "oldValue":Ljava/lang/Object;
    if-eqz v14, :cond_5

    .line 1605
    move-object/from16 v0, v19

    invoke-static {v14, v0}, Lcom/google/protobuf/Internal;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v19

    .line 1607
    :cond_5
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    move-object/from16 v1, v19

    invoke-static {v0, v8, v9, v1}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v6, v13

    .line 1608
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1610
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v14    # "oldValue":Ljava/lang/Object;
    .end local v19    # "value":Ljava/lang/Object;
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_a
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    move-object v6, v13

    .line 1611
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1613
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_b
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v13

    .line 1614
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1616
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_c
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readEnum()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v13

    .line 1617
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1619
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_d
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v13

    .line 1620
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1622
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_e
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v20

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    move-object v6, v13

    .line 1623
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1625
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_f
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    move-object v6, v13

    .line 1626
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1628
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_10
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v20

    move-object/from16 v0, p1

    move-wide/from16 v1, v20

    invoke-static {v0, v8, v9, v1, v2}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    move-object v6, v13

    .line 1629
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_11
    move-object v6, v13

    .line 1632
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1634
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1635
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1634
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    move-object v6, v13

    .line 1636
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1638
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1639
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1638
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    move-object v6, v13

    .line 1640
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1642
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_14
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1643
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1642
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1644
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1646
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_15
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1647
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1646
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1648
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1650
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1651
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1650
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1652
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1654
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1655
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1654
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1656
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1658
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1659
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1658
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1660
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1662
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_19
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1663
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1662
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    move-object v6, v13

    .line 1664
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1666
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1a
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->readStringList(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    move-object v6, v13

    .line 1667
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1671
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1b
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v6

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1673
    invoke-virtual {v4, v5}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Class;

    move-object/from16 v4, p0

    move-object/from16 v5, p1

    move-object/from16 v8, p2

    move-object/from16 v10, p3

    .line 1669
    invoke-direct/range {v4 .. v10}, Lcom/google/protobuf/Proto3Schema;->readMessageList(Ljava/lang/Object;JLcom/google/protobuf/Reader;Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .end local v5    # "number":I
    move-object v6, v13

    .line 1675
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1677
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v5    # "number":I
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1678
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1677
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readBytesList(Ljava/util/List;)V

    move-object v6, v13

    .line 1679
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1681
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1682
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1681
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1683
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1685
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1686
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1685
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    move-object v6, v13

    .line 1687
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1689
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1690
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1689
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1691
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1693
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1694
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1693
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1695
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1697
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1698
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1697
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1699
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1701
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_22
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1702
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1701
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1703
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1705
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_23
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1706
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1705
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readDoubleList(Ljava/util/List;)V

    move-object v6, v13

    .line 1707
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1709
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1710
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1709
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFloatList(Ljava/util/List;)V

    move-object v6, v13

    .line 1711
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1713
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_25
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1714
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1713
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1715
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1717
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_26
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1718
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1717
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1719
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1721
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1722
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1721
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readInt32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1723
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1725
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1726
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1725
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1727
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1729
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1730
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1729
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readFixed32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1731
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1733
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1734
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1733
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readBoolList(Ljava/util/List;)V

    move-object v6, v13

    .line 1735
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1737
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1738
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1737
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readUInt32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1739
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1741
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2c
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1742
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1741
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readEnumList(Ljava/util/List;)V

    move-object v6, v13

    .line 1743
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1745
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1746
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1745
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1747
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1749
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1750
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1749
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSFixed64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1751
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1753
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1754
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1753
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt32List(Ljava/util/List;)V

    move-object v6, v13

    .line 1755
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1757
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_30
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    .line 1758
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p1

    invoke-virtual {v4, v0, v8, v9}, Lcom/google/protobuf/ListFieldSchema;->mutableListAt(Ljava/lang/Object;J)Ljava/util/List;

    move-result-object v4

    .line 1757
    move-object/from16 v0, p2

    invoke-interface {v0, v4}, Lcom/google/protobuf/Reader;->readSInt64List(Ljava/util/List;)V

    move-object v6, v13

    .line 1759
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_31
    move-object v6, v13

    .line 1762
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1764
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_32
    if-nez v13, :cond_9

    .line 1765
    new-instance v6, Lcom/google/protobuf/Int2ObjectHashMap;

    invoke-direct {v6}, Lcom/google/protobuf/Int2ObjectHashMap;-><init>()V
    :try_end_3
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1767
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :goto_5
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->mapFieldDefaultEntryMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1770
    invoke-virtual {v4, v5}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object/from16 v4, p0

    move-object/from16 v8, p3

    move-object/from16 v9, p2

    .line 1767
    invoke-direct/range {v4 .. v9}, Lcom/google/protobuf/Proto3Schema;->mergeMap(ILcom/google/protobuf/Int2ObjectHashMap;Ljava/lang/Object;Lcom/google/protobuf/ExtensionRegistryLite;Lcom/google/protobuf/Reader;)V
    :try_end_4
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto/16 :goto_4

    .line 1868
    :catch_0
    move-exception v11

    .line 1871
    .end local v5    # "number":I
    .local v11, "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    :goto_6
    :try_start_5
    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->skipField()Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result v4

    if-nez v4, :cond_4

    .line 1877
    if-eqz v6, :cond_2

    .line 1878
    invoke-virtual {v6}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 1879
    .restart local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/protobuf/Proto3Schema;->positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v8

    invoke-virtual {v7, v8}, Lcom/google/protobuf/Proto3Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v16

    .line 1881
    invoke-static/range {v16 .. v17}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v7

    invoke-static {v7}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 1880
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v7}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_7

    .line 1776
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v11    # "e":Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
    .end local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    .restart local v5    # "number":I
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_33
    :try_start_6
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readDouble()D

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    .line 1775
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1777
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1778
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1781
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_34
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readFloat()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    .line 1780
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1782
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1783
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1786
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_35
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readInt64()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1785
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1787
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1788
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1791
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_36
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readUInt64()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1790
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1792
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1793
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1796
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_37
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1795
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1797
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1798
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1801
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_38
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readFixed64()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1800
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1802
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1803
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1806
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_39
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1805
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1807
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1808
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1811
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3a
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readBool()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 1810
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1812
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1813
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1815
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3b
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v18

    move-object/from16 v3, p2

    invoke-direct {v0, v1, v2, v3}, Lcom/google/protobuf/Proto3Schema;->readString(Ljava/lang/Object;ILcom/google/protobuf/Reader;)V

    .line 1816
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1817
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1821
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3c
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/google/protobuf/Proto3Schema;->messageFieldClassMap:Lcom/google/protobuf/Int2ObjectHashMap;

    .line 1822
    invoke-virtual {v4, v5}, Lcom/google/protobuf/Int2ObjectHashMap;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Class;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    invoke-interface {v0, v4, v1}, Lcom/google/protobuf/Reader;->readMessage(Ljava/lang/Class;Lcom/google/protobuf/ExtensionRegistryLite;)Ljava/lang/Object;

    move-result-object v4

    .line 1819
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1823
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1824
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1826
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3d
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readBytes()Lcom/google/protobuf/ByteString;

    move-result-object v4

    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1827
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1828
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1831
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3e
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readUInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1830
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1832
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1833
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1836
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_3f
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readEnum()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1835
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1837
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1838
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1841
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_40
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSFixed32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1840
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1842
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1843
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1846
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_41
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSFixed64()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1845
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1847
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1848
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1851
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_42
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSInt32()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 1850
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1852
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    move-object v6, v13

    .line 1853
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .line 1856
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :pswitch_43
    invoke-static/range {v18 .. v18}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    invoke-interface/range {p2 .. p2}, Lcom/google/protobuf/Reader;->readSInt64()J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 1855
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v4}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 1857
    move-object/from16 v0, p1

    invoke-static {v0, v5, v15}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V
    :try_end_6
    .catch Lcom/google/protobuf/InvalidProtocolBufferException$InvalidWireTypeException; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    move-object v6, v13

    .line 1858
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_6
    move-object v6, v13

    .line 1863
    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_2

    .line 1877
    .end local v5    # "number":I
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .end local v15    # "presenceMaskAndOffset":I
    .end local v16    # "pos":J
    .end local v18    # "typeAndOffset":I
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :catchall_0
    move-exception v4

    move-object v6, v13

    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :goto_8
    if-eqz v6, :cond_7

    .line 1878
    invoke-virtual {v6}, Lcom/google/protobuf/Int2ObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_9
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;

    .line 1879
    .restart local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/google/protobuf/Proto3Schema;->positionStrategy:Lcom/google/protobuf/Proto3Schema$PositionStrategy;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->key()I

    move-result v9

    invoke-virtual {v8, v9}, Lcom/google/protobuf/Proto3Schema$PositionStrategy;->positionForFieldNumber(I)J

    move-result-wide v16

    .line 1881
    .restart local v16    # "pos":J
    invoke-static/range {v16 .. v17}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v8

    invoke-static {v8}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v8

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-interface {v12}, Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;->value()Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-interface {v10, v0}, Lcom/google/protobuf/MapFieldSchema;->toImmutable(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    .line 1880
    move-object/from16 v0, p1

    invoke-static {v0, v8, v9, v10}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto :goto_9

    .line 1882
    .end local v12    # "entry":Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry;, "Lcom/google/protobuf/Int2ObjectHashMap$PrimitiveEntry<Ljava/lang/Object;>;"
    .end local v16    # "pos":J
    :cond_7
    throw v4

    .line 1877
    .restart local v15    # "presenceMaskAndOffset":I
    .restart local v16    # "pos":J
    .restart local v18    # "typeAndOffset":I
    :catchall_1
    move-exception v4

    goto :goto_8

    .line 1868
    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :catch_1
    move-exception v11

    move-object v6, v13

    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_6

    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v5    # "number":I
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_8
    move-object v6, v13

    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_4

    .end local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    :cond_9
    move-object v6, v13

    .end local v13    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    .restart local v6    # "mapFields":Lcom/google/protobuf/Int2ObjectHashMap;, "Lcom/google/protobuf/Int2ObjectHashMap<Ljava/lang/Object;>;"
    goto/16 :goto_5

    .line 1572
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
    .end packed-switch
.end method

.method public mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 577
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    iget-wide v4, p0, Lcom/google/protobuf/Proto3Schema;->address:J

    .local v4, "pos":J
    :goto_0
    iget-wide v6, p0, Lcom/google/protobuf/Proto3Schema;->limit:J

    cmp-long v6, v4, v6

    if-gez v6, :cond_1

    .line 578
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto3Schema;->typeAndOffsetAt(J)I

    move-result v1

    .line 579
    .local v1, "typeAndOffset":I
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->offset(I)J

    move-result-wide v2

    .line 580
    .local v2, "offset":J
    invoke-static {v4, v5}, Lcom/google/protobuf/Proto3Schema;->numberAt(J)I

    move-result v0

    .line 582
    .local v0, "number":I
    invoke-static {v1}, Lcom/google/protobuf/Proto3Schema;->type(I)I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 577
    :cond_0
    :goto_1
    :pswitch_0
    const-wide/16 v6, 0x10

    add-long/2addr v4, v6

    goto :goto_0

    .line 584
    :pswitch_1
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-eqz v6, :cond_0

    .line 585
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v6

    invoke-static {p1, v2, v3, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->putDouble(Ljava/lang/Object;JD)V

    goto :goto_1

    .line 589
    :pswitch_2
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v6

    const/4 v7, 0x0

    cmpl-float v6, v6, v7

    if-eqz v6, :cond_0

    .line 590
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getFloat(Ljava/lang/Object;J)F

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putFloat(Ljava/lang/Object;JF)V

    goto :goto_1

    .line 594
    :pswitch_3
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 595
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v2, v3, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_1

    .line 599
    :pswitch_4
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 600
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v2, v3, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_1

    .line 604
    :pswitch_5
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eqz v6, :cond_0

    .line 605
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1

    .line 609
    :pswitch_6
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 610
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v2, v3, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    goto :goto_1

    .line 614
    :pswitch_7
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eqz v6, :cond_0

    .line 615
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    goto :goto_1

    .line 619
    :pswitch_8
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getBoolean(Ljava/lang/Object;J)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 620
    const/4 v6, 0x1

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putBoolean(Ljava/lang/Object;JZ)V

    goto/16 :goto_1

    .line 624
    :pswitch_9
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 625
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 629
    :pswitch_a
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/protobuf/Proto3Schema;->mergeMessage(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 632
    :pswitch_b
    sget-object v6, Lcom/google/protobuf/ByteString;->EMPTY:Lcom/google/protobuf/ByteString;

    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/google/protobuf/ByteString;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 633
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    goto/16 :goto_1

    .line 637
    :pswitch_c
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eqz v6, :cond_0

    .line 638
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1

    .line 642
    :pswitch_d
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eqz v6, :cond_0

    .line 643
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1

    .line 647
    :pswitch_e
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eqz v6, :cond_0

    .line 648
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1

    .line 652
    :pswitch_f
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 653
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v2, v3, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_1

    .line 657
    :pswitch_10
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    if-eqz v6, :cond_0

    .line 658
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    goto/16 :goto_1

    .line 662
    :pswitch_11
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 663
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getLong(Ljava/lang/Object;J)J

    move-result-wide v6

    invoke-static {p1, v2, v3, v6, v7}, Lcom/google/protobuf/UnsafeUtil;->putLong(Ljava/lang/Object;JJ)V

    goto/16 :goto_1

    .line 700
    :pswitch_12
    iget-object v6, p0, Lcom/google/protobuf/Proto3Schema;->listFieldSchema:Lcom/google/protobuf/ListFieldSchema;

    invoke-virtual {v6, p1, p2, v2, v3}, Lcom/google/protobuf/ListFieldSchema;->mergeListsAt(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 706
    :pswitch_13
    iget-object v6, p0, Lcom/google/protobuf/Proto3Schema;->mapFieldSchema:Lcom/google/protobuf/MapFieldSchema;

    invoke-static {v6, p1, p2, v2, v3}, Lcom/google/protobuf/SchemaUtil;->mergeMap(Lcom/google/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 717
    :pswitch_14
    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v0, v6}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 718
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 719
    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v0, v6}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 724
    :pswitch_15
    invoke-direct {p0, p1, p2, v4, v5}, Lcom/google/protobuf/Proto3Schema;->mergeOneofMessage(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto/16 :goto_1

    .line 733
    :pswitch_16
    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p2, v0, v6}, Lcom/google/protobuf/Proto3Schema;->isOneofPresent(Ljava/lang/Object;II)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 734
    invoke-static {p2, v2, v3}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v6

    invoke-static {p1, v2, v3, v6}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 735
    const-wide/16 v6, 0x8

    add-long/2addr v6, v4

    invoke-static {v6, v7}, Lcom/google/protobuf/UnsafeUtil;->getInt(J)I

    move-result v6

    invoke-static {p1, v0, v6}, Lcom/google/protobuf/Proto3Schema;->setOneofPresent(Ljava/lang/Object;II)V

    goto/16 :goto_1

    .line 745
    .end local v0    # "number":I
    .end local v1    # "typeAndOffset":I
    .end local v2    # "offset":J
    :cond_1
    return-void

    .line 582
    nop

    :pswitch_data_0
    .packed-switch 0x0
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
        :pswitch_0
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
        :pswitch_0
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
        :pswitch_0
    .end packed-switch
.end method

.method public final newInstance()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 237
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    iget-object v0, p0, Lcom/google/protobuf/Proto3Schema;->defaultInstance:Lcom/google/protobuf/MessageLite;

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite;->newBuilderForType()Lcom/google/protobuf/MessageLite$Builder;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/protobuf/MessageLite$Builder;->build()Lcom/google/protobuf/MessageLite;

    move-result-object v0

    return-object v0
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
    .line 787
    .local p0, "this":Lcom/google/protobuf/Proto3Schema;, "Lcom/google/protobuf/Proto3Schema<TT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-interface {p2}, Lcom/google/protobuf/Writer;->fieldOrder()Lcom/google/protobuf/Writer$FieldOrder;

    move-result-object v0

    sget-object v1, Lcom/google/protobuf/Writer$FieldOrder;->DESCENDING:Lcom/google/protobuf/Writer$FieldOrder;

    if-ne v0, v1, :cond_0

    .line 788
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Proto3Schema;->writeFieldsInDescendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 792
    :goto_0
    return-void

    .line 790
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/google/protobuf/Proto3Schema;->writeFieldsInAscendingOrder(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    goto :goto_0
.end method

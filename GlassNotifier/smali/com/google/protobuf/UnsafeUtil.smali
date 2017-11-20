.class final Lcom/google/protobuf/UnsafeUtil;
.super Ljava/lang/Object;
.source "UnsafeUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;,
        Lcom/google/protobuf/UnsafeUtil$Android64MemoryAccessor;,
        Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;,
        Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;
    }
.end annotation


# static fields
.field private static final ARRAY_BASE_OFFSET:J

.field private static final BUFFER_ADDRESS_OFFSET:J

.field private static final HAS_UNSAFE_ARRAY_OPERATIONS:Z

.field private static final HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

.field private static final HAS_UNSAFE_COPY_MEMORY:Z

.field private static final IS_ANDROID_32:Z

.field private static final IS_ANDROID_64:Z

.field private static final IS_BIG_ENDIAN:Z

.field private static final IS_ROBOLECTRIC:Z

.field private static final MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

.field private static final MEMORY_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final UNSAFE:Lsun/misc/Unsafe;

.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 14
    const-class v0, Lcom/google/protobuf/UnsafeUtil;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/UnsafeUtil;->logger:Ljava/util/logging/Logger;

    .line 15
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getUnsafe()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    .line 17
    const-string v0, "libcore.io.Memory"

    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    .line 18
    const-string v0, "org.robolectric.Robolectric"

    .line 19
    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->getClassForName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput-boolean v0, Lcom/google/protobuf/UnsafeUtil;->IS_ROBOLECTRIC:Z

    .line 20
    sget-object v0, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/google/protobuf/UnsafeUtil;->IS_ANDROID_64:Z

    .line 21
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z

    move-result v0

    sput-boolean v0, Lcom/google/protobuf/UnsafeUtil;->IS_ANDROID_32:Z

    .line 23
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->getMemoryAccessor()Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    .line 25
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->supportsUnsafeByteBufferOperations()Z

    move-result v0

    sput-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    .line 26
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->supportsUnsafeArrayOperations()Z

    move-result v0

    sput-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    .line 27
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->supportsUnsafeCopyMemory()Z

    move-result v0

    sput-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_COPY_MEMORY:Z

    .line 28
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->byteArrayBaseOffset()I

    move-result v0

    int-to-long v4, v0

    sput-wide v4, Lcom/google/protobuf/UnsafeUtil;->ARRAY_BASE_OFFSET:J

    .line 29
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lcom/google/protobuf/UnsafeUtil;->fieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v4

    sput-wide v4, Lcom/google/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    .line 785
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v0

    sget-object v3, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v0, v3, :cond_1

    :goto_1
    sput-boolean v1, Lcom/google/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    return-void

    :cond_0
    move v0, v2

    .line 19
    goto :goto_0

    :cond_1
    move v1, v2

    .line 785
    goto :goto_1
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 13
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->IS_BIG_ENDIAN:Z

    return v0
.end method

.method static synthetic access$100(Ljava/lang/Object;J)B
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J

    .prologue
    .line 13
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static synthetic access$200(Ljava/lang/Object;J)B
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J

    .prologue
    .line 13
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method static synthetic access$300(Ljava/lang/Object;JB)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J
    .param p3, "x2"    # B

    .prologue
    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic access$400(Ljava/lang/Object;JB)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J
    .param p3, "x2"    # B

    .prologue
    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    return-void
.end method

.method static synthetic access$500(Ljava/lang/Object;J)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J

    .prologue
    .line 13
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getBooleanBigEndian(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Ljava/lang/Object;J)Z
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J

    .prologue
    .line 13
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getBooleanLittleEndian(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Ljava/lang/Object;JZ)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->putBooleanBigEndian(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static synthetic access$800(Ljava/lang/Object;JZ)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Object;
    .param p1, "x1"    # J
    .param p3, "x2"    # Z

    .prologue
    .line 13
    invoke-static {p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil;->putBooleanLittleEndian(Ljava/lang/Object;JZ)V

    return-void
.end method

.method static addressOffset(Ljava/nio/ByteBuffer;)J
    .locals 4
    .param p0, "buffer"    # Ljava/nio/ByteBuffer;

    .prologue
    .line 146
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    sget-wide v2, Lcom/google/protobuf/UnsafeUtil;->BUFFER_ADDRESS_OFFSET:J

    invoke-virtual {v0, p0, v2, v3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static bufferAddressField()Ljava/lang/reflect/Field;
    .locals 3

    .prologue
    .line 332
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->isOnAndroidDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 335
    const-class v1, Ljava/nio/Buffer;

    const-string v2, "effectiveDirectAddress"

    invoke-static {v1, v2}, Lcom/google/protobuf/UnsafeUtil;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 336
    .local v0, "field":Ljava/lang/reflect/Field;
    if-eqz v0, :cond_0

    .line 341
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :goto_0
    return-object v0

    .restart local v0    # "field":Ljava/lang/reflect/Field;
    :cond_0
    const-class v1, Ljava/nio/Buffer;

    const-string v2, "address"

    invoke-static {v1, v2}, Lcom/google/protobuf/UnsafeUtil;->field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    goto :goto_0
.end method

.method private static byteArrayBaseOffset()I
    .locals 2

    .prologue
    .line 348
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    const-class v1, [B

    invoke-virtual {v0, v1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->arrayBaseOffset(Ljava/lang/Class;)I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method static copyMemory(JJJ)V
    .locals 8
    .param p0, "srcAddress"    # J
    .param p2, "targetAddress"    # J
    .param p4, "length"    # J

    .prologue
    .line 139
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-wide v2, p0

    move-wide v4, p2

    move-wide v6, p4

    invoke-virtual/range {v1 .. v7}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->copyMemory(JJJ)V

    .line 140
    return-void
.end method

.method static copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V
    .locals 10
    .param p0, "src"    # Ljava/lang/Object;
    .param p1, "srcOffset"    # J
    .param p3, "target"    # Ljava/lang/Object;
    .param p4, "targetOffset"    # J
    .param p6, "length"    # J

    .prologue
    .line 111
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v2, p0

    move-wide v3, p1

    move-object v5, p3

    move-wide v6, p4

    move-wide/from16 v8, p6

    invoke-virtual/range {v1 .. v9}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->copyMemory(Ljava/lang/Object;JLjava/lang/Object;JJ)V

    .line 112
    return-void
.end method

.method private static determineAndroidSupportByAddressSize(Ljava/lang/Class;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "addressClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 295
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->isOnAndroidDevice()Z

    move-result v4

    if-nez v4, :cond_0

    .line 310
    :goto_0
    return v2

    .line 299
    :cond_0
    :try_start_0
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    .line 300
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "peekLong"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 301
    const-string v4, "pokeLong"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 302
    const-string v4, "pokeInt"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 303
    const-string v4, "peekInt"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 304
    const-string v4, "pokeByte"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 305
    const-string v4, "peekByte"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 306
    const-string v4, "pokeByteArray"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    const-class v7, [B

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 307
    const-string v4, "peekByteArray"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    const-class v7, [B

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 308
    goto/16 :goto_0

    .line 309
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 310
    .local v1, "t":Ljava/lang/Throwable;
    goto/16 :goto_0
.end method

.method private static field(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/reflect/Field;"
        }
    .end annotation

    .prologue
    .line 366
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :try_start_0
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    .line 367
    .local v0, "field":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-object v0

    .line 368
    .end local v0    # "field":Ljava/lang/reflect/Field;
    :catch_0
    move-exception v1

    .line 370
    .local v1, "t":Ljava/lang/Throwable;
    const/4 v0, 0x0

    .restart local v0    # "field":Ljava/lang/reflect/Field;
    goto :goto_0
.end method

.method private static fieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 356
    if-eqz p0, :cond_0

    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    if-nez v0, :cond_1

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0

    :cond_1
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    goto :goto_0
.end method

.method static getArrayBaseOffset()J
    .locals 2

    .prologue
    .line 50
    sget-wide v0, Lcom/google/protobuf/UnsafeUtil;->ARRAY_BASE_OFFSET:J

    return-wide v0
.end method

.method static getBoolean(Ljava/lang/Object;J)Z
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 78
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getBoolean(Ljava/lang/Object;J)Z

    move-result v0

    return v0
.end method

.method private static getBooleanBigEndian(Ljava/lang/Object;J)Z
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 810
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByteBigEndian(Ljava/lang/Object;J)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getBooleanLittleEndian(Ljava/lang/Object;J)Z
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 814
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil;->getByteLittleEndian(Ljava/lang/Object;J)B

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getByte(J)B
    .locals 2
    .param p0, "address"    # J

    .prologue
    .line 115
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getByte(J)B

    move-result v0

    return v0
.end method

.method static getByte(Ljava/lang/Object;J)B
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 54
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getByte(Ljava/lang/Object;J)B

    move-result v0

    return v0
.end method

.method private static getByteBigEndian(Ljava/lang/Object;J)B
    .locals 7
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 788
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    const-wide/16 v4, 0x3

    and-long/2addr v2, v4

    const/4 v1, 0x3

    shl-long/2addr v2, v1

    long-to-int v1, v2

    ushr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method private static getByteLittleEndian(Ljava/lang/Object;J)B
    .locals 5
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 792
    const-wide/16 v0, -0x4

    and-long/2addr v0, p1

    invoke-static {p0, v0, v1}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    const-wide/16 v2, 0x3

    and-long/2addr v2, p1

    const/4 v1, 0x3

    shl-long/2addr v2, v1

    long-to-int v1, v2

    ushr-int/2addr v0, v1

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method private static getClassForName(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 323
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 325
    :goto_0
    return-object v1

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getDouble(Ljava/lang/Object;J)D
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 94
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getDouble(Ljava/lang/Object;J)D

    move-result-wide v0

    return-wide v0
.end method

.method static getFloat(Ljava/lang/Object;J)F
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 86
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getFloat(Ljava/lang/Object;J)F

    move-result v0

    return v0
.end method

.method static getInt(J)I
    .locals 2
    .param p0, "address"    # J

    .prologue
    .line 123
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(J)I

    move-result v0

    return v0
.end method

.method static getInt(Ljava/lang/Object;J)I
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 62
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static getLong(J)J
    .locals 2
    .param p0, "address"    # J

    .prologue
    .line 131
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method static getLong(Ljava/lang/Object;J)J
    .locals 3
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 70
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getLong(Ljava/lang/Object;J)J

    move-result-wide v0

    return-wide v0
.end method

.method private static getMemoryAccessor()Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 186
    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v1, :cond_1

    .line 200
    :cond_0
    :goto_0
    return-object v0

    .line 190
    :cond_1
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->isOnAndroidDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 191
    sget-boolean v1, Lcom/google/protobuf/UnsafeUtil;->IS_ANDROID_64:Z

    if-eqz v1, :cond_2

    .line 192
    new-instance v0, Lcom/google/protobuf/UnsafeUtil$Android64MemoryAccessor;

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/google/protobuf/UnsafeUtil$Android64MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    .line 193
    :cond_2
    sget-boolean v1, Lcom/google/protobuf/UnsafeUtil;->IS_ANDROID_32:Z

    if-eqz v1, :cond_0

    .line 194
    new-instance v0, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/google/protobuf/UnsafeUtil$Android32MemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0

    .line 200
    :cond_3
    new-instance v0, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;

    sget-object v1, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-direct {v0, v1}, Lcom/google/protobuf/UnsafeUtil$JvmMemoryAccessor;-><init>(Lsun/misc/Unsafe;)V

    goto :goto_0
.end method

.method static getObject(Ljava/lang/Object;J)Ljava/lang/Object;
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J

    .prologue
    .line 102
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method static getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 150
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method private static getUnsafe()Lsun/misc/Unsafe;
    .locals 3

    .prologue
    .line 157
    const/4 v1, 0x0

    .line 159
    .local v1, "unsafe":Lsun/misc/Unsafe;
    :try_start_0
    new-instance v2, Lcom/google/protobuf/UnsafeUtil$1;

    invoke-direct {v2}, Lcom/google/protobuf/UnsafeUtil$1;-><init>()V

    .line 160
    invoke-static {v2}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lsun/misc/Unsafe;

    move-object v1, v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 181
    :goto_0
    return-object v1

    .line 177
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method static hasUnsafeArrayOperations()Z
    .locals 1

    .prologue
    .line 34
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_ARRAY_OPERATIONS:Z

    return v0
.end method

.method static hasUnsafeByteBufferOperations()Z
    .locals 1

    .prologue
    .line 42
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_BYTEBUFFER_OPERATIONS:Z

    return v0
.end method

.method static hasUnsafeCopyMemory()Z
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->HAS_UNSAFE_COPY_MEMORY:Z

    return v0
.end method

.method private static isOnAndroidDevice()Z
    .locals 1

    .prologue
    .line 316
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/google/protobuf/UnsafeUtil;->IS_ROBOLECTRIC:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static objectFieldOffset(Ljava/lang/reflect/Field;)J
    .locals 2
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .prologue
    .line 46
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    return-wide v0
.end method

.method static putBoolean(Ljava/lang/Object;JZ)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # Z

    .prologue
    .line 82
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putBoolean(Ljava/lang/Object;JZ)V

    .line 83
    return-void
.end method

.method private static putBooleanBigEndian(Ljava/lang/Object;JZ)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # Z

    .prologue
    .line 818
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/UnsafeUtil;->putByteBigEndian(Ljava/lang/Object;JB)V

    .line 819
    return-void

    .line 818
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static putBooleanLittleEndian(Ljava/lang/Object;JZ)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # Z

    .prologue
    .line 822
    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    int-to-byte v0, v0

    invoke-static {p0, p1, p2, v0}, Lcom/google/protobuf/UnsafeUtil;->putByteLittleEndian(Ljava/lang/Object;JB)V

    .line 823
    return-void

    .line 822
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static putByte(JB)V
    .locals 2
    .param p0, "address"    # J
    .param p2, "value"    # B

    .prologue
    .line 119
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putByte(JB)V

    .line 120
    return-void
.end method

.method static putByte(Ljava/lang/Object;JB)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # B

    .prologue
    .line 58
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putByte(Ljava/lang/Object;JB)V

    .line 59
    return-void
.end method

.method private static putByteBigEndian(Ljava/lang/Object;JB)V
    .locals 9
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # B

    .prologue
    const-wide/16 v6, -0x4

    .line 796
    and-long v4, p1, v6

    invoke-static {p0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 797
    .local v0, "intValue":I
    long-to-int v3, p1

    xor-int/lit8 v3, v3, -0x1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v2, v3, 0x3

    .line 798
    .local v2, "shift":I
    const/16 v3, 0xff

    shl-int/2addr v3, v2

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    and-int/lit16 v4, p3, 0xff

    shl-int/2addr v4, v2

    or-int v1, v3, v4

    .line 799
    .local v1, "output":I
    and-long v4, p1, v6

    invoke-static {p0, v4, v5, v1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 800
    return-void
.end method

.method private static putByteLittleEndian(Ljava/lang/Object;JB)V
    .locals 9
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # B

    .prologue
    const-wide/16 v6, -0x4

    .line 803
    and-long v4, p1, v6

    invoke-static {p0, v4, v5}, Lcom/google/protobuf/UnsafeUtil;->getInt(Ljava/lang/Object;J)I

    move-result v0

    .line 804
    .local v0, "intValue":I
    long-to-int v3, p1

    and-int/lit8 v3, v3, 0x3

    shl-int/lit8 v2, v3, 0x3

    .line 805
    .local v2, "shift":I
    const/16 v3, 0xff

    shl-int/2addr v3, v2

    xor-int/lit8 v3, v3, -0x1

    and-int/2addr v3, v0

    and-int/lit16 v4, p3, 0xff

    shl-int/2addr v4, v2

    or-int v1, v3, v4

    .line 806
    .local v1, "output":I
    and-long v4, p1, v6

    invoke-static {p0, v4, v5, v1}, Lcom/google/protobuf/UnsafeUtil;->putInt(Ljava/lang/Object;JI)V

    .line 807
    return-void
.end method

.method static putDouble(Ljava/lang/Object;JD)V
    .locals 7
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # D

    .prologue
    .line 98
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putDouble(Ljava/lang/Object;JD)V

    .line 99
    return-void
.end method

.method static putFloat(Ljava/lang/Object;JF)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # F

    .prologue
    .line 90
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putFloat(Ljava/lang/Object;JF)V

    .line 91
    return-void
.end method

.method static putInt(JI)V
    .locals 2
    .param p0, "address"    # J
    .param p2, "value"    # I

    .prologue
    .line 127
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putInt(JI)V

    .line 128
    return-void
.end method

.method static putInt(Ljava/lang/Object;JI)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # I

    .prologue
    .line 66
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putInt(Ljava/lang/Object;JI)V

    .line 67
    return-void
.end method

.method static putLong(JJ)V
    .locals 2
    .param p0, "address"    # J
    .param p2, "value"    # J

    .prologue
    .line 135
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putLong(JJ)V

    .line 136
    return-void
.end method

.method static putLong(Ljava/lang/Object;JJ)V
    .locals 7
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # J

    .prologue
    .line 74
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putLong(Ljava/lang/Object;JJ)V

    .line 75
    return-void
.end method

.method static putObject(Ljava/lang/Object;JLjava/lang/Object;)V
    .locals 1
    .param p0, "target"    # Ljava/lang/Object;
    .param p1, "offset"    # J
    .param p3, "value"    # Ljava/lang/Object;

    .prologue
    .line 106
    sget-object v0, Lcom/google/protobuf/UnsafeUtil;->MEMORY_ACCESSOR:Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/google/protobuf/UnsafeUtil$MemoryAccessor;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 107
    return-void
.end method

.method private static supportsUnsafeArrayOperations()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 205
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v4, :cond_0

    .line 238
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 209
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 210
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "objectFieldOffset"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 211
    const-string v4, "arrayBaseOffset"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 212
    const-string v4, "getInt"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 213
    const-string v4, "putInt"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 214
    const-string v4, "getLong"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 215
    const-string v4, "putLong"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 216
    const-string v4, "getObject"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 217
    const-string v4, "putObject"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 219
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->isOnAndroidDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 220
    goto/16 :goto_0

    .line 223
    :cond_1
    const-string v4, "getByte"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 224
    const-string v4, "putByte"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 225
    const-string v4, "getBoolean"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 226
    const-string v4, "putBoolean"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 227
    const-string v4, "getFloat"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 228
    const-string v4, "putFloat"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 229
    const-string v4, "getDouble"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 230
    const-string v4, "putDouble"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 232
    goto/16 :goto_0

    .line 233
    :catch_0
    move-exception v1

    .line 234
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "com.google.protobuf.UnsafeUtil"

    const-string v6, "supportsUnsafeArrayOperations"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x47

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static supportsUnsafeByteBufferOperations()Z
    .locals 10

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 263
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v4, :cond_0

    .line 290
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 267
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 269
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "objectFieldOffset"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/reflect/Field;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 270
    const-string v4, "getLong"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 273
    invoke-static {}, Lcom/google/protobuf/UnsafeUtil;->isOnAndroidDevice()Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v3

    .line 274
    goto :goto_0

    .line 277
    :cond_1
    const-string v4, "getByte"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 278
    const-string v4, "putByte"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 279
    const-string v4, "getInt"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 280
    const-string v4, "putInt"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 281
    const-string v4, "getLong"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 282
    const-string v4, "putLong"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 283
    const-string v4, "copyMemory"

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 284
    goto/16 :goto_0

    .line 285
    :catch_0
    move-exception v1

    .line 286
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "com.google.protobuf.UnsafeUtil"

    const-string v6, "supportsUnsafeByteBufferOperations"

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/lit8 v8, v8, 0x47

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9, v8}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v8, "platform method missing - proto runtime falling back to safer methods: "

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method private static supportsUnsafeCopyMemory()Z
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 246
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    if-nez v4, :cond_0

    .line 259
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_0
    return v2

    .line 250
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    :try_start_0
    sget-object v4, Lcom/google/protobuf/UnsafeUtil;->UNSAFE:Lsun/misc/Unsafe;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 251
    .restart local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v4, "copyMemory"

    const/4 v5, 0x5

    new-array v5, v5, [Ljava/lang/Class;

    const/4 v6, 0x0

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x2

    const-class v7, Ljava/lang/Object;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    const/4 v6, 0x4

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v5, v6

    invoke-virtual {v0, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v3

    .line 253
    goto :goto_0

    .line 254
    :catch_0
    move-exception v1

    .line 255
    .local v1, "e":Ljava/lang/Throwable;
    sget-object v3, Lcom/google/protobuf/UnsafeUtil;->logger:Ljava/util/logging/Logger;

    sget-object v4, Ljava/util/logging/Level;->WARNING:Ljava/util/logging/Level;

    const-string v5, "com.google.protobuf.UnsafeUtil"

    const-string v6, "supportsUnsafeCopyMemory"

    const-string v7, "copyMemory is missing from platform - proto runtime falling back to safer methods."

    invoke-virtual {v3, v4, v5, v6, v7}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

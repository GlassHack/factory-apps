.class final Lcom/google/protobuf/SchemaUtil;
.super Ljava/lang/Object;
.source "SchemaUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/SchemaUtil$HashCodeAccumulator;
    }
.end annotation


# static fields
.field private static final GENERATED_MESSAGE_CLASS:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;"
        }
    .end annotation
.end field

.field private static final UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 12
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->getGeneratedMessageClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 13
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->getUnknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    .line 14
    new-instance v0, Lcom/google/protobuf/UnknownFieldSetLiteSchema;

    invoke-direct {v0}, Lcom/google/protobuf/UnknownFieldSetLiteSchema;-><init>()V

    sput-object v0, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getGeneratedMessageClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 330
    :try_start_0
    const-string v1, "com.google.protobuf.GeneratedMessage"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 332
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 331
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 332
    .restart local v0    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static getMapDefaultEntry(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 8
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .prologue
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v7, 0x1

    .line 346
    .line 347
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {p1, v4}, Lcom/google/protobuf/SchemaUtil;->toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x13

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, "$"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "DefaultEntryHolder"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 348
    .local v1, "holder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 349
    .local v0, "fields":[Ljava/lang/reflect/Field;
    array-length v3, v0

    if-eq v3, v7, :cond_0

    .line 350
    new-instance v3, Ljava/lang/IllegalStateException;

    .line 354
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x3f

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "Unable to look up map field default entry holder class for "

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 357
    .end local v0    # "fields":[Ljava/lang/reflect/Field;
    .end local v1    # "holder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v2

    .line 358
    .local v2, "t":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 356
    .end local v2    # "t":Ljava/lang/Throwable;
    .restart local v0    # "fields":[Ljava/lang/reflect/Field;
    .restart local v1    # "holder":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_0
    const/4 v3, 0x0

    :try_start_1
    aget-object v3, v0, v3

    invoke-static {v3}, Lcom/google/protobuf/UnsafeUtil;->getStaticObject(Ljava/lang/reflect/Field;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3
.end method

.method private static getUnknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 318
    :try_start_0
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->getUnknownFieldSetSchemaClass()Ljava/lang/Class;

    move-result-object v0

    .line 319
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    if-nez v0, :cond_0

    move-object v2, v3

    .line 324
    :goto_0
    return-object v2

    .line 322
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/UnknownFieldSchema;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 323
    :catch_0
    move-exception v1

    .local v1, "t":Ljava/lang/Throwable;
    move-object v2, v3

    .line 324
    goto :goto_0
.end method

.method private static getUnknownFieldSetSchemaClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 338
    :try_start_0
    const-string v1, "com.google.protobuf.UnknownFieldSetSchema"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 340
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    return-object v1

    .line 339
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_0
    move-exception v0

    .line 340
    .restart local v0    # "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method static mergeExtensions(Lcom/google/protobuf/ExtensionSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "FT::",
            "Lcom/google/protobuf/FieldSet$FieldDescriptorLite",
            "<TFT;>;>(",
            "Lcom/google/protobuf/ExtensionSchema",
            "<TFT;>;TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 417
    .local p0, "schema":Lcom/google/protobuf/ExtensionSchema;, "Lcom/google/protobuf/ExtensionSchema<TFT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v0

    .line 418
    .local v0, "messageExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFT;>;"
    invoke-virtual {p0, p2}, Lcom/google/protobuf/ExtensionSchema;->getExtensions(Ljava/lang/Object;)Lcom/google/protobuf/FieldSet;

    move-result-object v1

    .line 419
    .local v1, "otherExtensions":Lcom/google/protobuf/FieldSet;, "Lcom/google/protobuf/FieldSet<TFT;>;"
    invoke-virtual {v0, v1}, Lcom/google/protobuf/FieldSet;->mergeFrom(Lcom/google/protobuf/FieldSet;)V

    .line 420
    return-void
.end method

.method static mergeMap(Lcom/google/protobuf/MapFieldSchema;Ljava/lang/Object;Ljava/lang/Object;J)V
    .locals 3
    .param p0, "mapFieldSchema"    # Lcom/google/protobuf/MapFieldSchema;
    .param p3, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/MapFieldSchema;",
            "TT;TT;J)V"
        }
    .end annotation

    .prologue
    .line 409
    .line 411
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "o":Ljava/lang/Object;, "TT;"
    invoke-static {p1, p3, p4}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v1

    invoke-static {p2, p3, p4}, Lcom/google/protobuf/UnsafeUtil;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v2

    .line 410
    invoke-interface {p0, v1, v2}, Lcom/google/protobuf/MapFieldSchema;->mergeFrom(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 412
    .local v0, "merged":Ljava/lang/Object;
    invoke-static {p1, p3, p4, v0}, Lcom/google/protobuf/UnsafeUtil;->putObject(Ljava/lang/Object;JLjava/lang/Object;)V

    .line 413
    return-void
.end method

.method static mergeUnknownFields(Lcom/google/protobuf/UnknownFieldSchema;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "UT:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<TUT;>;TT;TT;)V"
        }
    .end annotation

    .prologue
    .line 423
    .local p0, "schema":Lcom/google/protobuf/UnknownFieldSchema;, "Lcom/google/protobuf/UnknownFieldSchema<TUT;>;"
    .local p1, "message":Ljava/lang/Object;, "TT;"
    .local p2, "other":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 424
    .local v1, "messageUnknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p0, p2}, Lcom/google/protobuf/UnknownFieldSchema;->getFromMessage(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 425
    .local v2, "otherUnknowns":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p0, v1, v2}, Lcom/google/protobuf/UnknownFieldSchema;->merge(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 426
    .local v0, "merged":Ljava/lang/Object;, "TUT;"
    invoke-virtual {p0, p1, v0}, Lcom/google/protobuf/UnknownFieldSchema;->setToMessage(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 427
    return-void
.end method

.method static reflectDefaultInstance(Ljava/lang/Class;)Lcom/google/protobuf/MessageLite;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/protobuf/MessageLite;"
        }
    .end annotation

    .prologue
    .line 364
    .local p0, "messageClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v3, 0x0

    :try_start_0
    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p0, v3}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 365
    .local v0, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 366
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v0, v3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageLiteOrBuilder;

    .line 367
    .local v2, "instance":Lcom/google/protobuf/MessageLiteOrBuilder;
    invoke-interface {v2}, Lcom/google/protobuf/MessageLiteOrBuilder;->getDefaultInstanceForType()Lcom/google/protobuf/MessageLite;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 368
    .end local v0    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v2    # "instance":Lcom/google/protobuf/MessageLiteOrBuilder;
    :catch_0
    move-exception v1

    .line 369
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static requireGeneratedMessage(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 24
    .local p0, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/protobuf/SchemaUtil;->GENERATED_MESSAGE_CLASS:Ljava/lang/Class;

    .line 26
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Message classes must extend GeneratedMessage or GeneratedMessageLite"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 30
    :cond_0
    return-void
.end method

.method static safeEquals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/Object;
    .param p1, "b"    # Ljava/lang/Object;

    .prologue
    .line 405
    if-eq p0, p1, :cond_0

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shouldUseTableSwitch(III)Z
    .locals 16
    .param p0, "lo"    # I
    .param p1, "hi"    # I
    .param p2, "numFields"    # I

    .prologue
    .line 301
    const-wide/16 v10, 0x4

    move/from16 v0, p1

    int-to-long v12, v0

    move/from16 v0, p0

    int-to-long v14, v0

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x1

    add-long/2addr v12, v14

    add-long v6, v10, v12

    .line 302
    .local v6, "tableSpaceCost":J
    const-wide/16 v8, 0x3

    .line 303
    .local v8, "tableTimeCost":J
    const-wide/16 v10, 0x3

    const-wide/16 v12, 0x2

    move/from16 v0, p2

    int-to-long v14, v0

    mul-long/2addr v12, v14

    add-long v2, v10, v12

    .line 304
    .local v2, "lookupSpaceCost":J
    move/from16 v0, p2

    int-to-long v4, v0

    .line 305
    .local v4, "lookupTimeCost":J
    const-wide/16 v10, 0x3

    mul-long/2addr v10, v8

    add-long/2addr v10, v6

    const-wide/16 v12, 0x3

    mul-long/2addr v12, v4

    add-long/2addr v12, v2

    cmp-long v10, v10, v12

    if-gtz v10, :cond_0

    const/4 v10, 0x1

    :goto_0
    return v10

    :cond_0
    const/4 v10, 0x0

    goto :goto_0
.end method

.method public static shouldUseTableSwitch(Ljava/util/List;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/FieldInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p0, "fields":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/FieldInfo;>;"
    const/4 v2, 0x0

    .line 280
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 286
    :goto_0
    return v2

    .line 284
    :cond_0
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v2}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v1

    .line 285
    .local v1, "lo":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/FieldInfo;

    invoke-virtual {v2}, Lcom/google/protobuf/FieldInfo;->getFieldNumber()I

    move-result v0

    .line 286
    .local v0, "hi":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v0, v2}, Lcom/google/protobuf/SchemaUtil;->shouldUseTableSwitch(III)Z

    move-result v2

    goto :goto_0
.end method

.method static toCamelCase(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "capNext"    # Z

    .prologue
    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 375
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v1, v3, :cond_5

    .line 376
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 378
    .local v0, "c":C
    const/16 v3, 0x61

    if-gt v3, v0, :cond_1

    const/16 v3, 0x7a

    if-gt v0, v3, :cond_1

    .line 379
    if-eqz p1, :cond_0

    .line 380
    add-int/lit8 v3, v0, -0x20

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 384
    :goto_1
    const/4 p1, 0x0

    .line 375
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 385
    :cond_1
    const/16 v3, 0x41

    if-gt v3, v0, :cond_3

    const/16 v3, 0x5a

    if-gt v0, v3, :cond_3

    .line 386
    if-nez v1, :cond_2

    if-nez p1, :cond_2

    .line 388
    add-int/lit8 v3, v0, 0x20

    int-to-char v3, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 392
    :goto_3
    const/4 p1, 0x0

    goto :goto_2

    .line 390
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 393
    :cond_3
    const/16 v3, 0x30

    if-gt v3, v0, :cond_4

    const/16 v3, 0x39

    if-gt v0, v3, :cond_4

    .line 394
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 395
    const/4 p1, 0x1

    goto :goto_2

    .line 397
    :cond_4
    const/4 p1, 0x1

    goto :goto_2

    .line 400
    .end local v0    # "c":C
    :cond_5
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public static unknownFieldSetLiteSchema()Lcom/google/protobuf/UnknownFieldSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 313
    sget-object v0, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_LITE_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static unknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/UnknownFieldSchema",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 309
    sget-object v0, Lcom/google/protobuf/SchemaUtil;->UNKNOWN_FIELD_SET_SCHEMA:Lcom/google/protobuf/UnknownFieldSchema;

    return-object v0
.end method

.method public static writeBool(IZLcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Z
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 111
    if-eqz p1, :cond_0

    .line 112
    const/4 v0, 0x1

    invoke-interface {p2, p0, v0}, Lcom/google/protobuf/Writer;->writeBool(IZ)V

    .line 114
    :cond_0
    return-void
.end method

.method public static writeBoolList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 235
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Boolean;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeBoolList(ILjava/util/List;Z)V

    .line 238
    :cond_0
    return-void
.end method

.method public static writeBytes(ILcom/google/protobuf/ByteString;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Lcom/google/protobuf/ByteString;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 131
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/google/protobuf/ByteString;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 132
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeBytes(ILcom/google/protobuf/ByteString;)V

    .line 134
    :cond_0
    return-void
.end method

.method public static writeBytesList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Lcom/google/protobuf/ByteString;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 247
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Lcom/google/protobuf/ByteString;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 248
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeBytesList(ILjava/util/List;)V

    .line 250
    :cond_0
    return-void
.end method

.method public static writeDouble(IDLcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # D
    .param p3, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 33
    const-wide/16 v0, 0x0

    invoke-static {p1, p2, v0, v1}, Ljava/lang/Double;->compare(DD)I

    move-result v0

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeDouble(ID)V

    .line 36
    :cond_0
    return-void
.end method

.method public static writeDoubleList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Double;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 144
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Double;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeDoubleList(ILjava/util/List;Z)V

    .line 147
    :cond_0
    return-void
.end method

.method public static writeEnum(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 105
    if-eqz p1, :cond_0

    .line 106
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeEnum(II)V

    .line 108
    :cond_0
    return-void
.end method

.method public static writeEnumList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 228
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 229
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeEnumList(ILjava/util/List;Z)V

    .line 231
    :cond_0
    return-void
.end method

.method public static writeFixed32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 93
    if-eqz p1, :cond_0

    .line 94
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeFixed32(II)V

    .line 96
    :cond_0
    return-void
.end method

.method public static writeFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 214
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeFixed32List(ILjava/util/List;Z)V

    .line 217
    :cond_0
    return-void
.end method

.method public static writeFixed64(IJLcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 63
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 64
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeFixed64(IJ)V

    .line 66
    :cond_0
    return-void
.end method

.method public static writeFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeFixed64List(ILjava/util/List;Z)V

    .line 182
    :cond_0
    return-void
.end method

.method public static writeFloat(IFLcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # F
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeFloat(IF)V

    .line 42
    :cond_0
    return-void
.end method

.method public static writeFloatList(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Float;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 151
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Float;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 152
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeFloatList(ILjava/util/List;Z)V

    .line 154
    :cond_0
    return-void
.end method

.method public static writeGroupList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 267
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 268
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeGroupList(ILjava/util/List;)V

    .line 270
    :cond_0
    return-void
.end method

.method public static writeInt32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeInt32(II)V

    .line 78
    :cond_0
    return-void
.end method

.method public static writeInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 193
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 194
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeInt32List(ILjava/util/List;Z)V

    .line 196
    :cond_0
    return-void
.end method

.method public static writeInt64(IJLcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 45
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 46
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeInt64(IJ)V

    .line 48
    :cond_0
    return-void
.end method

.method public static writeInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 158
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 159
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeInt64List(ILjava/util/List;Z)V

    .line 161
    :cond_0
    return-void
.end method

.method public static writeLazyFieldList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 259
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 261
    .local v0, "item":Ljava/lang/Object;
    check-cast v0, Lcom/google/protobuf/LazyFieldLite;

    .end local v0    # "item":Ljava/lang/Object;
    invoke-virtual {v0, p2, p0}, Lcom/google/protobuf/LazyFieldLite;->writeTo(Lcom/google/protobuf/Writer;I)V

    goto :goto_0

    .line 264
    :cond_0
    return-void
.end method

.method public static writeMessage(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 137
    if-eqz p1, :cond_0

    .line 138
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeMessage(ILjava/lang/Object;)V

    .line 140
    :cond_0
    return-void
.end method

.method public static writeMessageList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<*>;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 253
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<*>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeMessageList(ILjava/util/List;)V

    .line 256
    :cond_0
    return-void
.end method

.method public static writeSFixed32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 99
    if-eqz p1, :cond_0

    .line 100
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeSFixed32(II)V

    .line 102
    :cond_0
    return-void
.end method

.method public static writeSFixed32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeSFixed32List(ILjava/util/List;Z)V

    .line 224
    :cond_0
    return-void
.end method

.method public static writeSFixed64(IJLcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 69
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 70
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeSFixed64(IJ)V

    .line 72
    :cond_0
    return-void
.end method

.method public static writeSFixed64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 186
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 187
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeSFixed64List(ILjava/util/List;Z)V

    .line 189
    :cond_0
    return-void
.end method

.method public static writeSInt32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 87
    if-eqz p1, :cond_0

    .line 88
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeSInt32(II)V

    .line 90
    :cond_0
    return-void
.end method

.method public static writeSInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 207
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeSInt32List(ILjava/util/List;Z)V

    .line 210
    :cond_0
    return-void
.end method

.method public static writeSInt64(IJLcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 57
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 58
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeSInt64(IJ)V

    .line 60
    :cond_0
    return-void
.end method

.method public static writeSInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 172
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeSInt64List(ILjava/util/List;Z)V

    .line 175
    :cond_0
    return-void
.end method

.method public static writeString(ILjava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/Object;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 117
    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Ljava/lang/String;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->writeStringInternal(ILjava/lang/String;Lcom/google/protobuf/Writer;)V

    .line 122
    :goto_0
    return-void

    .line 120
    .restart local p1    # "value":Ljava/lang/Object;
    :cond_0
    check-cast p1, Lcom/google/protobuf/ByteString;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-static {p0, p1, p2}, Lcom/google/protobuf/SchemaUtil;->writeBytes(ILcom/google/protobuf/ByteString;Lcom/google/protobuf/Writer;)V

    goto :goto_0
.end method

.method private static writeStringInternal(ILjava/lang/String;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 125
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 126
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeString(ILjava/lang/String;)V

    .line 128
    :cond_0
    return-void
.end method

.method public static writeStringList(ILjava/util/List;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 241
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 242
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeStringList(ILjava/util/List;)V

    .line 244
    :cond_0
    return-void
.end method

.method public static writeUInt32(IILcom/google/protobuf/Writer;)V
    .locals 0
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-interface {p2, p0, p1}, Lcom/google/protobuf/Writer;->writeUInt32(II)V

    .line 84
    :cond_0
    return-void
.end method

.method public static writeUInt32List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 201
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeUInt32List(ILjava/util/List;Z)V

    .line 203
    :cond_0
    return-void
.end method

.method public static writeUInt64(IJLcom/google/protobuf/Writer;)V
    .locals 3
    .param p0, "fieldNumber"    # I
    .param p1, "value"    # J
    .param p3, "writer"    # Lcom/google/protobuf/Writer;

    .prologue
    .line 51
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_0

    .line 52
    invoke-interface {p3, p0, p1, p2}, Lcom/google/protobuf/Writer;->writeUInt64(IJ)V

    .line 54
    :cond_0
    return-void
.end method

.method public static writeUInt64List(ILjava/util/List;Lcom/google/protobuf/Writer;Z)V
    .locals 1
    .param p0, "fieldNumber"    # I
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .param p3, "packed"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/google/protobuf/Writer;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 165
    .local p1, "value":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 166
    invoke-interface {p2, p0, p1, p3}, Lcom/google/protobuf/Writer;->writeUInt64List(ILjava/util/List;Z)V

    .line 168
    :cond_0
    return-void
.end method

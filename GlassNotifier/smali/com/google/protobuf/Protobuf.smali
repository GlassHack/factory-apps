.class final Lcom/google/protobuf/Protobuf;
.super Ljava/lang/Object;
.source "Protobuf.java"


# static fields
.field private static final INSTANCE:Lcom/google/protobuf/Protobuf;


# instance fields
.field private final schemaCache:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/protobuf/Schema",
            "<*>;>;"
        }
    .end annotation
.end field

.field private final schemaFactory:Lcom/google/protobuf/SchemaFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    new-instance v0, Lcom/google/protobuf/Protobuf;

    invoke-direct {v0}, Lcom/google/protobuf/Protobuf;-><init>()V

    sput-object v0, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    return-void
.end method

.method private constructor <init>()V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v3, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v3}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v3, p0, Lcom/google/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    .line 106
    const/4 v1, 0x0

    .line 108
    .local v1, "factory":Lcom/google/protobuf/SchemaFactory;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const-string v4, "com.google.protobuf.AndroidProto3SchemaFactory"

    aput-object v4, v3, v2

    array-length v4, v3

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 111
    .local v0, "className":Ljava/lang/String;
    invoke-static {v0}, Lcom/google/protobuf/Protobuf;->newSchemaFactory(Ljava/lang/String;)Lcom/google/protobuf/SchemaFactory;

    move-result-object v1

    .line 112
    if-eqz v1, :cond_2

    .line 116
    .end local v0    # "className":Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .line 117
    new-instance v1, Lcom/google/protobuf/ManifestSchemaFactory;

    .end local v1    # "factory":Lcom/google/protobuf/SchemaFactory;
    invoke-direct {v1}, Lcom/google/protobuf/ManifestSchemaFactory;-><init>()V

    .line 119
    .restart local v1    # "factory":Lcom/google/protobuf/SchemaFactory;
    :cond_1
    iput-object v1, p0, Lcom/google/protobuf/Protobuf;->schemaFactory:Lcom/google/protobuf/SchemaFactory;

    .line 120
    invoke-direct {p0}, Lcom/google/protobuf/Protobuf;->registerUnknownFieldSchema()V

    .line 121
    return-void

    .line 108
    .restart local v0    # "className":Ljava/lang/String;
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public static getInstance()Lcom/google/protobuf/Protobuf;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/google/protobuf/Protobuf;->INSTANCE:Lcom/google/protobuf/Protobuf;

    return-object v0
.end method

.method private static newSchemaFactory(Ljava/lang/String;)Lcom/google/protobuf/SchemaFactory;
    .locals 3
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 143
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/SchemaFactory;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    return-object v1

    .line 144
    :catch_0
    move-exception v0

    .line 145
    .local v0, "e":Ljava/lang/Throwable;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerUnknownFieldSchema()V
    .locals 3

    .prologue
    .line 125
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetLiteSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v1

    .line 126
    .local v1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<*>;"
    if-eqz v1, :cond_0

    .line 127
    const-class v2, Lcom/google/protobuf/UnknownFieldSetLite;

    invoke-virtual {p0, v2, v1}, Lcom/google/protobuf/Protobuf;->registerSchema(Ljava/lang/Class;Lcom/google/protobuf/Schema;)Lcom/google/protobuf/Schema;

    .line 131
    :cond_0
    :try_start_0
    const-string v2, "com.google.protobuf.UnknownFieldSet"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 132
    .local v0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-static {}, Lcom/google/protobuf/SchemaUtil;->unknownFieldSetSchema()Lcom/google/protobuf/UnknownFieldSchema;

    move-result-object v1

    .line 133
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/google/protobuf/Protobuf;->registerSchema(Ljava/lang/Class;Lcom/google/protobuf/Schema;)Lcom/google/protobuf/Schema;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 139
    .end local v0    # "clz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    :goto_0
    return-void

    .line 136
    :catch_0
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public isInitialized(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)Z"
        }
    .end annotation

    .prologue
    .line 49
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/google/protobuf/Schema;->isInitialized(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;)V
    .locals 1
    .param p2, "reader"    # Lcom/google/protobuf/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
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
    .line 35
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/google/protobuf/Protobuf;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 36
    return-void
.end method

.method public mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p2, "reader"    # Lcom/google/protobuf/Reader;
    .param p3, "extensionRegistry"    # Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
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
    .line 41
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Lcom/google/protobuf/Schema;->mergeFrom(Ljava/lang/Object;Lcom/google/protobuf/Reader;Lcom/google/protobuf/ExtensionRegistryLite;)V

    .line 42
    return-void
.end method

.method public registerSchema(Ljava/lang/Class;Lcom/google/protobuf/Schema;)Lcom/google/protobuf/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/protobuf/Schema",
            "<*>;)",
            "Lcom/google/protobuf/Schema",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 84
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<*>;"
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 85
    const-string v0, "schema"

    invoke-static {p2, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lcom/google/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Schema;

    return-object v0
.end method

.method public registerSchemaOverride(Ljava/lang/Class;Lcom/google/protobuf/Schema;)Lcom/google/protobuf/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/google/protobuf/Schema",
            "<*>;)",
            "Lcom/google/protobuf/Schema",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 99
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p2, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<*>;"
    const-string v0, "messageType"

    invoke-static {p1, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 100
    const-string v0, "schema"

    invoke-static {p2, v0}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 101
    iget-object v0, p0, Lcom/google/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1, p2}, Ljava/util/concurrent/ConcurrentMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/Schema;

    return-object v0
.end method

.method public schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)",
            "Lcom/google/protobuf/Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 54
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v2, "messageType"

    invoke-static {p1, v2}, Lcom/google/protobuf/Internal;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 56
    iget-object v2, p0, Lcom/google/protobuf/Protobuf;->schemaCache:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/Schema;

    .line 57
    .local v1, "schema":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    if-nez v1, :cond_0

    .line 58
    iget-object v2, p0, Lcom/google/protobuf/Protobuf;->schemaFactory:Lcom/google/protobuf/SchemaFactory;

    invoke-interface {v2, p1}, Lcom/google/protobuf/SchemaFactory;->createSchema(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v1

    .line 60
    invoke-virtual {p0, p1, v1}, Lcom/google/protobuf/Protobuf;->registerSchema(Ljava/lang/Class;Lcom/google/protobuf/Schema;)Lcom/google/protobuf/Schema;

    move-result-object v0

    .line 61
    .local v0, "previous":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    if-eqz v0, :cond_0

    .line 63
    move-object v1, v0

    .line 66
    .end local v0    # "previous":Lcom/google/protobuf/Schema;, "Lcom/google/protobuf/Schema<TT;>;"
    :cond_0
    return-object v1
.end method

.method public schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lcom/google/protobuf/Schema",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 72
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Class;)Lcom/google/protobuf/Schema;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V
    .locals 1
    .param p2, "writer"    # Lcom/google/protobuf/Writer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lcom/google/protobuf/Writer;",
            ")V"
        }
    .end annotation

    .prologue
    .line 30
    .local p1, "message":Ljava/lang/Object;, "TT;"
    invoke-virtual {p0, p1}, Lcom/google/protobuf/Protobuf;->schemaFor(Ljava/lang/Object;)Lcom/google/protobuf/Schema;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcom/google/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/protobuf/Writer;)V

    .line 31
    return-void
.end method

.class abstract Lcom/google/protobuf/GeneratedExtensionRegistryLoader;
.super Ljava/lang/Object;
.source "GeneratedExtensionRegistryLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/google/protobuf/ExtensionRegistryLite;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field private static final logger:Ljava/util/logging/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/google/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/GeneratedExtensionRegistryLoader;->logger:Ljava/util/logging/Logger;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 13
    .local p0, "this":Lcom/google/protobuf/GeneratedExtensionRegistryLoader;, "Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static load(Ljava/lang/Class;)Lcom/google/protobuf/ExtensionRegistryLite;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/google/protobuf/ExtensionRegistryLite;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 21
    .line 22
    .local p0, "extensionRegistryClass":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    const-class v2, Lcom/google/protobuf/GeneratedExtensionRegistryLoader;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    const-class v1, Lcom/google/protobuf/GeneratedExtensionRegistryLoader;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 32
    .local v7, "classLoader":Ljava/lang/ClassLoader;
    const-string v1, "%s.BlazeGenerated%sLoader"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 35
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 33
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v16

    .line 37
    .local v16, "wellKnownClassName":Ljava/lang/String;
    const/4 v1, 0x1

    .line 39
    :try_start_0
    move-object/from16 v0, v16

    invoke-static {v0, v1, v7}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v14

    .line 42
    .local v14, "loaderClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;>;"
    const/4 v1, 0x0

    :try_start_1
    new-array v1, v1, [Ljava/lang/Class;

    invoke-virtual {v14, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/google/protobuf/GeneratedExtensionRegistryLoader;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 53
    .local v12, "loader":Lcom/google/protobuf/GeneratedExtensionRegistryLoader;, "Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;"
    :try_start_2
    invoke-virtual {v12}, Lcom/google/protobuf/GeneratedExtensionRegistryLoader;->getInstance()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 71
    .end local v12    # "loader":Lcom/google/protobuf/GeneratedExtensionRegistryLoader;, "Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;"
    .end local v14    # "loaderClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;>;"
    :goto_0
    return-object v1

    .line 43
    .restart local v14    # "loaderClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;>;"
    :catch_0
    move-exception v15

    .line 44
    .local v15, "nsme":Ljava/lang/NoSuchMethodException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v15}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_1

    .line 54
    .end local v14    # "loaderClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;>;"
    .end local v15    # "nsme":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 58
    const-class v1, Lcom/google/protobuf/GeneratedExtensionRegistryLoader;

    .line 59
    invoke-static {v1, v7}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v13

    .line 63
    .local v13, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;>;"
    invoke-virtual {v13}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .line 64
    .local v10, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;>;"
    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 66
    :try_start_3
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/GeneratedExtensionRegistryLoader;

    invoke-virtual {v1}, Lcom/google/protobuf/GeneratedExtensionRegistryLoader;->getInstance()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/protobuf/ExtensionRegistryLite;
    :try_end_3
    .catch Ljava/util/ServiceConfigurationError; {:try_start_3 .. :try_end_3} :catch_5

    goto :goto_0

    .line 45
    .end local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;>;"
    .end local v13    # "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;>;"
    .restart local v14    # "loaderClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;>;"
    :catch_2
    move-exception v9

    .line 46
    .local v9, "ie":Ljava/lang/InstantiationException;
    :try_start_4
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 47
    .end local v9    # "ie":Ljava/lang/InstantiationException;
    :catch_3
    move-exception v8

    .line 48
    .local v8, "iae":Ljava/lang/IllegalAccessException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 49
    .end local v8    # "iae":Ljava/lang/IllegalAccessException;
    :catch_4
    move-exception v11

    .line 50
    .local v11, "ite":Ljava/lang/reflect/InvocationTargetException;
    new-instance v1, Ljava/lang/IllegalStateException;

    invoke-direct {v1, v11}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_4
    .catch Ljava/lang/ClassNotFoundException; {:try_start_4 .. :try_end_4} :catch_1

    .line 67
    .end local v11    # "ite":Ljava/lang/reflect/InvocationTargetException;
    .end local v14    # "loaderClass":Ljava/lang/Class;, "Ljava/lang/Class<Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;>;"
    .restart local v10    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;>;"
    .restart local v13    # "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<Lcom/google/protobuf/GeneratedExtensionRegistryLoader<TT;>;>;"
    :catch_5
    move-exception v6

    .line 68
    .local v6, "e":Ljava/util/ServiceConfigurationError;
    sget-object v1, Lcom/google/protobuf/GeneratedExtensionRegistryLoader;->logger:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "com.google.protobuf.GeneratedExtensionRegistryLoader"

    const-string v4, "load"

    const-string v17, "Unable to load "

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    :goto_2
    invoke-virtual/range {v1 .. v6}, Ljava/util/logging/Logger;->logp(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    new-instance v5, Ljava/lang/String;

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 71
    .end local v6    # "e":Ljava/util/ServiceConfigurationError;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected abstract getInstance()Lcom/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

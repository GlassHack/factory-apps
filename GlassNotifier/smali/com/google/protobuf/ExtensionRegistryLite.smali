.class public Lcom/google/protobuf/ExtensionRegistryLite;
.super Ljava/lang/Object;
.source "ExtensionRegistryLite.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/protobuf/ExtensionRegistryLite$ObjectIntPair;
    }
.end annotation


# static fields
.field static final EMPTY_REGISTRY_LITE:Lcom/google/protobuf/ExtensionRegistryLite;

.field static final EXTENSION_CLASS_NAME:Ljava/lang/String; = "com.google.protobuf.Extension"

.field private static volatile eagerlyParseMessageSets:Z

.field private static final extensionClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static volatile generatedRegistry:Lcom/google/protobuf/ExtensionRegistryLite;


# instance fields
.field private final extensionsByNumber:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/google/protobuf/ExtensionRegistryLite$ObjectIntPair;",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 52
    const/4 v0, 0x0

    sput-boolean v0, Lcom/google/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    .line 68
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->resolveExtensionClass()Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/google/protobuf/ExtensionRegistryLite;->extensionClass:Ljava/lang/Class;

    .line 184
    new-instance v0, Lcom/google/protobuf/ExtensionRegistryLite;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/google/protobuf/ExtensionRegistryLite;-><init>(Z)V

    sput-object v0, Lcom/google/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/google/protobuf/ExtensionRegistryLite;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 180
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 183
    return-void
.end method

.method constructor <init>(Lcom/google/protobuf/ExtensionRegistryLite;)V
    .locals 1
    .param p1, "other"    # Lcom/google/protobuf/ExtensionRegistryLite;

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    sget-object v0, Lcom/google/protobuf/ExtensionRegistryLite;->EMPTY_REGISTRY_LITE:Lcom/google/protobuf/ExtensionRegistryLite;

    if-ne p1, v0, :cond_0

    .line 189
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 194
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p1, Lcom/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 192
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    goto :goto_0
.end method

.method constructor <init>(Z)V
    .locals 1
    .param p1, "empty"    # Z

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 201
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Lcom/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    .line 202
    return-void
.end method

.method public static getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;
    .locals 1

    .prologue
    .line 93
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryFactory;->createEmpty()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    return-object v0
.end method

.method public static getGeneratedRegistry()Lcom/google/protobuf/ExtensionRegistryLite;
    .locals 4

    .prologue
    .line 104
    sget-object v0, Lcom/google/protobuf/ExtensionRegistryLite;->generatedRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 105
    .local v0, "result":Lcom/google/protobuf/ExtensionRegistryLite;
    if-nez v0, :cond_1

    .line 106
    const-class v3, Lcom/google/protobuf/ExtensionRegistryLite;

    monitor-enter v3

    .line 107
    :try_start_0
    sget-object v0, Lcom/google/protobuf/ExtensionRegistryLite;->generatedRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .line 108
    if-nez v0, :cond_0

    .line 109
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->loadGeneratedRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v1

    sput-object v1, Lcom/google/protobuf/ExtensionRegistryLite;->generatedRegistry:Lcom/google/protobuf/ExtensionRegistryLite;

    .end local v0    # "result":Lcom/google/protobuf/ExtensionRegistryLite;
    .local v1, "result":Lcom/google/protobuf/ExtensionRegistryLite;
    move-object v0, v1

    .line 111
    .end local v1    # "result":Lcom/google/protobuf/ExtensionRegistryLite;
    .restart local v0    # "result":Lcom/google/protobuf/ExtensionRegistryLite;
    :cond_0
    monitor-exit v3

    .line 113
    :cond_1
    return-object v0

    .line 111
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public static isEagerlyParseMessageSets()Z
    .locals 1

    .prologue
    .line 71
    sget-boolean v0, Lcom/google/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    return v0
.end method

.method private static loadGeneratedRegistry()Lcom/google/protobuf/ExtensionRegistryLite;
    .locals 2

    .prologue
    .line 118
    const-class v1, Lcom/google/protobuf/ExtensionRegistryLite;

    .line 119
    invoke-static {v1}, Lcom/google/protobuf/GeneratedExtensionRegistryLoader;->load(Ljava/lang/Class;)Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    .line 120
    .local v0, "result":Lcom/google/protobuf/ExtensionRegistryLite;
    if-eqz v0, :cond_0

    .end local v0    # "result":Lcom/google/protobuf/ExtensionRegistryLite;
    :goto_0
    return-object v0

    .restart local v0    # "result":Lcom/google/protobuf/ExtensionRegistryLite;
    :cond_0
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryLite;->getEmptyRegistry()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    goto :goto_0
.end method

.method public static newInstance()Lcom/google/protobuf/ExtensionRegistryLite;
    .locals 1

    .prologue
    .line 85
    invoke-static {}, Lcom/google/protobuf/ExtensionRegistryFactory;->create()Lcom/google/protobuf/ExtensionRegistryLite;

    move-result-object v0

    return-object v0
.end method

.method static resolveExtensionClass()Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 60
    :try_start_0
    const-string v1, "com.google.protobuf.Extension"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 63
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-object v1

    .line 61
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :catch_0
    move-exception v0

    .line 63
    .restart local v0    # "e":Ljava/lang/ClassNotFoundException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static setEagerlyParseMessageSets(Z)V
    .locals 0
    .param p0, "isEagerlyParse"    # Z

    .prologue
    .line 75
    sput-boolean p0, Lcom/google/protobuf/ExtensionRegistryLite;->eagerlyParseMessageSets:Z

    .line 76
    return-void
.end method


# virtual methods
.method public final add(Lcom/google/protobuf/ExtensionLite;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/ExtensionLite",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .local p1, "extension":Lcom/google/protobuf/ExtensionLite;, "Lcom/google/protobuf/ExtensionLite<**>;"
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 160
    const-class v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 161
    check-cast v1, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    invoke-virtual {p0, v1}, Lcom/google/protobuf/ExtensionRegistryLite;->add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 163
    :cond_0
    invoke-static {p0}, Lcom/google/protobuf/ExtensionRegistryFactory;->isFullRegistry(Lcom/google/protobuf/ExtensionRegistryLite;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 165
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "add"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    const/4 v4, 0x0

    sget-object v5, Lcom/google/protobuf/ExtensionRegistryLite;->extensionClass:Ljava/lang/Class;

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v1, p0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 171
    :cond_1
    return-void

    .line 166
    :catch_0
    move-exception v0

    .line 167
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Could not invoke ExtensionRegistry#add for %s"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object p1, v3, v6

    .line 168
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final add(Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<**>;)V"
        }
    .end annotation

    .prologue
    .line 150
    .local p1, "extension":Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;, "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension<**>;"
    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/ExtensionRegistryLite$ObjectIntPair;

    .line 151
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/google/protobuf/MessageLite;

    move-result-object v2

    .line 152
    invoke-virtual {p1}, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;->getNumber()I

    move-result v3

    invoke-direct {v1, v2, v3}, Lcom/google/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 150
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    return-void
.end method

.method public findLiteExtensionByNumber(Lcom/google/protobuf/MessageLite;I)Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;
    .locals 2
    .param p2, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ContainingType::",
            "Lcom/google/protobuf/MessageLite;",
            ">(TContainingType;I)",
            "Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension",
            "<TContainingType;*>;"
        }
    .end annotation

    .prologue
    .line 142
    .local p1, "containingTypeDefaultInstance":Lcom/google/protobuf/MessageLite;, "TContainingType;"
    iget-object v0, p0, Lcom/google/protobuf/ExtensionRegistryLite;->extensionsByNumber:Ljava/util/Map;

    new-instance v1, Lcom/google/protobuf/ExtensionRegistryLite$ObjectIntPair;

    invoke-direct {v1, p1, p2}, Lcom/google/protobuf/ExtensionRegistryLite$ObjectIntPair;-><init>(Ljava/lang/Object;I)V

    .line 143
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/protobuf/GeneratedMessageLite$GeneratedExtension;

    .line 142
    return-object v0
.end method

.method public getUnmodifiable()Lcom/google/protobuf/ExtensionRegistryLite;
    .locals 1

    .prologue
    .line 127
    new-instance v0, Lcom/google/protobuf/ExtensionRegistryLite;

    invoke-direct {v0, p0}, Lcom/google/protobuf/ExtensionRegistryLite;-><init>(Lcom/google/protobuf/ExtensionRegistryLite;)V

    return-object v0
.end method

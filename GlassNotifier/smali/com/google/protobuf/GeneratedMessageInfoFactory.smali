.class Lcom/google/protobuf/GeneratedMessageInfoFactory;
.super Ljava/lang/Object;
.source "GeneratedMessageInfoFactory.java"

# interfaces
.implements Lcom/google/protobuf/MessageInfoFactory;


# static fields
.field private static final instance:Lcom/google/protobuf/GeneratedMessageInfoFactory;


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/google/protobuf/GeneratedMessageInfoFactory;

    invoke-direct {v0}, Lcom/google/protobuf/GeneratedMessageInfoFactory;-><init>()V

    sput-object v0, Lcom/google/protobuf/GeneratedMessageInfoFactory;->instance:Lcom/google/protobuf/GeneratedMessageInfoFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/protobuf/GeneratedMessageInfoFactory;->cache:Ljava/util/Map;

    .line 14
    return-void
.end method

.method public static getInstance()Lcom/google/protobuf/GeneratedMessageInfoFactory;
    .locals 1

    .prologue
    .line 17
    sget-object v0, Lcom/google/protobuf/GeneratedMessageInfoFactory;->instance:Lcom/google/protobuf/GeneratedMessageInfoFactory;

    return-object v0
.end method

.method private getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/lang/reflect/Method;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMessageInfoFactory;->cache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    .line 43
    .local v0, "method":Ljava/lang/reflect/Method;
    if-eqz v0, :cond_0

    move-object v1, v0

    .line 49
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .local v1, "method":Ljava/lang/reflect/Method;
    :goto_0
    return-object v1

    .line 46
    .end local v1    # "method":Ljava/lang/reflect/Method;
    .restart local v0    # "method":Ljava/lang/reflect/Method;
    :cond_0
    const-string v2, "buildMessageInfo"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Class;

    invoke-virtual {p1, v2, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 47
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 48
    iget-object v2, p0, Lcom/google/protobuf/GeneratedMessageInfoFactory;->cache:Ljava/util/Map;

    invoke-interface {v2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v1, v0

    .line 49
    .end local v0    # "method":Ljava/lang/reflect/Method;
    .restart local v1    # "method":Ljava/lang/reflect/Method;
    goto :goto_0
.end method


# virtual methods
.method public isSupported(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 24
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    return v0
.end method

.method public messageInfoFor(Ljava/lang/Class;)Lcom/google/protobuf/MessageInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/protobuf/MessageInfo;"
        }
    .end annotation

    .prologue
    .line 29
    .local p1, "messageType":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v2, Lcom/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 30
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Unsupported message type: "

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 34
    :cond_1
    :try_start_0
    invoke-direct {p0, p1}, Lcom/google/protobuf/GeneratedMessageInfoFactory;->getMethod(Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 35
    .local v1, "method":Ljava/lang/reflect/Method;
    const/4 v2, 0x0

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/protobuf/MessageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 36
    .end local v1    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v0

    .line 37
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/RuntimeException;

    const-string v4, "Unable to get message info for "

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-direct {v3, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    :cond_2
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

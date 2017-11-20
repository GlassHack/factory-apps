.class Lcom/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;
.super Ljava/lang/Object;
.source "ManifestSchemaFactory.java"

# interfaces
.implements Lcom/google/protobuf/MessageInfoFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/protobuf/ManifestSchemaFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CompositeMessageInfoFactory"
.end annotation


# instance fields
.field private factories:[Lcom/google/protobuf/MessageInfoFactory;


# direct methods
.method varargs constructor <init>([Lcom/google/protobuf/MessageInfoFactory;)V
    .locals 0
    .param p1, "factories"    # [Lcom/google/protobuf/MessageInfoFactory;

    .prologue
    .line 168
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 169
    iput-object p1, p0, Lcom/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->factories:[Lcom/google/protobuf/MessageInfoFactory;

    .line 170
    return-void
.end method


# virtual methods
.method public isSupported(Ljava/lang/Class;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x0

    .line 174
    iget-object v3, p0, Lcom/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->factories:[Lcom/google/protobuf/MessageInfoFactory;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_0

    aget-object v0, v3, v2

    .line 175
    .local v0, "factory":Lcom/google/protobuf/MessageInfoFactory;
    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageInfoFactory;->isSupported(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 176
    const/4 v1, 0x1

    .line 179
    .end local v0    # "factory":Lcom/google/protobuf/MessageInfoFactory;
    :cond_0
    return v1

    .line 174
    .restart local v0    # "factory":Lcom/google/protobuf/MessageInfoFactory;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method public messageInfoFor(Ljava/lang/Class;)Lcom/google/protobuf/MessageInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lcom/google/protobuf/MessageInfo;"
        }
    .end annotation

    .prologue
    .line 184
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v2, p0, Lcom/google/protobuf/ManifestSchemaFactory$CompositeMessageInfoFactory;->factories:[Lcom/google/protobuf/MessageInfoFactory;

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 185
    .local v0, "factory":Lcom/google/protobuf/MessageInfoFactory;
    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageInfoFactory;->isSupported(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 186
    invoke-interface {v0, p1}, Lcom/google/protobuf/MessageInfoFactory;->messageInfoFor(Ljava/lang/Class;)Lcom/google/protobuf/MessageInfo;

    move-result-object v1

    return-object v1

    .line 184
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    .end local v0    # "factory":Lcom/google/protobuf/MessageInfoFactory;
    :cond_1
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string v3, "No factory is available for message type: "

    .line 190
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-eqz v4, :cond_2

    invoke-virtual {v3, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-direct {v2, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    :cond_2
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    goto :goto_1
.end method

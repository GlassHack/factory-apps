.class public abstract Lcom/google/protobuf/nano/Extension$TypeLiteral;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final type:Ljava/lang/reflect/Type;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    .line 84
    instance-of v1, v0, Ljava/lang/Class;

    if-eqz v1, :cond_0

    .line 85
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Missing type parameter"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 87
    :cond_0
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/google/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    .line 88
    return-void
.end method

.method static synthetic access$000(Lcom/google/protobuf/nano/Extension$TypeLiteral;)Z
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/protobuf/nano/Extension$TypeLiteral;->isList()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/google/protobuf/nano/Extension$TypeLiteral;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/protobuf/nano/Extension$TypeLiteral;->getTargetClass()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/protobuf/nano/Extension$TypeLiteral;)Ljava/lang/Class;
    .locals 1

    .prologue
    .line 79
    invoke-direct {p0}, Lcom/google/protobuf/nano/Extension$TypeLiteral;->getListType()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method private getListType()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/google/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    return-object v0
.end method

.method private getTargetClass()Ljava/lang/Class;
    .locals 2

    .prologue
    .line 108
    invoke-direct {p0}, Lcom/google/protobuf/nano/Extension$TypeLiteral;->isList()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/google/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object v0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    check-cast v0, Ljava/lang/Class;

    .line 111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    check-cast v0, Ljava/lang/Class;

    goto :goto_0
.end method

.method private isList()Z
    .locals 1

    .prologue
    .line 94
    iget-object v0, p0, Lcom/google/protobuf/nano/Extension$TypeLiteral;->type:Ljava/lang/reflect/Type;

    instance-of v0, v0, Ljava/lang/reflect/ParameterizedType;

    return v0
.end method

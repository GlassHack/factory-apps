.class abstract enum Lcom/google/common/reflect/Types$ClassOwnership;
.super Ljava/lang/Enum;
.source "SourceFile"


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/reflect/Types$ClassOwnership;

.field static final JVM_BEHAVIOR:Lcom/google/common/reflect/Types$ClassOwnership;

.field public static final enum LOCAL_CLASS_HAS_NO_OWNER:Lcom/google/common/reflect/Types$ClassOwnership;

.field public static final enum OWNED_BY_ENCLOSING_CLASS:Lcom/google/common/reflect/Types$ClassOwnership;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 104
    new-instance v0, Lcom/google/common/reflect/Types$ClassOwnership$1;

    const-string v1, "OWNED_BY_ENCLOSING_CLASS"

    invoke-direct {v0, v1, v2}, Lcom/google/common/reflect/Types$ClassOwnership$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/Types$ClassOwnership;->OWNED_BY_ENCLOSING_CLASS:Lcom/google/common/reflect/Types$ClassOwnership;

    .line 111
    new-instance v0, Lcom/google/common/reflect/Types$ClassOwnership$2;

    const-string v1, "LOCAL_CLASS_HAS_NO_OWNER"

    invoke-direct {v0, v1, v3}, Lcom/google/common/reflect/Types$ClassOwnership$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/google/common/reflect/Types$ClassOwnership;->LOCAL_CLASS_HAS_NO_OWNER:Lcom/google/common/reflect/Types$ClassOwnership;

    .line 102
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/common/reflect/Types$ClassOwnership;

    sget-object v1, Lcom/google/common/reflect/Types$ClassOwnership;->OWNED_BY_ENCLOSING_CLASS:Lcom/google/common/reflect/Types$ClassOwnership;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/common/reflect/Types$ClassOwnership;->LOCAL_CLASS_HAS_NO_OWNER:Lcom/google/common/reflect/Types$ClassOwnership;

    aput-object v1, v0, v3

    sput-object v0, Lcom/google/common/reflect/Types$ClassOwnership;->$VALUES:[Lcom/google/common/reflect/Types$ClassOwnership;

    .line 126
    invoke-static {}, Lcom/google/common/reflect/Types$ClassOwnership;->detectJvmBehavior()Lcom/google/common/reflect/Types$ClassOwnership;

    move-result-object v0

    sput-object v0, Lcom/google/common/reflect/Types$ClassOwnership;->JVM_BEHAVIOR:Lcom/google/common/reflect/Types$ClassOwnership;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/reflect/t;)V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0, p1, p2}, Lcom/google/common/reflect/Types$ClassOwnership;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static detectJvmBehavior()Lcom/google/common/reflect/Types$ClassOwnership;
    .locals 7

    .prologue
    .line 130
    new-instance v0, Lcom/google/common/reflect/v;

    invoke-direct {v0}, Lcom/google/common/reflect/v;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 131
    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 132
    invoke-static {}, Lcom/google/common/reflect/Types$ClassOwnership;->values()[Lcom/google/common/reflect/Types$ClassOwnership;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 133
    const-class v5, Lcom/google/common/reflect/u;

    invoke-virtual {v4, v5}, Lcom/google/common/reflect/Types$ClassOwnership;->getOwnerType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    if-ne v5, v6, :cond_0

    .line 134
    return-object v4

    .line 132
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 137
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/reflect/Types$ClassOwnership;
    .locals 1

    .prologue
    .line 102
    const-class v0, Lcom/google/common/reflect/Types$ClassOwnership;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/reflect/Types$ClassOwnership;

    return-object v0
.end method

.method public static values()[Lcom/google/common/reflect/Types$ClassOwnership;
    .locals 1

    .prologue
    .line 102
    sget-object v0, Lcom/google/common/reflect/Types$ClassOwnership;->$VALUES:[Lcom/google/common/reflect/Types$ClassOwnership;

    invoke-virtual {v0}, [Lcom/google/common/reflect/Types$ClassOwnership;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/reflect/Types$ClassOwnership;

    return-object v0
.end method


# virtual methods
.method abstract getOwnerType(Ljava/lang/Class;)Ljava/lang/Class;
.end method
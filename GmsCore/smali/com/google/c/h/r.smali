.class abstract enum Lcom/google/c/h/r;
.super Ljava/lang/Enum;


# static fields
.field static final a:Lcom/google/c/h/r;

.field private static enum b:Lcom/google/c/h/r;

.field private static enum c:Lcom/google/c/h/r;

.field private static final synthetic d:[Lcom/google/c/h/r;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v1, 0x0

    new-instance v0, Lcom/google/c/h/s;

    const-string v2, "OWNED_BY_ENCLOSING_CLASS"

    invoke-direct {v0, v2}, Lcom/google/c/h/s;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/h/r;->b:Lcom/google/c/h/r;

    new-instance v0, Lcom/google/c/h/t;

    const-string v2, "LOCAL_CLASS_HAS_NO_OWNER"

    invoke-direct {v0, v2}, Lcom/google/c/h/t;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/h/r;->c:Lcom/google/c/h/r;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/c/h/r;

    sget-object v2, Lcom/google/c/h/r;->b:Lcom/google/c/h/r;

    aput-object v2, v0, v1

    const/4 v2, 0x1

    sget-object v3, Lcom/google/c/h/r;->c:Lcom/google/c/h/r;

    aput-object v3, v0, v2

    sput-object v0, Lcom/google/c/h/r;->d:[Lcom/google/c/h/r;

    new-instance v0, Lcom/google/c/h/u;

    invoke-direct {v0}, Lcom/google/c/h/u;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    invoke-static {}, Lcom/google/c/h/r;->values()[Lcom/google/c/h/r;

    move-result-object v2

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    const-class v5, Lcom/google/c/h/v;

    invoke-virtual {v4, v5}, Lcom/google/c/h/r;->a(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v5

    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    move-result-object v6

    if-ne v5, v6, :cond_0

    sput-object v4, Lcom/google/c/h/r;->a:Lcom/google/c/h/r;

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/c/h/r;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/h/r;
    .locals 1

    const-class v0, Lcom/google/c/h/r;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/h/r;

    return-object v0
.end method

.method public static values()[Lcom/google/c/h/r;
    .locals 1

    sget-object v0, Lcom/google/c/h/r;->d:[Lcom/google/c/h/r;

    invoke-virtual {v0}, [Lcom/google/c/h/r;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/h/r;

    return-object v0
.end method


# virtual methods
.method abstract a(Ljava/lang/Class;)Ljava/lang/Class;
.end method

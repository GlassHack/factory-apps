.class abstract enum Lcom/google/c/h/x;
.super Ljava/lang/Enum;


# static fields
.field static final a:Lcom/google/c/h/x;

.field private static enum b:Lcom/google/c/h/x;

.field private static enum c:Lcom/google/c/h/x;

.field private static final synthetic d:[Lcom/google/c/h/x;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/google/c/h/z;

    const-string v1, "JAVA6"

    invoke-direct {v0, v1}, Lcom/google/c/h/z;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/h/x;->b:Lcom/google/c/h/x;

    new-instance v0, Lcom/google/c/h/aa;

    const-string v1, "JAVA7"

    invoke-direct {v0, v1}, Lcom/google/c/h/aa;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/google/c/h/x;->c:Lcom/google/c/h/x;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/google/c/h/x;

    const/4 v1, 0x0

    sget-object v2, Lcom/google/c/h/x;->b:Lcom/google/c/h/x;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/google/c/h/x;->c:Lcom/google/c/h/x;

    aput-object v2, v0, v1

    sput-object v0, Lcom/google/c/h/x;->d:[Lcom/google/c/h/x;

    new-instance v0, Lcom/google/c/h/y;

    invoke-direct {v0}, Lcom/google/c/h/y;-><init>()V

    invoke-virtual {v0}, Lcom/google/c/h/y;->a()Ljava/lang/reflect/Type;

    move-result-object v0

    instance-of v0, v0, Ljava/lang/Class;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/google/c/h/x;->c:Lcom/google/c/h/x;

    :goto_0
    sput-object v0, Lcom/google/c/h/x;->a:Lcom/google/c/h/x;

    return-void

    :cond_0
    sget-object v0, Lcom/google/c/h/x;->b:Lcom/google/c/h/x;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IB)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/c/h/x;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/c/h/x;
    .locals 1

    const-class v0, Lcom/google/c/h/x;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/c/h/x;

    return-object v0
.end method

.method public static values()[Lcom/google/c/h/x;
    .locals 1

    sget-object v0, Lcom/google/c/h/x;->d:[Lcom/google/c/h/x;

    invoke-virtual {v0}, [Lcom/google/c/h/x;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/c/h/x;

    return-object v0
.end method


# virtual methods
.method final a([Ljava/lang/reflect/Type;)Lcom/google/c/c/eo;
    .locals 4

    invoke-static {}, Lcom/google/c/c/eo;->f()Lcom/google/c/c/eq;

    move-result-object v1

    array-length v2, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, p1, v0

    invoke-virtual {p0, v3}, Lcom/google/c/h/x;->b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/google/c/c/eq;->a(Ljava/lang/Object;)Lcom/google/c/c/eq;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/google/c/c/eq;->a()Lcom/google/c/c/eo;

    move-result-object v0

    return-object v0
.end method

.method abstract a(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method

.method abstract b(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
.end method
